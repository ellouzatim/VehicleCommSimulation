import QtQuick 2.15
import QtQuick.Controls 2.15
import QtLocation 5.15
import QtPositioning 6.0


ApplicationWindow {
    visible: true
    width: 640
    height: 480

    Map {
        id: map
        anchors.fill: parent
        plugin: Plugin { name: "osm" }
        center:   { latitude: 47.7508; longitude: 7.3359 }
        zoomLevel: 14


        MouseArea {
            id: mouseArea
            anchors.fill: parent
            property real startX: 0
            property real startY: 0

            onPressed: {
                startX = mouse.x;
                startY = mouse.y;
            }



            onMouseXChanged: {
                let deltaX = startX - mouse.x;
                let deltaY = startY - mouse.y;

                map.pan(deltaX, deltaY);

                startX = mouse.x;
                startY = mouse.y;
            }

            onWheel: {
                if (wheel.angleDelta.y > 0) {
                    map.zoomLevel += 0.1;
                } else {
                    map.zoomLevel -= 0.1;
                }
            }
        }
        Button {
                    id: startButton
                    text: "Démarrer la simulation"
                    anchors {
                        bottom: map.bottom
                        left: map.left
                        margins: 10
                    }
                    z: 1

                    onClicked: {
                        map.center =  QtPositioning.coordinate(47.7508, 7.3359)
                        // code
                    }
        }

        Component.onCompleted: {
                map.center = QtPositioning.coordinate(47.7508, 7.3359)
            }
    }
}
