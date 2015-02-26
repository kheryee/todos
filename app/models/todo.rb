require_relative '../../config/application'

class Todo < ActiveRecord::Base
  def self.list
    all.each_with_index do |x, index|
      c = x.complete ? "(/)" : "( )"
      puts "#{index+1}. #{x.task} #{c}"
    end
  end

  def self.add(input)
    puts "Added '#{input[1..-1].join(' ')}' to your to-do list."
    create(task: input[1..-1].join(' '))
  end

  def self.delete(id)
    puts "Deleted '#{all[id-1].task}' from your to-do list."
    all[id-1].destroy
  end

  def self.complete(id)
    puts "Congratulations on completing '#{all[id-1].task}'!"
    all[id-1].update(complete: true)
  end
end
