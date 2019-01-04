require_relative 'post'
require_relative 'link'
require_relative 'memo'
require_relative 'task'

puts "Привет, я твой блокнот!"
puts "Что хочешь записать?"

choices = Post.post_types

choice = -1

until choice.between?(0, choices.size)
  choices.each_with_index do |type, index|
    puts "#{index}. #{type}"
  end

  choice = STDIN.gets.chomp.to_i
end

entry = Post.create(choice)
entry.read_from_console
entry.save

puts "Запись сохранена."
