require 'spec_helper'

describe "Bookmarks" do


  describe "GET /bookmarks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get bookmarks_path
      response.status.should be(200)
    end
  end

  subject { page }

  describe "View all bookmarks home page" do
    before { visit root_path }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
  end

end
