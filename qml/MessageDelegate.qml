import QtQuick
import Felgo

Item {
    id:deleg
    width:100
    height:msgtext.height+30
    property string msg: "?"
    property string time: "?"
    Rectangle{
        width:deleg.width
        height:deleg.height
        border.color:"black"
        border.width:1
        Text{
            id:msgtext
            anchors.margins: 5
            text:deleg.msg
        }
        Text{
            anchors.bottom:parent.bottom
            anchors.right:parent.right
            id:timetext
            text:deleg.time
        }
    }
}
