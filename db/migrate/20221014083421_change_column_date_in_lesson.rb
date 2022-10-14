class ChangeColumnDateInLesson < ActiveRecord::Migration[7.0]
  def change
    remove_column :lessons, :date
    add_column :lessons, :day, :string
  end
end
