require_relative '../../config/application'

class AddColumnTodos < ActiveRecord::Migration

  def change
    add_column :todos, :complete, :boolean, default: false
  end
end