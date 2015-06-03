require 'spec_helper'

describe Video do
  it "save itself" do
    video = Video.create(title: "Forrest Gump", description: "Forrest Gump's story")
    video.save
    expect(Video.first).to eq video
  end

  it "belongs to category" do
    story = Category.create(name: "Story")
    gump1 = story.videos.create(title: "Forrest Gump", description: "Forrest Gump's story!")
    expect(gump1.category).to eq story
  end
end
