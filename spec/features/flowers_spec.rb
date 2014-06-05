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

  scenario 'User can update a flower' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a flower'
    fill_in 'Name', with: 'Pansey'
    fill_in 'Color', with: 'Purple'
    click_on 'Add flower'
    expect(page).to have_content 'Pansey'
    expect(page).to have_content 'Purple'
    click_on 'Pansey'
    click_on 'Edit'
    fill_in 'Name', with: 'Tulip'
    fill_in 'Color', with: 'Yellow'
    click_on 'Update flower'
    expect(page).to have_content 'Tulip'
    expect(page).to have_content 'Yellow'
    expect(page).to_not have_content 'Pansey'
    expect(page).to_not have_content 'Purple'
  end

  scenario 'User can delete a flower' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a flower'
    fill_in 'Name', with: 'Pansey'
    fill_in 'Color', with: 'Purple'
    click_on 'Add flower'
    expect(page).to have_content 'Pansey'
    expect(page).to have_content 'Purple'
    click_on 'Pansey'
    click_on 'Delete flower'
    expect(page).to_not have_content 'Pansey'
    expect(page).to_not have_content 'Purple'
  end
end