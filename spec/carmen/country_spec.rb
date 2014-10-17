require 'spec_helper'

describe Carmen::Country do
  let(:country) { Carmen::Country.coded('ca') }

  describe 'currency_code' do
    it 'returns the countries ISO 4217 currency code' do
      expect(country.currency_code).to eq('CAD')
    end
  end
end
