utilities
perform: aChange do: aBlock
	"Perform a change in the system silently, evaluate aBlock and then undo the change again."

	| undo |
	^ SystemChangeNotifier uniqueInstance doSilently: [
		undo := aChange execute.
		aBlock ensure: [ undo execute ] ]