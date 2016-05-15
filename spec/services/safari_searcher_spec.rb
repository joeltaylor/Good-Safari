require_relative './../../services/safari_searcher.rb'

describe SafariSearcher do
  describe "#commit" do
    it "returns an array of books based on a query" do
      VCR.use_cassette "search safari" do
        subject = SafariSearcher.new("ruby").commit

        expect(subject).to_not be_empty
      end
    end
  end
end
