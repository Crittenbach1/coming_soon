class ComingSoon::Movie

   def self.scrape_movies

       html = Nokogiri::HTML(open('https://www.imdb.com/movies-in-theaters/?ref_=cs_inth'))

       @list_items = html.css('div.list.detail.sub-list div.list_item')

       @list_items.each do |i|
         @movies << @movie = TestNokogiri::Test.new
         @movie.title = i.css("h4").text.strip
         @movie.time = i.css("time").text.strip
         @movie.description = i.css(".outline").text.strip
       end




   end

end
