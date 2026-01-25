class StockLookupController < ApplicationController
  def show
    symbol = params[:symbol]
    @result = StockAnalyzer.new.find_by_symbol(symbol)
  end
end