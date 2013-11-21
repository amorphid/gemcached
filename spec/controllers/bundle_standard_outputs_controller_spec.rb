require "spec_helper"

describe BundleStandardOutputsController do
  context "#response" do
    let(:response) { BundleStandardOutputsController.new.response }

    it "returns a success message" do
      expect(response).to eq("Bundle ran successfully.  You win!")
    end
  end
end
