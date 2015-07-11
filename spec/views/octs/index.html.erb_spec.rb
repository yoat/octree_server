require 'rails_helper'

RSpec.describe "octs/index", type: :view do
  before(:each) do
    assign(:octs, [
      Oct.create!(
        :player => nil,
        :oct => nil,
        :hyper => 1,
        :alpha => 2,
        :color => 3,
        :sign_sha1 => "Sign Sha1"
      ),
      Oct.create!(
        :player => nil,
        :oct => nil,
        :hyper => 1,
        :alpha => 2,
        :color => 3,
        :sign_sha1 => "Sign Sha1"
      )
    ])
  end

  it "renders a list of octs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Sign Sha1".to_s, :count => 2
  end
end
