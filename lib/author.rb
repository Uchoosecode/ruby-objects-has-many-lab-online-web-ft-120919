require 'pry'

class Author 
  
attr_accessor :name, :posts

  @@all = 0 

  def initialize(name= "Betty")
    @name = name
    @posts = []
  end
  
  def posts 
    Post.all.select {|post| post.author == self}
    
  end
  
  def add_post(title)
    @posts << title
    title.author = self
  end
  
  
  def add_post_by_title(title)
    titles = Post.new(title)
    @posts << title
    title.author = self
  end
  
  # def self.song_count
  # Post.all.count 
  # end
  
  
end


