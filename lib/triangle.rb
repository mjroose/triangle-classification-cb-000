class Triangle
  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3]
  end

  def kind


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
