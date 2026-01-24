require "application_system_test_case"

class StockAnalyzersTest < ApplicationSystemTestCase
  test "visit stock lookup page" do
    visit "/lookup?symbol=CHWY"
  
    assert_selector "h1", text: "Stock Lookup"
    assert_text "Chewy, Inc."
    assert_text "Price: $32.0"
    assert_text "P/E Ratio: 45.2"
    assert_text "EPS: 0.71"
  end
end
