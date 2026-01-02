STOCK_DATABASE = {
    'CHWY' => { name: "Chewy, Inc.", price: 32.00, pe: 45.2, eps: 0.71 },
    'CELH' => { name: "Celsius Holdings, Inc.", price: 45.50, pe: 60.1, eps: 0.76 },
    'PFE' => { name: "Pfizer Inc.", price: 25.00, pe: 22.5, eps: 1.11 },
}

def get_stock_data(symbol, data)
    data[symbol.upcase]
end

if __FILE__ == $0
  puts "Welcome to Mr Friend Stock Analyzer!"

  loop do
    print "Please enter a stock symbol to retrieve data \n: "
    input = gets.chomp.strip.upcase

    result = get_stock_data(input, STOCK_DATABASE)

    if result
      puts "Stock Name: #{result[:name]}, Price: #{result[:price]}"
          # Break after input for now
          break
    else
      puts "Error: Stock symbol not found."
      # Break after input for now
      break
    end
  end
end