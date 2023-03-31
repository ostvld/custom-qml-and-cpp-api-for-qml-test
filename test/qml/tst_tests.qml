import QtTest 1.2
import QtQuick 2.8
import QtQuick.Controls 2.1 as Controls
import CSC 1.0
import Integrity 1.0
import CoreProxy 0.1

Rectangle {


TestCase {

    name: "MathTests"

    CoreProxy
    {
        id: coreProxy
    }

    IntegrityView
    {
        id : button1
        coreProxy: coreProxy
    }

    function test_mathQmlTest() {
        var tst = myContextProperty;
        var version = coreProxy.coreVersion();
        var textName=button1.text;
        compare(2 + 2, 4, "2 + 2 = 4")
        compare(tst , true)
        compare(version ,  "0.1.0.0_fake")
        compare(textName ,  "IntegrityView: CSCButton")
    }

    function test_failQmlTest() {
        compare(2 + 2, 5, "2 + 2 = 5")
    }

}

TestCase {

    name: "MathTests2"

    CoreProxy
    {
        id: coreProxy2
    }

    IntegrityView
    {
        id : button2
        coreProxy: coreProxy2
    }

    function test_mathQmlTest() {
        var tst = myContextProperty;
        var version = coreProxy2.coreVersion();
        var textName=button2.text;
        compare(2 + 2, 4, "2 + 2 = 4")
        compare(tst , true)
        compare(version ,  "0.1.0.0_fake")
        compare(textName ,  "IntegrityView: CSCButton")
    }

    function test_failQmlTest() {
        compare(2 + 2, 5, "2 + 2 = 5")
    }

}

TestCase {

    name: "MathTests3"

    CoreProxy
    {
        id: coreProxy3
    }

    IntegrityView
    {
        id : button3
        coreProxy: coreProxy3
    }

    function test_mathQmlTest() {
        var tst = myContextProperty;
        var version = coreProxy3.coreVersion();
        var textName=button1.text;
        compare(2 + 2, 4, "2 + 2 = 4")
        compare(tst , true)
        compare(version ,  "0.1.0.0_fake")
        compare(textName ,  "IntegrityView: CSCButton")
    }

    function test_failQmlTest() {
        compare(2 + 2, 5, "2 + 2 = 5")
    }

}

}




