import QtQuick 2.7

Page1Form {

    property var value1: ''
    property var tipoOperacao: ''

    function operacao(tipo){

        switch (tipo){
        case '/':
            tflText.text = value1 / tflText.text
            break
        case '*':
            tflText.text = value1 * tflText.getText()
            break
        case '-':
            tflText.text = value1 - tflText.getText()
            break
        case '+':
            tflText.text = value1 + tflText.getText()
            break
        }

        value1 = ""

    }

    btnBackSpace.onClicked: {
        tflText.text = tflText.text.substring(0, tflText.text.length - 1)
        if ((tflText.text * 1) == 0)
            tflText.text = ""
    }

    btnDiv.onClicked: {
        if (String(value1).length > 0){
            operacao('/')
        }else{
            tipoOperacao = '/'
            value1 = tflText.text
            tflText.text = ""
        }
    }
    btnMulti.onClicked: {
        if (String(value1).length > 0){
            operacao('*')
        }else{
            tipoOperacao = '*'
            value1 = tflText.text
            tflText.text = ""
        }
    }
    btnSub.onClicked: {
        if (String(value1).length > 0){
            operacao('-')
        }else{
            tipoOperacao = '-'
            value1 = tflText.text
            tflText.text = ""
        }
    }
    btnPlus.onClicked: {
        if (String(value1).length > 0){
            operacao('+')
        }else{
            tipoOperacao = '+'
            value1 = tflText.text
            tflText.text = ""
        }
    }

    btnEqual.onClicked: {
        operacao(tipoOperacao)
    }
    btnComma.onClicked: {
        if (tflText.text.trim().length == 0)
            tflText.text += 0
        tflText.text += btnComma.text
    }

    btn9.onClicked: {
        tflText.text += 9
    }
    btn8.onClicked: {
        tflText.text += 8
    }
    btn7.onClicked: {
        tflText.text += 7
    }
    btn6.onClicked: {
        tflText.text += 6
    }
    btn5.onClicked: {
        tflText.text += 5
    }
    btn4.onClicked: {
        tflText.text += 4
    }
    btn3.onClicked: {
        tflText.text += 3
    }
    btn2.onClicked: {
        tflText.text += 2
    }
    btn1.onClicked: {
        tflText.text += 1
    }
    btn0.onClicked: {
        tflText.text += 0
    }

}
