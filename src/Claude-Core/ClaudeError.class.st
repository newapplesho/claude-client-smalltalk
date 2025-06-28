Class {
	#name : 'ClaudeError',
	#superclass : 'Error',
	#instVars : [
		'message',
		'statusCode',
		'properties'
	],
	#category : 'Claude-Core',
	#package : 'Claude-Core'
}

{ #category : 'accessing' }
ClaudeError >> message [

	^ message
]

{ #category : 'accessing' }
ClaudeError >> message: anObject [

	message := anObject
]

{ #category : 'accessing' }
ClaudeError >> properties [

	^ properties
]

{ #category : 'accessing' }
ClaudeError >> properties: anObject [

	properties := anObject
]

{ #category : 'accessing' }
ClaudeError >> statusCode [

	^ statusCode
]

{ #category : 'accessing' }
ClaudeError >> statusCode: anObject [

	statusCode := anObject
]
