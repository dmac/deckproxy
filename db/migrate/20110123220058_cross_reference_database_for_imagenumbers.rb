class CrossReferenceDatabaseForImagenumbers < ActiveRecord::Migration
  NAME_POS = 0;
  SET_POS = 1;
  IMAGE_FILE_POS = 2;

  def self.up
    badSets = []
    dir = Dir.new('data/sets/')
    dir.each do |file|
      puts("*** Currently handling file " + file + " ***\n")
      IO.foreach(dir.path + file) do |line|
        words = line.split("\t")
        unless words[NAME_POS] == "Name"
          query = "select id, name, edition, number " +
                  "from cards where id in " +
                     "(select id from cards where number is null) and " +
                  "name = \"" + words[NAME_POS].gsub(/"/, "'") + "\" and " +
                  "edition = \"" + translate_set(words[SET_POS]) + "\""

          incompleteCards = Card.find_by_sql(query)
          if (incompleteCards.size <= 0)
            badSets.push(words[NAME_POS] + " not found for " + words[SET_POS]);
          else
            incompleteCards.each { |card|
              if (card)
                puts(">>> fixing " + words[NAME_POS] + " of " + words[SET_POS] + "\n");
                card.number = words[IMAGE_FILE_POS].to_i
                card.save!
              end
            }
          end
        end
      end unless file == "." or file == ".."
    end
    badSets.uniq!
    badSets.each do |set|
      puts("Bad: " + set + " \n");
    end
  end

  def self.translate_set(lackeySet)
    lackey_to_myr_map = {
      "alpha" => "A",
      "beta" => "B",
      "revised" => "R",
      "unlimited" => "U",
      "portal" => "PT",
      "portal2" => "P2",
      "weatherlight" => "WL",
      "legends" => "LG",
      "stronghold" => "SH",
      "starter" => "S00",
      "visions" => "VI",
      "antiquities" => "AQ",
      "homelands" => "HL",
      "alliances" => "AL",
      "dark" => "DK",
      "tempest" => "TE",
      "mirage" => "MI"
    }
    translation = lackey_to_myr_map[lackeySet]
    (translation) ? translation.upcase : lackeySet.upcase
  end

  def self.down
  end
end
