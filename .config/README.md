# Dotfiles

## Contents
* [Introduction](#introduction)
* [Theme](#theme)
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

## Theme

### Font
* Font: [Fira code 18](https://www.archlinux.org/packages/community/any/ttf-fira-code/)
* Icon font: [Material design icons](https://aur.archlinux.org/packages/ttf-material-design-icons-webfont/)

### Colors
<style>
.header {
  text-align: center;
}

.wrapper {
  display: flex;
  border-radius: .5rem;
  overflow: hidden;
  box-shadow: rgba(184, 194, 215, 0.35) 0px 3px 6px 0px;
  height: 10rem;
}

.item {
  display : flex;
  flex-direction: column;
  height: 100%;
  flex: 1;
}

.block {
  height: 100%;
  width: 100%;
}

.label {
  background-color: white;
  color: black;
  text-align: center;
}
</style>

<h4 class="header">Base</h4>
<div class="wrapper">

  <div class="item">
    <div class="block" style="background-color: #151515;"></div>
    <label class="label">#151515</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #222222;"></div>
    <label class="label">#222222</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #D4D4D4;"></div>
    <label class="label">#D4D4D4</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #FFFFFF;"></div>
    <label class="label">#FFFFFF</label>
  </div>

</div>

<h4 class="header">Blue</h4>
<div class="wrapper">

  <div class="item">
    <div class="block" style="background-color: #9CDCFE;"></div>
    <label class="label">#9CDCFE</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #569CD6;"></div>
    <label class="label">#569CD6</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #3498db;"></div>
    <label class="label">#3498DB*</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #2980b9;"></div>
    <label class="label">#2980B9*</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #264F78;"></div>
    <label class="label">#264F78</label>
  </div>

</div>

<h4 class="header">Green</h4>
<div class="wrapper">

  <div class="item">
    <div class="block" style="background-color: #B3D19F;"></div>
    <label class="label">#B3D19F</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #4EC9B0;"></div>
    <label class="label">#4EC9B0</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #2ECC71;"></div>
    <label class="label">#2ECC71*</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #27AE60;"></div>
    <label class="label">#27AE60*</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #608B4E;"></div>
    <label class="label">#608B4E</label>
  </div>

</div>

<h4 class="header">Red</h4>
<div class="wrapper">

  <div class="item">
    <div class="block" style="background-color: #CE9178;"></div>
    <label class="label">#CE9178</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #E74C3C;"></div>
    <label class="label">#E74C3C*</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #C0392B;"></div>
    <label class="label">#C0392B*</label>
  </div>

</div>

<h4 class="header">Other</h4>
<div class="wrapper">

  <div class="item">
    <div class="block" style="background-color: #DCDCAA;"></div>
    <label class="label">#DCDCAA</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #D7BA7D;"></div>
    <label class="label">#D7BA7D</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #F39C12;"></div>
    <label class="label">#F39C12</label>
  </div>

  <div class="item">
    <div class="block" style="background-color: #C586C0;"></div>
    <label class="label">#C586C0</label>
  </div>

</div>

## Firefox

### Add-ons
* [Bitwarden](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/)
* [CanvasBlocker](https://addons.mozilla.org/en-US/firefox/addon/canvasblocker/)
* [ClearURLs](https://addons.mozilla.org/en-US/firefox/addon/clearurls/)
* [Cookie AutoDelete](https://addons.mozilla.org/en-US/firefox/addon/cookie-autodelete/)
* [CSS exfil protection](https://addons.mozilla.org/en-US/firefox/addon/css-exfil-protection/)
* [Decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/)
* [ExpressVPN](https://addons.mozilla.org/en-US/firefox/addon/expressvpn/)
  * [HTTPS everywhere ](https://addons.mozilla.org/en-US/firefox/addon/https-everywhere/) (already include in ExpressVPN)
* [Don't touch my tabs! (rel=noopener)](https://addons.mozilla.org/en-US/firefox/addon/dont-touch-my-tabs/)
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

### Theme
* [ShadowFox](https://overdodactyl.github.io/ShadowFox/)
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
* [Firefox Fenix 🚩](https://play.google.com/store/apps/details?id=org.mozilla.fenix)
* [Flitsmeister 🚩](https://play.google.com/store/apps/details?id=nl.flitsmeister)
* [Simple Gallery](https://f-droid.org/en/packages/com.simplemobiletools.gallery.pro)
* [ICSx5](https://f-droid.org/en/packages/at.bitfire.icsdroid)
* [Lawnchair](https://f-droid.org/en/packages/ch.deletescape.lawnchair.plah)
* [Newpipe](https://f-droid.org/en/packages/org.schabi.newpipe)
* [OsmAnd](https://f-droid.org/en/packages/net.osmand.plus)
* [ProtonMail 🚩](https://play.google.com/store/apps/details?id=ch.protonmail.android)
* [Share to Clipboard](https://f-droid.org/en/packages/com.tengu.sharetoclipboard)
* [Signal 🚩](https://play.google.com/store/apps/details?id=org.thoughtcrime.securesms)
* [Slide](https://f-droid.org/en/packages/me.ccrama.redditslide)
* [Stack 🚩](https://play.google.com/store/apps/details?id=nl.transip.stack)
* [Telegram](https://f-droid.org/en/packages/org.telegram.messenger)
* [WhatsApp 🚩](https://play.google.com/store/apps/details?id=com.whatsapp)

