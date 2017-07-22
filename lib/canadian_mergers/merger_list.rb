# Instantiate list from merger objects
class CanadianMergers::MergerList

  def self.table(year, month)
    # Constructs table from array of merger objects using terminal-table
    CanadianMergers::Scrape.new(year, month).table_data
    headings = ['Parties to Transaction', 'Industry', 'Result']

    table = Terminal::Table.new headings: headings do |t|
      CanadianMergers::Merger.all.each do |merger|
        parties = format_merger(merger.parties)
        t.add_row [parties, merger.industry, merger.result]
      end
      t.style = { all_separators: true, alignment: :center }
    end
    puts table
  end

  def self.to_csv(year, month)
    CSV.open("#{month}_#{year}_mergers.csv", 'w') do |csv|
      CanadianMergers::Merger.all.each do |merger|
        csv << [merger.parties, merger.industry, merger.result]
      end
    end
    puts 'CSV created!'
  end

  def self.format_merger(merger)
    merger.gsub('/', "/\n")
    merger.gsub(',', ",\n")
  end

end
