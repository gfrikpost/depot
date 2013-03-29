class StoreController < ApplicationController
  skip_before_filter :authorize
  
  def index
    if params[:set_locale]
      redirect_to store_path(locale: params[:set_locale])
    else
      @products = Product.order(:title)
      @cart = current_cart
      @time = Time.now
    end
    
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
    @number_of_visits = session[:counter]
  end
end
