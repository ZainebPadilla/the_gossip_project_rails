class RemoveGossipFromTag < ActiveRecord::Migration[7.2]
  def change
    remove_column :tags, :gossip_id
  end
end
