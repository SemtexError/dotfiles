# Dotfiles

## Contents
* [Introduction](#introduction)
* [Firefox](#firefox)
* [Android](#android)

## Introduction
Nicola has written a small guide on [Atlassian](https://www.atlassian.com/git/tutorials/dotfiles) about managing dotfiles.
This will create a bare git repository.
By using the bash alias 'config' you can manage your dotfiles as a git repository.
This is also a backup of any information I need like my android applications.

The requirements for this method are:
* [Git](https://www.archlinux.org/packages/extra/x86_64/git/)
* [Curl](https://www.archlinux.org/packages/core/x86_64/curl/)

The primary distro is Arch Linux but they will work on other distros also. By using the following command your old dotfiles will be removed and is replaced by this repository.

`curl -Lks https://raw.githubusercontent.com/SemtexError/dotfiles/master/.config/scripts/dotfiles.sh | /bin/bash`

## Firefox
* [ShadowFox](https://overdodactyl.github.io/ShadowFox/)

### Add-ons
* [Bitwarden](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/)
* [CanvasBlocker](https://addons.mozilla.org/en-US/firefox/addon/canvasblocker/)
* [ClearURLs](https://addons.mozilla.org/en-US/firefox/addon/clearurls/)
* [Cookie AutoDelete](https://addons.mozilla.org/en-US/firefox/addon/cookie-autodelete/)
* [CSS exfil protection](https://addons.mozilla.org/en-US/firefox/addon/css-exfil-protection/)
* [Dark Night Mode](https://addons.mozilla.org/en-US/firefox/addon/dark-night-mode/)
* [Decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/)
* [ExpressVPN](https://addons.mozilla.org/en-US/firefox/addon/expressvpn/)
* [Don't touch my tabs! (rel=noopener)](https://addons.mozilla.org/en-US/firefox/addon/dont-touch-my-tabs/)
  * [HTTPS everywhere ](https://addons.mozilla.org/en-US/firefox/addon/https-everywhere/) (already include in ExpressVPN)
* [Firefox Multi-account container](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/)
* [Facebook Container](https://addons.mozilla.org/en-US/firefox/addon/facebook-container/)
* [Google Container](https://addons.mozilla.org/en-US/firefox/addon/google-container/)
* [Floccus](https://addons.mozilla.org/en-US/firefox/addon/floccus/)
* [Privacy Possum](https://addons.mozilla.org/en-US/firefox/addon/privacy-possum/)
* [Redirect AMP to HTML](https://addons.mozilla.org/en-US/firefox/addon/amp2html/)
* [Request Control](https://addons.mozilla.org/en-US/firefox/addon/requestcontrol/)
* [Skip Redirect](https://addons.mozilla.org/en-US/firefox/addon/skip-redirect/)
* [Stylus](https://addons.mozilla.org/en-US/firefox/addon/styl-us/)
* [Temporary Containers](https://addons.mozilla.org/en-US/firefox/addon/temporary-containers/)
* [YouTube Thumbnail Rating Bar](https://addons.mozilla.org/en-US/firefox/addon/youtube-thumbnail-rating-bar/)
* [uBlock Orgin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
* [uMatrix](https://addons.mozilla.org/en-US/firefox/addon/umatrix/)
* [Vimium](https://addons.mozilla.org/en-US/firefox/addon/vimium-ff/)
* [Matte Black V2](https://addons.mozilla.org/en-US/firefox/addon/matte-black-v2/)

## Android
### Application stores
* [F-Droid](https://search.f-droid.org)
* [Aorora store](https://f-droid.org/en/packages/com.aurora.store/)

### Applications
The applications marked with 🚩 aren't open source and/or not available on the F-Droid store.
They should only be downloaded through the Aorora store.
* [andOTP](https://f-droid.org/en/packages/org.shadowice.flocke.andotp/)
* [Barcode scanner](https://f-droid.org/en/packages/com.google.zxing.client.android)
* [Bitwarden](https://mobileapp.bitwarden.com/fdroid/)
* [Blokada](https://f-droid.org/en/packages/org.blokada.alarm)
* [Book reader](https://f-droid.org/en/packages/com.github.axet.bookreader)
* [Simple Calculator](https://f-droid.org/en/packages/com.simplemobiletools.calculator)
* [Simple Calendar](https://f-droid.org/en/packages/com.simplemobiletools.calendar.pro)
* [DAVx5](https://f-droid.org/en/packages/at.bitfire.davdroid)
* [Duo mobile 🚩](https://play.google.com/store/apps/details?id=com.duosecurity.duomobile)
* [ExpressVPN 🚩](https://play.google.com/store/apps/details?id=com.expressvpn.vpn)
* [Simple file manager](https://f-droid.org/en/packages/com.simplemobiletools.filemanager.pro)
* [Firefox Klar](https://f-droid.org/en/packages/org.mozilla.klar)
* [Firefox Fenix (preview)](https://github.com/mozilla-mobile/fenix)
* [Flitsmeister 🚩](https://play.google.com/store/apps/details?id=nl.flitsmeister)
* [Simple Gallery](https://f-droid.org/en/packages/com.simplemobiletools.gallery.pro)
* [ICSx5](https://f-droid.org/en/packages/at.bitfire.icsdroid)
* [Lawnchair](https://f-droid.org/en/packages/ch.deletescape.lawnchair.plah)
* [Newpipe](https://f-droid.org/en/packages/org.schabi.newpipe)
* [Nextcloud Deck](https://f-droid.org/en/packages/it.niedermann.nextcloud.deck)
  * [Nextcloud (required by deck)](https://f-droid.org/en/packages/com.nextcloud.client)
* [OsmAnd](https://f-droid.org/en/packages/net.osmand.plus)
* [ProtonMail 🚩](https://play.google.com/store/apps/details?id=ch.protonmail.android)
* [Share to Clipboard](https://f-droid.org/en/packages/com.tengu.sharetoclipboard)
* [Signal 🚩](https://play.google.com/store/apps/details?id=org.thoughtcrime.securesms)
* [Slide](https://f-droid.org/en/packages/me.ccrama.redditslide)
* [Stack 🚩](https://play.google.com/store/apps/details?id=nl.transip.stack)
* [Telegram](https://f-droid.org/en/packages/org.telegram.messenger)
* [WhatsApp (bah) 🚩🚩🚩](https://play.google.com/store/apps/details?id=com.whatsapp)

