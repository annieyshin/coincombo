require('rspec')
require('pry')
require('coincombo')

describe('#coincombo') do
  it('returns 2 penny if 2 cent is the given argument') do
    change = Coins.new(0.02)
    expect(change.calculate()).to(eq("2 pennies."))
  end
  it('returns 1 quarter 1 dime 1 nickel and 2 pennies if 47 cents is the given argument') do
    change = Coins.new(0.42)
    expect(change.calculate()).to(eq("1 quarters 1 dimes 1 nickels 2 pennies."))
  end
  it('returns 3 quarters if 75 cents to make change from is the given argument') do
    change = Coins.new(0.75)
    expect(change.calculate()).to(eq("3 quarters "))
  end
  it('returns 3 quarters and 2 pennies if 77 cents to make change from is the given argument') do
    change = Coins.new(0.77)
    expect(change.calculate()).to(eq("3 quarters 2 pennies."))
  end
end
