require_relative './item'
require_relative './tickable'

class NormalItem < Item
  include Tickable

  def tick
    if quality > 0
      @quality = @quality - 1
    end


    @days_remaining = @days_remaining - 1
    if days_remaining < 0
      if quality > 0
        @quality = @quality - 1
      end
    end
  end
end