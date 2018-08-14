class Triangle
  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3]
    if !self.valid?
      raise TriangleError
    end
  end

  def kind
    kind_of_triangle = nil
    unique_sides = @sides.uniq.count
    
    case unique_sides
    when 1
      kind_of_triangle = :equilateral
    when 2
      kind_of_triangle = :isosceles
    when 3
      kind_of_triangle = :scalene
    end
    kind_of_triangle
  end

  def valid?
    valid = true
    @sides.each do |side|
      valid = false if side <= 0
    end
    valid = valid && @sides[0] + @sides[1] > @sides[2]
    valid = valid && @sides[1] + @sides[2] > @sides[0]
    valid = valid && @sides[0] + @sides[2] > @sides[1]
    valid
  end

  class TriangleError < StandardError

  end
end
