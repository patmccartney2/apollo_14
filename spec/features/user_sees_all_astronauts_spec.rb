require 'rails_helper'


describe 'atronaut index' do
  it 'user can see all astronauts' do
    astronaut_1 = Astronaut.create(name: 'John Glenn', job: 'engineer', age: 50)
    astronaut_2 = Astronaut.create(name: 'Buzz Aldren', job: 'conspiract theorist', age: 90)

    visit '/astronauts'

    expect(page).to have_content(astronaut_1.name)
    expect(page).to have_content(astronaut_1.job)
    expect(page).to have_content("#{astronaut_1.age}")
    expect(page).to have_content(astronaut_2.name)
    expect(page).to have_content(astronaut_2.job)
    expect(page).to have_content("#{astronaut_2.age}")
  end
end
