Class {
	#name : 'ClaudeErrorTest',
	#superclass : 'TestCase',
	#category : 'Claude-Core-Tests',
	#package : 'Claude-Core-Tests'
}

{ #category : 'tests' }
ClaudeErrorTest >> testText [

	| error |
	error := ClaudeError new.
	error message: 'Test error'.

	self assert: error message equals: 'Test error'
]
