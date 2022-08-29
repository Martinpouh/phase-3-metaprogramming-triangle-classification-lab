require 'pry'
class Triangle
  # write code here

  attr_accessor :lgth1, :lgth2, :lgth3

  def initialize(lgth1, lgth2, lgth3)
    @lgth1 = lgth1
    @lgth2 = lgth2
    @lgth3 = lgth3
  end

  def kind
    if is_triangle?
      sides = [lgth1, lgth2, lgth3]
      if sides.uniq.size == 1
        :equilateral
      elsif sides.uniq.size == 2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

  private
  def is_triangle?
    sorted = [lgth1, lgth2, lgth3].sort
    longest_side = sorted.pop
    longest_side < sorted.sum
  end

  def triangle_type

  end
end