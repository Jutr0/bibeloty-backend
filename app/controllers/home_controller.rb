class HomeController < ApplicationController

  def index
    @bestsellers = Product.all
  end

end
