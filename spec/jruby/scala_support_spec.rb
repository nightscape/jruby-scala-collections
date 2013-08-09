require "spec_helper"

describe jruby.collection.MapWrapper do
  import scala.collection._

  subject { scala_map.from_scala }

  context "with an empty Scala HashMap" do
    let(:scala_map) { scala.collection.mutable.HashMap.new }
    it "should equal a JRuby Hash" do
      expect(subject).to eq({})
    end

    it "should not equal a non-empty JRuby Hash" do
      expect(subject).to_not eq({a:1})
    end
  end
end
