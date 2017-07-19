# CLI Controller
class CanadianMergers::CLI
  attr_accessor :year, :month

  def call
    menu
    list_mergers
    goodbye
  end

  def menu
    puts 'Please enter the year you would like to access: '
    @year = gets.strip
    puts 'Please enter the month you would like to access:'
    @month = gets.strip.downcase
  end

  def list_mergers
    puts "Merger reviews concluded for the period of #{@month.capitalize}, #{@year}:"
    @merger_list = CanadianMergers::Mergers.all
  end

  def goodbye
    puts 'Would you like to convert this table to CSV? (Y/n)'
    input = gets.strip
    to_csv if /y/i =~ input
  end

  def to_csv
    # converts table to csv
    puts "CSV created as #{@month}-#{@year}.csv"
  end

end
