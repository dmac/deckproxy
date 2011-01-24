class SearchController < ApplicationController
  def index
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
      deck.save
    else
      deck = Deck.find(params[:deck_id])
    end
    if (deck)
      deck.add_card(Card.find(params[:card_id]))
    end

    render :partial => "deckmetadata", :locals => { :deck => deck }
  end

  def update_card_quantity
    deck = Deck.find(params[:deck_id])
    deck.update_pack(Card.find(params[:card_id]), params[:quantity]);
    render :text => "";
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
    new_field = true
    new_queries = []
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

