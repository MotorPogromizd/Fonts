import QtQuick 2.10
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

Item {
    id: iconSet

    property alias iconPopup: iconPopupPrivate

    readonly property string settings:          '\ue861' // icon-cog
    readonly property string settingsAlt:       '\uE862' // icon-cog-alt
    readonly property string archive:           '\ue913' // icon-archive
    readonly property string attention:         '\ue859' // icon-attention
    readonly property string exchange:          '\ueb48' // icon-exchange-1
    readonly property string siteMap:           '\uf0e8' // icon-sitemap
    readonly property string link:              '\ue9e3' // icon-link-2
    readonly property string reconnect:         '\ued83' // icon-arrows-cw-2
    readonly property string question:          '\ue8de' // icon-help-1
    readonly property string info:              '\ue9df' // icon-info-2
    readonly property string ok:                '\ue826' // icon-ok
    readonly property string cancel:            '\ue829' // icon-cancel
    readonly property string checked:           '\uedbc' // icon-check-3
    readonly property string save:              '\ue8BC' // icon-floppy
    readonly property string saveFilled:        '\ue992' // icon-floppy-1
    readonly property string plusSmallBold:     '\ue82c' // icon-plus
    readonly property string plusSmall:         '\ue8d8' // icon-plus-1
    readonly property string plusBig:           '\ued13' // icon-plus-6
    readonly property string plus:              '\ueaf1' // icon-plus-3
    readonly property string plusRounded:       '\uec09' // icon-plus-5
    readonly property string edit:              '\ued37' // icon-edit-3
    readonly property string trash:             '\ue85c' // icon-trash-empty

    readonly property string downOpen:          '\ue87a' // icon-down-open
    readonly property string rightOpen:         '\ue87c' // icon-right-open
    readonly property string upOpen:            '\ue87d' // icon-up-open
    readonly property string leftOpen:          '\ue87b' // icon-left-open

    readonly property string downOpenThin:      '\ue93d' // icon-down-open-big
    readonly property string upOpenThin:        '\ue940' // icon-up-open-big

    readonly property string aboutProgram:      '\ueaf6' // icon-info-3
    readonly property string menu:              '\uea29' // icon-menu-2
    readonly property string monitoringView:    '\ued08' // icon-photo-circled

    readonly property string arrowDown:         '\uec15' // icon-down-5
    readonly property string arrowLeft:         '\uec16' // icon-left-4
    readonly property string arrowRight:        '\uec17' // icon-right-4
    readonly property string arrowUp:           '\uec18' // icon-up-5

    readonly property string arrowCross:        '\uea43' // icon-move-1

    readonly property string chartLine:         '\uf201' // icon-chart-line
    readonly property string lockClose:         '\uf512' // icon-lock-5
    readonly property string lockOpen:          '\uf513' // icon-lock-open-5
    readonly property string soundOff:          '\ued5f' // icon-volume-off-4
    readonly property string soundLow:          '\ued60' // icon-volume-down-2
    readonly property string soundNormal:       '\ued61' // icon-volume-1
    readonly property string soundHigh:         '\ued62' // icon-volume-up-3
    readonly property string joystick:          '\uF514' // icon-joystick

    readonly property string resize:            '\uEA3F' // icon-resize-full-2

    readonly property string temperature:       '\uEAA1' // icon-temperature

    readonly property string search:            '\uE815' // icon-search

    readonly property string zoomIn:            '\uE872' // icon-zoom-in
    readonly property string zoomOut:           '\uE873' // icon-zoom-out

    readonly property string off:               '\uE8AD' // icon-off
    readonly property string logout:            '\uE91f' // icon-logout-1
    readonly property string eyeOff:            '\uED25' // icon-eye-off-1

    readonly property string videoCam:          '\uE81F' // icon-videocam
    readonly property string download:          '\uF02E' // icon-download-5
    readonly property string publish:           '\uE92E' // icon-publish
    readonly property string monitor:           '\uE96D' // icon-monitor
    readonly property string play:              '\uE88A' // icon-play
    readonly property string picture:           '\uE820' // icon-picture
    readonly property string gridOutline:       '\uE9C8' // icon-th-outline
    readonly property string grid:              '\uE9C9' // icon-th
    readonly property string loop:              '\uE957' // icon-loop
    readonly property string back:              '\uE8E2' // icon-back
    readonly property string sun:               '\uEA86' // icon-sun-1
    readonly property string sunFilled:         '\uEA87' // icon-sun-filled
    readonly property string sunBig:            '\uF185' // icon-sun
    readonly property string spread:            '\uF527' // icon-spread
    readonly property string adjustSmall:       '\uE929' // icon-adjust-1
    readonly property string adjust:            '\uEDBA' // icon-adjust-2

    readonly property string flash:             '\uE89B' // icon-flash
    readonly property string reply:             '\uE8F2' // icon-reply-1
    readonly property string forward:           '\uE8F4' // icon-forward-1

    readonly property string toStart:           '\uE890' // icon-to-start
    readonly property string toStartDouble:     '\uE891' // icon-to-start-alt
    readonly property string pause:             '\uE88D' // icon-pause
    readonly property string stop:              '\uE88C' // icon-stop
    readonly property string ellipsisVertical:  '\uF142' // icon-ellipsis-vert
    readonly property string block:             '\uEB34' // icon-block-3
    Popup {
        id: iconPopupPrivate
        width: 480
        height: 360
        modal: true

        font.pixelSize: 20

        ColumnLayout {
            anchors.fill: parent
            spacing: 10

            ListView {
                Layout.fillHeight: true
                Layout.fillWidth: true

                clip: true
                boundsBehavior: Flickable.StopAtBounds

                model: iconSetModel

                ScrollIndicator.vertical: ScrollIndicator { }

                delegate: RowLayout {
                    width: iconPopupPrivate.width

                    Label {
                        text: name

                        Layout.preferredWidth: iconPopupPrivate.width*2/3
                        wrapMode: Text.WrapAnywhere
                    }
                    Label {
                        font.family: "fontello"
                        Layout.fillWidth: true
                        horizontalAlignment: Text.AlignHCenter

                        text: icon
                    }
                }
            }
            Button {
                Layout.alignment: Qt.AlignRight

                text: "Закрыть"
                onClicked: iconPopupPrivate.close()
            }
        }

        ListModel {
            id: iconSetModel
        }
    }

    Component.onCompleted: {
        for (var p in iconSet) {
            if (typeof iconSet[p] == "string" )
                if (iconSet[p] !== "")
                    iconSetModel.append([{name: p,icon: iconSet[p]}])
        }
    }
}
