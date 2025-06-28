Class {
	#name : 'ClaudeRestResponse',
	#superclass : 'Object',
	#instVars : [
		'response'
	],
	#category : 'Claude-Core',
	#package : 'Claude-Core'
}

{ #category : 'instance creation' }
ClaudeRestResponse class >> on: znResponse [

	^ self new
		  response: znResponse;
		  yourself
]

{ #category : 'accessing' }
ClaudeRestResponse >> response [

	^ response
]

{ #category : 'accessing' }
ClaudeRestResponse >> response: anObject [

	response := anObject
]

{ #category : 'actions' }
ClaudeRestResponse >> value [

	| responseJson exception |
	responseJson := (NeoJSONReader on: self response contents readStream)
		                mapClass: NeoJSONObject;
		                propertyNamesAsSymbols: true;
		                next.

	self response isSuccess ifTrue: [ ^ responseJson ].

	exception := ClaudeRestException new.
	exception properties: responseJson.
	exception messageText: responseJson message.
	exception signal
]
