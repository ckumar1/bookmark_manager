require 'spec_helper'


# Write validation tests
# name, url, url format

describe "Validators" do

  it "should reject blank bookmark name" do
    bookmark_with_no_name = Bookmark.create(name: "", url: "www.google.com")
    bookmark_with_no_name.should_not be_valid
  end

  it "should reject blank bookmark url" do
    bookmark_with_no_url = Bookmark.create(name: "TEST NAME", url: "")
    bookmark_with_no_url.should_not be_valid
  end

  it "should reject invalidly formatted bookmark url" do
    bookmark_with_invalid_url_format = Bookmark.create(name: "TESTNAME", url: "google")
    bookmark_with_invalid_url_format.should_not be_valid
  end

end


