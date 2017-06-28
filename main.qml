import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    property string txt_font: ""
    property string _font_family: ""
    FontLoader { id: font_courier_hard_code; name: "Courier" }

    FontLoader { id: font_times_hard_code; name: "Times" } //not ok on Android
    FontLoader { id: font_times; source: "qrc:/times.ttf" } //not ok on iOS
    FontLoader { id: font_times_test; name: "qrc:/times.ttf" } //not ok on iOS

    FontLoader { id: font_franklin; source: "qrc:/franklin.ttf" }

    Column {

        Button {
            text: "font_courier_hard_code"
            onClicked: {
                txt_font  = font_courier_hard_code.name
            }
        }

        Button {
            text: "font_times_hard_code"
            onClicked: {
                txt_font  = font_times_hard_code.name
            }
        }

        Button {
            text: "times.fod"
            onClicked: {
                txt_font  = font_times.name
            }
        }
        Button {
            text: "font_times_test"
            onClicked: {
                txt_font  = font_times_test.name
            }
        }

        Button {
            text: "franklin.fod"
            onClicked: {
                txt_font  = font_franklin.name

            }
        }

        Text {
            font.family: txt_font
            text: "ABCDEFGHIJKLMNOPQRSTUVWXYZ\r\nabcdefghijklmnopqrstuvwxyz"
            //            scale: parent.parent.width / paintedWidth
        }
    }
}
