require 'rails_helper'

RSpec.describe "developers/edit", type: :view do
  before(:each) do
    @developer = assign(:developer, Developer.create!())
  end

  it "renders the edit developer form" do
    render

    assert_select "form[action=?][method=?]", developer_path(@developer), "post" do
    end
  end
end
