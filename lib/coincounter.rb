class Fixnum
  define_method(:coincounter) do
    change = []
    quarters = 0
    dimes = 0
    nickles = 0
    pennies = 0


    amount_remaining = self

    until amount_remaining.==(0) do

      #check for quarters
      puts("- - - - -")

      while amount_remaining.-(25) >= 0
        quarters = quarters.+(1)
        amount_remaining = amount_remaining.-(25)
puts("amount remaining: ")
puts(amount_remaining)

      end

      # Dimes
      while amount_remaining.-(10) >= 0
        dimes = dimes.+(1)
        amount_remaining = amount_remaining.-(10)

puts("amount remaining: ")
puts(amount_remaining)
      end


      # Nickles
      while amount_remaining.-(5) >= 0
        nickles = nickles.+(1)
        amount_remaining = amount_remaining.-(5)

      puts("amount remaining: ")
      puts(amount_remaining)
      end

      # Pennies
      while amount_remaining.-(1) >= 0
        pennies = pennies.+(1)
        amount_remaining = amount_remaining.-(1)

      puts("amount remaining: ")
      puts(amount_remaining)
      end


    end


    change.push(quarters)
    change.push(dimes)
    change.push(nickles)
    change.push(pennies)
    change

  end
end
