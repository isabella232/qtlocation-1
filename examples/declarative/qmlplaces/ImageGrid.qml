import QtQuick 2.0

Rectangle {
    property alias model: grid.model

    GridView {
        id: grid

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: closeImagesButton.top

        cellHeight: 200
        cellWidth: 200

        delegate: Rectangle {
            width: grid.cellWidth
            height: grid.cellHeight

            Image {
                anchors.fill: parent
                anchors.margins: 5
                source: url
                fillMode: Image.PreserveAspectFit
            }
        }
    }

    Rectangle {
        id: closeImagesButton
        height: imagesClose.height
        width: parent.width
        anchors.bottom: parent.bottom
        gradient: Gradient {
            GradientStop { position: 0.0; color: 'red' }
            GradientStop { position: 0.5; color: 'white'}
            GradientStop { position: 1.0; color: 'red'}
        }

        Text {
            id: imagesClose;
            anchors.horizontalCenter: parent.horizontalCenter
            text: 'Close';
        }

        MouseArea {
            anchors.fill: parent
            onClicked: model = undefined
        }
    }
}
