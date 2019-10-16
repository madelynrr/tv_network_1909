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
    chars = @shows.map do |show|
      show.characters
    end.flatten
    chars.sort_by do |char|
      char.salary
    end.last.actor
  end
end

#array of shows => show objects
#each show object => array of actors
#each actor object => hash with salary
