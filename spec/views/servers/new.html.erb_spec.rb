require 'rails_helper'

RSpec.describe "servers/new", type: :view do
  before(:each) do
    assign(:server, Server.new(
      :user => nil,
      :name => "MyString",
      :address => "MyString"
    ))
  end

  it "renders new server form" do
    render

    assert_select "form[action=?][method=?]", servers_path, "post" do

      assert_select "input#server_user_id[name=?]", "server[user_id]"

      assert_select "input#server_name[name=?]", "server[name]"

      assert_select "input#server_address[name=?]", "server[address]"
    end
  end
end
