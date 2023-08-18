require_relative '../app/constants'

RSpec.describe 'Constants' do
  it 'defines the value of PI' do
    expect(PI).to eq(3.14159)
  end

  it 'defines the value of E' do
    expect(E).to eq(2.71828)
  end

  it 'defines the value of GOLDEN_RATIO' do
    expect(GOLDEN_RATIO).to be_within(0.00001).of((1 + Math.sqrt(5)) / 2)
  end
end
