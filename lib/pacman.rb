# x = width
# y = height

class Pacman #PLACE
    def initialize(x, y, f)
        @x = x
        @y = y 
        @facing = f
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

    def left
        case @facing
        when 'NORTH'
          @facing = 'WEST'
        when 'WEST'
          @facing = 'SOUTH'
        when 'SOUTH'
          @facing = 'EAST'
        when 'EAST'
          @facing = 'NORTH'
        end
    end
    
    def right
        case @facing
        when 'NORTH'
          @facing = 'EAST'
        when 'EAST'
          @facing = 'SOUTH'
        when 'SOUTH'
          @facing = 'WEST'
        when 'WEST'
          @facing = 'NORTH'
        end
    end

    def current_position # REPORT - There should be a method where pacman knows where it is at all times and show/output to REPORT
        pacman_position = @x, @y, @facing
        pacman_position.join(', ')
    end

    def valid_f_position?(f)
         if (@facing.upcase == "NORTH" || @facing.upcase == "EAST" || @facing.upcase == "SOUTH" || @facing.upcase == "WEST")
            return true
         else 
            return false
         end
    end
end
           
   

