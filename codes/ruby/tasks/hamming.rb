def hamming(dna1, dna2)
  diff = 0

  # dna1.split('').each_index {|index|
  #   diff += 1 if dna1[index] != dna2[index]
  # }
  dna1.length.times {|index|
    index -= 1
    diff += 1 if dna1[index] != dna2[index]
  }
  
  diff
end

dna1 = 'GGACG'
dna2 = 'GGTCG'
puts hamming(dna1, dna2)

dna1 = 'GGACGGATTCTG'
dna2 = 'AGGACGGATTCT'
puts hamming(dna1, dna2)
