# frozen_string_literal: true

class SubstituteDateForDayInLesson < ActiveRecord::Migration[7.0]
  def change
    remove_column :lessons, :date
    add_column :lessons, :date, :string
    add_column :lessons, :hour, :time
  end
end
