Class {
	#name : 'BaselineOfClaude',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfClaude',
	#package : 'BaselineOfClaude'
}

{ #category : 'baseline' }
BaselineOfClaude >> baseline: spec [

	<baseline>
	spec for: #common do: [
			self defineDependencies: spec.

			spec
				package: 'Claude-Core'
				with: [ spec requires: #( 'NeoJSON' ) ].

			spec
				group: 'Core' with: #( 'Claude-Core' );
				group: 'Tests' with: #( 'Claude-Core' );
				group: 'default' with: #( 'Core' 'Tests' ) ]
]

{ #category : 'baseline' }
BaselineOfClaude >> defineDependencies: spec [

	spec
		baseline: 'NeoJSON'
		with: [ spec repository: 'github://svenvc/NeoJSON/repository' ]
]
