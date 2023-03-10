class PagesController < ApplicationController
  def home
  end

  def result
    @boards = GetBoardsFromCriteria.new(params[:weight, :price, :level, :waves, :objective, :volume]).call
    @wetsuits = GetWetsuitsFromCriteria.new(params[:size, :gender, :temperature])
  end
end
