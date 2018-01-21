# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  negative_values? a, b, c
  not_triangle? a, b, c
  if a == b && a == c
    :equilateral
  elsif a == b || a == c || b == c
    :isosceles
  else
    :scalene
  end
end

def negative_values? *values
  values.each do |value| 
    if value < 1
      raise TriangleError.new("Values should be strictly positives")      
    end
  end
end

def not_triangle? a, b, c
  if a+b <= c || a+c <= b || b+c <= a
    raise TriangleError.new("Not triangle")
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
