class Movie
    def initialize (genre, rating, movie_name)
    @genre = genre
    @rating = rating
    @movie_name = movie_name

  end

  def about
    puts "It's a #{@rating} rated #{@genre} movie."

  end

end

class Character
  def initialize (sex, name, where)
    @sex = sex
    @name = name
    @where = where

  end

raven = Movie.new 'thriller','PG-13', 'Raven'

raven.about

end

class Main_Character < Character

  def about
    puts "The main charcter is a #{@sex} named #{@name} from #{@where}."
  end

end

class Love_Interest < Character

  def about
    puts "The love interest is a #{@sex} named #{@name} also from #{@where}."
  end

end

class Villian < Character

  def about
    puts "The villian is a #{@sex} named #{@name} from #{@where}."
  end

end

guy = Main_Character.new 'guy','Josh','Phoenix'

  guy.about

love = Love_Interest.new 'chick','Ava','Phoenix'

  love.about

devil = Villian.new 'woman','Raven','hell'

  devil.about

class Title < Movie

  def about
  puts "It's called #{@movie_name}"
  end

end

title = Title.new 'thriller','PG-13', 'Raven'

title.about
