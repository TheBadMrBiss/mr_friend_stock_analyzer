STOCK_DATABASE = {
    'CHWY' => { name: "Chewy, Inc.", price: 32.00, pe: 45.2, eps: 0.71 },
    'CELH' => { name: "Celsius Holdings, Inc.", price: 45.50, pe: 60.1, eps: 0.76 },
    'PFE' => { name: "Pfizer Inc.", price: 25.00, pe: 22.5, eps: 1.11 },
}

def get_stock_data(symbol, data)
    data[symbol.upcase]
end