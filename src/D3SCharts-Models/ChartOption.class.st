Class {
	#name : #ChartOption,
	#superclass : #Object,
	#instVars : [
		'style'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #accessing }
ChartOption >> height [

	"Returns height value size in pixels"

	^ style height printString
]

{ #category : #accessing }
ChartOption >> style [

	^ style
]

{ #category : #accessing }
ChartOption >> style: aChartStyleOption [

	style := aChartStyleOption
]

{ #category : #accessing }
ChartOption >> width [

	"Returns width size in pixels"

	^ style width printString
]
