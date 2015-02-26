require_relative '../../config/application'

class CreateTodos < ActiveRecord::Migration

  def change
    create_table :todos do |x|
      x.string :task
      x.date :due_date
      x.timestamps null:false
    end
  end
end
