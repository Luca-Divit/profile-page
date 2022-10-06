class PagesController < ApplicationController
  # before_action :set_counter, only: [:home]
  # impressionist actions: [:home]
  def home
    @ip = Ip.last
    @counter = @ip.counter
    unless @ip.address == request.remote_ip
      @ip = Ip.create(
        address: request.remote_ip,
        counter: @counter += 1
      )
      @counter = Counter.first
      @counter.punch(request)
    end
    # impressionist(@counter) # 2nd argument is optional
  end

  def portfolio; end
  def contact; end

  private

  # def set_counter
  #   @counter = Counter.first
  # end
end
