Class {
	#name : 'ClaudeMessageRequestTest',
	#superclass : 'TestCase',
	#category : 'Claude-Core-Tests',
	#package : 'Claude-Core-Tests'
}

{ #category : 'tests' }
ClaudeMessageRequestTest >> testAsJson [

	| request conversation json parsedJson messages |
	request := ClaudeMessageRequest new.

	conversation := ClaudeConversation new.
	conversation addUser: 'Hello'.
	conversation addAssistant: 'Hi there!'.
	request messages: conversation.

	request
		model: 'test-model';
		temperature: 0.95.

	json := request asJson.
	parsedJson := NeoJSONReader fromString: json.
	messages := parsedJson at: 'messages'.

	self assert: messages size equals: 2.
	self assert: (messages first at: 'role') equals: 'user'.
	self
		assert: ((messages first at: 'content') )
		equals: 'Hello'.
	self assert: (parsedJson at: 'temperature') equals: 0.95
]
