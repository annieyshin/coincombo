class Coins
  def initialize(amount)
    @money = (amount * 100).to_i
  end

  def calculate()
  quarters_remainder = 0
  nickels_remainder = 0
  dimes_remainder = 0
  dimes = 0
  quarters = 0
  nickels = 0
  pennies = 0

  quarters = @money / 25
  quarters_remainder =  @money % 25
  if quarters_remainder != 0
    dimes = quarters_remainder / 10
    dimes_remainder = quarters_remainder % 10
  end
  if dimes_remainder != 0
    nickels = dimes_remainder / 5
    nickels_remainder = dimes_remainder % 5
  end
  if nickels_remainder != 0
    pennies = nickels_remainder
  end


    changeOutput = ""
    if quarters != 0
      changeOutput = changeOutput + "#{quarters} quarters "
    end
    if dimes != 0
      changeOutput = changeOutput + "#{dimes} dimes "
    end
    if nickels != 0
      changeOutput = changeOutput + "#{nickels} nickels "
    end
    if pennies != 0
      changeOutput = changeOutput + "#{pennies} pennies."
    end
    return changeOutput
  end
end
