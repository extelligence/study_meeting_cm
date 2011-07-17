require 'spec_helper'

describe "meetups/edit.html.erb" do
  before(:each) do
    @meetup = assign(:meetup, stub_model(Meetup,
      :name => "MyString",
      :location => "MyString",
      :capacity => 1,
      :group_name => "MyString",
      :site_url => "MyString"
    ))
  end

  it "renders the edit meetup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meetups_path(@meetup), :method => "post" do
      assert_select "input#meetup_name", :name => "meetup[name]"
      assert_select "input#meetup_location", :name => "meetup[location]"
      assert_select "input#meetup_capacity", :name => "meetup[capacity]"
      assert_select "input#meetup_group_name", :name => "meetup[group_name]"
      assert_select "input#meetup_site_url", :name => "meetup[site_url]"
    end
  end
end
