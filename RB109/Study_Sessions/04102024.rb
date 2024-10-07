def method
  def process_text(text) # text = "hello"
    yield(text) if block_given?
    return text.upcase
  end

  message = "hello"

  process_text(message) do |msg|
    msg.capitalize!
  end

  puts message  # Hello
end

