class StockLookupController < ApplicationController
  def lookup
    symbol = params[:symbol]
    @result = StockAnalyzer.new.lookup(symbol)
  end
end