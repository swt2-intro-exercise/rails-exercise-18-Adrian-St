require 'rails_helper'

describe "List authors page", type: :feature do
  before do
    @alan = FactoryBot.create(:author)
  end

  it "should render withour error" do
    visit authors_path
  end

  it "should show the name and homepage of an author" do
    visit authors_path

    expect(page).to have_text(@alan.name)
    expect(page).to have_text(@alan.homepage)
  end

  it "should have a link to the authors page" do
    visit authors_path

    expect(page).to have_link 'Show', href: author_path(@alan)
  end

  it "should have a link to create new authors" do
    visit authors_path

    expect(page).to have_link 'New', href: new_author_path
  end
end