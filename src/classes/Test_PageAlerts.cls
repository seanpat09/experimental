@isTest
private class Test_PageAlerts {

	@isTest static void systemMessagesConfirm() {
		// Create Message
        ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.CONFIRM, 'This is a system CONFIRM message.'));

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
        // Create Message
        ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.INFO, 'This is a system INFO message.'));

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
        // Create Message
        ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.WARNING, 'This is a system WARNING message.'));

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
        // Create Message
        ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.FATAL, 'This is a system FATAL message.'));

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
        // Create Message
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.CONFIRM, 'This is an intelligent CONFIRM message.', true));

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
        // Create Message
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.INFO, 'This is an intelligent INFO message.', true));

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
        // Create Message
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.WARNING, 'This is an intelligent WARNING message.', true));

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
        // Create Message
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.FATAL, 'This is an intelligent FATAL message.', true));

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
        // Timer
        Double timer = 2.5;

        // Create Message
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.CONFIRM, 'This is a manually timed CONFIRM message.', timer));

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('confirm', alerts[0].severityStr);
        System.assertEquals('This is a manually timed CONFIRM message.', alerts[0].message);
        System.assertEquals(true, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals( (timer * 1000) , alerts[0].milliseconds);
    }

    @isTest static void manualMessagesInfo() {
        // Timer
        Double timer = 2.5;

        // Create Message
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.INFO, 'This is a manually timed INFO message.', timer));

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('info', alerts[0].severityStr);
        System.assertEquals('This is a manually timed INFO message.', alerts[0].message);
        System.assertEquals(true, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals( (timer * 1000) , alerts[0].milliseconds);
    }

    @isTest static void manualMessagesWarning() {
        // Timer
        Double timer = 2.5;

        // Create Message
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.WARNING, 'This is a manually timed WARNING message.', timer));

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('warn', alerts[0].severityStr);
        System.assertEquals('This is a manually timed WARNING message.', alerts[0].message);
        System.assertEquals(true, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals( (timer * 1000) , alerts[0].milliseconds);
    }

    @isTest static void manualMessagesFatal() {
        // Timer
        Double timer = 2.5;

        // Create Message
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.FATAL, 'This is a manually timed FATAL message.', timer));

        // Get message
        List<PageAlerts.PageAlert> alerts = PageAlerts.getMessages();

        // Assert
        System.assertEquals('error', alerts[0].severityStr);
        System.assertEquals('This is a manually timed FATAL message.', alerts[0].message);
        System.assertEquals(true, alerts[0].autoDismissable);
        System.assertEquals(true, alerts[0].isDismissable);
        System.assertEquals( (timer * 1000) , alerts[0].milliseconds);
    }
}