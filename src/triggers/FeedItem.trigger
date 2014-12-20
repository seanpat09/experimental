trigger FeedItem on FeedItem (after insert) {
	SlackWebhook.postFeedItem( JSON.serialize(trigger.new[0]));
}