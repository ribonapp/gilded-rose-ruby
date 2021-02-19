require_relative './aged_brie'
require_relative './backstage'
require_relative './sulfuras'
require_relative './normal_item'

class GildedRose
  attr_reader :item
  AGED_BRIE = "Aged Brie"
  BACKSTAGE = "Backstage passes to a TAFKAL80ETC concert"
  SULFURAS = "Sulfuras, Hand of Ragnaros"
  CONJURED_MANA = "Conjured Mana Cake"

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
  end

  def tick
    params = {name: @name, days_remaining: @days_remaining, quality: @quality}
    case @name
    when AGED_BRIE
      @item = AgedBrie.new(params)
    when BACKSTAGE
      @item = Backstage.new(params)
    when SULFURAS
      @item = Sulfuras.new(params)
    else
      @item = NormalItem.new(params)
    end

    @item.tick
  end

  def days_remaining
    item.days_remaining
  end

  def quality
    item.quality
  end
end