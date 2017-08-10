require 'spec_helper'
require_relative '../lib/bottles'

describe Bottles do
  subject { Bottles.new }

  describe '#verse' do
    context 'with plural form of bottles' do
      it 'returns proper verse with 99 number of bottles' do
        expect(subject.verse(99)).to eq '99 bottles of beer on the wall, 99 bottles of beer. Take one down and pass it around, 98 bottles of beer on the wall.'
      end

      it 'returns proper verse with 89 number of bottles' do
        expect(subject.verse(89)).to eq '89 bottles of beer on the wall, 89 bottles of beer. Take one down and pass it around, 88 bottles of beer on the wall.'
      end
    end

    context 'with singular form of bottle' do
      it 'returns proper verse with 2 number of bottles' do
        expect(subject.verse(2)).to eq '2 bottles of beer on the wall, 2 bottles of beer. Take one down and pass it around, 1 bottle of beer on the wall.'
      end

      context 'and no more bottles' do
        it 'returns proper verse with 1 number of bottles' do
          expect(subject.verse(1)).to eq '1 bottle of beer on the wall, 1 bottle of beer. Take it down and pass it around, no more bottles of beer on the wall.'
        end
      end
    end

    context 'when no bottles' do
      it 'returns proper verse with another ending' do
        expect(subject.verse(0)).to eq 'No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.'
      end
    end
  end
end