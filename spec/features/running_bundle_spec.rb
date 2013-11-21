require "spec_helper"

feature "Running 'bundle'" do
  context "without the required packages" do
    given(:response) { "Bundle generated an error.  We haven't seen this one before." }
    given(:error) { "Bundle generated an error.  We haven't seen this one before." }

    scenario "indicates a new error has been found" do
      expect(response).to have_content(error)
    end

    scenario "shows a recommended solution"
  end

  context "with the required files" do
    given(:response) { BundleStandardOutputsController.new.response }
    given(:success) { "Bundle ran successfully.  You win!" }

    scenario "congratulates user for successful install" do
      expect(response).to have_content(success)
    end
  end
end
