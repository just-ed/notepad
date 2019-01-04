class Post

  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
    #todo
  end

  def to_strings
    #todo
  end

  def save
    file = File.new(file_path, 'w:UTF-8')

    to_strings.each do |string|
      file.puts(string)
    end

    file.close
  end

  def file_path
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H_%M_%S.txt")
    "#{__dir__}/#{file_name}"
  end
end