require_relative '../models/calendar.rb'


describe Calendar do
  let(:calendar) { described_class.new(Date.new(2018,8,1)) }

  it 'knows today is your birthday' do
    allow(Date).to receive(:today).and_return(Date.new(2018,8,1))
    expect(calendar.days_left).to eq 0
  end

  it 'calculates that it is one day to your birthday' do
    allow(Date).to receive(:today).and_return(Date.new(2018,7,31))
    expect(calendar.days_left).to eq 1
  end

  it 'calculates that it is 364 day to your birthday' do
    allow(Date).to receive(:today).and_return(Date.new(2018,8,2))
    expect(calendar.days_left).to eq 364
  end
end
