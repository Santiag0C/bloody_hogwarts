require 'rails_helper'

RSpec.describe 'the show page', type: :feature do
  before(:each) do
    @stu_1 = Student.create(name: 'Santiago', age:23, house: 'house_1')
    @stu_2 = Student.create(name: 'Jhon', age:25, house: 'house_4')

    @his = @stu_1.corses.create(name: 'history')
    @math = @stu_1.corses.create(name: 'math')

    @tur = @stu_2.corses.create(name: 'turing')
    @ast = @stu_2.corses.create(name: 'astronomy')


  end
  it 'can view a spesific student and the corses he takes' do

    visit "/students/#{@stu_1.id}"

    expect(page).to have_content('history')
    expect(page).to have_content('math')

    visit "/students/#{@stu_2.id}"

    expect(page).to have_content('turing')
    expect(page).to have_content('astronomy')

    
  end
end
