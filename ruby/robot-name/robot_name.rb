module BookKeeping
  VERSION = 2
end

class Robot
  @names = []
  CHARS = [*'A'..'Z'].freeze
  DIGITS = [*'0'..'9'].freeze
  attr_reader :name

  def initialize
    @name = Robot.generate_name
    self.class.register_name(@name)
  end

  def reset
    @name = Robot.generate_name
  end

  def self.generate_name
    loop do
      chars = Array.new(2) { CHARS.sample }
      digits = Array.new(3) { DIGITS.sample }
      name = [*chars, *digits].join
      return name unless @names.include?(name)
    end
  end

  def self.register_name(name)
    @names << name
  end
end
