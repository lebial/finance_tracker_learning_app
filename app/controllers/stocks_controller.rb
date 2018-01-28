class StocksController < ApplicationController
  def search
    if params[:stock].blank?
      flash.now[:danger] = "You have entered an empty symbol, please enter another one"
    else
      @stock =  Stock.new_from_lookup(params[:stock])
      flash.now[:danger] = "This is not a valid Ticker name, please enter another one" unless @stock
     end
        respond_to do |format|
          format.js { render partial: 'users/result' }
    end
  end
end
