## Android Debloat Script (Soft Purge)
#### Script to de-bloat Android devices, while keeping some practical functionality.

This script is intended to remove invasive software from Android devices without rooting your device, granting some level of privacy and decreasing battery consumption, while keeping Quality-of-Life software and stability. Doing this should not void your warranty, as the changes are applied only to your user and are not permanent. I will explain my reasoning as to what software is kept or removed, according to my research.

##### Intro:
Before we start, I would like to state that this script is intended to be used on devices that have **close-to-stock ROMs**, such as Pixel or Motorola devices. This script **was** tested on a **Motorola** device. Why Motorola, you ask? While a Pixel device would be ideal for debloating **and** installing custom ROMs, Pixels are not readly available on markets outside of the US. As such, I am making this script thinking of brands that are easily found on most countries.

The brands that were considered for this script were: ASUS; Huawei; LG; Motorola; Samsung; Sony; Xiaomi. Out of all of these, Motorola offers a ROM that is closest to stock and affordable phones with not much bloatware shipped by default. Because of that, this script is also compatible with Pixel devices.

##### Before Debloating:
Before we can start debloating, we will need to install ADB Tools in the computer sistem that will be used. My OS of choice is Linux, and it is what will be used for this guide. The script also relies on WGet to automatically fetch F-Droid from the official website.

On your phone, you will also need to enable Developer Mode and USB Debugging. You should search for instructions on this process, if you do not know how to do this already. After enabling those options, connect your phone to the computer and run 'adb devices' on the terminal screen of your computer.

##### App Debloating:
Right. With all of that out of the way, let's start with removing pre-installed apps. Since the ROM is already close to stock, this guide will focus on debloating invasive apps from your phone, granting some level of privacy, without impacting usability.

Be warned, it is intended that you use your phone without connecting to a Google Account, so features like Google Drive Backup were never intended to be working in the first place and will be purged properly. The script also purges Google Voice Search, to increase privacy, but can optionally be kept in a functional state. You should not, however, use voice search with a logged on account, as that would be extremely invasive to your privacy. You will be able to substitute the purged apps with privacy-respecting alternatives from F-Droid.

This script will purge the following apps:
- Google App (Keep this if voice search is desirable)
- Google Chrome
- Google Drive
- Google Dialer
- Google Contacts
- Google Messages
- Google Calendar
- Google Clocks
- Google Music
- Google Photos
- Google Movies
- Google Lens
- Google Duo
- Google Maps (Can be substituted with QWant Maps Web App / Google Maps Web App)
- Google Translate (Can be substituted with Bing Translate Web Bookmark / Google Translate Web Bookmark)
- Google Calculator (Believe it or not, this app has trackers. Yes, **the freaking calculator**.)
- Google Wallpapers (Can be substituted with Unsplash web bookmark)
- Youtube (Can be substituted with F-Droid Newpipe repository)
- GMail
- GBoard & plugins

