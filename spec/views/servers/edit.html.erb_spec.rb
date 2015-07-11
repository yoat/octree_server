require 'rails_helper'

RSpec.describe "servers/edit", type: :view do
  before(:each) do
    @server = assign(:server, Server.create!(
      :user => nil,
      :name => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit server form" do
    render

    assert_select "form[action=?][method=?]", server_path(@server), "post" do

      assert_select "input#server_user_id[name=?]", "server[user_id]"

      assert_select "input#server_name[name=?]", "server[name]"

      assert_select "input#server_address[name=?]", "server[address]"
    end
  end
end
