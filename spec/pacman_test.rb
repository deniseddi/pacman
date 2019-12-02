require 'minitest/autorun'
require_relative '../lib/pacman' # ##fix location of file 

class PacmanTest < MiniTest::Test

    def test_true_for_valid_f
        pacman = Pacman.new(2,2,"North")
        expected = pacman.valid_f_position?("") # needs to figure it out
        assert_equal true, expected 
    end

    # write more tests

end