# Down the Rabbit Hole
# Sometimes, the documentation is going to leave you scratching your head.

# In a very early assignment at Launch School, you are tasked with writing a program that loads some text messages from a YAML file. We do this with YAML::load_file:

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# Find the documentation for YAML::load_file
https://docs.ruby-lang.org/en/3.2/Psych.html#method-c-load_file