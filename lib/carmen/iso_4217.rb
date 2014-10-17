require 'carmen'
require 'carmen/iso_4217/version'

module Carmen
  locale_path = File.expand_path('../../../locale', __FILE__)
  i18n_backend.append_locale_path(locale_path)

  class Country
    def currency_code
      Carmen.i18n_backend.translate(path('currency_code'))
    end
  end

  module ISO4217
  end
end
