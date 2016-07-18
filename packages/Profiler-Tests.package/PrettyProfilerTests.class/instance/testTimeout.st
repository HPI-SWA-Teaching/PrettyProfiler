as yet unclassified
testTimeout
"We have to change or delete this. Problems are kinda complex because of concurrency. Capital first Letter makes it not recognized as test."

	"(self subject findByName: 'block') contents: '[true] whileTrue: [#(1 4 2 6 8) sort]'."
	(self subject findByClass: PPTextInput) contents: '[(Delay forSeconds: 2) wait.]'.
	(self subject findByName: 'timeoutInput') contents: '1'.
	[(self subject findByName: 'runButton') click.] fork.
	(Delay forMilliseconds: 1500) wait.
	self assert: ((self subject isTallyRunning) = false).