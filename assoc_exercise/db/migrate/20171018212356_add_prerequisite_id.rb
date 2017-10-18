class AddPrerequisiteId < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :prereq_id, :integer
  end
end
