class CreateSpills < ActiveRecord::Migration[5.0]
  def change
    create_table :spills do |t|
      t.string :contaminant
      t.string :incident_url
      t.date :date_reported
      t.date :date_incident
      t.string :county
      t.float :latitude
      t.float :longitude
      t.integer :volume
      t.string :units
      t.string :contained

      t.timestamps
    end
  end
end
