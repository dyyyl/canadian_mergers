# Merger object
class CanadianMergers::Merger
  attr_accessor :parties, :industry, :result

  def initialize(parties, industry, result)
    @parties = parties
    @industry = industry
    @result = result
  end
end
