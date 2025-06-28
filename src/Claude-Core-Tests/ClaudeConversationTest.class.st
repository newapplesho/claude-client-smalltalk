Class {
	#name : 'ClaudeConversationTest',
	#superclass : 'TestCase',
	#category : 'Claude-Core-Tests',
	#package : 'Claude-Core-Tests'
}

{ #category : 'tests' }
ClaudeConversationTest >> testInitialize [

	| conversation |
	conversation := ClaudeConversation new.
	self assert: conversation messages isEmpty
]

{ #category : 'tests' }
ClaudeConversationTest >> testMessages [

	| conversation |
	conversation := ClaudeConversation new.
	conversation addUser: 'Hello'.
	conversation addAssistant: 'Hi there!'.

	self assert: conversation messages size equals: 2.
	self assert: conversation messages first role equals: 'user'.
	self assert: conversation messages first content equals: 'Hello'.
	self assert: conversation messages second role equals: 'assistant'.
	self assert: conversation messages second content equals: 'Hi there!'
]
