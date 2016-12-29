# spec/mega_lotto/configuration_spec.rb

require "spec_helper"

module MegaLotto
  describe Configuration do
    describe "#drawing_count" do
      it "default vaule is 6" do
        Configuration.new.drawing_count = 6
      end
    end

    describe "#drawing_count=" do
      it "can set value" do
        config = Coniguration.new
        config.drawing_count = 7
        expect(config.drawing_count).to eq(7)
      end
    end
  end
end