require 'spec_helper'

describe Member do
  it "has a name" do
    Member.new.should respond_to(:name)
  end
end
