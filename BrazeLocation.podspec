Pod::Spec.new do |s|
  s.name              = 'BrazeLocation'
  s.version           = '5.9.1'
  s.summary           = 'Braze location library providing support for location analytics and geofence monitoring.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazelocation/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk/releases/download/5.9.1/BrazeLocation.zip',
    :sha256 => 'f2b52b2db62cc3d2675a3b831692cba482d20d3b7d3002a335b15266e7ae1cc9'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '11.0'
  s.tvos.deployment_target  = '11.0'

  s.vendored_framework      = 'BrazeLocation.xcframework'

  # Depends on BrazeKit because BrazeKit includes the internal _BrazeLocationClient symbols required
  # for linking against BrazeLocation.
  s.dependency 'BrazeKit', '5.9.1'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
