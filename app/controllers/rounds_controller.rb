class RoundsController < ApplicationController

  def create
    @deck = Deck.find(params[:deck_id])
  end


end
