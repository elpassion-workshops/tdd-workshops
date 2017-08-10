require 'spec_helper'
require_relative '../lib/bottles'

describe Bottles do
  let(:bottles) { described_class.new }

  describe '#verse' do
    context "with plural form of bottle" do
      it "should return verse for 99 bottles" do
        expect(bottles.verse(99)).to eq '99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.'
      end
      it "should return verse for 89 bottles" do
        expect(bottles.verse(89)).to eq '89 bottles of beer on the wall, 89 bottles of beer.
Take one down and pass it around, 88 bottles of beer on the wall.'
      end
    end

    context "with singular form of bottle" do
      it "should return verse for 2 bottles" do
        expect(bottles.verse(2)).to eq '2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.'
      end
      it "should return verse for 1 bottle" do
        expect(bottles.verse(1)).to eq '1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.'
      end
    end

    context "0 bottles" do
      it "should return verse for 0 bottles" do
        expect(bottles.verse(0)).to eq 'No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.'
      end
    end

    context "given invalid params" do
      it "should message for invalid params" do
        expect(bottles.verse(-1)).to eq 'Invalid params for first line
Invalid params for last line'
      end
    end
  end
end