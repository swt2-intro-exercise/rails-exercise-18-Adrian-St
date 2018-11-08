require 'rails_helper'

RSpec.describe "authors/show", type: :view do
  before(:each) do
    @author = assign(:author, FactoryBot.create(:author))
  end

  it "renders attributes in <p>" do
    render
  end
end
