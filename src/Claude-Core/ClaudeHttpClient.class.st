Class {
	#name : 'ClaudeHttpClient',
	#superclass : 'Object',
	#instVars : [
		'client'
	],
	#category : 'Claude-Core',
	#package : 'Claude-Core'
}

{ #category : 'accessing' }
ClaudeHttpClient >> client [

	^ client ifNil: [ client := self defaultClient new ]
]

{ #category : 'private' }
ClaudeHttpClient >> createRequest [

	| request |
	request := ZnRequest empty.
	request headers at: 'x-api-key' put: ClaudeConfig default apiKey.
	request headers
		at: 'anthropic-version'
		put: ClaudeConfig default apiVersion.
	^ request
]

{ #category : 'defaults' }
ClaudeHttpClient >> defaultClient [

	^ ZnClient
]

{ #category : 'defaults' }
ClaudeHttpClient >> defaultResponseClass [

	^ ClaudeRestResponse 
]

{ #category : 'http-method' }
ClaudeHttpClient >> httpGet: aUri [

	^ self httpRequest: aUri method: #GET contents: nil
]

{ #category : 'http-method' }
ClaudeHttpClient >> httpPost: aUri contents: entity [

	^ self httpRequest: aUri method: #POST contents: entity
]

{ #category : 'private' }
ClaudeHttpClient >> httpRequest: aUri method: aMethod contents: anEntity [

	| request |
	request := self createRequest.
	request method: aMethod.
	request url: aUri asString.

	anEntity ifNotNil: [ request entity: anEntity ].
	self client request: request.
	client execute.
	^ client response
]

{ #category : 'private' }
ClaudeHttpClient >> readFromResponse: response [

	^ (self
		  readFromResponse: response
		  responseClass: self defaultResponseClass) value
]

{ #category : 'private' }
ClaudeHttpClient >> readFromResponse: response responseClass: aResponseClass [

	^ aResponseClass on: response
]

{ #category : 'accessing' }
ClaudeHttpClient >> timeout [

	^ self client timeout
]

{ #category : 'accessing' }
ClaudeHttpClient >> timeout: anInteger [

	self client timeout: anInteger
]
