class CreateBreeds < ActiveRecord::Migration
  def self.up
    create_table :breeds do |t|
      t.integer :com_id
      t.string :code
      t.string :name
      t.string :series
      t.timestamps
    end
  end

  def self.down
    drop_table :breeds
  end
end
