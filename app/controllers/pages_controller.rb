Pair = Struct.new(:board, :wetsuit)

class PagesController < ApplicationController
  def home
  end

  def results
    ap params
    @boards = GetBoardsFromCriteria.new(params).call
    @wetsuits = GetWetsuitsFromCriteria.new(params).call

    # @pairs = @boards.take(10).map.with_index do |board, i|
    #   Pair.new(board, @wetsuits[i])
    # end
  end
end

# abc.map.with_index {|l, i| {letter: l, number: numbers[i]}}
