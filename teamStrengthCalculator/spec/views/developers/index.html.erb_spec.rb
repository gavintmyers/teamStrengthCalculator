require 'rails_helper'

RSpec.describe "developers/index", type: :view do
  before(:each) do
    assign(:developers, [
      Developer.create!(),
      Developer.create!()
    ])
  end

  it "renders a list of developers" do
    render
  end
end
