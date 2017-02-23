module BookKeeping
  VERSION = 3
end

class Pangram
  def self.pangram?(phrase)
    ('a'..'z').all? { |x| phrase.downcase.include?(x) }
  end
end
