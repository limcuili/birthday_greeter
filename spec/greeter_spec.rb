require_relative '../models/greeter.rb'

describe Greeter do

  let(:greeter) { described_class.new(Date.new(2018,8,1)) }

  it 'wishes you happy birthday if it is your birthday' do
    allow(Date).to receive(:today).and_return(Date.new(2018,8,1))
    expect(greeter.greet).to eq 'Happy Birthday!'
  end

end
