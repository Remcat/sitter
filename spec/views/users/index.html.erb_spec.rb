require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :title => "Title",
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :pasword_digest => "Pasword Digest",
        :remember_toke => "Remember Toke",
        :admin => false
      ),
      stub_model(User,
        :title => "Title",
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :pasword_digest => "Pasword Digest",
        :remember_toke => "Remember Toke",
        :admin => false
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Pasword Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Remember Toke".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
