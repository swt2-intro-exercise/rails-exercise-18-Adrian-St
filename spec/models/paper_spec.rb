require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not save a paper without title" do
    new_author = Paper.create(venue: 'NYC', year: 1991)
    expect(new_author).to_not be_valid
  end

  it "should not save a paper without venue" do
    new_author = Paper.create(title: 'A Paper', year: 1991)
    expect(new_author).to_not be_valid
  end

  it "should not save a paper without year" do
    new_author = Paper.create(title: 'A Paper', venue: 'NYC')
    expect(new_author).to_not be_valid
  end

  it "should not save a paper with a year as string" do
    new_author = Paper.create(title: 'A Paper', venue: 'NYC', year: 'nineteen-fifty')
    expect(new_author).to_not be_valid
  end
end
