class Counter < ApplicationRecord
  is_impressionable
  is_impressionable counter_cache: true

  def initialize
    @counter = Counter.find(id: 1)
  end
end
