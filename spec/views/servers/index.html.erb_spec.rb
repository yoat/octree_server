require 'rails_helper'

RSpec.describe "servers/index", type: :view do
  before(:each) do
    assign(:servers, [
      Server.create!(
        :user => nil,
        :name => "Name",
        :address => "Address"
      ),
      Server.create!(
        :user => nil,
        :name => "Name",
        :address => "Address"
      )
    ])
  end

  it "renders a list of servers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
