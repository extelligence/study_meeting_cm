require 'spec_helper'

describe "meetups/index.html.erb" do
  before(:each) do
    assign(:meetups, [
      stub_model(Meetup,
        :name => "Name",
        :location => "Location",
        :capacity => 1,
        :group_name => "Group Name",
        :site_url => "Site Url"
      ),
      stub_model(Meetup,
        :name => "Name",
        :location => "Location",
        :capacity => 1,
        :group_name => "Group Name",
        :site_url => "Site Url"
      )
    ])
  end

  it "renders a list of meetups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Group Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Site Url".to_s, :count => 2
  end
end
