require('rspec')
require('coincombo')

describe('#coincombo') do
  it('returns 3 quarters if 75 cents to make change from is the given argument') do
    change = Coins.new(0.75)
    expect(change.calculate()).to(eq("3 quarters"))
  end
end
