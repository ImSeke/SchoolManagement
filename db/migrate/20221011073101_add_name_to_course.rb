# frozen_string_literal: true

class AddNameToCourse < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :name, :string
  end
end
