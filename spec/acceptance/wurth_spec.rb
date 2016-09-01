require_relative "../../lib/wurth"

describe Wurth do
  subject { described_class.new }

  describe "create" do
    it "creates an account" do
      subject.create "account", "account_1"
      expect(Account.count).to eq 1
      expect(Account.first.name).to eq "account_1"
    end
  end
end
