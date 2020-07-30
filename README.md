# Fonts
Fontello fonts for qt app  
You can use fontello fonts in QML as Qt app submodule  
Example below draws off icon in top-left corner of app window
```
// main.qml
import Fonts 1.0
Window {
    IconSet {
        id: iconSet
    }
    Label {
        text: iconSet.off
        font.family: "fontello"
    }
}
```
## Usage
Clone in root project folder
### Include in project
To use this module in qt app add to `.pro` file
```
include(Fonts/Fonts.pri)
```
### Configure in cpp
To use fonts in app insert this code in main.cpp
```
// main.cpp
#include "Fonts/fontconfig.h"
```
After `QQmlApplicationEngine engine` insert:
```
QQmlApplicationEngine engine;
// ...
Font::init(engine);
```
### Configure in qml
To use module in app you need to add code in main.qml:
```
// main.qml
import Fonts 1.0
Window {
    IconSet {
        id: iconSet
    }
}
```
### Use
In every `qml` file in project:
```
// ...
Label {
    text: iconSet.off
    font.family: "fontello"
}
// ...
```

## Icons
```
settings:          '\ue861' // icon-cog
settingsAlt:       '\uE862' // icon-cog-alt
archive:           '\ue913' // icon-archive
attention:         '\ue859' // icon-attention
exchange:          '\ueb48' // icon-exchange-1
siteMap:           '\uf0e8' // icon-sitemap
link:              '\ue9e3' // icon-link-2
settings:          '\ue861' // icon-cog
reconnect:         '\ued83' // icon-arrows-cw-2
question:          '\ue8de' // icon-help-1
info:              '\ue9df' // icon-info-2
ok:                '\ue826' // icon-ok
cancel:            '\ue829' // icon-cancel
checked:           '\uedbc' // icon-check-3
save:              '\ue8BC' // icon-floppy
saveFilled:        '\ue992' // icon-floppy-1
plusSmallBold:     '\ue82c' // icon-plus
plusSmall:         '\ue8d8' // icon-plus-1
plusBig:           '\ued13' // icon-plus-6
plus:              '\ueaf1' // icon-plus-3
plusRounded:       '\uec09' // icon-plus-5
edit:              '\ued37' // icon-edit-3
trash:             '\ue85c' // icon-trash-empty
downOpen:          '\ue87a' // icon-down-open
rightOpen:         '\ue87c' // icon-right-open
upOpen:            '\ue87d' // icon-up-open
leftOpen:          '\ue87b' // icon-left-open
downOpenThin:      '\ue93d' // icon-down-open-big
upOpenThin:        '\ue940' // icon-up-open-big
aboutProgram:      '\ueaf6' // icon-info-3
menu:              '\uea29' // icon-menu-2
monitoringView:    '\ued08' // icon-photo-circled
arrowDown:         '\uec15' // icon-down-5
arrowLeft:         '\uec16' // icon-left-4
arrowRight:        '\uec17' // icon-right-4
arrowUp:           '\uec18' // icon-up-5
arrowCross:        '\uea43' // icon-move-1
chartLine:         '\uf201' // icon-chart-line
lockClose:         '\uf512' // icon-lock-5
lockOpen:          '\uf513' // icon-lock-open-5
soundOff:          '\ued5f' // icon-volume-off-4
soundLow:          '\ued60' // icon-volume-down-2
soundNormal:       '\ued61' // icon-volume-1
soundHigh:         '\ued62' // icon-volume-up-3
joystick:          '\uF514' // icon-joystick
resize:            '\uEA3F' // icon-resize-full-2
temperature:       '\uEAA1' // icon-temperature
search:            '\uE815' // icon-search
zoomIn:            '\uE872' // icon-zoom-in
zoomOut:           '\uE873' // icon-zoom-out
off:               '\uE8AD' // icon-off
logout:            '\uE91f' // icon-logout-1
eyeOff:            '\uED25' // icon-eye-off-1
videoCam:          '\uE81F' // icon-videocam
download:          '\uF02E' // icon-download-5
publish:           '\uE92E' // icon-publish
monitor:           '\uE96D' // icon-monitor
play:              '\uE88A' // icon-play
picture:           '\uE820' // icon-picture
gridOutline:       '\uE9C8' // icon-th-outline
grid:              '\uE9C9' // icon-th
loop:              '\uE957' // icon-loop
back:              '\uE8E2' // icon-back
sun:               '\uEA86' // icon-sun-1
sunFilled:         '\uEA87' // icon-sun-filled
sunBig:            '\uF185' // icon-sun
spread:            '\uF527' // icon-spread
adjustSmall:       '\uE929' // icon-adjust-1
adjust:            '\uEDBA' // icon-adjust-2
flash:             '\uE89B' // icon-flash
reply:             '\uE8F2' // icon-reply-1
forward:           '\uE8F4' // icon-forward-1
toStart:           '\uE890' // icon-to-start
toStartDouble:     '\uE891' // icon-to-start-alt
pause:             '\uE88d' // icon-pause
stop:              '\uE88c' // icon-stop
ellipsisVertical:  '\uF142' // icon-ellipsis-vert - three vertical dots (:)
block:             '\uEB34' // icon-block-3 - crossed circle
```