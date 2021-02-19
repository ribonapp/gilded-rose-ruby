class NormalItem
  attr_reader :name, :days_remaining, :quality
  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
  end

  def tick
    if @quality > 0
      @quality = @quality - 1 # itens normais
    end


    @days_remaining = @days_remaining - 1
    if @days_remaining < 0
      if @quality > 0
        @quality = @quality - 1
      end
    end
  end
end