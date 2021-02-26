require_relative './item'
require_relative './tickable'

class AgedBrie < Item
  include Tickable

  def tick
    if days_remaining > 0
      @quality = @quality + 1
    else
      @quality = @quality + 2
    end
    @days_remaining = @days_remaining - 1

    if quality >= 50
      @quality = 50
    end
  end
end