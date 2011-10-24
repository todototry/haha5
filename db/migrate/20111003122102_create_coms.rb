class CreateComs < ActiveRecord::Migration
  def self.up
    create_table :coms do |t|
      t.string :comname
      t.string :bossname
      t.string :tel
      t.string :fax
      t.string :www
      t.string :email
      t.string :qq
      t.string :identity
      t.string :addr
      t.integer :user_id
      t.binary :headimg
      t.string :rules
      t.timestamps
    end
  end

  def self.down
    drop_table :coms
  end
end
