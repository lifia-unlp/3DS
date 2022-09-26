Class {
	#name : #BaselineOfD3S,
	#superclass : #BaselineOf,
	#category : #BaselineOfD3S
}

{ #category : #baseline }
BaselineOfD3S >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		self seaside: spec.
		spec package: 'D3SCharts' with: [ spec requires: #( 'Seaside3' ) ].
		spec
			package: 'D3SCharts-Examples'
			with: [ spec requires: #( 'Seaside3' ) ] ]
]

{ #category : #baseline }
BaselineOfD3S >> seaside: spec [
	spec
		baseline: 'Seaside3'
		with: [ spec repository: 'github://SeasideSt/Seaside:master/repository' ].

]
