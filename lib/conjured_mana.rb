class ConjuredMana
  attr_reader :name, :days_remaining, :quality
  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
  end

  def tick
    if @days_remaining <= 0
      if @quality > 0
        @quality = @quality - 4
      end
    else
      if @quality > 0
        @quality = @quality - 2
      end
    end
    @days_remaining = @days_remaining - 1
  end
end