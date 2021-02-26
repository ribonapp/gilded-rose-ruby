require_relative './item'
require_relative './tickable'

class Sulfuras < Item
  include Tickable

  def tick; end
end