require 'rails_helper'

RSpec.describe "octs/new", type: :view do
  before(:each) do
    assign(:oct, Oct.new(
      :player => nil,
      :oct => nil,
      :hyper => 1,
      :alpha => 1,
      :color => 1,
      :sign_sha1 => "MyString"
    ))
  end

  it "renders new oct form" do
    render

    assert_select "form[action=?][method=?]", octs_path, "post" do

      assert_select "input#oct_player_id[name=?]", "oct[player_id]"

      assert_select "input#oct_oct_id[name=?]", "oct[oct_id]"

      assert_select "input#oct_hyper[name=?]", "oct[hyper]"

      assert_select "input#oct_alpha[name=?]", "oct[alpha]"

      assert_select "input#oct_color[name=?]", "oct[color]"

      assert_select "input#oct_sign_sha1[name=?]", "oct[sign_sha1]"
    end
  end
end
