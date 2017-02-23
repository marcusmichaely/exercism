module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Hamming
  def self.compute(dna1, dna2)
    raise ArgumentError if dna1.length != dna2.length
    return 0 if dna1.eql?(dna2)
    dna1.chars.zip(dna2.chars).count { |a, b| a != b }
  end
end
