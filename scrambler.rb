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
      currentFace = randTurnID / 3 #gives 1-6 value based on cube face
      currentAxis = randTurnID / 6 #gives 1-3 value based on cube axis

      if currentFace == prevFace
        valid = false
      elsif currentAxis == prevPrevAxis && currentAxis == prevAxis
        valid = false
      else
        valid = true
        prevPrevAxis = prevAxis
        prevFace = currentFace
        prevAxis = currentAxis
      end
    end

    valid = false

    scramble << allturns[randTurnID] << " "
  end

  scramble.strip
end

puts getScramble