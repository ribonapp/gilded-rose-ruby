class Item
  attr_reader :name, :days_remaining, :quality
  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
  end
end