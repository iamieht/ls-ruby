# Why is there an error?
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# because we are missing the & in the block parameter that allows a block to be passed as a parameter.