# Instantiate list from merger objects
class CanadianMergers::MergerList

  def self.table(year, month)
    # Constructs table from array of merger objects using terminal-table
    CanadianMergers::Scrape.new(year, month).table_data
    headings = ['Parties to Transaction', 'Industry', 'Result']

    table = Terminal::Table.new headings: headings do |t|
      CanadianMergers::Merger.all.each do |merger|
        t.add_row [merger.parties, merger.industry, merger.result]
      end
      t.style = { all_separators: true, alignment: :center }
    end
    puts table
  end

  def self.to_csv
    # converts table to csv
    puts 'CSV created!'
  end

end
