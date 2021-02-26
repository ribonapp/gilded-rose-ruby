require_relative './item'

class NormalItem < Item
  def tick
    if quality > 0
      @quality = @quality - 1 # itens normais
    end


    @days_remaining = @days_remaining - 1
    if days_remaining < 0
      if quality > 0
        @quality = @quality - 1
      end
    end
  end
end