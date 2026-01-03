require 'glimmer-dsl-libui'
require_relative 'mr_friend'

include Glimmer

def perform_search
  symbol = @stock_symbol_entry.text.strip.upcase
  return if symbol.empty?

  result = get_stock_data(symbol, STOCK_DATABASE)

  if result
    @name_label.text = "Company Name: #{result[:name]}"
    @price_label.text = "Stock Price: $#{'%.2f' % result[:price]}"
    @pe_label.text = "P/E Ratio: #{result[:pe]}"
    @eps_label.text = "EPS: #{result[:eps]}"
  else
    @name_label.text = "Error: Stock symbol not found."
    @price_label.text = ""
    @pe_label.text = ""
    @eps_label.text = ""
  end
end

window('Mr. Friend - Stock Data Retriever', 400, 200) {
  margined true
  vertical_box {

    label('Enter a stock symbol to retrieve data:') {
      stretchy false
    }

    @stock_symbol_entry = search_entry {
      stretchy false

      on_changed do
          perform_search
        end
    }

    button('Get Data') {
      stretchy false
      on_clicked do
        perform_search
      end
    }

    horizontal_separator {
      stretchy false
    }

    @name_label = label('Company:   ') {
      stretchy false
    }

    @price_label = label('Price:   ') {
      stretchy false
    }

    @pe_label = label('P/E Ratio:   ') {
      stretchy false
  }

    @eps_label = label('EPS:   ') {
      stretchy false
    }
  }
}.show