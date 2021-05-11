# TCCThisDick
If you do run your Mac with SIP disabled for prolonged periods of time, you may have noticed that there are no more privacy prompts for apps, and new apps simply cannot use privacy-protected APIs.

This project is a small CLI tool for manually adding an app to a given privacy section.

## Usage
```bash
tcctd (tccServiceID) (bundle_path)
```

After running the command, you'll see that the app is added to the respective section within the privacy pane in System Preferences. However, you must still enable the checkbox. `tcctd` will not manage whether a given app is actually enabled, it will only add it to the list of apps to be enabled/disabled.

> At this time, there is no way to remove an app from the list – however, you can still uncheck the app which will revoke its access.

## Example Usage
```bash
# Adds an entry to Screen Recording for Zoom
tcctd kTCCServiceScreenCapture /Applications/zoom.us.app
```

## TCC Service IDs
```
kTCCServiceAccessibility
kTCCServiceAddressBook
kTCCServiceAll
kTCCServiceAppleEvents
kTCCServiceCalendar
kTCCServiceCamera
kTCCServiceContactsFull
kTCCServiceContactsLimited
kTCCServiceDeveloperTool
kTCCServiceFacebook
kTCCServiceFileProviderDomain
kTCCServiceFileProviderPresence
kTCCServiceLinkedIn
kTCCServiceListenEvent
kTCCServiceLiverpool
kTCCServiceLocation
kTCCServiceMediaLibrary
kTCCServiceMicrophone
kTCCServiceMotion
kTCCServicePhotos
kTCCServicePhotosAdd
kTCCServicePostEvent
kTCCServiceReminders
kTCCServiceScreenCapture
kTCCServiceShareKit
kTCCServiceSinaWeibo
kTCCServiceSiri
kTCCServiceSpeechRecognition
kTCCServiceSystemPolicyAllFiles
kTCCServiceSystemPolicyDesktopFolder
kTCCServiceSystemPolicyDeveloperFiles
kTCCServiceSystemPolicyDocumentsFolder
kTCCServiceSystemPolicyDownloadsFolder
kTCCServiceSystemPolicyNetworkVolumes
kTCCServiceSystemPolicyRemovableVolumes
kTCCServiceSystemPolicySysAdminFiles
kTCCServiceTencentWeibo
kTCCServiceTwitter
kTCCServiceUbiquity
kTCCServiceWillow
```
