require "rails_helper"

describe "Index paper page", type: :feature do
  
  before(:each) do
    @paper = FactoryBot.create :paper
  end

  it "should filter papers by year parameter" do
    visit papers_path(year: @paper.year)
    expect(page).to have_text(@paper.year)

    visit papers_path(year: @paper.year+42)
    expect(page).to_not have_text(@paper.year)

    visit papers_path(year: @paper.year)
    expect(page).to_not have_text(@paper.year+42)
  end

end