require 'rails_helper'

describe 'Creating Post' do
  before do
    @meow = FactoryGirl.create(:meow)
    @meow2 = FactoryGirl.create(:meow2)
    visit '/'
    click_link "New Post"
  end

  it "shows success message" do
    fill_in "Title", with: "First Post"
    fill_in "Content", with: "This content should be replaced."
    click_button "Create Post"
    expect(page).to have_content("Successfully created post.")
  end

  it "shows post with replaced title" do
    fill_in "Title", with: "First Post"
    fill_in "Content", with: "This content should be replaced."
    click_button "Create Post"
    expect(page).to_not have_content("First Post")
    expect(page).to have_content(@meow.word)
  end

  it "shows post with replaced text" do
    fill_in "Title", with: "First Post"
    fill_in "Content", with: "This content should be replaced."
    click_button "Create Post"
    expect(page).to_not have_content("This content should be replaced.")
    expect(page).to have_content(@meow2.word)
  end

  it "shows error message is post title is blank" do
    fill_in "Title", with: " "
    fill_in "Content", with: "This content should be replaced."
    click_button "Create Post"
    expect(page).to have_content("Title can't be blank")
  end

  it "shows error message when post content is blank" do
    fill_in "Title", with: "First Post"
    fill_in "Content", with: " "
    click_button "Create Post"
    expect(page).to have_content("Content can't be blank")
  end
end
