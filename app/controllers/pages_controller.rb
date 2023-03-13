class PagesController < ApplicationController
  def home
  end

  def results
    ap params
    @boards = GetBoardsFromCriteria.new(params).call
    @wetsuits = GetWetsuitsFromCriteria.new(params).call
  end
end
