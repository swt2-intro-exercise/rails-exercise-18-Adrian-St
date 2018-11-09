require 'rails_helper'

describe "New paper page", type: :feature do

  before do
    @paper = FactoryBot.create(:paper, authors: FactoryBot.create_list(:author, 1))
  end
  it "should render withour error" do
    visit edit_paper_path(@paper)
  end

  it "should have select box for authors" do
    visit edit_paper_path(@paper)

    # these are the standard names given to inputs by the form builder
    expect(page).to have_css('select[multiple]')
  end
end