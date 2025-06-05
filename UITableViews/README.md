# Table Views in IOS

## Components
### Table View
Knows how to display a list of items, but doesn't know what exactly to display (data) and how to handle user interactions.

### Data Source (usually a ViewController)
Tells TableView what data to display:
* How many rows? (via tableView: numberOfRowsInSection:)
* What each row looks like? (via tableView: cellForRowAtIndexPath:)

**Without a data source, table view has no idea what content to show inside the cells.**

### Delegate
How should the table view respond to user interaction?
* what to do when a row is tapped? (via tableView: didSelectRowAtIndexPath:)
* How tall rows should be if there's editing/reordering/etc.?

**Without a delegate, the table won't react to touches or allow customisation.**
