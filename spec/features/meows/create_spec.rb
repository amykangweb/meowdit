require 'rails_helper'

describe 'Creating meow' do
  before do
    visit '/'
    click_link "New Meow"
  end

  it "redirects to meows index page on success" do
    fill_in "Meow", with: @meow.word
    click_link "Create Meow"
    expect(page).to have_content("Meows")
    expect(page).to have_content("Meow Meow!")
  end

  it "returns error message when meow is blank" do
    fill_in "Meow", with: " "
    click_link "Create Meow"
    expect(page).to have_content("Meow cannot be blank.")
  end

  it "returns error message when meow already exists" do
    FactoryGirl.create(:meow)
    fill_in "Meow", with: "Meow Meow!"
    expect(page).to have_content("Meow Meow! Already exists!")
  end
end
