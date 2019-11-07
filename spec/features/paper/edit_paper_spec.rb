require "rails_helper"

describe "Edit paper page", type: :feature do
  
    before(:each) do
    @author = FactoryBot.create :author
    @paper = FactoryBot.create :paper
    @paper.authors << @author
  end

  it "should list the authors" do
    visit edit_paper_path(@paper)
    @authors.each do |author|
        expect(@selection).to have_text(author.name)
    end
  end

  it "should allow to add multiple authors" do
    visit edit_paper_path(@paper)

    @selection = find("select[multiple='multiple']")
    @authorEntries = @selection.find_all(:xpath, "option", text: @authors[0].name)

    @authorEntries.each do |authorEntry|
      authorEntry.select_option
    end
    
    find("input[type='submit']").click
    @paper.reload
    
    expect(@paper.authors.count).to eq(@authorEntries.count)
  end

end