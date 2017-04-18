class HomeController < ApplicationController
  def index
    @offers = Food.offer.order("created_at desc")
  end
end
