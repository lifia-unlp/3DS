Class {
	#name : #GreysColorScheme,
	#superclass : #SequentialSingleColorScheme,
	#category : #'D3SCharts-ColorScheme'
}

{ #category : #printing }
GreysColorScheme >> printScheme [

	^ 'd3.schemeGreys[9]'
]
