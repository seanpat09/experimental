public with sharing class SlackWebhook
{
    @future(callout=true)
    public static void postFeedItem( String feedItemJSON )
    {
        HttpRequest request = buildSlackPostRequest( feedItemJSON );
        HttpResponse response = new Http().send( request );
    }

    private static HttpRequest buildSlackPostRequest( String feedItemJSON )
    {
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://slack.com/api/chat.postMessage');
        request.setMethod('POST');
        request.setBody( buildRequestBody( feedItemJSON ) );
        return request;
    }

    private static String buildRequestBody( String feedItemJSON )
    {
        Map<String,Object> feedItem = (Map<String,Object>)JSON.deserializeUntyped(feedItemJSON);
        String authorName = getAuthorName((Id)feedItem.get('CreatedById'));
        String link = buildRecordLink( (String)feedItem.get('Id') );
        String message = buildMessage( (String)feedItem.get('Body'), link );

        String body = 'token=' + Slack_Settings__c.getInstance().Token__c;
        body += '&channel=C037SKEPK';
        body += '&text=' + EncodingUtil.urlEncode(message, 'UTF-8');
        body += '&username=' + EncodingUtil.urlEncode(authorName + ' via Chatter', 'UTF-8');

        return body;
    }

    private static String getAuthorName( Id userId )
    {
        return [ SELECT Name FROM User WHERE Id = :userId ].Name;
    }

    private static String buildRecordLink( Id recordId )
    {
        return URL.getSalesforceBaseUrl().toExternalForm() + '/' + recordId;
    }

    private static String buildMessage( String message, String link )
    {
        return message + '\n View this message in Salesforce: ' + link;
    }
}