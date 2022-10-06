class PagesController < ApplicationController
  def home
    @ip = IpAddress.last
    @counter = @ip.counter
    unless @ip.address == request.remote_ip
      @ip = IpAddress.create(
        address: request.remote_ip,
        counter: @counter += 1
      )
    end
  end

  def portfolio; end
  def contact; end
end
