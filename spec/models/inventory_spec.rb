require 'spec_helper'

describe Inventory do
  it { should have_valid(:title).when('Oranges') }
  it { should_not have_valid(:title).when(nil, "") }
  
  it { should have_valid(:description).when('sakdfhjnklsjfhslhfl') }
  it { should_not have_valid(:description).when(nil, "", "short") }
  
  it { should have_valid(:quantity).when(6) }
  it { should_not have_valid(:quantity).when(nil, "sdf") }
end
