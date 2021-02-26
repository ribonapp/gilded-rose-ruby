require_relative './item'

class Backstage < Item

  def tick
    if days_remaining > 10
      @quality = @quality + 1
    elsif days_remaining > 5
      @quality = @quality + 2
    elsif days_remaining > 0
      @quality = @quality + 3
    else
      @quality = 0
    end

    @days_remaining = @days_remaining - 1

    if @quality >= 50
      @quality = 50
    end
  end
end