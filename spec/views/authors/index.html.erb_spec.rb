require 'rails_helper'

RSpec.describe "authors/index", type: :view do
  before(:each) do
    assign(:authors, [
        FactoryBot.create(:author),
        FactoryBot.create(:author)
    ])
  end

  it "renders a list of authors" do
    render
  end
end
