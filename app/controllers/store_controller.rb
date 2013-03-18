class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @time = Time.now
    
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
    @number_of_visits = session[:counter]
  end
end
