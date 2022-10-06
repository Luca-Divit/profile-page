class PagesController < ApplicationController
  impressionist actions: [:home]
  def home
    @counter = Counter.find
    impressionist(@counter) # 2nd argument is optional
    @counter.impressionist_count(filter: :ip_address)
  end

  def portfolio; end
  def contact; end
end
