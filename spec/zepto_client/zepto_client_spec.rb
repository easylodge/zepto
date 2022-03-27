require 'spec_helper'

describe ZeptoClient::Api do
  let(:subject) { ZeptoClient::Api.new }

  xdescribe "#get" do
    it "" do
      @response = JSON.parse(File.read('spec/responses.json'))
    end
  end

  xdescribe "#patch" do
    it "" do
      @response = JSON.parse(File.read('spec/responses.json'))
    end
  end

  xdescribe "#post" do
    it "" do
      @response = JSON.parse(File.read('spec/responses.json'))
    end
  end

  xdescribe "#delete" do
    it "" do
      @response = JSON.parse(File.read('spec/responses.json'))
    end
  end

end
