require 'csv'
task :import => :environment do
  data = CSV.read('data.csv')

  data.each_with_index do |row, i|
    next if i.zero?

    HomicideRate.create!(
      country: row[0],
      year: row[1],
      count: row[2],
      rate: row[3],
      source: row[4],
      source_type: row[5]
    )
  end
end
