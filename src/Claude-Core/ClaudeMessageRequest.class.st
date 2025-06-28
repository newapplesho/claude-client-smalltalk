Class {
	#name : 'ClaudeMessageRequest',
	#superclass : 'Object',
	#instVars : [
		'dict',
		'messages'
	],
	#category : 'Claude-Core',
	#package : 'Claude-Core'
}

{ #category : 'converting' }
ClaudeMessageRequest >> asJson [

	dict at: 'messages' put: (messages collect: [ :message |
				 Dictionary new
					 at: 'role' put: message role;
					 at: 'content' put: message content;
					 yourself ]).


	^ NeoJSONWriter toString: dict
]

{ #category : 'accessing' }
ClaudeMessageRequest >> container [

	^ self dict at: 'container'
]

{ #category : 'accessing' }
ClaudeMessageRequest >> container: anObject [

	self dict at: 'container' put: anObject
]

{ #category : 'accessing' }
ClaudeMessageRequest >> dict [

	^ dict
]

{ #category : 'accessing' }
ClaudeMessageRequest >> dict: anObject [

	dict := anObject
]

{ #category : 'initialization' }
ClaudeMessageRequest >> initialize [

	super initialize.
	dict := Dictionary new
]

{ #category : 'accessing' }
ClaudeMessageRequest >> maxTokens [

	^ self dict at: 'max_tokens'
]

{ #category : 'accessing' }
ClaudeMessageRequest >> maxTokens: anInteger [

	self dict at: 'max_tokens' put: anInteger
]

{ #category : 'accessing' }
ClaudeMessageRequest >> mcpServers [

	^ self dict at: 'mcp_servers'
]

{ #category : 'accessing' }
ClaudeMessageRequest >> mcpServers: anObject [

	self dict at: 'mcp_servers' put: anObject
]

{ #category : 'accessing' }
ClaudeMessageRequest >> messages [

	^ messages
]

{ #category : 'accessing' }
ClaudeMessageRequest >> messages: anObject [

	messages := anObject
]

{ #category : 'accessing' }
ClaudeMessageRequest >> metadata [

	^ self dict at: 'metadata'
]

{ #category : 'accessing' }
ClaudeMessageRequest >> metadata: anObject [

	self dict at: 'metadata' put: anObject
]

{ #category : 'accessing' }
ClaudeMessageRequest >> model [

	^ self dict at: 'model'
]

{ #category : 'accessing' }
ClaudeMessageRequest >> model: anObject [

	self dict at: 'model' put: anObject
]

{ #category : 'accessing' }
ClaudeMessageRequest >> system [

	^ self dict at: 'system'
]

{ #category : 'accessing' }
ClaudeMessageRequest >> system: anObject [

	self dict at: 'system' put: anObject
]

{ #category : 'accessing' }
ClaudeMessageRequest >> systemPrompt: anObject [

	self system: anObject
]

{ #category : 'accessing' }
ClaudeMessageRequest >> temperature [

	^ self dict at: 'temperature'
]

{ #category : 'accessing' }
ClaudeMessageRequest >> temperature: anObject [

	self dict at: 'temperature' put: anObject
]

{ #category : 'accessing' }
ClaudeMessageRequest >> topK [

	^ self dict at: 'topK'
]

{ #category : 'accessing' }
ClaudeMessageRequest >> topK: anObject [

	self dict at: 'topK' put: anObject
]

{ #category : 'accessing' }
ClaudeMessageRequest >> topP [

	^ self dict at: 'topP'
]

{ #category : 'accessing' }
ClaudeMessageRequest >> topP: anObject [

	self dict at: 'topP' put: anObject
]
