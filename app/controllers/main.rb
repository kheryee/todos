require_relative '../../config/application'
require_relative '../models/todo.rb'


class MainProgram




  def self.run!
    input = ARGV
    case input[0]
    when 'list'
      Todo.list
    when 'add'
      Todo.add(input)
    when 'delete'
      Todo.delete(input[1].to_i)
    when 'complete'
      Todo.complete(input[1].to_i)
    end
  end



end


MainProgram.run!