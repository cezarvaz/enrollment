class AddStudentRefToClassrooms < ActiveRecord::Migration
  def change
    add_reference :classrooms, :student, index: true, foreign_key: true
  end
end
