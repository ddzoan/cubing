def getScramble()
  allturns = ["L","L2","L'","R","R2","R'","U","U2","U'","D","D2","D'","F","F2","F'","B","B2","B'"]
  
  scramble = ""
  prevFace = -1
  prevAxis = -1
  prevPrevAxis = -1

  25.times do
    valid = false

    while !valid
      randTurnID = (allturns.length * rand).floor

      if (randTurnID / 3) == prevFace
        valid = false
      elsif (randTurnID / 6) == prevPrevAxis && (randTurnID / 6) == prevAxis
        valid = false
      else
        valid = true
        prevPrevAxis = prevAxis
        prevFace = randTurnID / 3
        prevAxis = randTurnID / 6
      end
    end

    valid = false

    scramble << allturns[randTurnID] << " "
  end

  scramble
end

puts getScramble