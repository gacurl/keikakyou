require 'rails_helper'

RSpec.describe Project do
  it "has a user" do
    project = Project.create!(user: "bob")
    expect(project.user). to eq("bob")
  end

  it "has a name" do
    project = Project.create!(name: "My totally awesome project")
    expect(project.name). to eq("My totally awesome project")
  end

  it "has a description" do
    project = Project.create!(description: "This is the description for my totally awesome project")
    expect(project.description). to eq("This is the description for my totally awesome project")
  end

end