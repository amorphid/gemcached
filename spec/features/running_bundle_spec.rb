require "spec_helper"

feature "Running 'bundle'" do
  context "without the required packages" do
    scenario "indicates a new error has been found"
    scenario "shows a recommended solution"
  end

  context "with the required files" do
    given(:response) { BundleStandardOutputsController.new }
    given(:success) { "Bundle ran successfully.  You win!" }

    scenario "congratulates user for successful install" do
      expect(response).to have_content(success)
    end
  end
end
