class Test
  def initialize
    current_path = File.dirname(__FILE__)
    questons_path = current_path + "/data/questions.txt"

    File.open(questons_path) do |file| # read questions.txt file
      @questions = file.readlines
    end

    @user_score = 0
    answers_count # initialize starting method which will display questions and collecting answers
  end

  # method getter will return string with score for result printer
  def result
    @user_score
  end

  # The method is private, to be called only once after object is created
  private

  def answers_count
    @questions.each do |item| # Puts questions
      puts item
      input = nil

      until input == "да" || input == "нет" || input == "иногда" # Check user input
        puts "\nВведите: да, нет или иногда"
        input = STDIN.gets.chomp.downcase
      end


      if input == "да" # Count user score
        @user_score += 2
      elsif input == "иногда"
        @user_score += 1
      end
    end
  end
end