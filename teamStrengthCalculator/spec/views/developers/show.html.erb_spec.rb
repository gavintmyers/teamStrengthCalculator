require 'rails_helper'

RSpec.describe "developers/show", type: :view do
  before(:each) do
    @developer = assign(:developer, Developer.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
