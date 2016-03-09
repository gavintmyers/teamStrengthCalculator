require 'rails_helper'

RSpec.describe "hours/edit", type: :view do
  before(:each) do
    @hour = assign(:hour, Hour.create!())
  end

  it "renders the edit hour form" do
    render

    assert_select "form[action=?][method=?]", hour_path(@hour), "post" do
    end
  end
end
