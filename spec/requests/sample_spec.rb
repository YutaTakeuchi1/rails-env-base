require 'rails_helper'

RSpec.describe "Samples", type: :request do
  describe "#index" do
    context "GET /sample" do
      before do
        get sample_index_path
      end
      it "リクエストが成功すること" do
        expect(response).to have_http_status(:success)
      end
    end
  end
end