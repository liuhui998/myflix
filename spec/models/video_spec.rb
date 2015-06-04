require 'spec_helper'


RSpec.describe Video, type: :model do
  
  it { should belong_to(:category) }

  it "belongs to category" do
    story = Category.create(name: "Story")
    gump1 = story.videos.create(title: "Forrest Gump", description: "Forrest Gump's story!")
    expect(gump1.category).to eq story
  end

  it "does not save a video without title" do
    video = Video.create(description: "Your story")
    video.save
    expect(Video.count).to eq 0
  end

  it "doest not save a video without description" do
    video = Video.create(title: "A Stroy")
    video.save
    expect(Video.count).to eq 0
  end

end
