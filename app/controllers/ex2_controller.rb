class Ex2Controller < ApplicationController
  def loop
    a = params[:a]
    b = params[:b]

    x = Integer(a) rescue false
    y = Integer(b) rescue false

    if x == false or y == false
      if x == false and y == false
        @result = 'invalid input for both a and b'
      elsif x
        @result = 'invalid input for b'
      else
        @result = 'invalid input for a'
      end
    else
      if y >= x
        @result = (x..y).to_a
      end
    end
  end
end
