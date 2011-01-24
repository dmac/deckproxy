#!/usr/bin/env ruby
require "net/http"
require "net/https"
require "uri"

desc 'check card images'
task :check_images => :environment do
  badURLs = []
  f = File.open("./log/bad_image_urls.log", 'w')
  f.write("***\n");
  f.write("Image Check " + Time.now.to_s + "\n");
  begin
    cards = Card.all
    puts("Running card images test (" + cards.size.to_s + " cards to test) \n")

    threads = []
    cards.each_index do |index|
      puts("Validating " + cards[index].name + " " + index.to_s + "/" + cards.size.to_s + "\n")
      url = "https://s3-us-west-1.amazonaws.com/deckproxy.com/scans/" +
            cards[index].edition.downcase + "/" + cards[index].number.to_s + ".jpg"
      threads << Thread.new(url) do |url|
          f.write(url + "\n") unless (url_valid?(url))
      end
    end
    threads.each { |thread|  thread.join }
  ensure
    f.write("***")
    f.close
    puts("Done!")
  end
end

def self.url_valid?(uriStr)
  uri = URI.parse(uriStr)

  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = (uri.scheme == 'https')
  request = Net::HTTP::Get.new(uri.request_uri)
  begin
    response = http.request(request)
    (response.code.to_i != 200)
  rescue => error
    puts("RESCUE! " + uriStr + " didn't work!\n");
    puts error
    false
  rescue Timeout::Error => error
    puts("RESCUE! " + uriStr + " didn't work!\n");
    puts error
    false
  end
end
