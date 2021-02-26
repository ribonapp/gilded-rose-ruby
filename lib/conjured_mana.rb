require_relative './item'

class ConjuredMana < Item
  def tick
    if days_remaining <= 0
      if quality > 0
        @quality = quality - 4
      end
    else
      if quality > 0
        @quality = quality - 2
      end
    end

    @days_remaining = days_remaining - 1
  end
end