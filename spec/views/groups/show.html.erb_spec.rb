require 'spec_helper'

describe "groups/show" do
  before(:each) do
    @group = assign(:group, stub_model(Group,
      :group_name => "Group Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Group Name/)
  end
end
