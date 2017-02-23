module BookKeeping
  VERSION = 3
end

class Raindrops
  SUBSTITUTIONS = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }.freeze
  def self.convert(number)
    result = ''
    SUBSTITUTIONS.each_key do |key|
      result << SUBSTITUTIONS[key] if number.modulo(key).zero?
    end
    result.empty? ? number.to_s : result
  end
end
