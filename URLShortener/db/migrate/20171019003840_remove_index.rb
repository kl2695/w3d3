class RemoveIndex < ActiveRecord::Migration[5.1]
  def change
    remove_index :visits, [:user_id, :short_url_id]
  end
end
