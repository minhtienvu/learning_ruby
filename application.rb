class Application
  $TEST_GLOBAL_RUBY_VERSION = '3.0.0'
  @@TEST_CLASS_VARIABLE = "Class variable of Application file"
  TEST_CONSTANT_VARIABLE = 'Constant variable of Application file'

  def login
    puts "Dang nhap thanh cong ben Application"
  end
end