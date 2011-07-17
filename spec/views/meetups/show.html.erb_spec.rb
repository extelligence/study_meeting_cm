require 'spec_helper'

describe "meetups/show.html.erb" do
  before(:each) do
    @meetup = assign(:meetup, stub_model(Meetup,
      :name => "Name",
      :location => "Location",
      :capacity => 1,
      :group_name => "Group Name",
      :site_url => "Site Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Location/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Group Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Site Url/)
  end
end
