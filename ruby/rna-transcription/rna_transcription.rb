module BookKeeping
  VERSION = 4
end

class Complement
  TRANSLATION = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }.freeze
  def self.of_dna(dna)
    return '' unless dna.chars.all? { |e| TRANSLATION.key?(e) }
    dna.chars.map! { |x| TRANSLATION[x] }.join
  end
end
