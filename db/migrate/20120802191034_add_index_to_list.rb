class AddIndexToList < ActiveRecord::Migration
  def change
    add_index :lists, :project_id
  end
end
