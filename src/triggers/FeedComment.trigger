trigger FeedComment on FeedComment (before insert) {
	system.assert(false,'hello world');
}