# frozen_string_literal: true

class AddLocationAndDateToLesson < ActiveRecord::Migration[7.0]
  def change
    add_column :lessons, :location, :string
    add_column :lessons, :date, :date
  end
end
