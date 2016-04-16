require './Fan.rb'
require './Artists.rb'

####the point of this project is to make it so that you can create new objects inside of a class and then print it out

class TheVoice #anything that happens with the game we put it in here.

  def initialize
    @artists = []
    start
  end

  def start
    puts 'Welcome to the Voice!'
    main_menu
  end

#these two are separated so that when we go back to the main menu we dont keep re welcoming people

  def main_menu
    puts 'Would you like to'
    user_input("Make (P)eople or (V)ote?",[:make_person, :vote],"p","v")
  end

  def make_person
    user_input("Make (A)rtist or (F)an?",[:make_artist, :make_fan],"a","f")
  end

  def make_artist
    genres = ['hip-hop', 'polka', 'alternative', 'kanye', 'swag'].sample #This is basically a way of getting a random value out of an array
    puts "Enter a Name for your Artist:"
    @artists << Artist.new(gets.chomp.capitalize,genre)
    @artists.each do |a|
      puts a.name   #this code right here makes sure that the terminal prints the collection of artists that we have been saving up
      puts a.perf_genre
      puts "============="
    end
      main_menu
    #basically whenever it takes in a new artist its going to put this information; that is, their name and their genre
  end

  def list
      @artists.each do |a|
        puts "=========="
        puts a.name
        puts a.perf_genre
        puts "=========="
      end
      puts '_____________'
      main_menu
    end



  def vote
    puts "you voted"
  end

  def user_input(question,options=[],*possible_answers,index)
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
send(options[answer])
  # options[answer]
  end
end

TheVoice.new


  # def A
  # end
  #
  # def B
  # end
  #
  # end
  #
