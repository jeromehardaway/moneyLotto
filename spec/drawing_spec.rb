require "spec_helper"

module MegaLotto
  describe Drawing do
    describe "#draw" do
      let(:draw) { MegaLotto::drawing.new.draw }

      it "returns an array" do
        exoect(draw).to be_a(Array)
      end

      it "returns an array with 6 elements" do
        expect(draw.size).to eq(6)
      end
      it "each elemtent is an intger" do
        draw.each.each do |drawing|
          expect(drawing).to be_a(Integer)
        end
      end

      it "each element is less than 60" do
        draw.each do |drawing|
          expect(drawing).to be < 60
        end
      end
    end
  end
end
