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
      
    end
    it "returns an array of one video for a partial match"
    it "returns an array of all matchs ordered by created_at"    
  end

end
