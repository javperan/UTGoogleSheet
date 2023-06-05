/*
 * Copyright (C) 2023  Javier Perán
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * googlesheets is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.7
import Ubuntu.Components 1.3
//import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0
import Morph.Web 0.1

MainView {
    id: root
    objectName: 'mainView'
    applicationName: 'googlesheets.javierperan'
    automaticOrientation: true

    width: units.gu(45)
    height: units.gu(75)

    Page {
        anchors.fill: parent

        header: PageHeader {
            id: header
            title: i18n.tr('Google Sheets')
           leadingActionBar.actions:[
               Action{
               id:back_button
               iconName: 'back'
               onTriggered: mywebview.back();
              }]
           trailingActionBar.actions: [Action{
               id:refresh_button
               iconName: 'refresh'
               }]
        }

        WebView{
            anchors{
            left:parent.left
            right:parent.right
            bottom: parent.bottom
            top:header.bottom
            }
        id:mywebview
        url:'https://accounts.google.com/v3/signin/identifier?dsh=S-787914916%3A1685957432290396&continue=https%3A%2F%2Fdocs.google.com%2Fspreadsheets%2Fcreate%3Fhl%3Des&ffgf=1&followup=https%3A%2F%2Fdocs.google.com%2Fspreadsheets%2Fcreate%3Fhl%3Des&hl=es&ifkv=Af_xneFTgJZ3WPjYj2mE1JYhW3sK08H4-RWxymtyiuftdLXBtSMy_-qZRBb2mGJ7ebmOX7nwHTjltg&ltmpl=sheets&osid=1&passive=1209600&service=wise&flowName=GlifWebSignIn&flowEntry=ServiceLogin'
        }
    }
}
