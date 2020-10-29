class AddFirstTables < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
    end
    add_index :teams, :name, unique: true

    create_table :games do |t|
      t.references :home_team, references: :teams
      t.references :away_team, references: :teams
      t.integer :home_score
      t.integer :away_score
      t.datetime :date
    end
  end
end
