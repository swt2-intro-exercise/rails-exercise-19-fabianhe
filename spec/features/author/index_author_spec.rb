require "rails_helper"

describe "Index author page", type: :feature do

  it "should have a (HTML) table with the headings Name and Homepage listing the full names as well as homepages of authors and should link to individual author's detail pages" do
    alan = FactoryBot.create :author
    visit authors_path

    expect(page).to have_table

    @table = find("table");
    expect(@table).to have_text("Name")
    expect(@table).to have_text("Homepage")
    expect(@table).to have_text(alan.name)
    expect(@table).to have_text(alan.homepage)

    expect(@table).to have_link "Detail page", href: author_path(alan)
    expect(page).to have_link "New", href: new_author_path
  end
end