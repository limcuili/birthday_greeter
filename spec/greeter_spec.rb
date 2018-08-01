require_relative '../models/greeter.rb'

describe Greeter do

  let(:greeter) { described_class.new(Date.new(2018,8,1)) }

  it 'wishes you happy birthday if it is your birthday' do
    allow(Date).to receive(:today).and_return(Date.new(2018,8,1))
    expect(greeter.greet).to eq 'Happy Birthday!'
  end

  it 'tells you that tomorrow is your birthday' do
    allow(Date).to receive(:today).and_return(Date.new(2018,7,31))
    expect(greeter.greet).to eq 'Your birthday is tomorrow!'
  end

  it 'tells you that your birthday is 20 days away' do
    allow(Date).to receive(:today).and_return(Date.new(2018,7,12))
    expect(greeter.greet).to eq 'There are 20 days to your birthday.'
  end

  it 'tells you that your birthday is 364 days away' do
    allow(Date).to receive(:today).and_return(Date.new(2018,8,2))
    expect(greeter.greet).to eq 'There are 364 days to your birthday.'
  end

end
