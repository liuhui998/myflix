require 'spec_helper'

describe Video do
  it "save itself" do
    video = Video.create(title: "Forrest Gump", description: "Forrest Gump's story")
    video.save
    expect(Video.first).to eq video
  end
end
