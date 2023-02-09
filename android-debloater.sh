#!/bin/bash
#
### Computer Pre-Requirements: Install ADB and WGet on computer. Connect Phone to Computer with charging cable.
### Phone Pre-Requirements: Enable Developer Mode and USB Debugging
#
wget --https-only -O org.f-droid.apk https://f-droid.org/F-Droid.apk
#
adb devices
#
adb install org.f-droid.apk
#
adb shell pm list packages google
## Google App:
adb shell pm uninstall --user 0 com.google.android.googlequicksearchbox
adb shell pm clear com.google.android.googlequicksearchbox
## Google Chrome:
adb shell pm uninstall --user 0 com.android.chrome
adb shell pm clear com.android.chrome
## Google Drive:
adb shell pm uninstall --user 0 com.google.android.apps.docs
adb shell pm clear com.google.android.apps.docs
## Google Dialer:
adb shell pm uninstall --user 0 com.google.android.dialer
adb shell pm clear com.google.android.dialer
## Google Contacts:
adb shell pm uninstall --user 0 com.google.android.contacts
adb shell pm clear com.google.android.contacts
## Google Messages:
adb shell pm uninstall --user 0 com.google.android.apps.messaging
adb shell pm clear com.google.android.apps.messaging
## Google Calendar:
adb shell pm uninstall --user 0 com.google.android.calendar
adb shell pm clear com.google.android.calendar
## Google Clocks:
adb shell pm uninstall --user 0 com.google.android.deskclock
adb shell pm clear com.google.android.deskclock
## Google Music:
adb shell pm uninstall --user 0 com.google.android.music
adb shell pm clear com.google.android.music
## Google Photos:
adb shell pm uninstall --user 0 com.google.android.apps.photos
adb shell pm clear com.google.android.apps.photos
## Google Movies:
adb shell pm uninstall --user 0 com.google.android.videos
adb shell pm clear com.google.android.videos
## Google Lens:
adb shell pm uninstall --user 0 com.google.ar.lens
adb shell pm clear com.google.ar.lens
## Google Duo:
adb shell pm uninstall --user 0 com.google.android.apps.tachyon
adb shell pm clear com.google.android.apps.tachyon
## Google Maps:
adb shell pm uninstall --user 0 com.google.android.apps.maps
adb shell pm clear com.google.android.apps.maps
## Google Translate:
adb shell pm uninstall --user 0 com.google.android.apps.translate
adb shell pm clear com.google.android.apps.translate
## Google Calculator:
adb shell pm uninstall --user 0 com.google.android.calculator
adb shell pm clear com.google.android.calculator
## Google Wallpapers:
adb shell pm uninstall --user 0 com.google.android.apps.wallpaper
adb shell pm clear com.google.android.apps.wallpaper
## Youtube:
adb shell pm uninstall --user 0 com.google.android.youtube
adb shell pm clear com.google.android.youtube
## GMail:
adb shell pm uninstall --user 0 com.google.android.gm
adb shell pm clear com.google.android.gm
## GBoard Plugins:
adb shell pm uninstall --user 0 com.google.android.inputmethod.korean
adb shell pm clear com.google.android.inputmethod.korean
adb shell pm uninstall --user 0 com.google.android.inputmethod.japanese
adb shell pm clear com.google.android.inputmethod.japanese
adb shell pm uninstall --user 0 com.google.android.apps.inputmethod.zhuyin
adb shell pm clear com.google.android.apps.inputmethod.zhuyin
#
adb shell pm list packages android
## Android SIM ToolKit:
adb shell pm uninstall --user 0 com.android.stk
adb shell pm clear com.android.stk
## Carrier Default App:
adb shell pm uninstall --user 0 com.android.carrierdefaultapp
adb shell pm clear com.android.carrierdefaultapp
## Google Partners Bookmarks
adb shell pm uninstall --user 0 com.android.providers.partnerbookmarks
adb shell pm clear com.android.providers.partnerbookmarks
## Google Device Health Services (Depracated)
adb shell pm uninstall --user 0 com.google.android.apps.turbo
adb shell pm clear com.google.android.apps.turbo
#
adb shell pm list packages motorola
adb shell pm uninstall --user 0 com.lenovo.lsf.user
adb shell pm clear com.lenovo.lsf.user
adb shell pm uninstall --user 0 com.lmi.motorola.rescuesecurity
adb shell pm clear com.lmi.motorola.rescuesecurity
adb shell pm uninstall --user 0 com.motorola.android.provisioning
adb shell pm clear com.motorola.android.provisioning
adb shell pm uninstall --user 0 com.motorola.demo
adb shell pm clear com.motorola.demo
adb shell pm uninstall --user 0 com.motorola.demo.env
adb shell pm clear com.motorola.demo.env
adb shell pm uninstall --user 0 com.motorola.ccc.notification
adb shell pm clear com.motorola.ccc.notification
adb shell pm uninstall --user 0 com.motorola.ccc.devicemanagement
adb shell pm clear com.motorola.ccc.devicemanagement
#
adb shell pm list packages facebook
adb shell pm uninstall --user 0 com.facebook.appmanager
adb shell pm clear com.facebook.appmanager
adb shell pm uninstall --user 0 com.facebook.system
adb shell pm clear com.facebook.system
#
adb shell pm list packages amazon
adb shell pm uninstall --user 0 com.amazon.appmanager
adb shell pm clear com.amazon.appmanager
adb shell pm uninstall --user 0 com.amazon.mShop.android.shopping
adb shell pm clear com.amazon.mShop.android.shopping
#
### Functionality:
## Google Partner Setup:
adb shell pm uninstall --user 0 com.google.android.partnersetup
adb shell pm clear com.google.android.partnersetup
## Google Contacts Sync Adapter:
adb shell pm uninstall --user 0 com.google.android.syncadapters.contacts
adb shell pm clear com.google.android.syncadapters.contacts
## Google Backup Transport:
adb shell pm uninstall --user 0 com.google.android.backuptransport
adb shell pm clear com.google.android.backuptransport
## Google Play Store:
#adb shell pm uninstall --user 0 com.android.vending
adb shell pm clear com.android.vending
## Google Play Store Feedback:
adb shell pm uninstall --user 0 com.google.android.feedback
adb shell pm clear com.google.android.feedback
## Google Carrier Services
#adb shell pm uninstall --user 0 com.google.android.ims
#adb shell pm clear com.google.android.ims
## Google Voice Recognition:
#adb shell pm uninstall --user 0 com.android.hotwordenrollment.tgoogle
#adb shell pm clear com.android.hotwordenrollment.tgoogle
#adb shell pm uninstall --user 0 com.android.hotwordenrollment.xgoogle
#adb shell pm clear com.android.hotwordenrollment.xgoogle
#adb shell pm uninstall --user 0 com.android.hotwordenrollment.okgoogle
#adb shell pm clear com.android.hotwordenrollment.okgoogle
#
### To reinstall app:
#adb shell cmd package install-existing --user 0 com.android.providers.partnerbookmarks
#
### Install F-Droid apps:
## OpenBoard
## Simple Mobile Tools
## Librem One Apps
## Aurora Store
## Fennec Firefox
## PDF Viewer Plus
## NetGuard
#
### Uninstall GBoard:
#adb shell pm uninstall --user 0 com.google.android.inputmethod.latin
#
### Change Android Settings:
## Turn off Mobile Web, Bluetooth and Location Services
## Battery: Adaptable Battery = ON
## Screen: Adaptable Brightness = ON
## Security and Location - Lockscreen Preferences - On lock screen: Hide confidential content = YES
## Security and Location: Show passwords = OFF
## Accounts - Google: Remove Account = YES
## Google - Advertisements: Opt out of advertisement personalization = ON
## Google - Advertisements: Redefine publicity code = YES
## Google - Backup: Make Google Drive backups = OFF
## Google - Location - Advanced - Google location precision: Better location precision = OFF
#
### After phone reboots, turn off USB Debugging and Developer Mode. Opt out of Carrier SMS Advertising.
#
adb reboot
#
