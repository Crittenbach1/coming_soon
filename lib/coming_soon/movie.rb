class ComingSoon::Movie

   def self.scrape_movies

       html = Nokogiri::HTML(open('https://www.imdb.com/movies-in-theaters/?ref_=cs_inth'))

       @list_items = html.css('div.list.detail.sub-list div.list_item')
       
   end

end
