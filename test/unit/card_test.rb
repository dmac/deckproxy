require 'test_helper'
require "net/http"
require "uri"

class CardTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  S3_BASE_URL = "https://s3-us-west-1.amazonaws.com/deckproxy.com/scans/"

  test "card images" do
    cards = Card.all
    puts("Running card images test (" + cards.size.to_s + " cards to test) \n")
    cards.each do |card|
      puts("Validating " + card.name + "\n")
      url_valid?(S3_BASE_URL + card.edition + "/" + card.number + ".jpg");
    end

  end

  def self.url_valid?(uriStr)
    uri = URI.parse(uriStr)

    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)

    response = http.request(request)
    if (response != 200)
      puts("ERROR! " + uriStr + " didn't work!\n");
    else
      puts("y");
    end
  end

end
