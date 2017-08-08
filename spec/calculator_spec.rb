require 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do
  let(:first_number) { 2 }
  let(:second_number) { 3 }

  context '#multiply' do
    subject { described_class.new(first_number, second_number) }

    it 'should return proper number' do
      expect(subject.multiply).to eq 6
    end
  end

  context '.add' do
    it 'should return proper number' do
      expect(described_class.add(first_number, second_number)).to eq 5
    end
  end
end