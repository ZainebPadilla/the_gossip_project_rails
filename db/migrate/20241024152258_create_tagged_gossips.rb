class CreateTaggedGossips < ActiveRecord::Migration[7.2]
  def change
    create_table :tagged_gossips do |t|
      t.references :gossip, index: true
      t.references :tag, index: true
      t.timestamps
    end
  end
end
