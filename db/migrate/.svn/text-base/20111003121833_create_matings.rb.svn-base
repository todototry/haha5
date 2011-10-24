class CreateMatings < ActiveRecord::Migration
  def self.up
    create_table :matings do |t|
      t.integer :com_id
      t.string :momid
      t.string :dadid
      t.date :time
      t.string :state
      t.integer :sum
      t.integer :daughternum
      t.string :note

      t.timestamps
    end
  end

  def self.down
    drop_table :matings
  end
end
