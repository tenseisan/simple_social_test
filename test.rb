require_relative "test_logic"
require_relative "test_result"

puts 'Тест "ВАШ УРОВЕНЬ ОБЩИТЕЛЬНОСТИ" v1.0'
puts
puts "Вашему вниманию предлагается несколько простых вопросов. Отвечайте быстро, однозначно: «да», «нет», «иногда»"

# Creating class object
# Starting the test
my_test = Test.new
result = TestResult.new

result.print_result(my_test)