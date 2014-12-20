public with sharing class SlackWebhook
{
    @future(callout=true)
    public static void postFeedItem( String feedItemJSON )
    {
        Map<String,Object> feedItem = (Map<String,Object>)JSON.deserializeUntyped(feedItemJSON);
        String link = URL.getSalesforceBaseUrl().toExternalForm() + '/' + (String)feedItem.get('Id');
        String message = (String)feedItem.get('Body') + '\n View this message in Salesforce: ' + link;
        String body = 'token=' + Slack_Settings__c.getInstance().Token__c;
        body += '&channel=C037SKEPK';
        body += '&text=' + EncodingUtil.urlEncode(message, 'UTF-8');
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://slack.com/api/chat.postMessage');
        req.setMethod('POST');

        req.setBody( body);
        HttpResponse res = new Http().send( req );
        System.debug( res.getBody() );
    }
}