class Coins
  def initialize(amount)
    @money = amount
  end



  def calculate()
    i = 0
    @money = @money * 100
    until @money == 0 do
      @money = @money - 25
      i += 1
    end
    return "#{i} quarters"
  end
end
