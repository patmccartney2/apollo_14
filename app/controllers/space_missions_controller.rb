class SpaceMissionsController < ApplicationController

  def index
    @space_missions = SpaceMission.all
  end

end
