class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|

      t.integer :short_url_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
    add_index :visits, [:user_id, :short_url_id], unique:true
  end
end
