
# require_relative 'app'

class Simulator

    def initialize()
        @grid = Grid.new ### this line is what is causing the NameError Simulator :: Grid
        #do I have to call grid at all?? Maybe not...

        # @pacman = Pacman.new ?? Pam said no...
    end

    def first_question_after_grid
        puts " Place pacman to start the game " # instructions on how to place pacman 
        #to start the game wirte PLACE and the coordenates numer 0-5 and facing 
    end

    # def turn_to (facing) 
    # # if robot_placed ( haven't build this method yet...)
    #     case facing
    #     when 'NORTH'
    #         current_position(@x, @y + 1, @facing)
    #     end
    # end

end



# def turn_to (facing) #facing?
    
    #   if robot_placed ( haven't build this method yet...)
    #   case facing
    #   when 'NORTH'
    #     turn_north
    #      current_position(@x, @y + 1, @facing)

    #      Pacman.new( ) ??
    # when 'SOUTH'
    #     turn_south
    #       current_position(@x, @y - 1, @facing)
    # when 'EAST'
    #   turn_east
    #       current_position(@x, @y - 1, @facing)
    # when 'WEST'
    #   turn_west
    #       current_position(@x, @y - 1, @facing)
    # else
    #   default ...? No move 