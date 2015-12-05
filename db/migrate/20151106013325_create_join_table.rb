class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :agents, :listings do |t|
      t.integer :agent_id
      t.integer :listing_id
    end
  end
end
