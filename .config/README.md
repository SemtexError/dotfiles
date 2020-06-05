# Dotfiles

## Contents
* [Introduction](#introduction)
* [Todo](#todo)
* [Software](#software)
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

The primary distro is Arch Linux, but they will work on other distros also. By using the following command your old dotfiles will be removed and is replaced by this repository.

`curl -Lks https://raw.githubusercontent.com/SemtexError/dotfiles/master/.config/scripts/dotfiles.sh | /bin/bash`

## TODO
* Create auto installer for Ubuntu/Debian and Arch that will install all required software (perfect for setting up a server etc.).
* Make Config usable on Ubuntu/Debian (for (testing) servers).
* Make Config overwrite/backup existing files when cloning.

## Software
* [git](https://git-scm.com/) --- To manage the dotfiles.
* [zsh](https://www.zsh.org/) --- Shell.
* [tmux](https://github.com/tmux/tmux) --- Terminal multiplexer.
* [neovim](https://neovim.io/) --- Text editor.
* [dust](https://github.com/bootandy/dust) --- (DU) Modern disk usages replacement.
* [exa](https://github.com/ogham/exa) --- (LS) Modern list files and directories replacement.
* [fd](https://github.com/sharkdp/fd) --- (find) Modern find replacement.
* [ripgrep](https://github.com/BurntSushi/ripgrep) --- Modern grep replacement and files searching tool.

### Dependencies
The software that must be installed to make the above software work.
* [xclip](https://github.com/astrand/xclip) --- X11 clipboard CLI for Tmux and NeoVIM.
* [yarn](https://yarnpkg.com/) --- Package manager for NeoVIM plugins and development.
* [NodeJS](https://nodejs.org/en/) --- Node for NeoVIM plugins.
* [NeoVIM (node)](https://www.npmjs.com/package/neovim) --- NodeJS/NeoVIM dependency.

### Font
* Font: [Fira code 18](https://www.archlinux.org/packages/community/any/ttf-fira-code/)
* Icon font: [Material design icons](https://aur.archlinux.org/packages/ttf-material-design-icons-webfont/)

## Firefox

### Add-ons
* [Bitwarden](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/)
* [CanvasBlocker](https://addons.mozilla.org/en-US/firefox/addon/canvasblocker/)
* [ClearURLs](https://addons.mozilla.org/en-US/firefox/addon/clearurls/)
* [Cookie AutoDelete](https://addons.mozilla.org/en-US/firefox/addon/cookie-autodelete/)
* [CSS exfil protection](https://addons.mozilla.org/en-US/firefox/addon/css-exfil-protection/)
* [Dark reader](https://addons.mozilla.org/en-US/firefox/addon/darkreader/)
* [Decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/)
* [Don't touch my tabs! (rel=noopener)](https://addons.mozilla.org/en-US/firefox/addon/dont-touch-my-tabs/)
* [ExpressVPN](https://addons.mozilla.org/en-US/firefox/addon/expressvpn/)
  * [HTTPS everywhere](https://addons.mozilla.org/en-US/firefox/addon/https-everywhere/) (already include in ExpressVPN)
* [Facebook Container](https://addons.mozilla.org/en-US/firefox/addon/facebook-container/)
* [Firefox Multi-account container](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/)
* [Floccus](https://addons.mozilla.org/en-US/firefox/addon/floccus/)
* [Google Container](https://addons.mozilla.org/en-US/firefox/addon/google-container/)
* [Privacy Possum](https://addons.mozilla.org/en-US/firefox/addon/privacy-possum/)
* [Redirect AMP to HTML](https://addons.mozilla.org/en-US/firefox/addon/amp2html/)
* [Request Control](https://addons.mozilla.org/en-US/firefox/addon/requestcontrol/)
* [Sponsorblock](https://addons.mozilla.org/en-US/firefox/addon/sponsorblock/)
* [Stylus](https://addons.mozilla.org/en-US/firefox/addon/styl-us/)
* [YouTube Thumbnail Rating Bar](https://addons.mozilla.org/en-US/firefox/addon/youtube-thumbnail-rating-bar/)
* [uBlock Orgin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
* [uMatrix](https://addons.mozilla.org/en-US/firefox/addon/umatrix/)
* [Vimium](https://addons.mozilla.org/en-US/firefox/addon/vimium-ff/)

### Theme
* [MaterialFox](https://github.com/muckSponge/MaterialFox) (Yes I know: Chromium bad, Firefox good)
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
* [Book reader](https://f-droid.org/en/packages/com.github.axet.bookreader)
* [Simple Calculator](https://f-droid.org/en/packages/com.simplemobiletools.calculator)
* [Simple Calendar](https://f-droid.org/en/packages/com.simplemobiletools.calendar.pro)
* [DAVx5](https://f-droid.org/en/packages/at.bitfire.davdroid)
* [Duo mobile 🚩](https://play.google.com/store/apps/details?id=com.duosecurity.duomobile)
* [ExpressVPN 🚩](https://play.google.com/store/apps/details?id=com.expressvpn.vpn)
* [Simple file manager](https://f-droid.org/en/packages/com.simplemobiletools.filemanager.pro)
* [Firefox Fenix 🚩](https://play.google.com/store/apps/details?id=org.mozilla.fenix)
* [Flitsmeister 🚩](https://play.google.com/store/apps/details?id=nl.flitsmeister)
* [Simple Gallery](https://f-droid.org/en/packages/com.simplemobiletools.gallery.pro)
* [ICSx5](https://f-droid.org/en/packages/at.bitfire.icsdroid)
* [NetGuard](https://f-droid.org/en/packages/eu.faircode.netguard/)
* [Lawnchair](https://f-droid.org/en/packages/ch.deletescape.lawnchair.plah)
* [Newpipe](https://f-droid.org/en/packages/org.schabi.newpipe)
* [OsmAnd](https://f-droid.org/en/packages/net.osmand.plus)
* [ProtonMail 🚩](https://play.google.com/store/apps/details?id=ch.protonmail.android)
* [Share to Clipboard](https://f-droid.org/en/packages/com.tengu.sharetoclipboard)
* [Signal 🚩](https://play.google.com/store/apps/details?id=org.thoughtcrime.securesms)
* [Slide](https://f-droid.org/en/packages/me.ccrama.redditslide)
* [Telegram](https://f-droid.org/en/packages/org.telegram.messenger)
* [Tasks](https://f-droid.org/en/packages/org.dmfs.tasks/)
* [Soundclloud 🚩](https://play.google.com/store/apps/details?id=com.soundcloud.android)
* [WhatsApp 🚩](https://play.google.com/store/apps/details?id=com.whatsapp)

