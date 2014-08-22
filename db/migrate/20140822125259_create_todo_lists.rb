class CreateTodoLists < ActiveRecord::Migration
  def change
    create_table :todo_lists do |t|
      t.string :title
      t.string :description
      t.string :text
      t.string :first_value
      t.string :double
      t.string :second_value
      t.string :double
      t.string :total
      t.string :double
      t.string :address
      t.string :text
      t.string :phone_number
      t.string :string
      t.string :first_name
      t.string :string
      t.string :last_name
      t.string :string

      t.timestamps
    end
  end
end
