require 'rails_helper'


describe 'atronaut index' do
  it 'user can see all space missions in order for each astro' do
    astronaut_1 = Astronaut.create(name: 'John Glenn', job: 'engineer', age: 50)
    astronaut_2 = Astronaut.create(name: 'Buzz Aldren', job: 'conspiract theorist', age: 90)
    mission_1 = SpaceMission.create(title: 'Apollo 13', trip_length: 60)
    mission_2 = SpaceMission.create(title: 'Rolling Thunder', trip_length: 800)

    visit '/astronauts'

    expect(page).to have_content(mission_1.title)
    expect(page).to have_content(mission_2.title)

  end
end
