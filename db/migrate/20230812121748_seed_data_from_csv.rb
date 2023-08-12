require 'csv'

class SeedDataFromCsv < ActiveRecord::Migration[7.0]
  def up
    # Read the CSV file and loop through each row
    csv_file_path = File.join(Rails.root, '/dogs_licence.csv')
    CSV.foreach(csv_file_path, headers: true) do |row|
      # Create a new record using the row data
      Dog.create!(row.to_hash)
    end
  end

  def down
    # Delete seeded data if needed (optional)
  end
end
