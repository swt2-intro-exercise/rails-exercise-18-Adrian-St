require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not save an author without title" do
    new_author = Paper.create(venue: 'NYC', year: 1991)
    expect(new_author).to_not be_valid
  end

  it "should not save an author without venue" do
    new_author = Paper.create(title: 'A Paper', year: 1991)
    expect(new_author).to_not be_valid
  end

  it "should not save an author without year" do
    new_author = Paper.create(title: 'A Paper', venue: 'NYC')
    expect(new_author).to_not be_valid
  end
end
