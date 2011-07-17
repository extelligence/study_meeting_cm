require 'spec_helper'

describe "staffs/new.html.erb" do
  before(:each) do
    assign(:staff, stub_model(Staff,
      :email => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new staff form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => staffs_path, :method => "post" do
      assert_select "input#staff_email", :name => "staff[email]"
      assert_select "input#staff_name", :name => "staff[name]"
    end
  end
end
