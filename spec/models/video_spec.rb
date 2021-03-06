require 'spec_helper'


RSpec.describe Video, type: :model do
  
  it { should belong_to(:category) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }

  describe "search_by _title" do
    it "returns an empty array if there is no match" do 
      futurama = Video.create(title: "Futurama", description: "Space travel")
      back_to_future = Video.create(title: "Back to Future", description: "Space travel")
      expect(Video.search_by_title("hello")).to eq []
    end

    it "returns an array of one video for an exact match" do
      futurama = Video.create(title: "Futurama", description: "Space travel")
      back_to_future = Video.create(title: "Back to Future", description: "Space travel")
      expect(Video.search_by_title("Futurama")).to eq [futurama]      
    end

    it "returns an array of one video for a partial match" do
      futurama = Video.create(title: "Futurama", description: "Space travel")
      back_to_future = Video.create(title: "Back to Future", description: "Space travel")
      expect(Video.search_by_title("urama")).to eq [futurama]      
    end

    it "returns an array of all matchs ordered by created_at" do 
      futurama = Video.create(title: "Futurama", description: "Space travel",created_at: 1.day.ago)
      back_to_future = Video.create(title: "Back to Future", description: "Space travel")
      expect(Video.search_by_title("Futu")).to eq [back_to_future,futurama]      
    end

    it "return an empty array for a search with an empty string" do
      futurama = Video.create(title: "Futurama", description: "Space travel",created_at: 1.day.ago)
      back_to_future = Video.create(title: "Back to Future", description: "Space travel")
      expect(Video.search_by_title("")).to eq []
    end
  end

end
