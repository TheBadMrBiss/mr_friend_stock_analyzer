require "test_helper"

class StockAnalyzerTest < ActiveSupport::TestCase
  test "should return correct data for known symbol" do
    analyzer = StockAnalyzer.new
    result = analyzer.lookup("CHWY")

    assert_equal "Chewy, Inc.", result[:name]
    assert_equal 32.0, result[:price]
    assert_equal 45.2, result[:pe]
    assert_equal 0.71, result[:eps]
  end

  test "should return error for unknown symbol" do
    analyzer = StockAnalyzer.new
    result = analyzer.lookup("INVALID")

    assert_equal "Symbol not found", result[:error]
  end
end