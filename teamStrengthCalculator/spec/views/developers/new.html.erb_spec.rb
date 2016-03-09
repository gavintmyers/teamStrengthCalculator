require 'rails_helper'

RSpec.describe "developers/new", type: :view do
  before(:each) do
    assign(:developer, Developer.new())
  end

  it "renders new developer form" do
    render

    assert_select "form[action=?][method=?]", developers_path, "post" do
    end
  end
end
