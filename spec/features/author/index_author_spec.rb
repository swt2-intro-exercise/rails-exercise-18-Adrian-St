require 'rails_helper'

describe "List authors page", type: :feature do
  let(:author) { FactoryBot.create(:author) }

  it "should render withour error" do
    visit authors_path
  end

  it "should have text inputs for an author's first name, last name, and homepage" do
    visit authors_path

    expect(page).to have_text(author.name)
  end
end