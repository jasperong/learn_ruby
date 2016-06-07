def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(x)
  if x == []
    return 0
  else
    x.inject(:+)
  end
end

def product(x)
  x.inject(:*)
end

def factorial(x)
  if x == 0
    return 1
  else
    (1..x).inject(1, :*)
  end
end
