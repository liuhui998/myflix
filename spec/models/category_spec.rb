require 'spec_helper'

describe Category do
  it { should has_many(:videos) }
end
