public with sharing class BootstrapPage {

    public Double seconds       {get; set;}

    public BootstrapPage() {}

    /* --- Static System Messages --- */
    public void msgConfirm() {
        ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.CONFIRM, 'This is a system CONFIRM message.'));
    }

    public void msgInfo() {
        ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.INFO, 'This is a system INFO message.'));
    }

    public void msgWarn() {
        ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.WARNING, 'This is a system WARNING message.'));
    }

    public void msgError() {
        ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.FATAL, 'This is a system FATAL message.'));
    }

    /* --- Intelligent Auto Messages --- */
    public void msgConfirmAuto() {
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.CONFIRM, 'This is an intelligent CONFIRM message.', true));
    }

    public void msgInfoAuto() {
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.INFO, 'This is an intelligent INFO message.', true));
    }

    public void msgWarnAuto() {
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.WARNING, 'This is an intelligent WARNING message.', true));
    }

    public void msgErrorAuto() {
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.FATAL, 'This is an intelligent FATAL message.', true));
    }

    /* --- Manual Messages --- */
    public void msgConfirmManual() {
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.CONFIRM, 'This is a manually timed CONFIRM message.', seconds));
    }

    public void msgInfoManual() {
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.INFO, 'This is a manually timed INFO message.', seconds));
    }

    public void msgWarnManual() {
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.WARNING, 'This is a manually timed WARNING message.', seconds));
    }

    public void msgErrorManual() {
        PageAlerts.addMessage(new PageAlerts.PageAlert(ApexPages.Severity.FATAL, 'This is a manually timed FATAL message.', seconds));
    }
}