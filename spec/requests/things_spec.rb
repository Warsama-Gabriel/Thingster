require 'spec_helper'

describe "Things" do
  describe "GET /things" do
    it "should work" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get things_path
      response.status.should be(200)
    end
  end
end
