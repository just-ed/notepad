class Memo < Post

  def read_from_console
    puts 'Новая заметка (все, что пишете до строчки "end"):'

    @text = []
    user_input = nil

    until user_input == "end"
      user_input = STDIN.gets.chomp
      @text << user_input
    end

    @text.pop
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")}\n\n"

    @text.unshift(time_string)
  end
end
