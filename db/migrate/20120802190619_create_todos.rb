class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.integer :list_id
      t.datetime :due_date

      t.timestamps
    end
  end
end
