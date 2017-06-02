module ApiKeyGenerator
  def self.build
    SecureRandom.base64.tr('+/=', 'Qrt')
  end
end
