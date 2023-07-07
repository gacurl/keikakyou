require "rails_helper"

RSpec.describe Task, type: :model do
  # it "has a name and description" do
  subject { Task.new(project: Project.new(user: FactoryBot.create(:user), 
            name: "My Awesome Idea Name", 
            description: "The description for My Awesome Idea Name"),
            name: "My Awesome Task Name", 
            description: "The description for My Awesome Task Name",
            status: 'not-started') }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  # it "is not valid without a user" do
  #   subject.user = nil
  #   expect(subject).to_not be_valid
  # end

  # it "is not valid without a project name" do
  #   subject.name = nil
  #   expect(subject).to_not be_valid
  # end

  # it "is not valid without a project description" do
  #   subject.description = nil
  #   expect(subject).to_not be_valid
  # end

  # # it "is not valid if the product_count is a float" do
  # #   subject.product_count = 1.82767
  # #   expect(subject).to_not be_valid
  # # end
end