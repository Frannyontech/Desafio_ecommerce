class HomeController < ApplicationController
  def index
    @products = Product.all
    @variations = Variation.all
  end
end