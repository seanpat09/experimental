public with sharing class SlackWebhook
{
    @future(callout=true)
    public static void postFeedItem( String text )
    {
        String body = 'token=xoxp-3264660775-3264660783-3266379624-029e7a';
        body += '&channel=C037SKEPK';
        body += '&text=' + EncodingUtil.urlEncode(text, 'UTF-8');
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://slack.com/api/chat.postMessage');
        req.setMethod('POST');

        req.setBody( body);
        HttpResponse res = new Http().send( req );
        System.debug( res.getBody() );
    }
}