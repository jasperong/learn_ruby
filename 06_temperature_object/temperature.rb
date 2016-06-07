class Temperature
  attr_accessor :temp_hash

  def initialize(temp_hash)
    @temp_hash = temp_hash
  end

  def to_celsius
    if @temp_hash.include?(:f)
      (@temp_hash[:f] - 32) * 5.0 / 9.0
    else
      @temp_hash[:c]
    end
  end

  def to_fahrenheit
    if @temp_hash.include?(:c)
      @temp_hash[:c] * 9.0 / 5.0 + 32
    else
      @temp_hash[:f]
    end
  end

  def self.in_celsius(c_temp)
    new({c: c_temp})
  end

  def self.in_fahrenheit(f_temp)
    new({f: f_temp})
  end
end

class Celsius < Temperature
  def initialize(c_temp)
    temp_hash = {c: c_temp}
    super(temp_hash)
  end
end

class Fahrenheit < Temperature
  def initialize(f_temp)
    temp_hash = {f: f_temp}
    super(temp_hash)
  end
end
