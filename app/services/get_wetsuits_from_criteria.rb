class GetWetsuitsFromCriteria < ApplicationService
  def initialize(params)
    @size = params[:size]
    @gender = params[:gender]
    @temperature = params[:temperature].to_i
  end

  def call
    if @temperature >= 5 && @temperature <= 13
      wetsuits_cold
    elsif @temperature > 13 && @temperature <= 20
      wetsuits_basic
    else
      wetsuits_hot
    end
  end

  def wetsuits_cold
    if @gender == "homme"
      Wetsuit.where("name NOT ILIKE 'ladies' AND thickness >= 5")
    else
      Wetsuit.where("name ILIKE '%ladies%' AND thickness >= 5")
    end
  end

  def wetsuits_basic
    if @gender == "homme"
      Wetsuit.where("name NOT ILIKE 'ladies' AND thickness >= 3 AND thickness < 5")
    else
      Wetsuit.where("name ILIKE '%ladies%' AND thickness >= 3 AND thickness < 5")
    end
  end

  def wetsuits_hot
    if @gender == "homme"
      Wetsuit.where("name NOT ILIKE 'ladies' AND thickness >= 0 AND thickness < 3")
    else
      Wetsuit.where("name ILIKE '%ladies%' AND thickness >= 0 AND thickness < 3")
    end
  end
end
