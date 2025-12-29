puts "Welcome to Mr Friend Stock Analyzer!"
puts "Please enter a stock symbol to retrieve data"

def get_stock_data(symbol, data)
    data[symbol.upcase] || "Error: Stock symbol not found."
end