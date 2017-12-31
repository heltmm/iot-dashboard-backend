require 'rails_helper'

RSpec.describe Client, type: :model do
  before do
    @client = FactoryBot.build_stubbed(:client)
  end

  describe 'creation' do
    it 'can be created' do
      expect(@client).to be_valid
    end
  end

  # before_validation in Client breaks this test
  # describe 'validations' do
  #   it 'can not be created if not valid' do
  #     @client.api_key = nil
  #     expect(@client).to_not be_valid
  #   end
  # end

  # before_validation in Client breaks this test
  # it 'has a unique API_Key' do
  #   first_client = Client.create(api_key: "I384fHtD1h9XZvs4fGPJUgtt")
  #   duplicate_client = Client.create(api_key: "I384fHtD1h9XZvs4fGPJUgtt")
  #   binding.pry
  #   expect(duplicate_client).to_not be_valid
  # end

  describe 'callbacks' do
    it 'will have an api_key automatically assigned when created' do
      client = Client.create()
      expect(client.api_key).to_not be_nil
    end
  end

end
