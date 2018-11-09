require 'rails_helper'

describe "Show author page", type: :feature do
  before do
    @alan = FactoryBot.create(:author, papers: [FactoryBot.create(:paper)])
    @paper = @alan.papers.first
  end

  it "should render withour error" do
    visit author_path(@alan)
  end

  it "should have text inputs for an author's first name, last name, and homepage" do
    visit author_path(@alan)

    # these are the standard names given to inputs by the form builder
    expect(page).to have_text('Alan')
    expect(page).to have_text('Turing')
    expect(page).to have_text('http://wikipedia.de/Alan_Turing')
  end

  it "should list all papers" do
    visit author_path(@alan)

    expect(page).to have_link @paper.title, href: paper_path(@paper)
  end
end