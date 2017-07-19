# CLI Controller
class CanadianMergers::CLI
  attr_accessor :year, :month

  def call
    menu
    puts 'Merger reviews concluded for the period:'
    list_mergers(:year, :month)
  end

  def menu
    puts 'Please enter the year you would like to access: '
    @year = gets.strip
    puts 'Please enter the month you would like to access:'
    @month = gets.strip
  end

  def list_mergers(year, month)
    # list mergers from scraped data
  end

end
