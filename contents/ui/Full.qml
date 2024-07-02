import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as QQC2
import org.kde.plasma.extras as PlasmaExtras
import "./Pages/" as Pages

PlasmaExtras.Representation {
    id: full
    collapseMarginsHint: true
    QQC2.StackView {
        id: stack
        initialItem: Pages.ListPage{}
        anchors.fill: parent
        Connections {
            target: main
            function onPop(){ stack.pop();}
        }
    }
}
