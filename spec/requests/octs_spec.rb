require 'rails_helper'

RSpec.describe "Octs", type: :request do
  describe "GET /octs" do
    it "works! (now write some real specs)" do
      get octs_path
      expect(response).to have_http_status(200)
    end
  end
end
