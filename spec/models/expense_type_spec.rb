require 'spec_helper'

describe ExpenseType do
  it "has a name" do
    ExpenseType.new(:name => "Food").should be_valid
  end
end
