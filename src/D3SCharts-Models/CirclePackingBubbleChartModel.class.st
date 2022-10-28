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
