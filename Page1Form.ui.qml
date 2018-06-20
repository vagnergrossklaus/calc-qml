import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {

    property alias tflText: tflText
    property alias btnBackSpace: btnBackSpace
    property alias btnDiv: btnDiv
    property alias btnMulti: btnMulti
    property alias btnSub: btnSub
    property alias btnComma: btnComma
    property alias btnEqual: btnEqual
    property alias btnPlus: btnPlus
    property alias btn9: btn9
    property alias btn8: btn8
    property alias btn7: btn7
    property alias btn6: btn6
    property alias btn5: btn5
    property alias btn4: btn4
    property alias btn3: btn3
    property alias btn2: btn2
    property alias btn1: btn1
    property alias btn0: btn0

    anchors.fill: parent
    Layout.margins: 5

    GridLayout {
        columns: 4
        rows: 5
        anchors.fill: parent

        TextField {
            id: tflText
            text: ""
            validator: RegExpValidator{ regExp: /^[0-9]+(\,[0-9]+)?/ }
            horizontalAlignment: Text.AlignRight
            Layout.columnSpan: 3
            Layout.fillWidth: true
        }
        Button {
            id: btnBackSpace
            text: "<"
            Layout.fillWidth: true
        }

        Button {
            id: btn7
            text: "7"
            Layout.fillWidth: true
        }
        Button {
            id: btn8
            text: "8"
            Layout.fillWidth: true
        }
        Button {
            id: btn9
            text: "9"
            Layout.fillWidth: true
        }
        Button {
            id: btnDiv
            text: "/"
            Layout.fillWidth: true
        }

        Button {
            id: btn4
            text: "4"
            Layout.fillWidth: true
        }
        Button {
            id: btn5
            text: "5"
            Layout.fillWidth: true
        }
        Button {
            id: btn6
            text: "6"
            Layout.fillWidth: true
        }
        Button {
            id: btnMulti
            text: "*"
            Layout.fillWidth: true
        }

        Button {
            id: btn1
            text: "1"
            Layout.fillWidth: true
        }
        Button {
            id: btn2
            text: "2"
            Layout.fillWidth: true
        }
        Button {
            id: btn3
            text: "3"
            Layout.fillWidth: true
        }
        Button {
            id: btnSub
            text: "-"
            Layout.fillWidth: true
        }

        Button {
            id: btn0
            text: "0"
            Layout.fillWidth: true
        }
        Button {
            id: btnComma
            text: ","
            Layout.fillWidth: true
        }
        Button {
            id: btnEqual
            text: "="
            Layout.fillWidth: true
        }
        Button {
            id: btnPlus
            text: "+"
            Layout.fillWidth: true
        }
    }

}
