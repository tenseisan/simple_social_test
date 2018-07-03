require_relative 'lib/test_logic'
require_relative 'lib/test_result'

puts 'Тест "ВАШ УРОВЕНЬ ОБЩИТЕЛЬНОСТИ" v1.0'
puts
puts 'Вашему вниманию предлагается несколько простых вопросов. Отвечайте быстро,
 однозначно: «да», «нет», «иногда»'

# Creating class object
my_test = Test.new
# Starting the test
my_test.print_questions
result = TestResult.new

result.print_result(my_test)
