require "rails_helper"

describe "Delete author", type: :feature do

    it "should delete the author instance in the database" do
        alan = FactoryBot.create :author
        expect {
            visit authors_path
            find("a[data-method='delete']").click
        }.to change(Author, :count).by(-1)
    end
end