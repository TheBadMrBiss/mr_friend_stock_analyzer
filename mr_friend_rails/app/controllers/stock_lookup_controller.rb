class StockLookupController < ApplicationController

  def show
    if params[:ticker_symbol].present?
      @result = StockAnalyzer.new.find_by_symbol(params[:ticker_symbol])
    end
  end
end