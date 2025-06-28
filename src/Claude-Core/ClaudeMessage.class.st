Class {
	#name : 'ClaudeMessage',
	#superclass : 'Object',
	#instVars : [
		'role',
		'content'
	],
	#category : 'Claude-Core',
	#package : 'Claude-Core'
}

{ #category : 'instance creation' }
ClaudeMessage class >> assistant: aString [

	^ self new
		  role: 'assistant';
		  content: aString;
		  yourself
]

{ #category : 'instance creation' }
ClaudeMessage class >> user: aString [

	^ self new
		  role: 'user';
		  content: aString;
		  yourself
]

{ #category : 'accessing' }
ClaudeMessage >> content [

	^ content
]

{ #category : 'accessing' }
ClaudeMessage >> content: anObject [

	content := anObject
]

{ #category : 'accessing' }
ClaudeMessage >> role [

	^ role
]

{ #category : 'accessing' }
ClaudeMessage >> role: anObject [

	role := anObject
]
