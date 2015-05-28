require "spec_helper"
require "rails_reseed"
require "yaml"

RSpec.describe "db:reseed", type: :rake do
  it "has a task name" do
    expect(task_name).to eq("db:reseed")
    expect(task_name).to eq(subject.name)
  end

  it "executes its prerequisites rake tasks" do
    expect(subject.prerequisites).to eq(["db:drop", "db:create", "db:migrate", "db:seed"])
  end
end
