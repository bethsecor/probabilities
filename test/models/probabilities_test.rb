require_relative '../../app/models/probabilities'
require File.expand_path '../../test_helper.rb', __FILE__

class ProbabilitiesTest < Minitest::Test
  def test_two_by_two_table
    table = [[1, 1], [1, 1]]
    prob = Probabilities.new(table)

    assert_equal table, prob.table
  end

  def test_odds_ratio
    table = [[1, 6], [3, 2]]
    prob = Probabilities.new(table)

    assert_equal 0.25, prob.odds_ratio
  end
end
