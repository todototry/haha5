class CreateVaccines < ActiveRecord::Migration
  def self.up
    create_table :vaccines do |t|
      t.integer :com_id
      t.string :name
      t.date :time
      t.string :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :vaccines
  end
end
