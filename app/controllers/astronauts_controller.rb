class AstronautsController < ApplicationController

  def index
    @astronauts = Astronaut.all
  end

  def self.average_age
    avg(:age)
  end

end
