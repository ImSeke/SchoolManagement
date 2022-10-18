# frozen_string_literal: true

class AddGroupAndTeacherAndCourseToLesson < ActiveRecord::Migration[7.0]
  def change
    add_reference :lessons, :group
    add_reference :lessons, :teacher
    add_reference :lessons, :course
  end
end
