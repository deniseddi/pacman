# x = width
# y = height

class Pacman #PLACE
    def initialize(x, y, f)
        @x = x
        @y = y 
        @facing = f
    end

    # def valid_f_position?
    #      if (f.upcase == "NORTH"||f.upcase == "EAST"||f.upcase == "SOUTH"||f.upcase == "WEST")
    #         #??? true / position valid? 
    #      end
    # end

    def current_position # REPORT - there should be a method where pacman knows where it is at all times and show/output to REPORT
       pacman_position = @x, @y, @facing
       puts pacman_position.join(' ')
        # @pacman = x,y,facing ??
    end 

    # define methods for pacman's actions/ movements

    def turn_to (facing) 
        # if robot_placed ( haven't build this method yet...)
        case @facing #or facing 
        when 'NORTH'
            current_position(@x, @y + 1, @facing)
        end
    end
   
end



