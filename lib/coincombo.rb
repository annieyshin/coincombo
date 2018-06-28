class Coins
  def initialize(amount)
    @money = (amount * 100).to_i
  end

  def calculate()
    denomination_index = 0
    coin_count = 0
    denominations = [25, 10, 5, 1]
    solution = [0, 0, 0, 0]
    denominations.each do |step|
      if step == 25 || step == 10 || step == 5
          if (@money - step >= 0)
            until @money - step < 0
              coin_count += 1
              @money = @money - step
            end
          end
          solution[denomination_index] = coin_count
          coin_count = 0
          denomination_index += 1
      else
        coin_count = 0
        until @money == 0
          coin_count += 1
          @money = @money - step
          solution[3] = coin_count
        end
      end
    end
    changeOutput = ""
    if solution[0] != 0
      changeOutput = changeOutput + "#{solution[0]} quarters "
    end
    if solution[1] != 0
      changeOutput = changeOutput + "#{solution[1]} dimes "
    end
    if solution[2] != 0
      changeOutput = changeOutput + "#{solution[2]} nickels "
    end
    if solution[3] != 0
      changeOutput = changeOutput + "#{solution[3]} pennies."
    end
    return changeOutput
  end
end
