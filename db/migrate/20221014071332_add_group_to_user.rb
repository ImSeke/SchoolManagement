# frozen_string_literal: true

class AddGroupToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :group
  end
end
