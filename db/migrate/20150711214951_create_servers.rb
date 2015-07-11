class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.references :user, index: true
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
