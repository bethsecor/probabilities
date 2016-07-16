gem 'minitest', '>= 5.0.0'

require 'minitest/autorun'
require 'minitest/pride'
require_relative 'probabilities'

class ProbabilitiesTest < Minitest::Test
  def test_two_by_two_table
    table = [[1, 1], [1, 1]]
    prob = Probabilities.new(table)

    assert_equal table, prob.table
  end
end
