# Scraper class
class CanadianMergers::Scrape
  attr_accessor :year, :month

  def initialize(year, month)
    @year = year
    @month = month
  end

  def get_page
    Nokogiri::HTML(open("http://www.competitionbureau.gc.ca/eic/site/cb-bc.nsf/eng/02435.html#details-panel#{@year}-#{@month}"))
  end

  def table_data
    get_page.css('tbody tr').each do |tag|
      data = tag.css('td').collect(&:text)
      CanadianMergers::Merger.create(data[0], data[1], data[2])
    end
  end
end
