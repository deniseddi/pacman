# x = width
# y = height

class Pacman #PLACE
    def initialize(x = 0,y = 0,f = "NORTH")
        @x = x
        @y = y 
        @facing = f
    end

    def current_position # REPORT - there should be a method where pacman knows where it is at all times and show/output to REPORT
        # @position = @x,@y,@facing
       puts @x,@y,@facing
        # @pacman = x,y,facing ??
    end 

    def turn_to (facing) 
        # if robot_placed ( haven't build this method yet...)
        case facing
        when 'NORTH'
            current_position(@x, @y + 1, @facing)
        end
    end
   
end



