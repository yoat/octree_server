require 'rails_helper'

RSpec.describe "octs/show", type: :view do
  before(:each) do
    @oct = assign(:oct, Oct.create!(
      :player => nil,
      :oct => nil,
      :hyper => 1,
      :alpha => 2,
      :color => 3,
      :sign_sha1 => "Sign Sha1"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Sign Sha1/)
  end
end
