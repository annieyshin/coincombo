class Coins
  def initialize(amount)
    @money = (amount * 100).to_i
    puts "1 beginning of run, money equals #{@money}"
  end

  def calculate()
    denomination_index = 0
    coin_count = 0
    denominations = [25, 10, 5, 1]
    solution = [0, 0, 0, 0]
    until @money <= 0
      if (denomination_index == 3)
        puts "2 got to index 3 if step"
        until @money == 0
          @money = @money - denominations[denomination_index]
          coin_count += 1
          solution[denomination_index] = coin_count
        end
      else
        puts "3 got to else step for if loop"
        if (@money < 5 && @money > 0) || @money == 0
          puts "3.5 got inside of until loop"
          if (@money - denominations[denomination_index] >= 0)
            puts "4 got to if loop inside of else step"
            #  ||
            @money = @money - denominations[denomination_index]
            coin_count += 1
            puts "5 money = #{@money}, denomination_index = #{denomination_index}, and coin_count = #{coin_count}"
              solution[denomination_index] = coin_count
          else
            puts "6 got to else inside of else"
            solution[denomination_index] = coin_count
            coin_count = 0
            denomination_index += 1
          end
        end
      end
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
#
# puts "hello"
# change = Coins.new(0.77)
# change.calculate()
