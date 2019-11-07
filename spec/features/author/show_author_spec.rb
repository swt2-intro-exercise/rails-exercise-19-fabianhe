require 'rails_helper'

describe "Show author page", type: :feature do

  before(:each) do
    @alan = FactoryBot.create :author
  end
 
 it "should render withour error" do
   visit author_path(@alan)
   expect(page).to have_text("Alan")
   expect(page).to have_text("Turing")
   expect(page).to have_text("http://wikipedia.de/Alan_Turing")
 end

end