class Test
  attr_reader :user_score

  def initialize
    current_path = File.dirname(__FILE__)
    questons_path = current_path + "/../data/questions.txt"

    File.open(questons_path) do |file|
      @questions = file.readlines
    end
    @user_score = 0
  end

  def collecting_answers
    input = nil

    until input == "да" || input == "нет" || input == "иногда"
      puts "\nВведите: да, нет или иногда"
      input = STDIN.gets.chomp.downcase
    end

    if input == "да"
      @user_score += 2
    elsif input == "иногда"
      @user_score += 1
    end
  end

  def print_questions
    @questions.each do |question|
      puts question
      collecting_answers
    end
  end
 end