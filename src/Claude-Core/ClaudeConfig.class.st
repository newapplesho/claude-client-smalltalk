Class {
	#name : 'ClaudeConfig',
	#superclass : 'Object',
	#instVars : [
		'apiKey',
		'apiVersion',
		'defaultModel',
		'timeout'
	],
	#classInstVars : [
		'default'
	],
	#category : 'Claude-Core',
	#package : 'Claude-Core'
}

{ #category : 'accessing' }
ClaudeConfig class >> default [

	default ifNil: [ default := self new ].
	^ default
]

{ #category : 'class initialization' }
ClaudeConfig class >> initialize [

	default := nil
]

{ #category : 'accessing' }
ClaudeConfig >> apiKey [

	^ apiKey
]

{ #category : 'accessing' }
ClaudeConfig >> apiKey: aString [

	apiKey := aString
]

{ #category : 'accessing' }
ClaudeConfig >> apiVersion [

	^ apiVersion ifNil: [ self defaultApiVersion ]
]

{ #category : 'accessing' }
ClaudeConfig >> apiVersion: anObject [

	apiVersion := anObject
]

{ #category : 'defaults' }
ClaudeConfig >> defaultApiVersion [

	^ '2023-06-01'
]

{ #category : 'accessing' }
ClaudeConfig >> defaultModel [

	^ defaultModel ifNil: [ defaultModel := 'claude-sonnet-4-20250514' ]
]

{ #category : 'accessing' }
ClaudeConfig >> defaultModel: aString [

	defaultModel := aString
]

{ #category : 'accessing' }
ClaudeConfig >> serviceEndpoint [

	^ 'https://api.anthropic.com/v1/messages'
]

{ #category : 'accessing' }
ClaudeConfig >> timeout [

	^ timeout ifNil: [ timeout := 30 ]
]

{ #category : 'accessing' }
ClaudeConfig >> timeout: anInteger [

	timeout := anInteger
]
