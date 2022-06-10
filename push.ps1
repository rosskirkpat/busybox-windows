$BUILD_VERSIONS=@('1809','ltsc2022','20H2')

$BUILD_VERSIONS | ForEach-Object -Begin $null -Process {"Pushing busybox:$PSItem"} { docker tag busybox:$PSItem cptrosskirk/busybox-windows:$PSItem } { docker push cptrosskirk/busybox-windows:$PSItem } -End $null