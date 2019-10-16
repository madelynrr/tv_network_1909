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

    sorted_actors = chars.sort_by do |char|
      char.salary
    end

    sorted_actors.last.actor
  end
end
