# Merger object
class CanadianMergers::Merger
  @@all = []
  attr_accessor :parties, :industry, :result

  def initialize(parties, industry, result)
    @parties = parties
    @industry = industry
    @result = result
  end

  def save
    self.class.all << self
  end

  def self.create(parties, industry, result)
    new(parties, industry, result).tap(&:save)
  end

  def self.all
    @@all
  end

  def self.destroy_all
    all.clear
  end
end
