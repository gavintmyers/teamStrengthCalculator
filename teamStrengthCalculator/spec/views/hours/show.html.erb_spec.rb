require 'rails_helper'

RSpec.describe "hours/show", type: :view do
  before(:each) do
    @hour = assign(:hour, Hour.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
