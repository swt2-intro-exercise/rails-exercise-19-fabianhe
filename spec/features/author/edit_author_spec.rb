require "rails_helper"

describe "Edit author page", type: :feature do
    
    before(:each) do
        @alan = FactoryBot.create :author
    end
    
    it "should render without error" do
        visit edit_author_path(@alan)
    end

    it "should write changes made to the authors in an edit form to the database" do
        visit edit_author_path(@alan)
        page.fill_in "author[homepage]", with: "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
        find("input[type='submit']").click
        @alan.reload
        expect(@alan.homepage).to eq("https://www.youtube.com/watch?v=dQw4w9WgXcQ")
    end
end