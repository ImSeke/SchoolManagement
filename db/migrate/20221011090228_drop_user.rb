# frozen_string_literal: true

class DropUser < ActiveRecord::Migration[7.0]
  def up
    drop_table :users
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
