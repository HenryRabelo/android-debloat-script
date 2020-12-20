## Android Debloat Script (Soft Purge)
#### Script to de-bloat Android devices, while keeping some practical functionality.

This script is intended to remove invasive software from Android devices, granting some level of privacy and decreasing battery consumption, while keeping Quality-of-Life software and stability. I will explain my reasoning as to what software is kept or removed, according to my research.

##### Intro:
Before we start, I would like to state that this script is intended to be used on devices that have **close-to-stock ROMs**, such as Pixel or Motorola devices. This script **was** tested on a **Motorola** device. Why Motorola, you ask? While a Pixel device would be ideal for debloating **and** installing custom ROMs, Pixels are not readly available on markets outside of the US. As such, I am making this script thinking of brands that are easily found on most countries.

The brands that were considered for this script were: ASUS; Huawei; LG; Motorola; Samsung; Sony; Xiaomi. Out of all of these, Motorola offers a ROM that is closest to stock and affordable phones with not much bloatware shipped by default. Because of that, this script is also compatible with Pixel devices.

##### Before Debloating:
Before we can start debloating, we will need to install ADB Tools in the computer sistem that will be used. My OS of choice is Linux, and it is what will be used for this guide. The script also relies on WGet to automatically fetch F-Droid from the official website.

On your phone, you will also need to enable Developer Mode and USB Debugging. You should search for instructions on this process, if you do not know how to do this already. After enabling those options, connect your phone to the computer and run 'adb devices' on the terminal screen of your computer.

##### App Debloating:
Right. With all of that out of the way, let's start with removing pre-installed apps. Since the ROM is already close to stock, this guide will focus on debloating invasive apps from your phone, granting some level of privacy, without impacting usability.

Be warned, it is intended that you use your phone without connecting to a Google Account, so features like Google Drive Backup were never intended to be working in the first place and will be purged properly. The script also purges Google Voice Search, to increase privacy, but can optionally be kept in a functional state. You should not, however, use voice search with a logged on account, as that would be extremely invasive to your privacy. You will be able to substitute the purged apps with privacy-respecting alternatives from F-Droid.

This script will purge the following apps: \
• Google App (Keep this if voice search is desirable) \
• Google Chrome \
• Google Drive \
• Google Dialer \
• Google Contacts \
• Google Messages \
• Google Calendar \
• Google Clocks \
• Google Music \
• Google Photos \
• Google Movies \
• Google Lens \
• Google Duo \
• Google Maps (Can be substituted with Web App version) \
• Google Translate (Can be substituted with Web App version) \
• Google Calculator (Believe it or not, this app has trackers. Yes, **the freaking calculator**.) \
• Google Wallpapers (Can be substituted with Unsplash web bookmark) \
• Youtube (Can be substituted with F-Droid Newpipe repository) \
• GMail (Can be substituted with Librem Mail) \
• GBoard & plugins (Can be substituted with OpenBoard) \
• Facebook & Amazon tracking

##### Functionality App Debloating:
###### Removed:
This script will also purge the following apps, that provide functionalities: \
• Google Partner Setup (It is used to provide some Google integration with select apps. We won't be using Google integration. Also, it consumes mad ammounts of battery.) \
• Google Drive Contacts Sync (It is used to upload your contacts to Google. Google Drive Syncronization will not be used.) \
• Google Drive Apps Sync (It is used to upload SMS, settings, etc to Google Drive. Google Drive Syncronization will not be used.) \
• Google Play Store (Google Play Store will not be used.) \
• Google Play Store Feedback (It is used to provide feedback to Google Play Store. Google Play Store will not be used.) \
• Google Voice Recognition (Keep those if voice search is desirable.) \
• Android SIM ToolKit (I mean, the only function of this one is to pester you about SIM Card advertising. You can keep this one if being buggered is desirable.)

###### Kept:
• Google One Time Init (It is used to start Google Services after your phones first setup. Repportedly, the phone may present issues after its removal. Disabling its internet access through NetGuard should suffice. Proceed at your own discretion.) \
• Android System WebView (It is used by many apps to provide web browser / services functionality. It should not be removed due to its core system functionality. Proceed at your own discretion.) \
• Device Health Services (It is used to provide adaptable battery functionality. It should not be removed due to its extreme usefulness. Disabling its internet access through NetGuard will suffice.) \
• Print Service Recommendation (Little information was found on this packages functionality. As such, it probably should not be removed. Proceed at your own discretion.)
