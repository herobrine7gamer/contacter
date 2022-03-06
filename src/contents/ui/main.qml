// SPDX-License-Identifier: GPL-2.0-or-later
// SPDX-FileCopyrightText: 2022 HEROBRINE7GAMER <tapermeerkat77@gmail.com>

import QtQuick 2.15
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.15
import org.kde.kirigami 2.19 as Kirigami

Kirigami.ApplicationWindow {
    id: root

    title: i18n("Noter")
    // color: Kirigami.Theme.backgroundColor

    minimumWidth: Kirigami.Units.gridUnit * 20
    minimumHeight: Kirigami.Units.gridUnit * 20
    maximumWidth: Kirigami.Units.gridUnit * 30
    maximumHeight: Kirigami.Units.gridUnit * 34

    onClosing: Controller.saveWindowGeometry(root)

    globalDrawer: Kirigami.GlobalDrawer {
        title: i18n("Contacter")
        // titleIcon: ""
        actions: [
            Kirigami.Action {
                text: i18n("About Contacter")
                icon.name: "help-about"
                onTriggered: pageStack.layers.push("qrc:About.qml")
            },
            Kirigami.Action {
                text: i18n("Quit")
                icon.name: "application-exit"
                onTriggered: Qt.quit()
            }
        ]
    }

    contextDrawer: Kirigami.ContextDrawer {
        id: contextDrawer
    }



    pageStack.initialPage: mainContactsView

    Kirigami.ScrollablePage {
        id: mainContactsView
        title: i18n("Contacts")

        actions {
        main: Kirigami.Action{
            text: i18n("add")
            icon.name: "contact-new-symbolic"
            // onTriggered: showPassiveNotification(i18n("Added a new note"))

            }
        }

        ColumnLayout {

            Kirigami.Card {
                id: dad
                Layout.fillHeight: true
                showClickFeedback: true
                banner {
                    title: i18n("Dad")
                    iconSource: "user-identity"
                }

                contentItem: Controls.Label {
                    wrapMode: Text.WordWrap
                    text: i18n("0743793638\ndad@mail.org")

                }
                // onClicked: pageStack.layers.push("qrc:note_view.qml")

                actions: [
                    Kirigami.Action{
                        text: i18n("Call")
                        icon.name: "call-start-symbolic"
                    },
                    Kirigami.Action{
                        text: i18n("Edit")
                        icon.name: "document-edit"
                        // onTriggered: pageStack.layers.push("qrc:note_edit.qml")
                    },
                    Kirigami.Action{
                        text: i18n("Message")
                        icon.name: "mail-message"
                        // onTriggered: pageStack.layers.push("qrc:sharing.qml")
                    },
                    Kirigami.Action{
                        text: i18n("Delete")
                        icon.name: "edit-delete-symbolic"

                    }
                ]
            }

            Kirigami.Card {
                id: friend
                Layout.fillHeight: true
                showClickFeedback: true
                banner {
                    title: i18n("Friend")
                    iconSource: "user-identity"
                }
                contentItem: Controls.Label {
                    wrapMode: Text.WordWrap
                    text: i18n("8537678543\nfriend@mail.org")

                }
                // onClicked: pageStack.layers.push("qrc:note_view2.qml")

                actions: [
                    Kirigami.Action{
                        text: i18n("Call")
                        icon.name: "call-start-symbolic"
                    },
                    Kirigami.Action{
                        text: i18n("Edit")
                        icon.name: "document-edit"
                        // onTriggered: pageStack.layers.push("qrc:note_edit2.qml")
                    },
                    Kirigami.Action{
                        text: i18n("Message")
                        icon.name: "mail-message"
                        // onTriggered: pageStack.layers.push("qrc:sharing.qml")
                    },
                    Kirigami.Action{
                        text: i18n("Delete")
                        icon.name: "edit-delete-symbolic"
                    }
                ]
            }
            Kirigami.Card {
                id: home
                Layout.fillHeight: true
                showClickFeedback: true
                banner {
                    title: i18n("Home")
                    iconSource: "user-home-symbolic"
                }

                contentItem: Controls.Label {
                    wrapMode: Text.WordWrap
                    text: i18n("9876543210")
                }
                // onClicked: pageStack.layers.push("qrc:note_view3.qml")

                actions: [
                    Kirigami.Action{
                        text: i18n("Call")
                        icon.name: "call-start-symbolic"
                    },
                    Kirigami.Action{
                        text: i18n("Edit")
                        icon.name: "document-edit"
                        // onTriggered: pageStack.layers.push("qrc:note_edit2.qml")
                    },
                    Kirigami.Action{
                        text: i18n("Message")
                        icon.name: "mail-message"
                        // onTriggered: pageStack.layers.push("qrc:sharing.qml")
                    },
                    Kirigami.Action{
                        text: i18n("Delete")
                        icon.name: "edit-delete-symbolic"
                    }
                ]
            }

            Kirigami.Card {
                id: laundry
                Layout.fillHeight: true
                showClickFeedback: true
                banner {
                    title: i18n("Laundry")
                    iconSource: "user-identity"
                }

                contentItem: Controls.Label {
                    wrapMode: Text.WordWrap
                    text: i18n("4356786809\nlaundry@email.com")
                }
                // onClicked: pageStack.layers.push("qrc:note_view3.qml")

                actions: [
                    Kirigami.Action{
                        text: i18n("Call")
                        icon.name: "call-start-symbolic"
                    },
                    Kirigami.Action{
                        text: i18n("Edit")
                        icon.name: "document-edit"
                        // onTriggered: pageStack.layers.push("qrc:note_edit2.qml")
                    },
                    Kirigami.Action{
                        text: i18n("Message")
                        icon.name: "mail-message"
                        // onTriggered: pageStack.layers.push("qrc:sharing.qml")
                    },
                    Kirigami.Action{
                        text: i18n("Delete")
                        icon.name: "edit-delete-symbolic"
                    }
                ]
            }

            Kirigami.Card {
                id: mom
                Layout.fillHeight: true
                showClickFeedback: true
                banner {
                    title: i18n("Mom")
                    iconSource: "user-identity"
                }

                contentItem: Controls.Label {
                    wrapMode: Text.WordWrap
                    text: i18n("7569342610\nmom@mail.org")
                }
                // onClicked: pageStack.layers.push("qrc:note_view3.qml")

                actions: [
                    Kirigami.Action{
                        text: i18n("Call")
                        icon.name: "call-start-symbolic"
                    },
                    Kirigami.Action{
                        text: i18n("Edit")
                        icon.name: "document-edit"
                        // onTriggered: pageStack.layers.push("qrc:note_edit2.qml")
                    },
                    Kirigami.Action{
                        text: i18n("Message")
                        icon.name: "mail-message"
                        // onTriggered: pageStack.layers.push("qrc:sharing.qml")
                    },
                    Kirigami.Action{
                        text: i18n("Delete")
                        icon.name: "edit-delete-symbolic"
                    }
                ]
            }

            Kirigami.Card {
                id: supermarket
                Layout.fillHeight: true
                showClickFeedback: true
                banner {
                    title: i18n("Supermarket")
                    iconSource: "user-identity"
                }

                contentItem: Controls.Label {
                    wrapMode: Text.WordWrap
                    text: i18n("3569680014\nsupermarket@email.com")
                }
                // onClicked: pageStack.layers.push("qrc:note_view3.qml")

                actions: [
                    Kirigami.Action{
                        text: i18n("Call")
                        icon.name: "call-start-symbolic"
                    },
                    Kirigami.Action{
                        text: i18n("Edit")
                        icon.name: "document-edit"
                        // onTriggered: pageStack.layers.push("qrc:note_edit2.qml")
                    },
                    Kirigami.Action{
                        text: i18n("Message")
                        icon.name: "mail-message"
                        // onTriggered: pageStack.layers.push("qrc:sharing.qml")
                    },
                    Kirigami.Action{
                        text: i18n("Delete")
                        icon.name: "edit-delete-symbolic"
                    }
                ]
            }
            Kirigami.Card {
                id: teacher
                Layout.fillHeight: true
                showClickFeedback: true
                banner {
                    title: i18n("Teacher")
                    iconSource: "user-identity"
                }

                contentItem: Controls.Label {
                    wrapMode: Text.WordWrap
                    text: i18n("8664534679\nteacher@school.edu")
                }
                // onClicked: pageStack.layers.push("qrc:note_view3.qml")

                actions: [
                    Kirigami.Action{
                        text: i18n("Call")
                        icon.name: "call-start-symbolic"
                    },
                    Kirigami.Action{
                        text: i18n("Edit")
                        icon.name: "document-edit"
                        // onTriggered: pageStack.layers.push("qrc:note_edit2.qml")
                    },
                    Kirigami.Action{
                        text: i18n("Message")
                        icon.name: "mail-message"
                        // onTriggered: pageStack.layers.push("qrc:sharing.qml")
                    },
                    Kirigami.Action{
                        text: i18n("Delete")
                        icon.name: "edit-delete-symbolic"
                    }
                ]
            }
        }
    }
}
