class ComingSoon::CLI

  def call
    welcome
    list_movies
    view_movie
  end

  def welcome
    puts "In Theaters Now - Box Office Top Ten"
    puts " "
  end

  def list_movies
    puts "1. Avengers: Infinity War (2018)"
    puts "2. Life of the Party (2018)"
    puts "3. Life of the Party (2018)"
    puts "4. Breaking In (2018)"
    puts "5. Overboard (2018)"
    puts "6. A Quiet Place (2018)"
    puts "7. I Feel Pretty (2018)"
    puts "8. Rampage (2018)"
    puts "9. Tully (2018) (2018)"
    puts "10. Black Panther (2018)"
    puts "11. RBG (2018)"
  end

  def view_movie
    input = nil
    while input != "exit"
     puts "enter a movie number for more info or type exit"
     input = gets.downcase.strip
     if input.to_i > 0 && input.to_i < 12
       puts "A Quiet Place (2018)"
       puts "90 min"
       puts "In a post-apocalyptic world, a family is forced to live in silence while hiding from monsters with ultra-sensitive hearing."
     elsif input == "list"
       list_movies
     else
       "please enter a movie number, list or exit"
     end
   end
  end

  






end
