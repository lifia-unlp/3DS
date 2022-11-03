"
I represent a protocol that the Circle Packing Bubble Chart's model must to conform

My main responsibilities - I represent all the information that must be added to the data model for graph representation

Public API and Key Messages

- addBubbleFrom: aCirclePackingBubbleChartAdapter => add bubble's model from another class adapted for this chart

- printModel => representation of graph information
"
Class {
	#name : #CirclePackingBubbleChartModel,
	#superclass : #ChartModel,
	#category : #'D3SCharts-Models'
}

{ #category : #adding }
CirclePackingBubbleChartModel >> addBubbleFrom: aCirclePackingBubbleChartAdapter [

	"Add a bubble model to the model collection, created through the adapter"

	| bubble |
	bubble := CirclePackingBubbleModel
		          name: aCirclePackingBubbleChartAdapter name
		          label: aCirclePackingBubbleChartAdapter label
		          value: aCirclePackingBubbleChartAdapter bubbleValue
		          group: aCirclePackingBubbleChartAdapter group
		          title: aCirclePackingBubbleChartAdapter title
		          link: aCirclePackingBubbleChartAdapter link
		          linkTarget: aCirclePackingBubbleChartAdapter linkTarget.
	chartModel add: bubble
]

{ #category : #initialization }
CirclePackingBubbleChartModel >> initialize [

	super initialize.
	chartModel := D3SArray new.
]
