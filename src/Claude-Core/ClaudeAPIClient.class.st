Class {
	#name : 'ClaudeAPIClient',
	#superclass : 'Object',
	#instVars : [
		'config',
		'httpClient'
	],
	#category : 'Claude-Core',
	#package : 'Claude-Core'
}

{ #category : 'accessing' }
ClaudeAPIClient >> config [

	^ config ifNil:[ config := self defaultConfig ] 
]

{ #category : 'accessing' }
ClaudeAPIClient >> config: anObject [

	config := anObject
]

{ #category : 'defaults' }
ClaudeAPIClient >> defaultConfig [

	^ ClaudeConfig default
]

{ #category : 'error handling' }
ClaudeAPIClient >> handleApiError: response [

	| errorData |
	errorData := NeoJSONReader fromString: response contents.
	^ ClaudeError new
		  message: (errorData at: 'error' ifAbsent: [ 'Unknown API Error' ]);
		  statusCode: response code;
		  yourself
]

{ #category : 'error handling' }
ClaudeAPIClient >> handleHttpError: anException [

	^ ClaudeError new
		  message: 'HTTP Error: ' , anException messageText;
		  yourself
]

{ #category : 'accessing' }
ClaudeAPIClient >> httpClient [

	^ httpClient ifNil: [ httpClient := ClaudeHttpClient new ]
]

{ #category : 'accessing' }
ClaudeAPIClient >> httpClient: anObject [

	httpClient := anObject
]

{ #category : 'initialization' }
ClaudeAPIClient >> initialize [

	super initialize.
	self httpClient timeout: self config timeout
]

{ #category : 'rest-api' }
ClaudeAPIClient >> sendRequest: anAnthropicMessageRequest [

	| url jsonPayload response |
	url := self config serviceEndpoint.

	jsonPayload := anAnthropicMessageRequest asJson.


	[
		response := self httpClient
			            httpPost: url
			            contents: (ZnEntity json: jsonPayload) ]
		on: Error
		do: [ :ex | ^ self handleHttpError: ex ].

	response isSuccess
		ifTrue: [ ^ ClaudeMessageResponse fromStream: response contents readStream ]
		ifFalse: [ ^ self handleApiError: response ]
]
