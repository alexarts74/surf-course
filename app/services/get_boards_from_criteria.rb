class GetBoardsFromCriteria < ApplicationService

  def initialize(params)
    @weight = params[:weight].to_i
    @level = params[:level]
    @waves = params[:waves]
    @objective = params[:objective]
    @volume = params[:volume]
  end

  def call
    case @level
    when 'Débutant'
      beginner_boards
    when 'Intermédiaire'
      medium_boards
    when 'Confirmé'
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
      Surfboard.where('dimension_length > 5.5 AND dimension_length < 6.10 AND volume < 25')
    elsif  @weight >= 70 && @objective == 'Performance'
      Surfboard.where('dimension_length > 5 AND dimension_length < 8 AND volume > 35 AND volume < 60')
    elsif  @weight >= 70 && @objective == 'Plaisir'
      Surfboard.where('dimension_length > 5 AND dimension_length < 8.6 AND volume > 40 AND volume < 60')
    elsif @weight > 40 && @weight < 70 && @objective == 'Performance'
      Surfboard.where('dimension_length > 5.5 AND dimension_length < 6.10 AND volume > 25 AND volume < 35')
    elsif @weight > 40 && @weight < 70 && @objective == 'Plaisir' && @waves == 'molle'
      Surfboard.where('dimension_length > 5.5 AND dimension_length < 8.6 AND volume > 30 AND volume < 50')
    else
      Surfboard.where('dimension_length > 5 AND dimension_length < 8 AND volume > 25 AND volume < 45')
    end
  end

  def advanced_boards
    if @weight <= 40
      Surfboard.where('dimension_length > 5 AND dimension_length < 6.6 AND volume > 15 AND volume < 25')
    elsif @weight > 40 && @weight <= 70 && @objective == 'Performance'
      Surfboard.where('dimension_length > 5 AND dimension_length < 6.10 AND volume > 20 AND volume < 30')
    elsif @weight > 40 && @weight <= 70 && @objective == 'Plaisir'
      Surfboard.where('dimension_length > 5 AND dimension_length < 7 AND volume > 25 AND volume < 35')
    elsif @weight > 70 && @objective == 'Plaisir'
      Surfboard.where('dimension_length > 5 AND dimension_length < 8.6 AND volume > 35 AND volume < 50')
    else
      Surfboard.where('dimension_length > 5 AND dimension_length < 6.10 AND volume > 35 AND volume < 45')
    end
  end
end
