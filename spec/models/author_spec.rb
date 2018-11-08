require 'rails_helper'

RSpec.describe Author, type: :model do
  author = Author.create(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
  expect(author.first_name).to eq('Alan')
  expect(author.last_name).to eq('Turing')
  expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
  expect(Author.last).to eq(author)
end
