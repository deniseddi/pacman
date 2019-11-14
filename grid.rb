# x = width
# y = height
class Grid 
    def initialize (x = 5, y = 5) # or x = 4 y = 4??
        @x = x
        @y = y
    end

    def valid_x_input?(x)
      (0..@x-1).include?x # range is inclusive of the last number. 
    #   x.include?(0..5) ? does not work Might not need include?x anyway
    end

    def valid_y_input?(y)
        (0..@y-1).include?y
    end

    def valid_x_y_position?(x,y)
        valid_x_input?(x) && valid_y_input?(y)
    end
end