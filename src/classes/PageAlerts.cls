public with sharing class PageAlerts {

    private static List<PageAlert> staticMessages {
        get {
            if(staticMessages == null) staticMessages = new List<PageAlert>();
            return staticMessages;
        }
        private set;
    }

    public class PageAlert {
        private Map<ApexPages.Severity, String> severityMap = new Map<ApexPages.Severity, String>{
            ApexPages.Severity.CONFIRM => 'confirm',
            ApexPages.Severity.INFO => 'info',
            ApexPages.Severity.WARNING => 'warn',
            ApexPages.Severity.FATAL => 'error',
            ApexPages.Severity.ERROR => 'error'
        };

        private ApexPages.Severity severityLevel    {get; set;}
        public String severityStr                   {get; set;}
        public String message                       {get; set;}
        public Boolean autoDismissable              {get; set;}
        public Integer milliseconds                 {get; set;}
        public Boolean isDismissable                {get; set;}

        public PageAlert(ApexPages.Message m) {
            this(m.getSeverity(), m.getSummary());
        }

        public PageAlert(ApexPages.Severity severity, String msg) {
            this.severityLevel = severity;
            this.message = msg;
            this.severityStr = severityMap.get(severity);
            this.autoDismissable = false;
            this.milliseconds = 0;
            this.isDismissable = true;
        }

        public PageAlert(ApexPages.Severity severity, String msg, Boolean useSmartDismiss) {
            this.severityLevel = severity;
            this.message = msg;
            this.severityStr = severityMap.get(severity);
            this.isDismissable = true;
            this.autoDismissable = false;
            this.milliseconds = 0;

            if(useSmartDismiss && this.severityStr == 'confirm') {
                this.autoDismissable = true;
                this.milliseconds = 1500;
            }
        }

        public PageAlert(ApexPages.Severity severity, String msg, Double dismissAfter) {
            this.severityLevel = severity;
            this.message = msg;
            this.severityStr = severityMap.get(severity);
            this.autoDismissable = true;
            this.milliseconds = Integer.valueOf(dismissAfter * 1000);
            this.isDismissable = true;

            // Minimum time
            if(this.milliseconds < 1000) this.milliseconds = 1000;
        }
    }

    public static void addMessage(PageAlert msg) {
        staticMessages.add(msg);
    }

    public static List<PageAlert> getMessages() {
        // Add system messages
        staticMessages.addAll(getStandardMessages());
        return staticMessages;
    }

    private static List<PageAlert> getStandardMessages() {
        List<PageAlert> result = new List<PageAlert>();
        for(ApexPages.Message m : ApexPages.getMessages()) {
            result.add(new PageAlert(m));
        }
        return result;
    }
}