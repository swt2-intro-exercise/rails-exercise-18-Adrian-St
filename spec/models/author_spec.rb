require 'rails_helper'

RSpec.describe Author, type: :model do
  let(:author) { FactoryBot.create(:author) }

  it "creates a new author" do
    new_author = Author.create(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
    expect(new_author.first_name).to eq('Alan')
    expect(new_author.last_name).to eq('Turing')
    expect(new_author.homepage).to eq('http://wikipedia.org/Alan_Turing')
    expect(Author.last).to eq(new_author)
  end

  it "returns the full name for author.name" do
    expect(author.name).to eq('Alan Turing')
  end

  it "should not save an author without last_name" do
    new_author = Author.create(first_name: 'Alan', homepage: 'http://wikipedia.org/Alan_Turing')
    expect(new_author).to_not be_valid
  end
end
