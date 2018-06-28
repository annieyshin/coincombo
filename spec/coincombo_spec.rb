require('rspec')
require('coincombo')

describe('#coincombo') do
  it('returns 3 quarters if 75 cents to make change from is the given argument') do
    change = Coins.new(0.75)
    expect(change.calculate()).to(eq("3 quarters"))
  end
  it('returns 3 quarters and 2 pennies if 77 cents to make change from is the given argument') do
    change = Coins.new(0.77)
    expect(change.calculate()).to(eq("3 quarters, 2 pennies"))
  end
end
