class Triangle
  
  attr_accessor :side1
  attr_accessor :side2
  attr_accessor :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (side1==side2 && side2==side3)
      :equilateral
    elsif (side1==side2 || side1==side3 || side2==side3)
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle?
    (side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1) && ([side1, side2, side3].all?(&:positive?))
  end
  def validate_triangle
    raise TriangleError unless valid_triangle?
  end

  class TriangleError < StandardError
  end
end
