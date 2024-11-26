import Felgo
import QtQuick
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
App{
    ListModel{
        id:my_model
        ListElement{ msg:"Hello"; time:"12.39"}
    }
    Component{
        id:my_delegate
        MessageDelegate{
            anchors.right:parent.right
            anchors.margins: 20
            msg:model.msg
            time:model.time
        }
    }

    Window {
        width: 360
        height: 640
        visible: true
        title: qsTr("Task_for_ListView_Model")
        property int defMargin: 8
        Page{
            id:page
            anchors.fill:parent
            ListView{
                id:my_list
                anchors.fill:parent
                model:my_model
                delegate:my_delegate
            }
            footer: PageFooter {
                id:footer1
                onNewMessage: {
                    var newMsg = {};
                    if (msg!=""){
                        newMsg.msg = msg;
                        newMsg.time = Qt.formatTime(new Date(), "hh:mm");
                        my_model.append(newMsg)
                    }
                }
            }
        }
    }
}
