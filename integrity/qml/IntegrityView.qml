import QtQuick 2.8
import QtQuick.Controls 2.1 as Controls
import CSC 1.0
import CoreProxy 0.1

/*
 * Кнопка с иконками
 */
CSCButton {
    id: control

    property CoreProxy coreProxy

    anchors{
        left: parent.horizontalCenter
        top: parent.top
        right: parent.right
        bottom: parent.bottom
    }

    onClicked: {
        console.log("Core version")
        console.log(coreProxy.coreVersion());
    }

    text: "IntegrityView: " + this.name
}
