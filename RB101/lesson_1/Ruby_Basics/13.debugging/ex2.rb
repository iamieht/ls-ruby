# Weather Forecast
# Our predict_weather method should output a message indicating whether a sunny or cloudy day lies ahead. However, the output is the same every time the method is invoked. Why? Fix the code so that it behaves as expected.
# def predict_weather
#   sunshine = ['true', 'false'].sample

#   if sunshine
#     puts "Today's weather will be sunny!"
#   else
#     puts "Today's weather will be cloudy!"
#   end
# end

def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

# In order for the method to behave as expected, we should assign sunshine to the Boolean true or false instead of the string 'true' or 'false'.