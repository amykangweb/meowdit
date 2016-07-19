require 'rails_helper'

describe 'Updating Post' do
  before do
    @meow1 = FactoryGirl.create(:meow)
    @post = FactoryGirl.create(:post)
    visit '/posts'
  end

  it 'replaces title but not content when title is updated' do
    @roar = FactoryGirl.create(:meow, word: "Waarr")
    @meow1.destroy
    click_link 'Edit'
    fill_in 'Title', with: 'Replaced Title!'
    click_button 'Update Post'
    expect(page).to have_content(@roar.word)
    expect(page).to have_content(@post.content)
  end
end
