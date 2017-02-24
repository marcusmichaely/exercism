module BookKeeping
  VERSION = 2
end

class Robot
  @@robots = []

  def initialize
    @name = ''
  end

  def name
    return @name unless @name.empty?
    tmp = tmp_name while check_name_already_exists(tmp)
    @@robots << tmp
    @name = tmp
  end

  def reset
    @name = ''
  end

  def tmp_name
    char_array = [*'A'..'Z']
    2.times do
      @name << char_array[rand(26)]
    end
    3.times do
      @name << rand(9).to_s
    end
    name.to_s
  end

  def check_name_already_exists(name)
    @@robots.include?(name)
  end

  private :tmp_name, :check_name_already_exists
end
