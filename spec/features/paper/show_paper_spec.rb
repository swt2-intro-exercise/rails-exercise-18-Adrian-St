require 'rails_helper'

describe "Show paper page", type: :feature do
  before do
    @paper = FactoryBot.create(:paper, authors: [FactoryBot.create(:author)])
    @author = @paper.authors.first
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

  it "should list all authors" do
    visit paper_path(@paper)

    expect(page).to have_link @author.name, href: author_path(@author)
  end
end