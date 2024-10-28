class AddRefPrivateMessage < ActiveRecord::Migration[7.2]
  def change
    add_reference :private_messages, :recipient, index: true
    add_reference :private_messages, :sender, index: true
  end
end
