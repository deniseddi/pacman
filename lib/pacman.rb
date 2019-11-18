# x = width
# y = height

class Pacman #PLACE
    def initialize(x, y, f)
        @x = x
        @y = y 
        @facing = f
    end

    def current_position # REPORT
        #there should be a method where pacman knows where it is at all times and output to REPORT
       pacman_position = @x, @y, @facing
       puts pacman_position.join(' ')
    end 

    # define methods for pacman's actions/ movements
    def move #MOVE
        case @facing
        when 'NORTH'
          @y += 1
        when 'SOUTH'
          @y -= 1
        when 'EAST'
          @x += 1
        when 'WEST'
          @x -= 1
        end
    end

    # def move 
    #     # if robot_placed ( haven't build this method yet...)
    #     case @facing 
    #     when 'NORTH'
    #         current_position(@x, @y + 1)
    #     end
    # end
   
end

# def valid_f_position?
    #      if (f.upcase == "NORTH"||f.upcase == "EAST"||f.upcase == "SOUTH"||f.upcase == "WEST")
    #         #??? true / position valid? 
    #      end
    # end

