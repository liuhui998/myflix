require 'spec_helper'

describe Category do
  it { should have_many(:videos) }
  
  describe "#recent_videos" do
    it "returns the videos in the reverse chronical order by created at" do
      category = Category.create(name: "test category")
      futurama = Video.create(title: "Futurama", description: "Space travel",created_at: 1.day.ago, category: category)
      back_to_future = Video.create(title: "Back to Future", description: "Space travel",category: category)
      expect(category.recent_videos).to eq [back_to_future, futurama]
    end

    it "return all the videos if there are less than 6 videos" do
      category = Category.create(name: "test category")
      futurama = Video.create(title: "Futurama", description: "Space travel",created_at: 1.day.ago, category: category)
      back_to_future = Video.create(title: "Back to Future", description: "Space travel",category: category)
      expect(category.recent_videos.count).to eq 2
    end

    it "return 6 videos if there are more than 6 vidoes" do
      category = Category.create(name: "test category")
      7.times {Video.create(title: "Back to Future", description: "Space travel",category: category) }
      expect(category.recent_videos.count).to eq 6
    end

    it "return the most recent 6 videos" do
      category = Category.create(name: "test category")
      6.times {Video.create(title: "Back to Future", description: "Space travel",category: category) }
      yesterday = Video.create(title: "Back to Future2", description: "Space travel",category: category, created_at: 1.day.ago)
      expect(category.recent_videos).not_to include(yesterday )
    end

    it "return an empty array if the category does not have any vidoes" do
      category = Category.create(name: "test category")
      expect(category.recent_videos).to eq []
    end
  end 
end

