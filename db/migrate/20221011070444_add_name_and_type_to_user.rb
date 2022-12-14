# frozen_string_literal: true

class AddNameAndTypeToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :type, :string
  end
end
