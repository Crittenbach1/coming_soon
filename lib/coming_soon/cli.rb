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

    @movies = ComingSoon::Movie.scrape_movies

    @movies.each_with_index do |m, index|
      puts "#{index + 1}. #{m.title}"
    end

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
