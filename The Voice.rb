require './fan.rb'
require './artist.rb'

class TheVoice #anything that happens with the game we put it in here.

  def initialize
    start
  end




  def start
    puts 'Welcome to the Voice!'
    puts 'Press A to begin'
    user_input("Press A or B to begin",[:answer_a, :answer_b],"A","B")
  end

  def answer_a
    puts "User answered A"
  end


  def answer_b
    puts "User answered B"
  end

  def user_input(question, options=[], *possible_answers,index)
    answer = nil

    until answer
      puts question
      input = gets.chomp.downcase


      possible_answers.each_with_index do |user_answer, index|
   #this is going to loop through all of the possible options
      #the above code#once if loops through its going to check to see if the options match

        if input == user_answer

          answer = index #then its going to get the index of the input that matches and then save it as answer
      end

    end
  end

  #
  # send(options,[answer])


  # options[answer]

  end
end

  # def A
  # end
  #
  # def B
  # end
  #
  # end
  #
  # user_input({option_one: :go_to_part_A, option_two: :go_to_part_B})

end

TheVoice.new_human
