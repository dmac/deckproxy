require 'prawn'
require "open-uri"

class DeckController < ApplicationController

  LABEL_LOCATION = {
    0 => [42, 562],
    1 => [223, 562],
    2 => [404, 562],
    3 => [585, 562],
    4 => [42, 292],
    5 => [223, 292],
    6 => [404, 292],
    7 => [585, 292]
  }

  LABEL_WIDTH = 168
  LABEL_HEIGHT = 245
  BOUND_BOX_PADDING = 4

  def index
    @user = current_user
    if @user
      @decks = @user.decks
    end
    @public_decks = Deck.public_decks
  end

  def view
    @user = current_user
    @deck = Deck.find_by_deck_hash(params[:id])
    if @deck.user && @deck.user != @user
      render :text => "", :status => 403
    else
      render "deck/view"
    end
  end

  def proxy
    @user = current_user
    @deck = Deck.find_by_deck_hash(params[:id])
    if @deck.user && @deck.user != @user
      render :text => "", :status => 403
    else
      render "deck/proxy"
    end
  end

  def label_proxy
    @user = current_user
    @deck = Deck.find_by_deck_hash(params[:id])
    Prawn::Document.generate("label" + @deck.hash.to_s + ".pdf",
                             :page_layout => :landscape,
                             :margin => 0) do |pdf|
      count = 0
      total_proxies = @deck.packs.inject(0) { |sum, pack| sum + pack.proxy_num }
      @deck.packs.each do |pack|
        pack.proxy_num.times do
          rect_pos = LABEL_LOCATION[count]
          puts "1)" + rect_pos[0].to_s + "," + rect_pos[1].to_s
          rect_pos[0] = rect_pos[0] - BOUND_BOX_PADDING
          rect_pos[1] = rect_pos[1] + BOUND_BOX_PADDING
          puts "2)" + rect_pos[0].to_s + "," + rect_pos[1].to_s
          pdf.fill_color = "000000"
          pdf.bounding_box (rect_pos,
                            :width => LABEL_WIDTH + 2*BOUND_BOX_PADDING,
                            :height => LABEL_HEIGHT + 2*BOUND_BOX_PADDING) do
            pdf.rectangle([0, LABEL_HEIGHT + 2*BOUND_BOX_PADDING],
                          LABEL_WIDTH + 2*BOUND_BOX_PADDING,
                          LABEL_HEIGHT + 2*BOUND_BOX_PADDING)
            pdf.fill()
            pdf.rectangle([BOUND_BOX_PADDING, LABEL_HEIGHT + BOUND_BOX_PADDING],
                         LABEL_WIDTH,
                         LABEL_HEIGHT);
            pdf.fill_color = "FFFFFF"
            pdf.fill();
            pdf.image open("#{RAILS_ROOT}/public/images/scans/" +
                            pack.card.edition.downcase + "/" +
                            pack.card.number.to_s + ".jpg"),
  #          pdf.image open("https://s3-us-west-1.amazonaws.com/deckproxy.com/scans/" +
  #                         pack.card.edition.downcase + "/" +
  #                         pack.card.number.to_s + ".jpg"),
                      :at => [BOUND_BOX_PADDING,LABEL_HEIGHT + BOUND_BOX_PADDING],
                      :width => LABEL_WIDTH,
                      :height => LABEL_HEIGHT
          end
          count = (count + 1)
          if (count != total_proxies and (count = count % 8) == 0)
            pdf.start_new_page
          end
        end
      end
      pdf.render_file("#{RAILS_ROOT}/tmp/pdfs/label" + @deck.hash.to_s + ".pdf")
    end
    send_file("#{RAILS_ROOT}/tmp/pdfs/label" + @deck.hash.to_s + ".pdf")
  end

  def delete_deck
    if (params[:deck_id])
      deck = Deck.find(params[:deck_id])
      user = deck.user
      deck.destroy
    end
    if (user)
      render :partial => "deck/alldecks",
             :locals => { :decks => user.decks }
    else
      render :partial => "deck/alldecks",
             :locals => { :decks => Deck.public_decks }
    end
  end

end
