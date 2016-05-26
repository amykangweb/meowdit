require 'rails_helper'

RSpec.describe "meows/index", type: :view do
  before(:each) do
    assign(:meows, [
      Meow.create!(
        :word => "Word"
      ),
      Meow.create!(
        :word => "Word"
      )
    ])
  end

  it "renders a list of meows" do
    render
    assert_select "tr>td", :text => "Word".to_s, :count => 2
  end
end
