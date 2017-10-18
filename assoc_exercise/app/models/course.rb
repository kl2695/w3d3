# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string           not null
#  prereq_id  :integer
#

class Course < ApplicationRecord

  has_many :enrollments,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: :Enrollment

  has_many :enrolled_students,
    through: :enrollments,
    source: :user

  belongs_to :prerequisite,
    primary_key: :id,
    foreign_key: :prereq_id,
    class_name: :Course,
    optional: true

    belongs_to :instructor,
      primary_key: :id,
      foreign_key: :instructor_id,
      class_name: :User,
      optional: true
end
