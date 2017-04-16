class HomeController < ApplicationController
  def index
    @offers = Food.offer
  end
end
