require "./roller.rb"
require 'pry'

class Roller
	describe "roller dice" do
    context "for single dice" do
      it "roll dice 6 side" do
        expect(Die.new(6).roll).to be <= 6
      end
      it "roll dice 8 side" do
        expect(Die.new(8).roll).to be <= 8
      end
      it "roll dice 6 side" do
        expect(Die.new(20).roll).to be <= 20
      end
    end

    context "for multiple dice" do
      it "roll dice 6 side" do
        expect(Die.new(6).roll).to be <= 6
      end
      it "roll dice 8 side" do
      	dice1 = Die2.new(8,8).roll
        expect(dice1).to be <= 16
      end
      it "roll dice 6 and 20 side" do
      	dice1 = Die2.new(6,20).roll
        expect(dice1).to be <= 26
      end
    end
  end
end
