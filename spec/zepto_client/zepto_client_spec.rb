require 'spec_helper'

describe ZeptoClient::Api do
  let(:subject) { ZeptoClient::Api.new(token: "P8q14p2TYyUZ4AfgzBN5W2TEhXP3HIdvAlJdBhVplLw", live: false) }

  describe "creating a kyc agreement" do
    let(:kyc_payload) {
      {
        :authoriser=>{
          :name => "Test Person",
          :email => "tim@padberg.example",
          :bank_account => {
            :branch_code => "345343",
            :account_number => "99887743"
          }
        },
        :terms => {
          :per_payout => {
            :min_amount => nil,
            :max_amount => nil
          },
          :per_frequency => {
            :days => nil,
            :max_amount => nil
          }
        },
        :metadata => {
          :loan_id => 1
        }
      }
    }

    it "returns a valid response" do
      response = subject.create_kyc_agreement(kyc_payload)
      expect(response[:errors].blank?).to be true
    end
  end
end
