Class {
	#name : #BaselineOf3DS,
	#superclass : #BaselineOf,
	#category : #BaselineOf3DS
}

{ #category : #baseline }
BaselineOf3DS >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		self seaside: spec.
		spec package: 'JSCharts' with: [ spec requires: #( 'Seaside3' ) ].
		spec
			package: 'JSCharts-Examples'
			with: [ spec requires: #( 'Seaside3' ) ] ]
]

{ #category : #baseline }
BaselineOf3DS >> seaside: spec [
	spec
		baseline: 'Seaside3'
		with: [ spec repository: 'github://SeasideSt/Seaside:master/repository' ].

]
