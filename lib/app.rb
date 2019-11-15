
    require_relative 'simulator'
    require_relative 'pacman'
    require_relative 'grid'

        def prompt_user
            # simulator = Simulator.new  it can stay HERE
            # grid = Grid.new
           
            # puts "Start the game? y/n"
            puts "Welcome to PACMAN game!"
            puts "To start the game, position PACMAN on the board."
            puts "Write PLACE following by the two numbers (from 0 to 5) and one direction (NORTH, SOUTH, EAST,WEST)"
            puts "For example: PLACE 0,0,North"

            loop do
                puts "Enter your command here" 
                input = gets.chomp
                if input.split(' ').include?('PLACE')
                    x,y,f = parse_command(input)
                    #debugger here
                    pacman = Pacman.new(x, y, f) # PAM refers to this function on comments
                elsif input == 'REPORT'
                    # puts pacman.current position ?
                elsif input == 'MOVE'

                elsif input == 'exit'
                    break
                end

               end
            end

            #     elsif input == 'REPORT'
            #         puts position.current_position
            #         # puts "lets try to get the report" 
            #         # .current_position
            #     else    
            #         puts "try placing pacman again"
            #     end
            # end

            # f is valid if if (f.upcase == "NORTH"||f.upcase == "EAST"||f.upcase == "SOUTH"||f.upcase == "WEST")

            def parse_command(input)
                # grid = Grid.new
                # directions = ["NORTH","EAST","SOUTH","WEST"]
                input.split(' ').include?('PLACE')
                x = input.split(' ').last.split(',')[0].to_i
                y = input.split(' ').last.split(',')[1].to_i
                f = input.split(' ').last.split(',')[2]
                return [x,y,f]
            end
            prompt_user
                

    
                        # if (f.upcase == "NORTH"||f.upcase == "EAST"||f.upcase == "SOUTH"||f.upcase == "WEST")

                        # if directions.to_s.include?(f.upcase)
                        #     position = Pacman.new(x,y,f)
                        #     position.current_position
                        # end
                       
            #         else    
            #             puts "try placing pacman again" 
            #         end
            #     end
            # end
            # prompt_user

                # case input 
                # when 'REPORT'
                #     position = Pacman.new(x,y,f)
                #     puts position.current_position
                # else   
                #     puts "I don't know that command"
                # end
        
    #     end
        

    # ?another def Method to call ## simulator.new 
                           ## grid.new 
                            ## PAcman.new 