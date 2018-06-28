class Coins
  def initialize(amount)
    @money = amount.to_i
  end

  def calculate()
    untilCount = 0
    # variable untilCount counts the number of times iterating through until loop
    forCount = 0
    # variable forCount counts how many times iterating through if loop
    denominations = [25, 10, 5, 1]
    # denominations is an array of each coin amount
    solution = [0, 0, 0, 0]
    # solution is an array for the amount of coins for the answer
    @money = @money * 100
    # changes the cent amount into whole numbers
    until @money == 0 do
      #condition by which we execute the loop
      if @money - denominations[untilCount].to_i > 0
      # if for example, you have 75 cents, and you can subtract 25 cents, setting untilCount to 1, you can loop again. Keep repeating the loop below.
        @money = @money - denominations[untilCount].to_i
        forCount += 1
      else
        solution[untilCount] = forCount
        #pushing how many times you were able to subtract 25 cents here
        forCount = 0
        #if you cannot go subtract 25 cents anymore, you RESET forCount HERE, and then it knows to go through next smallest denomination because of the variable below untilCount
        untilCount += 1
      end
      return solution
    end
      changeOutput = ""
      if solution[0] != 0
        changeOutput = changeOutput + "#{solution[0]} quarters, "
      end
      if solution[1] != 0
        changeOutput = changeOutput + "#{solution[1]} dimes, "
      end
      if solution[2] != 0
        changeOutput = changeOutput + "#{solution[2]} nickels, "
      end
      if solution[3] != 0
        changeOutput = changeOutput + "#{solution[3]} pennies."
      end
      return changeOutput
  end
end
