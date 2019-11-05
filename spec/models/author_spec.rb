require 'rails_helper'

describe "Create new author", type: :model do
 
 it "should create a new author with the first name Alan, the last name Turing, with the homepage http://wikipedia.org/Alan_Turing, and with the name Alan Turing" do
  author = Author.new(first_name:"Alan", last_name:"Turing", homepage:"http://wikipedia.org/Alan_Turing")
  expect(author.first_name).to eq("Alan")
  expect(author.last_name).to eq("Turing")
  expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
  expect(author.name).to eq("Alan Turing")
  end
end