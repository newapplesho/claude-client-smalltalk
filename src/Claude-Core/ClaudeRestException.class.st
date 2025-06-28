Class {
	#name : 'ClaudeRestException',
	#superclass : 'Error',
	#instVars : [
		'properties'
	],
	#category : 'Claude-Core',
	#package : 'Claude-Core'
}

{ #category : 'accessing' }
ClaudeRestException >> properties [

	^ properties
]

{ #category : 'accessing' }
ClaudeRestException >> properties: anObject [

	properties := anObject
]
