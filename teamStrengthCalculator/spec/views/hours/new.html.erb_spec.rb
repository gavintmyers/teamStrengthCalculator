require 'rails_helper'

RSpec.describe "hours/new", type: :view do
  before(:each) do
    assign(:hour, Hour.new())
  end

  it "renders new hour form" do
    render

    assert_select "form[action=?][method=?]", hours_path, "post" do
    end
  end
end
