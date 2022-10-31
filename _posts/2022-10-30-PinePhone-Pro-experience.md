---
layout: duckone
style: sitelife
title: Experience with the PinePhone Pro
author: 
 display_name: Toni
tags:
 - vipassana
---

I have purchased a PinePhone Pro, and i would like to post my experience with it. 

|                | MJ PL | MJ PH | MB PH |   |
|----------------|-------|-------|---|---|
| 1Password      | 1     | 1     |  1 |   |
| Telephone      | 2     | -1    |  -3 |   |
| Voice Recorder | -2    | 1     |   |   |
| SMS            | 1     | 1     |  1 |   |
| Address Book   | 2     | 11    |   |   |
| ProtonMail     | 12    | 12    |   |   |
| System Updates | 0     | 1     |  15 |   |
| Terminal       |       |       | 16  |   |
| Keyboard       | 1     | 13    |   |   |
| Other          |       | 14    | -4  |   |


## Legend

### Distro abbreviations

| abbrev | full name | version |
|-------|----------|-------|
| MJ PL | Manjaro Plasma | |
| MJ PH | Manjaro Phosh | Wayland, Gnome 42.4 |
| MB PH | Mobian Phosh | |

### Error Codes 

| code | meaning |
|-------|----------|
| -4 | Apps don't start up randomly. The journalctl logs show that they timeout at launch. Systemsettings had a corrupted database when i tried to launch it from CLI. |
| -3 | Does not work at all. Phone app launches the first time the phone boots, but closing it and re-opening it will cause the Calls app not to launch anymore. Sometimes calls are received, but the modem hangs, forcing the user to reboot the phone, or to restart the modem service. Once restarted, Calls app still doesn't work, and calls still don't come through. The few times it did work, the phone did ring, but the microphone volume was WAAAAYYY too low: had to yell straight into the microphone in order for the other persone to hear anything. However, plugging in an external headset, did make the audio work, but this time waaayyy too loud, distorting heavily. Once plugged in, and then out, also the internal microphone works, but both speaker and microphone volume settings do not work at all (completely ignored). |
| -2 | Works, but unusable because extremely poorly, unusable. |
| -1 | Works, but unusable because cannot hear or pickup any audio. |
| 0 | NOT WORKING |
| 1 | OK |
| 2 | UNTESTED |
| 11 | Works but extremely slow. |
| 12 | Works via web app only, with web browser |
| 13 | Keyboard works, but button to disable charge does not. Also, external battery indicator indicates battery is charging, when it is, infact, discharging. |
| 14 | Some modal windows have no button to close. The user needs to kill them swiping up. | 
| 15 | System Updates worked but only from CLI. I got an error when trying to run updates from GUI, as a first thing i did after booting from clean image. |
| 16 | Terminal works, and Terminal keyboard stays for the most part. However, at times, the soft keyboard will not respond at all. Opening a new tab will make that tab's keyboard work, but not the old tab's keyboard. Always closing out tabs to move forward. |