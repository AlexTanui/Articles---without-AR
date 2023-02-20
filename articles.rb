class Author
    attr_reader :name
  
    def initialize(name)
      @name = name
      @articles = []
    end
  
    def articles
      @articles.dup
    end
  
    def magazines
      @articles.map(&:magazine).uniq
    end
  
    def add_article(magazine, title)
      article = Article.new(self, magazine, title)
      @articles << article
      magazine.add_article(article)
    end
  
    def topic_areas
      magazines.map(&:category).uniq
    end
  end
  
  class Magazine
    attr_reader :name, :category
  
    def initialize(name, category)
      @name = name
      @category = category
      @articles = []
    end
  
    def name=(new_name)
      @name = new_name
    end
  
    def category=(new_category)
      @category = new_category
    end
  
    def self.all
      ObjectSpace.each_object(self).to_a
    end
  
    def add_article(article)
      @articles << article
    end
  
    def article_titles
      @articles.map(&:title)
    end
  
    def contributors
      @articles.map(&:author).uniq
    end
  
    def self.find_by_name(name)
      all.find { |magazine| magazine.name == name }
    end
  
    def contributing_authors
      contributors.select { |author| author.articles.count > 2 }
    end
  end
  
  class Article
    attr_reader :title, :author, :magazine
  
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
    end
  
    def self.all
      ObjectSpace.each_object(self).to_a
    end
  end
  
 