Class {
	#name : #SpectralColorScheme,
	#superclass : #DivergingColorScheme,
	#category : #'D3SCharts-ColorScheme'
}

{ #category : #printing }
SpectralColorScheme >> printScheme [

	^ 'd3.schemeSpectral[9]'
]
