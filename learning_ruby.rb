require 'byebug' ## Need to declare to import byebug library
require 'pry' ## Need to declare to import pry library
require './application.rb' # Super Class. This is a syntax to import asolute path. This method expects that the argument includes an absolute path.
require_relative 'application.rb' # This is a syntax to import relative path. It first finds the requiring file or library path, and then determine an absolute path according to the required file or library.
require_relative 'extend_module'
require_relative 'include_module'

class LearningRuby < Application # Create application file to makes it a super class
  include Student # Only can access print_student method with the instance class
  extend School # Only can access print_school method with the class method

  # Setter: Need to have same method name with param name
  def name=(name)
    @name = name
  end

  # Getter. Need to have same method name with param name
  def name
    @name
  end

  def hello
    puts "My name is #{@name}"
  end

  def get_class_variable_from_application_file
    @@TEST_CLASS_VARIABLE
  end

  def self.set_class_method_way_1
    puts "Way 1 to declare class method."
  end

  def LearningRuby.set_class_method_way_2
    puts "Way 2 to declare class method."
  end

  class << self
    def set_class_method_way_3
      puts "Way 3 to declare class method."
    end
  end
end

ruby = LearningRuby.new
ruby.name = "Vu Minh Tien" # Use core setter syntax
puts ruby.hello
puts ruby.login
puts ruby.print_student # Access print_student method of Module by include syntax 
puts LearningRuby.print_school # Access print_school method of Module by extend syntax

puts '--------------'
puts $TEST_GLOBAL_RUBY_VERSION # Use global variable of application file
puts ruby.get_class_variable_from_application_file # Get class variable from application file after inheritting
puts LearningRuby::TEST_CONSTANT_VARIABLE
puts '--------------'
puts LearningRuby.set_class_method_way_1 # Way 1: Use .self syntax to declare class method
puts LearningRuby.set_class_method_way_2 # Way 2: Use ClassName syntax to declare class method
puts LearningRuby.set_class_method_way_3 # Way 3: Use class << self to declare class method
puts '--------------'