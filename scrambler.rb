def getScramble()
  allturns = ["L","L2","L'","R","R2","R'","U","U2","U'","D","D2","D'","F","F2","F'","B","B2","B'"]
  
  scramble = []
  25.times do |i|
    valid = false

    while !valid
      randindex = (18*rand).floor

      if i > 0
        if (randindex / 3) == (prevTurn) / 3)
          valid = false
        elsif i > 1 && (randindex / 6) == (prevTurn) / 6) && (randindex / 3) == (prevPrevTurn) / 3)
          valid = false
        else
          valid = true
          prevPrevTurn = prevTurn if i > 1
          prevTurn = randindex
        end
      else
        valid = true
        prevTurn = randindex
      end
    end

    valid = false

    scramble << allturns[randindex]
  end

  scramble.join
end

puts getScramble