class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
    	t.text :address
    	t.string :unit
    	t.integer :price
    	t.string :commission
    	t.string :access
    	t.text :description
    	t.text :img_url
    	t.belongs_to :agent
      t.timestamps null: false
    end
  end
end
