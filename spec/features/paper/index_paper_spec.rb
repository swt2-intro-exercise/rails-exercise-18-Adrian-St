require 'rails_helper'

describe "List paper page", type: :feature do
  before do
    @paper = FactoryBot.create(:paper)
  end

  it "should render withour error" do
    visit papers_path
  end

  it "should show the title venue and year of a paper" do
    visit papers_path

    expect(page).to have_text(@paper.title)
    expect(page).to have_text(@paper.venue)
    expect(page).to have_text(@paper.year)
  end

  it "should have a link to the papers page" do
    visit papers_path

    expect(page).to have_link 'Show', href: paper_path(@paper)
  end

  it "should have a link to create new papers" do
    visit papers_path

    expect(page).to have_link 'New', href: new_paper_path
  end

  it "should have a table heading" do
    visit papers_path

    expect(page).to have_text('Title')
    expect(page).to have_text('Venue')
    expect(page).to have_text('Year')
  end
end