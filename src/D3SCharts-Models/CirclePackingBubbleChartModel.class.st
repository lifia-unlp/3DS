Class {
	#name : #CirclePackingBubbleChartModel,
	#superclass : #ChartModel,
	#instVars : [
		'bubblesModel'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #adding }
CirclePackingBubbleChartModel >> addBubbleFrom: aBubbleChartAdapter [

	"Add a bubble model to the model collection, created through the adapter"

	| bubble |
	bubble := CirclePackingBubbleModel
		          name: aBubbleChartAdapter name
		          value: aBubbleChartAdapter bubbleValue
		          group: aBubbleChartAdapter group
		          title: aBubbleChartAdapter title
		          link: aBubbleChartAdapter link
		          linkTarget: aBubbleChartAdapter linkTarget.
	bubblesModel add: bubble
]

{ #category : #'accessing - private' }
CirclePackingBubbleChartModel >> bubblesModel [

	"Returns the bubbles model information added in the chart"

	^ bubblesModel
]

{ #category : #'accessing - private' }
CirclePackingBubbleChartModel >> bubblesModel: anArrayOfBubbles [

	"Assign an array of the bubbles model information, that we add in the chart"

	bubblesModel := anArrayOfBubbles
]

{ #category : #initialization }
CirclePackingBubbleChartModel >> initialize [

	super initialize.
	bubblesModel := Array3DS new.
]

{ #category : #printing }
CirclePackingBubbleChartModel >> printModel [

	"Returns the bubbles model information added in the chart"

	^ bubblesModel printModel
]
