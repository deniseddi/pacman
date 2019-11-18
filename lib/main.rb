require_relative 'pacman'
require_relative 'grid'
require 'pry'

class Main
    def initialize 
        @grid = Grid.new
    end

    def run 
        puts "Welcome to PACMAN game!"
        puts "To start the game, you need to position PACMAN on the board."
        puts "Write PLACE following by the two numbers (from 0 to 5) and one direction (NORTH, SOUTH, EAST,WEST)"
        puts "For example: PLACE 0,0,North"
        prompt_user 
       
    end

    def prompt_user 
        loop do
            puts "Enter your command here"
            input = gets.chomp
            if input.split(' ').include?('PLACE') # the PLACE command is really initialising the pacman
                # breaking up the input 
                x, y, f = parse_command(input)
                 # if statement is now checking to make sure there is a first Place 
                if @grid.valid_x_y_position?(x,y)
                    @pacman = Pacman.new(x, y, f)
                else
                    puts "Enter a valid location"
                end
            elsif input == 'MOVE'
                @pacman.move
            elsif input == 'LEFT'
                @pacman.left
            elsif input == 'RIGHT'
                @pacman.right
            elsif input == 'REPORT'
                puts @pacman.current_position
            elsif input == 'exit'
                break
            end
        end
    end

    def parse_command(input)
        # input.split(' ').include?('PLACE')
        x = input.split(' ').last.split(',')[0].to_i
        y = input.split(' ').last.split(',')[1].to_i
        f = input.split(' ').last.split(',')[2]
        return [x, y, f]
    end
end

m = Main.new
m.run