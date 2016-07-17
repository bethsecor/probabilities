class Probabilities
  attr_reader :table

  def initialize(table)
    @table = table
  end

  def odds_ratio
    (table[0][0] * table[1][0]).to_f / (table[0][1] * table[1][1])
  end
end
