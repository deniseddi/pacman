require 'minitest/autorun'
# require "minitest/reporters" # optional
# Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new) # optional

require_relative '../lib/grid' # ##fix location of file 

class GridTest < MiniTest::Test

    def test_true_for_valid_position
        grid = Grid.new(5,5)
        expected = grid.valid_x_y_position?(2,2)
        assert_equal true , expected
    end

    def test_for_invalid_position
        grid = Grid.new(5,5)
        expected = grid.valid_x_y_position?(7,7)
        assert_equal false, expected
    end

    def test_for_negative_number 
        grid = Grid.new(5,5)
        expected = grid.valid_x_y_position?(-3,-3)
        assert_equal false, expected
    end

end