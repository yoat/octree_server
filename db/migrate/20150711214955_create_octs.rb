class CreateOcts < ActiveRecord::Migration
  def change
    create_table :octs do |t|
      t.references :player, index: true
      t.references :oct, index: true
      t.integer :hyper
      t.integer :alpha
      t.integer :color
      t.string :sign_sha1

      t.timestamps
    end
  end
end
