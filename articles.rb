class Article
    attr_reader :author, :magazine, :title
    @@all = []
  
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
    end
  
    def self.all
      @@all
    end
  end


author1.add_article(magazine1, "Latest Discoveries in Physics")
author1.add_article(magazine1, "The Future of Space Exploration")
author2.add_article(magazine2, "Political Trends")

puts Article.all.inspect