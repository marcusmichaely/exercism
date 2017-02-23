module BookKeeping
  VERSION = 2
end

module ToRoman
  TRANSLATION = {
    1 =>	'I',
    4 =>	'IV',
    5 =>	'V',
    9 =>	'IX',
    10 =>	'X',
    40 =>	'XL',
    50 =>	'L',
    90 =>	'XC',
    100 =>	'C',
    400 =>	'CD',
    500 =>	'D',
    900 =>	'CM',
    1000 =>	'M'
  }.freeze

  def to_roman
    tmp = self
    roman_number = ''
    TRANSLATION.keys.reverse.each do |key|
      while tmp > key - 1
        roman_number += TRANSLATION[key]
        tmp -= key
      end
    end
    roman_number
  end
end

class Integer
  include ToRoman
end
