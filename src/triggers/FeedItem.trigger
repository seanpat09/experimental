trigger FeedItem on FeedItem (after insert) {
	SlackWebhook.postFeedItem( trigger.new[0].body, trigger.new[0].Id );
}