require_relative '../mr_friend.rb'

RSpec.describe 'Stock Data' do
  let(:stock_data) {{
    'CHWY' => { name: "Chewy, Inc.", price: 32.00, pe: 45.2, eps: 0.71 },
    'CELH' => { name: "Celsius Holdings, Inc.", price: 45.50, pe: 60.1, eps: 0.76 },
    'PFE' => { name: "Pfizer Inc.", price: 25.00, pe: 22.5, eps: 1.11},
  }}

  it 'returns the correct stock information for a given symbol' do
    result = get_stock_data('CHWY', stock_data)

    expect(result[:name]).to eq("Chewy, Inc.")
    expect(result[:price]).to eq(32.00)
    expect(result[:pe]).to eq(45.2)
    expect(result[:eps]).to eq(0.71)
  end

  it 'returns error when invalid symbol is submitted' do
    name = get_stock_data('INVALID', stock_data)
    expect(name).to be_nil
  end
end