##### Functionality App Debloating:
###### Removed:
This script will also purge the following apps, that provide functionalities:
- Google Partner Setup (It is used to provide some Google integration with select apps. We won't be using Google integration. Also, it consumes mad ammounts of battery.)
- Google Contacts Sync Adapter (It is used to upload your contacts to Google. Google Drive Syncronization will not be used.)
- Google Backup Transport (It is used to upload SMS, settings, etc to Google Drive. Google Drive Syncronization will not be used.)
- Google Play Store (Google Play Store will not be used.)
- Google Play Store Feedback (It is used to provide feedback to Google Play Store. Google Play Store will not be used.)
- Google Voice Recognition (Keep those if voice search is desirable.)
- Android SIM ToolKit (I mean, the only function of this one is to pester you about SIM Card advertising. You can keep this one if being buggered is desirable.)
- Carrier Default App (Reportedly, it is used to perform carrier actions upon signal. No point in allowing that.)
- Google Partners Bookmarks (Bookmarks from Google partners on Chrome. No point in keeping it.)
- Facebook & Amazon tracking
- Motorola specific additions such as Lenovo account, remote access, demo mode, China regulation apps.
- Any app that you find suitable. Be careful when dealing with system apps, as that could impair normal phone functioning.

###### Kept:
- Google Play Services (It is used by many apps to provide functionalities. It should not be removed if apps require its functionality.)
- Google Services Framework (It is used by many apps to provide functionalities. It should not be removed if apps require its functionality.)
- Carrier Services (It is used to provide SMS extra functionality. It should not be removed due to its functionality.)
- Android System WebView (It is used by many apps to provide web browser / services functionality. It should not be removed due to its functionality.)
- Device Health Services (It is used to provide adaptable battery functionality. It should not be removed due to its usefulness. Disabling its internet access through NetGuard will suffice.)
- Android Accessibility Pack (It is used to provide accessibility options. It should not be removed due to its accessibility functionality.)
- Text to Speech (It is used to transform text output into sound output. It probably should not be removed, since it is used for accessibility options.)

##### After Debloating:
###### Installing Base Apps:
After the script is run, you will need to install the following apps from F-Droid or Aurora Store:
- OpenBoard (At which point you can uninstall GBoard completely)
- Aurora Store (Installed at F-Droid)
- Simple Dialer
- Simple Contacts
- Simple SMS Messenger (Alternatively: Signal)
- Simple Calendar
- Simple Clocks
- Simple Music (Alternatively: Retro Music Player / Apple Music)
- Simple Gallery
- Simple Calculator (Alternatively: Xlythe Calculator)
- Librem Mail (Alternatively: FairEMail)
- Librem Chat (Alternatively: Telegram / Signal)
- Librem Social (Optional)
- Librem Tunnel (Optional)
- Readrops (Optional)
- Fennec Firefox (Alternatively: Brave Browser / DuckDuckGo Privacy Browser)
- OSMAnd (Alternatively: QWant Maps Web App / Google Maps Web App / Magic Earth / HERE WeGo)
- SyncThing (Alternatively: NextCloud)
- PDF Viewer Plus
- NetGuard

###### Blocking App Network Traffic:

After installing your apps, we should block some of the network traffic through NetGuard. Before we do that, open the NetGuard App and go through the setup process. After that, change the NetGuard setting: Configurations - Advanced options - Manage system apps = ON. If the NetGuard app view becomes overwhelming, we can always use the filter menu to filter out apps, leaving only user installed apps.

Let's use the filter menu to hide disabled apps and apps that do not have network access. From the remaining apps, you should:

- Block network access for all apps
- Unblock apps that usually need network access to function, such as:
  - CaptivePortalLogin
  - Google Play Services
  - Google Services Framework
  - Carrier Services
  - Browsers
  - App stores
  - Streaming services
  - GPS Apps
  - Climate apps
  - Accessibility apps
  - Apps that have "Print" or "Printer" in their name
  - Apps that have "Download" or "Downloader" in their name
  - Apps that have "Update" in their name
  - Apps that have "NFC" in their name
  - Apps that have "Host" in their name
  - Apps that have "Server" in their name
  - Apps that have "DNS" in their name
  - Apps that have "Filter" in their name
  - Apps that have "Proxy" in their name
- You can disable network access for any app that you find suitable. Generally, apps that can function without internet access should have their internet access blocked. Be careful when dealing with system apps, as that could impair normal phone functioning.
- You can enable a network access logger from NetGuard's "Advanced options" menu. From there, you can see what apps request network access most frequently.
- Keep in mind that if you have blocked system apps, you should test your phone to check if it is functioning properly. If it fails to connect to any service while using it daily, remember that it could be because of those changes.

###### Changing Android Configurations:
It is also important to change the following Android Configurations:
- Turn off Mobile Web, Bluetooth and Location Services, turning them back on only when needed
- Battery: Adaptable Battery = ON (Optional, but highly recommended)
- Screen: Adaptable Brightness = ON (Optional, but highly recommended)
- Security and Location - Lockscreen Preferences - On lock screen: Hide confidential content = YES
- Security and Location: Show passwords = OFF
- Accounts - Google: Remove Account = YES
- Google - Advertisements: Opt out of advertisement personalization = ON
- Google - Advertisements: Redefine publicity code = YES
- Google - Backup: Make Google Drive backups = OFF
- Google - Location - Advanced - Google location precision: Better location precision = OFF

###### Editing Android Quick Settings Menu:
I personally recommend editing your quick settings menu in the following order, to allow better control as to what settings are enabled at all times:
- Wi-Fi
- Mobile network
- Bluetooth
- Location
- Do not disturb
- Airplane mode
- Power Savings
- Automatic rotation
- Flashlight

###### Wrapping up:
To wrap up this guide, you should do the following procedures:
- Turn off USB Debugging and Developer Mode, to regain the BlackBox-like sate of your phone
- Reboot your device once more
- Opt out of carrier SMS Advertising and Telemarketing (Availability dependant on your country)
- Opt out of Debit Card and Credit Card data collection
- When using your phone daily, try not to let your battery fall below 30% and do not charge it above 80%. When you need to charge it, aways take off your phone case, if you have one, and turn your phone off for charging. With fast charging technologies, you won't need to wait longer than 30 minutes with your phone turned off. Keeping all this in mind will help your battery last longer.
