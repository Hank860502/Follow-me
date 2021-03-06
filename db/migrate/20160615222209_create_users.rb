class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :region_id
      t.string :image
      t.string :skype
      t.boolean :guide, default: :false
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
