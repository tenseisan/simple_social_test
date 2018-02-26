class TestResult
  def initialize
    current_path = File.dirname(__FILE__)
    results_path = current_path + "/data/results.txt"

    File.open(results_path) do |file| # Read file with test results
    @results = file.readlines
    end
  end

  # shows result from array
  def print_result(my_test)
    puts "Результат теста:"

    case my_test.result
    when 30..32 then puts @results[0]
    when 25..29 then puts @results[1]
    when 19..24 then puts @results[2]
    when 14..18 then puts @results[3]
    when 9..13 then puts @results[4]
    when 4..8 then puts @results[5]
    else puts @results[6]
    end
  end
end