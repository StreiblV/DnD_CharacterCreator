

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import CharacterCreator

Rectangle {
    id: rectangle1
    width: Constants.width
    height: Constants.height
    color: "#e7cfaf"

    radius: 5
    border.width: 5

    Text {
        id: title
        color: "#3a2b1f"
        text: qsTr("Character Creator")
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
        font.pointSize: 72
        font.family: "Verdana"
    }

    Rectangle {
        id: bg_grid
        x: 23
        y: 208
        width: 1876
        height: 849
        color: "#efe5d2"
        radius: 15
        border.color: "#3a2b1f"
        border.width: 8

        GridView {
            id: gridView
            anchors.fill: parent
            cellHeight: 70

            Column {
                id: left_column
                Rectangle {
                    width: 680
                    height: 849
                    radius: 15
                    border.color: "#3a2b1f"
                    border.width: 8
                    color: "transparent"
                }
            }
            Column {
                id: right_column
                anchors.left: left_column.right
                Rectangle {
                    width: 1196
                    height: 849
                    radius: 15
                    border.color: "#3a2b1f"
                    border.width: 8
                    color: "transparent"
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0}D{i:1;locked:true}D{i:3}
}
##^##*/

