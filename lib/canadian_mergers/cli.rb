# CLI Controller
class CanadianMergers::CLI
  attr_accessor :year, :month

  def call
    menu
    list_mergers(:year, :month)
  end

  def menu
    puts 'Please enter the year you would like to access: '
    @year = gets.strip
    puts 'Please enter the month you would like to access:'
    @month = gets.strip
  end

  def list_mergers(year, month)
    puts "Merger reviews concluded for the period of #{@month}, #{@year}:"
    puts <<-DOC

    |           Parties to the Transaction           | Industry |  Result |
    | --------------------------------------------------------------------|
    | Acklands-Grainger Inc. / WFS Enterprises Ltd.  |   4189   |   NAL   |
    | --------------------------------------------------------------------|
    | AECOM Technology Corporation / URS Corporation |   5413   |   NAL   |
    | --------------------------------------------------------------------|

    DOC
  end

end
