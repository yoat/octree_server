require 'rails_helper'

RSpec.describe "octs/edit", type: :view do
  before(:each) do
    @oct = assign(:oct, Oct.create!(
      :player => nil,
      :oct => nil,
      :hyper => 1,
      :alpha => 1,
      :color => 1,
      :sign_sha1 => "MyString"
    ))
  end

  it "renders the edit oct form" do
    render

    assert_select "form[action=?][method=?]", oct_path(@oct), "post" do

      assert_select "input#oct_player_id[name=?]", "oct[player_id]"

      assert_select "input#oct_oct_id[name=?]", "oct[oct_id]"

      assert_select "input#oct_hyper[name=?]", "oct[hyper]"

      assert_select "input#oct_alpha[name=?]", "oct[alpha]"

      assert_select "input#oct_color[name=?]", "oct[color]"

      assert_select "input#oct_sign_sha1[name=?]", "oct[sign_sha1]"
    end
  end
end
