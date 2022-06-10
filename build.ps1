$BUILD_VERSIONS=@('1809','ltsc2022','20H2')

$BUILD_VERSIONS | ForEach-Object -Begin $null -Process {"Building busybox:$PSItem"} { docker build -t busybox:$PSItem --build-arg BUILD_VERSION=$PSItem . } -End $null