Class {
	#name : 'ClaudeConversation',
	#superclass : 'Object',
	#instVars : [
		'messages'
	],
	#category : 'Claude-Core',
	#package : 'Claude-Core'
}

{ #category : 'accessing' }
ClaudeConversation >> addAssistant: aString [

	messages add: (ClaudeMessage assistant: aString)
]

{ #category : 'accessing' }
ClaudeConversation >> addUser: aString [

	messages add: (ClaudeMessage user: aString)
]

{ #category : 'collection' }
ClaudeConversation >> collect: aBlock [

	^ messages collect: aBlock
]

{ #category : 'collection' }
ClaudeConversation >> do: aBlock [

	messages do: aBlock
]

{ #category : 'initialization' }
ClaudeConversation >> initialize [

	super initialize.
	messages := OrderedCollection new
]

{ #category : 'accessing' }
ClaudeConversation >> messages [

	^ messages
]
