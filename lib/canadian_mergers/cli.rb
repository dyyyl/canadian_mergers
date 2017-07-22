# CLI Controller
class CanadianMergers::CLI
  attr_accessor :year, :month

  def call
    menu
    list_mergers
    goodbye
  end

  def menu
    until @year.to_i.between?(2012, Date.today.year)
      puts 'Please enter the year you would like to access:'
      @year = gets.strip
    end
    puts 'Please enter the month you would like to access (January - December)'
    @month = gets.strip.downcase
  end

  def list_mergers
    puts "Merger reviews concluded for the period of #{@month.capitalize}, #{@year}:"
    @merger_list = CanadianMergers::MergerList.table(@year, @month)
  end

  def goodbye
    puts 'Would you like to convert this table to CSV? (Y/n)'
    input = gets.strip
    CanadianMergers::MergerList.to_csv(@year, @month) if /y/i =~ input
  end
end
