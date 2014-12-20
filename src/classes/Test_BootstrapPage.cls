@isTest
private class Test_BootstrapPage {

	@isTest static void systemMessagesConfirm() {
        // Set Page
        Test.setCurrentPage(Page.BootstrapPage);

        // Set controller
        BootstrapPage con = new BootstrapPage();

        // Set Message
        con.msgConfirm();

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('confirm', alerts[0].severityStr);
        System.assertEquals('This is a system CONFIRM message.', alerts[0].message);
        System.assertEquals(false, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals(0, alerts[0].milliseconds);
    }

    @isTest static void systemMessagesInfo() {
        // Set Page
        Test.setCurrentPage(Page.BootstrapPage);

        // Set controller
        BootstrapPage con = new BootstrapPage();

        // Set Message
        con.msgInfo();

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('info', alerts[0].severityStr);
        System.assertEquals('This is a system INFO message.', alerts[0].message);
        System.assertEquals(false, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals(0, alerts[0].milliseconds);
    }

    @isTest static void systemMessagesWarning() {
        // Set Page
        Test.setCurrentPage(Page.BootstrapPage);

        // Set controller
        BootstrapPage con = new BootstrapPage();

        // Set Message
        con.msgWarn();

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('warn', alerts[0].severityStr);
        System.assertEquals('This is a system WARNING message.', alerts[0].message);
        System.assertEquals(false, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals(0, alerts[0].milliseconds);
    }

    @isTest static void systemMessagesFatal() {
        // Set Page
        Test.setCurrentPage(Page.BootstrapPage);

        // Set controller
        BootstrapPage con = new BootstrapPage();

        // Set Message
        con.msgError();

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('error', alerts[0].severityStr);
        System.assertEquals('This is a system FATAL message.', alerts[0].message);
        System.assertEquals(false, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals(0, alerts[0].milliseconds);
    }

    @isTest static void autoMessagesConfirm() {
        // Set Page
        Test.setCurrentPage(Page.BootstrapPage);

        // Set controller
        BootstrapPage con = new BootstrapPage();

        // Set Message
        con.msgConfirmAuto();

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('confirm', alerts[0].severityStr);
        System.assertEquals('This is an intelligent CONFIRM message.', alerts[0].message);
        System.assertEquals(true, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals(1500, alerts[0].milliseconds);
    }

    @isTest static void autoMessagesInfo() {
        // Set Page
        Test.setCurrentPage(Page.BootstrapPage);

        // Set controller
        BootstrapPage con = new BootstrapPage();

        // Set Message
        con.msgInfoAuto();

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('info', alerts[0].severityStr);
        System.assertEquals('This is an intelligent INFO message.', alerts[0].message);
        System.assertEquals(false, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals(0, alerts[0].milliseconds);
    }

    @isTest static void autoMessagesWarning() {
        // Set Page
        Test.setCurrentPage(Page.BootstrapPage);

        // Set controller
        BootstrapPage con = new BootstrapPage();

        // Set Message
        con.msgWarnAuto();

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('warn', alerts[0].severityStr);
        System.assertEquals('This is an intelligent WARNING message.', alerts[0].message);
        System.assertEquals(false, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals(0, alerts[0].milliseconds);
    }

    @isTest static void autoMessagesFatal() {
        // Set Page
        Test.setCurrentPage(Page.BootstrapPage);

        // Set controller
        BootstrapPage con = new BootstrapPage();

        // Set Message
        con.msgErrorAuto();

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('error', alerts[0].severityStr);
        System.assertEquals('This is an intelligent FATAL message.', alerts[0].message);
        System.assertEquals(false, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals(0, alerts[0].milliseconds);
    }

    @isTest static void manualMessagesConfirm() {
        // Set Page
        Test.setCurrentPage(Page.BootstrapPage);

        // Set controller
        BootstrapPage con = new BootstrapPage();

        // Set time
        con.seconds = 0.5;

        // Set Message
        con.msgConfirmManual();

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('confirm', alerts[0].severityStr);
        System.assertEquals('This is a manually timed CONFIRM message.', alerts[0].message);
        System.assertEquals(true, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals( 1000 , alerts[0].milliseconds);
    }

    @isTest static void manualMessagesInfo() {
        // Set Page
        Test.setCurrentPage(Page.BootstrapPage);

        // Set controller
        BootstrapPage con = new BootstrapPage();

        // Set time
        con.seconds = 0.5;

        // Set Message
        con.msgInfoManual();

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('info', alerts[0].severityStr);
        System.assertEquals('This is a manually timed INFO message.', alerts[0].message);
        System.assertEquals(true, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals( 1000 , alerts[0].milliseconds);
    }

    @isTest static void manualMessagesWarning() {
        // Set Page
        Test.setCurrentPage(Page.BootstrapPage);

        // Set controller
        BootstrapPage con = new BootstrapPage();

        // Set time
        con.seconds = 0.5;

        // Set Message
        con.msgWarnManual();

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('warn', alerts[0].severityStr);
        System.assertEquals('This is a manually timed WARNING message.', alerts[0].message);
        System.assertEquals(true, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals( 1000 , alerts[0].milliseconds);
    }

    @isTest static void manualMessagesFatal() {
        // Set Page
        Test.setCurrentPage(Page.BootstrapPage);

        // Set controller
        BootstrapPage con = new BootstrapPage();

        // Set time
        con.seconds = 0.5;

        // Set Message
        con.msgErrorManual();

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('error', alerts[0].severityStr);
        System.assertEquals('This is a manually timed FATAL message.', alerts[0].message);
        System.assertEquals(true, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals( 1000 , alerts[0].milliseconds);
    }

}