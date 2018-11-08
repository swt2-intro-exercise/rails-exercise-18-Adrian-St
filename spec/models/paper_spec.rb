require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not save a paper without title" do
    new_paper = Paper.create(venue: 'NYC', year: 1991)
    expect(new_paper).to_not be_valid
  end

  it "should not save a paper without venue" do
    new_paper = Paper.create(title: 'A Paper', year: 1991)
    expect(new_paper).to_not be_valid
  end

  it "should not save a paper without year" do
    new_paper = Paper.create(title: 'A Paper', venue: 'NYC')
    expect(new_paper).to_not be_valid
  end

  it "should not save a paper with a year as string" do
    new_paper = Paper.create(title: 'A Paper', venue: 'NYC', year: 'nineteen-fifty')
    expect(new_paper).to_not be_valid
  end

  it "should have an empty list of authors" do
    new_paper = FactoryBot.create(:paper)
    expect(new_paper.authors).to be_empty
  end

end
