require 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do

  subject { described_class.new(first_number, second_number) }
  context 'with valid params' do
    let(:first_number) { 2 }
    let(:second_number) { 3 }
    describe '#multiply' do
      it 'should return proper number' do
        expect(subject.multiply).to eq 6
      end
    end

    describe '.add' do
      it 'should return proper number' do
        expect(described_class.add(first_number, second_number)).to eq 5
      end
    end
  end

  context 'with invalid params' do
    let(:first_number) { 'two' }
    let(:second_number) { 'three' }
    describe '#multiply' do
      it 'should rise TypeError when string given' do
        expect{subject.multiply}.to raise_error(TypeError)
      end
    end

    describe '.add' do
      it 'should return proper number' do
        expect(described_class.add(first_number, second_number)).not_to eq 5
      end

      it 'should rise ArgumentError when no params given' do
        expect{described_class.add}.to raise_error(ArgumentError)
      end
    end
  end
end
