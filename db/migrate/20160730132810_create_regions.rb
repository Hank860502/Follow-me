class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|

    	t.string :name
    	t.string :image
    	# t.float :lng
    	# t.float :lat

      t.timestamps null: false
    end
  end
end
