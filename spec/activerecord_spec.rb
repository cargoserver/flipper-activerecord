require 'helper'
require 'flipper/adapters/activerecord'
require 'flipper/spec/shared_adapter_specs'

describe Flipper::Adapters::ActiveRecord do
  subject { described_class.new }

  it_should_behave_like 'a flipper adapter'
end

describe Flipper::ActiveRecord::Feature do
  let(:mass_assignable_attributes) { described_class.attr_accessible[:default].to_a }

  it 'restricts mass-assignment' do
    expect(mass_assignable_attributes).to match_array %w(name)
  end
end

describe Flipper::ActiveRecord::Gate do
  let(:mass_assignable_attributes) { described_class.attr_accessible[:default].to_a }

  it 'restricts mass-assignment' do
    expect(mass_assignable_attributes).to match_array %w(name value)
  end
end
