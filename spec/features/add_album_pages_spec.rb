require 'rails_helper'

describe "the add a album process" do
  it "adds a new album" do
    visit albums_path
    click_on 'Create new album'
    fill_in 'Name', :with => 'Dark Side of the Moon'
    fill_in 'Genre', :with => 'Rock'
    click_on 'Create Album'
    expect(page).to have_content 'Album successfully added!'
    expect(page).to have_content 'Dark Side of the Moon'
  end

  it "gives an error when no name is entered" do
    visit new_album_path
    click_on 'Create Album'
    expect(page).to have_content "Name can't be blank"
  end
end
