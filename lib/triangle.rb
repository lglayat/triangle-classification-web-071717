class Triangle
  # write code here
  attr_reader :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end


  def kind

    if @first <= 0 || @second <= 0 || @third <= 0
        raise TriangleError
    elsif @first + @second <= @third || @third + @second <= @first || @first + @third <= @second
        raise TriangleError
    elsif @first == @second && @second == @third
      :equilateral
    elsif @first == @second || @second == @third || @third == @first
      :isosceles
    elsif @first != @second && @second != @third && @third != @first
      :scalene
    end
  end


end



  class TriangleError < StandardError
  end
