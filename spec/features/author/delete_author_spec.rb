require "rails_helper"

describe "Delete author", type: :feature do

    before(:each) do
        @alan = FactoryBot.create :author
    end

    it "should delete the author instance in the database" do
        expect {
            visit authors_path
            find("a[data-method='delete']").click
        }.to change(Author, :count).by(-1)
    end
end