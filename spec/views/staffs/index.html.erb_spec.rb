require 'spec_helper'

describe "staffs/index.html.erb" do
  before(:each) do
    assign(:staffs, [
      stub_model(Staff,
        :email => "Email",
        :name => "Name"
      ),
      stub_model(Staff,
        :email => "Email",
        :name => "Name"
      )
    ])
  end

  it "renders a list of staffs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
