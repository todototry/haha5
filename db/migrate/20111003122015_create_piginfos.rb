class CreatePiginfos < ActiveRecord::Migration
  def self.up
    create_table :piginfos do |t|
      t.string :pigid
      t.integer :breed_id
      t.string :earid
      t.string :sex
      t.date :birthday
      t.integer :birthorder
      t.integer :brothersnum
      t.integer :left
      t.integer :right
      t.float :weight
      t.string :state
      t.string :momid
      t.string :dadid
      t.integer :com_id
      t.integer :grouporder
      t.integer :mating_id

      t.timestamps
    end
  end

  def self.down
    drop_table :piginfos
  end
end
