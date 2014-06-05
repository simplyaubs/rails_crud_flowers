require 'spec_helper'

feature 'CRUD favorite flowers' do
  scenario 'User can create a list of flowers' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a flower'
    fill_in 'Name', with: 'Pansey'
    fill_in 'Color', with: 'Purple'
    click_on 'Add flower'
    expect(page).to have_content 'Pansey'
    expect(page).to have_content 'Purple'
  end
end