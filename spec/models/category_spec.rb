require 'spec_helper'

describe Category do
  it "save itself" do
    category = Category.create(name: "Story")
    category.save
    expect(Category.first).to eq category
  end

  it "has many videos" do
    story = Category.create(name: "Story")
    gump1 = Video.create(title: "Forrest Gump 1", description: "Forrest Gump's story", category: story)
    gump2 = Video.create(title: "Forrest Gump 2", description: "Forrest Gump's story", category: story)
    
    expect(story.videos).to include(gump1,gump2)
  end
end
