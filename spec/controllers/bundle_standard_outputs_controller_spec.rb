require "spec_helper"

describe BundleStandardOutputsController do
  context "#response" do
    let(:response) { BundleStandardOutputsController.new.response }

    it "returns a success message" do
      expect(response).to eq("Bundle ran successfully.  You win!")
    end

    it "returns a message saying a new error has been found" do
      expect(response).to eq("Bundle generated an error.  We haven't seen this one before.")
    end
  end
end
