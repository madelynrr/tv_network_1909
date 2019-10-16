class Network

  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    @shows.find_all do |show|
      show.characters.salary
    end
  end
end

#array of shows => show objects
#each show object => array of actors
#each actor object => hash with salary
