class GetWetsuitsFromCriteria < ApplicationService
  def initialize(params)
    @size = params[:size]
    @gender = params[:gender]
    @temperature = params[:temperature]
  end

  def call
    case @temperature
    when "cold"
      wetsuits_cold
    when "temp"
      wetsuits_basic
    else
      wetsuits_hot
    end
  end

  def wetsuits_cold
    Wetsuit.where("name #{'NOT' if men?} ILIKE '%ladies%' AND thickness >= 5")
  end

  def wetsuits_basic
    Wetsuit.where("name #{'NOT' if men?} ILIKE '%ladies%' AND thickness >= 3 AND thickness < 5")
  end

  def wetsuits_hot
    Wetsuit.where("name #{'NOT' if men?} ILIKE '%ladies%' AND thickness >= 0 AND thickness < 3")
  end

  private

  def men?
    @gender == 'men'
  end
end
