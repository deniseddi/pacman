
    require_relative 'simulator'
    require_relative 'pacman'
    
    def play_game
        simulator = Simulator.new
        # simulator.first_question_after_grid  # or 
 
        puts "Welcome to PACMAN game!"

        # puts "Start the game? y/n"
        # if yes ...
        puts "To start the game, you need to position PACMAN on the board."
        puts "Just write PLACE following by the two numbers (from 0 to 5) and one direction (NORTH, SOUTH, EAST,WEST)"
        puts "For example: PLACE 0,0,North"
        puts "Have a go:"
        # play = Command.new
        # simulator.first_question_after_grid
        #  puts " Place pacman to start the game " # instructions on how to place pacman 
        #to start the game wirte PLACE and the coordenates numer 0-5 and facing 
        # PLACE = gets.chomp
        #PLACE = Pacman.new ???
        answer = gets.chomp
        position = Pacman.new
        position.current_position
        # or grid.new ? 
    end

    # def start_simulator (simulator)
    #     simulator = Simulator.new
    # end

    play_game