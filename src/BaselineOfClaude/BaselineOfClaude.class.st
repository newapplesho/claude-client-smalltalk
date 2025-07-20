Class {
	#name : 'BaselineOfClaude',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfClaude',
	#package : 'BaselineOfClaude'
}

{ #category : 'baselines' }
BaselineOfClaude >> baseline: spec [

	<baseline>
	spec for: #common do: [
			self defineDependencies: spec.

			spec
				package: 'Claude-Core'
				with: [ spec requires: #( 'NeoJSON' ) ].
			spec
				package: 'Claude-Core-Tests'
				with: [ spec requires: #( 'Claude-Core' ) ].

			spec
				group: 'Core' with: #( 'Claude-Core' );
				group: 'Tests' with: #( 'Claude-Core' 'Claude-Core-Tests');
				group: 'default' with: #( 'Core' 'Tests' ) ]
]

{ #category : 'baselines' }
BaselineOfClaude >> defineDependencies: spec [

	spec
		baseline: 'NeoJSON'
		with: [ spec repository: 'github://svenvc/NeoJSON/repository' ]
]
