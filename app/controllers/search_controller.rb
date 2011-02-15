class SearchController < ApplicationController

  VALID_QUERIES = ["name", "text", "mana", "color", "type", "set", "power", "toughness", "format"]

  def index
    if params[:id]
      @deck = Deck.find_by_deck_hash(params[:id])
    else
      @deck = nil
    end
  end

  def search
    query_field, query_text = parse_query(params[:query])
    queries = params[:queries].blank? ? [] : params[:queries].values # array of [[db column, query text], ... ]
    offset = params[:offset] ? params[:offset] : 0 # offset used for paging

    # Combine this query with previous queries, with query_field
    # overwriting a previous query on the same field.
    queries = combine_queries(queries, query_field, query_text)

    if queries.size > 0
      results = perform_queries(queries)
      results = results.all(:order => :name, :limit => 100, :offset => offset)
    else
      results = []
    end

    load_more = (results.size == 100)

    puts 'queries before: ' + queries.to_s
    if queries[0][0] == "format"
      puts 'format found'
      queries.shift
    end
    puts 'queries after: ' + queries.to_s

    render :partial => "search", :locals => {
      :cards => results,
      :breadcrumbs => queries,
      :load_more => load_more,
      :offset => offset.to_i + 100
    }
  end

  def add_card_to_deck
    if (params[:deck_id] == "")
      deck = Deck.new
      deck.user = current_user if current_user
      deck.save
    else
      deck = Deck.find(params[:deck_id])
    end
    if (deck)
      deck.add_card(Card.find(params[:card_id]))
    end

    render :partial => "deckmetadata", :locals => { :deck => deck, :viewing_deck => false }
  end

  def update_card_quantity
    deck = Deck.find(params[:deck_id])
    deleted = deck.update_pack(Card.find(params[:card_id]), params[:quantity].to_i);
    viewing_deck = (params[:viewing_deck] == "true")
    render :partial => "deckmetadata", :locals => { :deck => deck, :viewing_deck => viewing_deck }
  end

  def update_deck_name
    if (params[:deck_id] == "")
      deck = Deck.new
      deck.user = current_user if current_user
      deck.save
    end
    deck ||= Deck.find(params[:deck_id])
    if (params[:deck_name] != "")
      deck.name = params[:deck_name]
      deck.save
    end
    render :partial => "deckmetadata", :locals => { :deck => deck, :viewing_deck => false }
  end

  def card_grid
    if (params[:deck_id] != "")
      deck = Deck.find(params[:deck_id])
      cards = deck.cards
    else
      cards = []
    end
    render :partial => "card_grid",
           :locals => { :cards => cards, :load_more => 100, :offset => 0 }
  end

  def toggle_card_mode
    session[:card_mode] = !session[:card_mode]
    render :text => ((session[:card_mode]) ? "true" : "false")
  end

  def set_format
    session[:format] = params[:format]
    render :text => ""
  end

  def get_card_mode
    render :text => ((session[:card_mode]) ? "true" : "false")
  end

  def radio_click_all
    puts 'got radio click all'
  end

  def radio_click_extended
    puts 'got radio click extended'
  end

  def radio_click_standard
    puts 'got radio click standard'
  end

  def radio_click_block
    puts 'got radio click block'
  end

  private

  def parse_query(raw_query)
    return ["name", raw_query.strip] unless raw_query.include?(":")
    query_field = raw_query.split(":")[0].strip
    query_text = raw_query.split(":")[1].strip
    return [query_field, query_text]
  end

  def combine_queries(queries, query_field, query_text)
    return queries if query_text == ""
    return queries unless VALID_QUERIES.include? query_field
    new_field = true

    if queries.size == 0
      new_queries = [['format', (session[:format] ? session[:format] : 'all')]]
    elsif queries[0][1] != session[:format]
      puts '0:' + queries[0][0] + " 1:"+ queries[0][1]
      queries.unshift(['format', (session[:format] ? session[:format] : 'all')])
      new_queries = []
    else
      new_queries = []
    end
    queries.each do |field, text|
      if query_field == field
        new_queries << [query_field, query_text]
        new_field = false
      else
        new_queries << [field, text]
      end
    end
    new_queries << [query_field, query_text] if new_field
    new_queries
  end

  def perform_queries(queries)
    results = Card.with_number
    queries.each do |field, query|
      case field
      when "format"
        results = results.by_format(query) unless query == 'all'
      when "name"
        results = results.by_name(query)
      when "text"
        results = results.by_text(query)
      when "mana"
        number_match = query.match(/\d+/)
        number = number_match ? number_match[0].to_i : nil
        if number.nil?
          results = results.no_match
        elsif query.include?("<=")
          results = results.less_than_or_equal_mana(number)
        elsif query.include?(">=")
          results = results.greater_than_or_equal_mana(number)
        elsif query.include?("<")
          results = results.less_than_mana(number)
        elsif query.include?(">")
          results = results.greater_than_mana(number)
        else
          results = results.equal_to_mana(number)
        end
      when "color"
        results = results.by_color(query)
      when "type"
        results = results.by_type(query)
      when "set"
        results = results.by_set(query)
      when "power"
        number_match = query.match(/\d+/)
        number = number_match ? number_match[0].to_i : nil
        if number.nil?
          results = results.no_match
        elsif query.include?("<=")
          results = results.less_than_or_equal_power(number)
        elsif query.include?(">=")
          results = results.greater_than_or_equal_power(number)
        elsif query.include?("<")
          results = results.less_than_power(number)
        elsif query.include?(">")
          results = results.greater_than_power(number)
        else
          results = results.equal_to_power(number)
        end
      when "toughness"
        number_match = query.match(/\d+/)
        number = number_match ? number_match[0].to_i : nil
        if number.nil?
          results = results.no_match
        elsif query.include?("<=")
          results = results.less_than_or_equal_toughness(number)
        elsif query.include?(">=")
          results = results.greater_than_or_equal_toughness(number)
        elsif query.include?("<")
          results = results.less_than_toughness(number)
        elsif query.include?(">")
          results = results.greater_than_toughness(number)
        else
          results = results.equal_to_toughness(number)
        end
      end
    end
    results
  end
end

