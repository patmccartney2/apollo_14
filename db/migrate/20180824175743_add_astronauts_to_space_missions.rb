class AddAstronautsToSpaceMissions < ActiveRecord::Migration[5.1]
  def change
    add_reference :space_missions, :astronauts, foreign_key: true
  end
end
