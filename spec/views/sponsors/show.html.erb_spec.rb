require 'spec_helper'

describe "sponsors/show.html.erb" do
  before(:each) do
    @sponsor = assign(:sponsor, stub_model(Sponsor,
      :email => "Email",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
