require "spec_helper"

feature "Running 'bundle'" do
  context "without the required packages" do
    scenario "indicates a new error has been found"
    scenario "shows a recommended solution"
  end

  context "with the required files" do
    scenario "congratulates user for successful install"
  end
end
