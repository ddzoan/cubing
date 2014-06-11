def getScramble()
  allturns = ["L","L2","L'","R","R2","R'","U","U2","U'","D","D2","D'","F","F2","F'","B","B2","B'"]
  
  scramble = []
  prevFace = 0
  prevAxis = 0
  prevPrevAxis = 0

  25.times do |i|
    valid = false

    while !valid
      randTurnID = (18*rand).floor

      if i > 0
        if (randTurnID / 3) == prevFace
          valid = false
        elsif i > 1 && (randTurnID / 6) == prevPrevAxis && (randTurnID / 6) == prevAxis
          valid = false
        else
          valid = true
          prevPrevAxis = prevAxis if i > 1
          prevFace = randTurnID / 3
          prevAxis = randTurnID / 6
        end
      else
        valid = true
        prevFace = randTurnID / 3
        prevAxis = randTurnID / 6
      end
    end

    valid = false

    scramble << allturns[randTurnID]
  end

  scramble.join(' ')
end

puts getScramble