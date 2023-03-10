class GetWetsuitsFromCriteria < ApplicationService
  def initialize(size:, gender:, temperature:)
    @size = size
    @gender = gender
    @temperature = temperature
  end

  def call
    if @temperature > 5 && @temperature < 13
      wetsuits_cold
    elsif @temperature > 13 && @temperature < 20
      wetsuits_basic
    else
      wetsuits_hot
    end
  end

  def wetsuits_cold
    if @gender == "femme"
      Wetsuit.where("name NOT ILIKE 'ladies' AND thickness >= 5")
    end#pas fini
  end
end
