require 'test_helper'

describe AuthorizationRequest do
  describe "#payload" do
    before do
      @request = AuthorizationRequest.new(valid_auth_request)
    end

    after do
      @request = nil
    end

    it 'should generate hash with all the right values' do
      valid_payload = symbolize_keys(valid_auth_request)
      @request.payload.keys.each do |k|
        @request.payload[k].must_equal valid_payload[k]
      end
    end
  end
end
