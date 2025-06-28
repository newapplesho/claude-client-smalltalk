Class {
	#name : 'ClaudeMessageResponse',
	#superclass : 'NeoJSONObject',
	#category : 'Claude-Core',
	#package : 'Claude-Core'
}

{ #category : 'accessing' }
ClaudeMessageResponse >> stopQequence [

	^ self at: 'stop_sequence'
]

{ #category : 'accessing' }
ClaudeMessageResponse >> stopReason [

	^ self at: 'stop_reason'
]

{ #category : 'accessing' }
ClaudeMessageResponse >> text [

	| content |
	content := self at: 'content'.
	content ifNotNil: [ ^ content first at: #text ].
	^ ''
]
