require "rails_helper"

describe WurthCLI::Wurth do
  subject { described_class.new }

  describe "account" do
    describe "create" do
      it "creates an account" do
        subject.account "create", "account_1"
        expect(Account.count).to eq 1
        expect(Account.first.name).to eq "account_1"
      end
    end

    describe "create" do
      let!(:account_1) { Account.create(name: "account_1") }
      let!(:account_2) { Account.create(name: "account_2") }

      it "delete the account specified by name" do
        subject.account "delete", "account_1"
        expect(Account.count).to eq 1
        expect(Account.first.name).to eq "account_2"
      end
    end

    describe "list" do
      let!(:account_1) { Account.create(name: "account_1") }
      let!(:account_2) { Account.create(name: "account_2") }

      it "lists created accounts and their balance" do
        subject.account "list"
        # expect { subject.account("list") }.to output('bar').to_stdout
      end
    end
  end
end
