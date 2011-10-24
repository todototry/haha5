class CreateDiseases < ActiveRecord::Migration
  def self.up
    create_table :diseases do |t|
      t.integer :com_id
      t.integer :piginfo_id
      t.integer :diseasedesc_id
      t.date :time
      t.string :note

      t.timestamps
    end
  end

  def self.down
    drop_table :diseases
  end
end
