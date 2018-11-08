require 'rails_helper'

describe "Show paper page", type: :feature do
  before do
    @paper = FactoryBot.create(:paper)
  end

  it "should render withour error" do
    visit paper_path(@paper)
  end

  it "should have paragraphs for a papers title, venue and year" do
    visit paper_path(@paper)

    # these are the standard names given to inputs by the form builder
    expect(page).to have_text(@paper.title)
    expect(page).to have_text(@paper.venue)
    expect(page).to have_text(@paper.year)
  end
end