import Sparrow 1.0
import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

TextField {
    id: textField
    font.family: GeneralSettings.generalfontFamily
    font.pointSize: GeneralSettings.generalFontPointSize

    style: TextFieldStyle {
        id: style
        textColor: "black"
        renderType: Text.NativeRendering
        background: Rectangle {
            radius: 2
            border.color: "#333"
            border.width: style.control.activeFocus ? 3 : 2
        }
    }

    implicitHeight: fontMetrics.height * 2.0

    FontMetrics {
        id: fontMetrics
        font: textField.font
    }
}
