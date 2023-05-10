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
		spec package: 'D3SCharts-Parsers'.
		spec package: 'D3SCharts-Options'.
		spec package: 'D3SCharts-ColorScheme'.
		spec
			package: 'D3SCharts-Model'
			with: [ spec requires: #( 'D3SCharts-Parsers' ) ].
		spec
			package: 'D3SCharts-Adapters'
			with: [ spec requires: #( 'D3SCharts-Model' ) ].
		spec
			package: 'D3SCharts'
			with: [ spec requires: #( 'D3SCharts-Adapters' 'Seaside3' ) ].
		spec
			package: 'D3SCharts-Examples'
			with: [ spec requires: #( 'D3SCharts' ) ] ]
]

{ #category : #baseline }
BaselineOfD3S >> seaside: spec [
	spec
		baseline: 'Seaside3'
		with: [ spec repository: 'github://SeasideSt/Seaside:master/repository' ].

]
