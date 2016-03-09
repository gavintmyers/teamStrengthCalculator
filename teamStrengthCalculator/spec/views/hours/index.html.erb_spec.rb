require 'rails_helper'

RSpec.describe "hours/index", type: :view do
  before(:each) do
    assign(:hours, [
      Hour.create!(),
      Hour.create!()
    ])
  end

  it "renders a list of hours" do
    render
  end
end
