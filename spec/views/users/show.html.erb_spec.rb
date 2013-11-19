require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :title => "Title",
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :pasword_digest => "Pasword Digest",
      :remember_toke => "Remember Toke",
      :admin => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Email/)
    rendered.should match(/Pasword Digest/)
    rendered.should match(/Remember Toke/)
    rendered.should match(/false/)
  end
end
