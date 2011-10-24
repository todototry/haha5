class CreateDiseasedescs < ActiveRecord::Migration
  def self.up
    create_table :diseasedescs do |t|
      t.integer :com_id
      t.string :diseasename
      t.string :note
      t.timestamps
    end
  end

  def self.down
    drop_table :diseasedescs
  end
end
