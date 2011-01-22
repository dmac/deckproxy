class SearchController < ApplicationController
  def index
  end

  def search
    query = params[:query]
    offset = params[:offset] ? params[:offset] : 0

    logger.debug("\n\n\n#{params[:offset]}\n\n\n")

    if query.size < 3
      render :text => "", :status => 400
    else
      conditions = []
      if params[:search_text] == "true"
        conditions << "(name like ? OR name like ? OR text like ? OR text like ?) AND number is not NULL"
        conditions << "%#{query}%"
        conditions << "%#{query.capitalize}%"
        conditions << "%#{query}%"
        conditions << "%#{query.capitalize}%"
      else
        conditions << "(name like ? OR name like ?) AND number is not NULL"
        conditions << "%#{query}%"
        conditions << "%#{query.capitalize}%"
      end
      results = Card.find(:all, :conditions => conditions,
                          :order => :name, :limit => 100,
                          :offset => offset)

      load_more = (results.size == 100)

      render :partial => "search", :locals => { :cards => results,
                                                :load_more => load_more,
                                                :offset => offset.to_i + 100
                                              }
    end
  end
end
