require 'rails_helper'
RSpec.describe 'As a visitor can see student info', type: :feature do
  before(:each) do
    @stu_1 = Student.create(name: 'Santiago', age:23, house: 'house_1')
    @stu_2 = Student.create(name: 'Jhon', age:25, house: 'house_4')
  end
  it 'can display all of the students info' do



    visit '/students'

    expect(page).to have_content('Santiago')
    expect(page).to have_content(23)
    expect(page).to have_content('house_1')

    expect(page).to have_content('Jhon')
    expect(page).to have_content(25)
    expect(page).to have_content('house_4')

  end
end
