def getScramble()
  allturns = ["L","L2","L'","R","R2","R'","U","U2","U'","D","D2","D'","F","F2","F'","B","B2","B'"]
  
  scramble = []
  25.times do |i|
    valid = false

    while !valid
      randindex = (18*rand).floor

      if i > 0
        if (randindex / 3) == (allturns.index(scramble[i-1]) / 3)
          valid = false
        elsif i > 1 && (randindex / 6) == (allturns.index(scramble[i-1]) / 6) && (randindex / 3) == (allturns.index(scramble[i-2]) / 3)
          valid = false
        else
          valid = true
        end
      else
        valid = true
      end
    end

    valid = false

    scramble << allturns[randindex]
  end

  scramble
end

getScramble.each {|x| print x + ' '}
print "\n"