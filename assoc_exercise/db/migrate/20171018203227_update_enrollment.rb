class UpdateEnrollment < ActiveRecord::Migration[5.1]
  def change
    add_column :enrollments, :user_id, :integer, null:false
    add_column :enrollments, :course_id, :integer, null:false
  end
end
