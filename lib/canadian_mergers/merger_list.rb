# Instantiate list from merger objects
class CanadianMergers::MergerList

  def self.table
    # Mocks table of merger objects
    # Constructs table from array of merger objects using terminal-table
    headings = ['Parties to Transaction', 'Industry', 'Result']
    table = Terminal::Table.new headings: headings do |t|
      t.add_row ['Acklands-Grainger Inc. / WFS Enterprises Ltd.', 4189, 'NAL']
      t.add_row ['AECOM Technology Corporation / URS Corporation', 5413, 'NAL']
      t.style = { all_separators: true, alignment: :center }
    end
    puts table
  end

  def self.to_csv
    # converts table to csv
    puts "CSV created!"
  end

end
