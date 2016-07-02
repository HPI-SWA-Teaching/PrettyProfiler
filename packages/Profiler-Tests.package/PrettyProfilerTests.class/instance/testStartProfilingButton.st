as yet unclassified
testStartProfilingButton

	| bool |
	(self subject findByClass: PPTextInput) contents: '[(Delay forSeconds: 1) wait.]'.
	[(self subject findByName: 'runButton') click.] fork.
	bool := (self subject isTallyRunning).
	(Delay forSeconds: 2) wait.
	self assert: (bool = true).