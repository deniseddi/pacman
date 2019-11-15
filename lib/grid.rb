# x = width
# y = height

class Grid 
    def initialize (x = 5, y = 5) 
        @x = x 
        @y = y 
    end

    def valid_x_y_position?(x,y)
        (0...@x).cover?(x) && (0...@y).cover?(y)  # ... doesn't include last digit, .. does
    end 

end