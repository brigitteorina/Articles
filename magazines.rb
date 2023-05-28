class Magazine
    attr_reader :name, :category
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.find_by_name(name)
      @@all.find { |magazine| magazine.name == name }
    end
  
    def article_titles
      articles.map { |article| article.title }
    end
  
    def contributing_authors
      author_count = Hash.new(0)
      articles.each do |article|
        author_count[article.author] += 1
      end
      author_count.select { |author, count| count > 2 }.keys
    end
  
    private
  
    def articles
      Article.all.select { |article| article.magazine == self }
    end
  end

magazine1 = Magazine.new("Daily Nation", "Politics")
magazine2 = Magazine.new("The Star", "Education")

puts magazine1.name
puts magazine1.category
puts Magazine.all.inspect