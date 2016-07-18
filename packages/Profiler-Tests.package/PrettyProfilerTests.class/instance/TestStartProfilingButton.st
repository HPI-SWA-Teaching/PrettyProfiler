as yet unclassified
TestStartProfilingButton
"We have to change or delete this. Problems are kinda complex because of concurrency. Capital first Letter makes it not recognized as test."
	| bool |
	(self subject findByClass: PPTextInput) contents: '[(Delay forSeconds: 1) wait.]'.
	[(self subject findByName: 'runButton') click.] fork.
	bool := (self subject isTallyRunning).
	(Delay forSeconds: 2) wait.
	self assert: (bool = true).