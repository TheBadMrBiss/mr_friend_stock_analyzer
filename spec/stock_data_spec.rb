require_relative '../mr_friend.rb'

RSpec.describe 'Stock Data' do
  let(:stock_data) {{
    'CHWY' => { name: "Chewy, Inc.", price: 32.00,},
    'CELH' => { name: "Celsius Holdings, Inc.", price: 45.50},
    'PFE' => { name: "Pfizer Inc.", price: 25.00},
  }}

  it 'returns the correct stock information for a given symbol' do
    name = get_stock_data('CHWY', stock_data)
    expect(name).to eq("Chewy, Inc.")
    expect(price).to eq(32.00)
  end

  it 'returns error when invalid symbol is submitted' do
    name = get_stock_data('INVALID', stock_data)
    expect(name).to eq("Error: Stock symbol not found.")
  end
end