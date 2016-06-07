def echo(x)
  x
end

def shout(x)
  x.upcase
end

def repeat(x, times = 2)
  xx = (x + " ")* times
  xx.chop
end

def start_of_word(string, num)
  string[0..(num-1)]
end

def first_word(string)
  x = string.split
  return x[0].to_s
end

def titleize(string)
  array = string.split(" ")
  if array.length == 1
    return array.join.capitalize
  else
    capitalized_array = []
    capitalized_array << array[0].capitalize
    capitalized_array << array[1..array.length].map do |word|
      if word == "the"
        word
      elsif word == "over"
        word
      elsif word == "and"
        word
      else
        word.capitalize
      end
    end
  end
  capitalized_array.join(" ")
end
