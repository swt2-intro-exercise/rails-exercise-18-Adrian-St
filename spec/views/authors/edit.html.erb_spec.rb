require 'rails_helper'

RSpec.describe "authors/edit", type: :view do
  before(:each) do
    @author = FactoryBot.create(:author)
  end

  it "renders the edit author form" do
    render

    assert_select "form[action=?][method=?]", author_path(@author), "post" do
    end
  end
end
