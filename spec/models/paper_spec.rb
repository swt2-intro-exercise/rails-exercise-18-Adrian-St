require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not save an author without last_name" do
    new_author = Paper.create(venue: 'NYC', year: 1991)
    expect(new_author).to_not be_valid
  end
end
