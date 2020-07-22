class Triangle

  attr_accessor :a, :b, :c

  def initialize (a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    verify_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else
      :scalene
    end
  end

  def verify_triangle
    raise TriangleError if a + b <= c || b + c <= a || c + a <= b || a <= 0 || b <= 0 || c <= 0
  end

  class TriangleError < StandardError
  end

end
