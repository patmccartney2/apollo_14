require 'rails_helper'


describe 'atronaut index' do
  it 'user can see average age of all astronauts' do
    astronaut_1 = Astronaut.create(name: 'John Glenn', job: 'engineer', age: 50)
    astronaut_2 = Astronaut.create(name: 'Buzz Aldren', job: 'conspiract theorist', age: 90)

    visit '/astronauts'

    expect(page).to have_content(Astronaut.average(:age))

  end
end
