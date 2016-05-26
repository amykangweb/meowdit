require 'rails_helper'

RSpec.describe "meows/new", type: :view do
  before(:each) do
    assign(:meow, Meow.new(
      :word => "MyString"
    ))
  end

  it "renders new meow form" do
    render

    assert_select "form[action=?][method=?]", meows_path, "post" do

      assert_select "input#meow_word[name=?]", "meow[word]"
    end
  end
end
