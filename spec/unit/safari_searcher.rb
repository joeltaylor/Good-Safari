describe SafariSearcher do
  describe "#new" do
    it "has a query attribute" do
      subject { SafariSearcher.new("ruby") }
      expect(subject.query).to eq("ruby")
    end
  end
end
