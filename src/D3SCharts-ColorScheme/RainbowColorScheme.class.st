Class {
	#name : #RainbowColorScheme,
	#superclass : #CyclicalColorScheme,
	#category : #'D3SCharts-ColorScheme'
}

{ #category : #printing }
RainbowColorScheme >> printScheme [

	^ 'd3.schemeRainbow(1)'
]
