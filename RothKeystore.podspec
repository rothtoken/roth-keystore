Pod::Spec.new do |s|
  s.name         = 'rothKeystore'
  s.version      = '0.5.1'
  s.summary      = 'A general-purpose Ethereum keystore for managing wallets.'
  s.license      = 'GPL'

  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'

  s.source_files = 'Sources/**/*.swift'

  s.dependency 'BigInt'
  s.dependency 'CryptoSwift'
  s.dependency 'TrezorCrypto'
  s.dependency 'rothCore', '~> 0.2.2'

  s.pod_target_xcconfig = { 'SWIFT_OPTIMIZATION_LEVEL' => '-Owholemodule' }
end
