class SearchController < ApplicationController
  def index
  end

  def search
    query_field, query_text = parse_query(params[:query])
    queries = params[:queries].blank? ? {} : params[:queries] # hash of db columns to query text
    offset = params[:offset] ? params[:offset] : 0 # offset used for paging

    # Add this query to previous queries
    queries[query_field] = query_text

    @results = Card.with_number
    queries.each do |field, query|
      case field
      when "name"
        break if query.size < 3
        @results = @results.by_name(query)
      when "text"
        break if query.size < 3
        @results = @results.by_text(query)
      end
    end

    @results = @results.all(:order => :name, :limit => 100, :offset => offset)

    load_more = (@results.size == 100)

    render :partial => "search", :locals => {
      :cards => @results,
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

  private

  def parse_query(raw_query)
    return ["name", raw_query.strip] unless raw_query.include?(":")
    query_field = raw_query.split(":")[0].strip
    query_text = raw_query.split(":")[1].strip
  end
end

