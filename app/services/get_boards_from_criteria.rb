class GetBoardsFromCriteria < ApplicationService

  def initialize(weight, level, waves, objective, volume)
    @weight = weight
    @level = level
    @waves = waves
    @objective = objective
    @volume = volume
  end

  def call
    if @level == 'beginner'
      beginner_boards
    elsif @level == 'intermediaire'
      medium_boards
    else
      advanced_boards
    end
  end

  private

  def beginner_boards
    if @weight <= 40
      Surfboard.where('dimension_length > 7 AND dimension_length < 9.6')
    elsif @weight >= 80
      Surfboard.where('dimension_length > 8.2 AND dimension_length < 9.6')
    else
      Surfboard.where('dimension_length > 7.5 AND dimension_length < 9.6')
    end
  end

  def medium_boards
    if @weight <= 40 && @waves == 'molles'
      Surfboard.where('dimension_length > 5.5 AND dimension_length < 6.10 AND volume < 30')
    elsif  @weight <= 40 && @waves == 'creuses'
      Surfboard.where('dimension_length > 5.5 AND dimension_length < 6.10 AND volume < 25')#prendre en compte l'objectif ?
    elsif  @weight >= 70 && @objective == 'performance'
      Surfboard.where('dimension_length > 5 AND dimension_length < 8 AND volume > 35 AND volume < 60')
    elsif  @weight >= 70 && @objective == 'plaisir'
      Surfboard.where('dimension_length > 5 AND dimension_length < 8.6 AND volume > 40 AND volume < 60')
    elsif @weight > 40 && @weight < 70 && @objective == 'performance'
      Surfboard.where('dimension_length > 5.5 AND dimension_length < 6.10 AND volume > 25 AND volume < 35')
    elsif @weight > 40 && @weight < 70 && @objective == 'cruise' && @waves == 'molle'
      Surfboard.where('dimension_length > 5.5 AND dimension_length < 8.6 AND volume > 30 AND volume < 50')
    else
      Surfboard.where('dimension_length > 5 AND dimension_length < 8 AND volume > 25 AND volume < 45')
    end
  end

  def advanced_boards
    if @weight <= 40
      Surfboard.where('dimension_length > 5 AND dimension_length < 6.6 AND volume > 15 AND volume < 25')
    elsif @weight > 40 && @weight <= 70 && @objective == 'performance'
      Surfboard.where('dimension_length > 5 AND dimension_length < 6.10 AND volume > 20 AND volume < 30')
    elsif @weight > 40 && @weight <= 70 && @objective == 'plaisir'
      Surfboard.where('dimension_length > 5 AND dimension_length < 7 AND volume > 25 AND volume < 35')
    elsif @weight > 70 && @objective == 'plaisir'
      Surfboard.where('dimension_length > 5 AND dimension_length < 8.6 AND volume > 35 AND volume < 50')
    else
      Surfboard.where('dimension_length > 5 AND dimension_length < 6.10 AND volume > 35 AND volume < 45')
    end
  end
end
