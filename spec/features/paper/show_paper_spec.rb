require "rails_helper"

describe "Show paper page", type: :feature do
  
    before(:each) do
    @author = FactoryBot.create :author
    @paper = FactoryBot.create :paper
    @paper.authors << @author
  end

  it "should list the authors" do
    visit paper_path(@paper)
    expect(page).to have_text(@author.name)
  end

end