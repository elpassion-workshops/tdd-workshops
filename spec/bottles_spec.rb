require 'spec_helper'
require_relative '../lib/bottles'

RSpec.describe Bottles do
  describe '#verse' do
    subject { described_class.new }
    
    context 'given 99 bottles' do 
      let(:song) { '99 bottles of beer on the wall, 99 bottles of beer. Take one down and pass it around, 98 bottles of beer on the wall.' }
      it 'returns song' do
        expect(subject.verse(99)).to eq(song)
      end
    end

    context 'given 89 bottles' do
      let(:song) { '89 bottles of beer on the wall, 89 bottles of beer. Take one down and pass it around, 88 bottles of beer on the wall.' }
      it 'returns song' do
        expect(subject.verse(89)).to eq(song)
      end
    end

    context 'given 2 bottles' do
      let(:song) do 
        "2 bottles of beer on the wall, 2 bottles of beer. "\
        "Take one down and pass it around, 1 bottle of beer on the wall."
      end

      it 'returns song' do 
        expect(subject.verse(2)).to eq(song)
      end
    end

    context 'given 1 bottle' do
      let(:song) do
        "1 bottle of beer on the wall, 1 bottle of beer. "\
        "Take it down and pass it around, no more bottles of beer on the wall."
      end

      it 'returns song' do
        expect(subject.verse(1)).to eq(song)
      end
    end

    context 'given 0 bottles' do 
      let(:song) do
        "No more bottles of beer on the wall, no more bottles of beer. "\
        "Go to the store and buy some more, 99 bottles of beer on the wall."
      end

      it 'returns song' do
        expect(subject.verse(0)).to eq(song)
      end
    end
  end
end