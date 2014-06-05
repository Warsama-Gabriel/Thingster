require 'spec_helper'

describe PagesController do

  describe "GET 'helloworld'" do
    it "returns http success" do
      get 'helloworld'
      response.should be_success
    end
  end

end
