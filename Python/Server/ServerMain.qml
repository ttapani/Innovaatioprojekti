import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: serverApp
    visible: true
    property int margin: 11
    width: mainLayout.implicitWidth + 2 * margin
    height: mainLayout.implicitHeight + 2 * margin
    minimumWidth: mainLayout.Layout.minimumWidth + 2 * margin
    minimumHeight: mainLayout.Layout.minimumHeight + 2 * margin

    Material.theme: Material.Light
    Material.accent: Material.Blue

    property bool running: false

    RowLayout {
        id: mainLayout
        anchors.fill: parent
        anchors.margins: margin

        ColumnLayout {
            Rectangle {
                width: 250
                Layout.fillHeight: true
                border.width: 1
                border.color: "black"
                LogPlayer {
                    id: log
                }
            }

            Rectangle {
                width: 250
                Layout.fillHeight: true
                border.width: 1
                border.color: "black"
                CanBus {
                    id: bus
                }
            }
        }

        Visualization {
            id: visual
        }

        ClientList {
            id: clients
        }
    }
}