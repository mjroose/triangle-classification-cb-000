class Triangle
  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3]
  end

  class TriangleError < StandardError

  end
end
