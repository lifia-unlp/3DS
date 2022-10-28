"
I represent the adapter protocol for the CirclePackingBubbleChart's domain objects that must to conform

My main responsibilities - I set that messages must to answer the adapter

Public API and Key Messages

 	- (abstract) label 
	- (abstract) group
	- (abstract) bubbleValue
	- (abstract) title
	- (abstract) name
	- (abstract) link 
	- (abstract) linkTarget

	- how to create instances:
	
 		adapter := CirclePackingBubbleChartAdapter withAdaptee: anObjectToAdapt

"
Class {
	#name : #CirclePackingBubbleChartAdapter,
	#superclass : #D3SChartAdapter,
	#category : #'D3SCharts-Adapters'
}

{ #category : #accessing }
CirclePackingBubbleChartAdapter >> bubbleValue [
	"Returns the value to show in the bubble"
	self subclassResponsibility.
]

{ #category : #accessing }
CirclePackingBubbleChartAdapter >> group [
	"Returns the group to packing the bubbles"
	self subclassResponsibility.
]

{ #category : #accessing }
CirclePackingBubbleChartAdapter >> label [
	"Returns the label to show in the bubble"
	self subclassResponsibility.
]

{ #category : #accessing }
CirclePackingBubbleChartAdapter >> link [
	"Returns the link to add in the bubbles"
	self subclassResponsibility.
]

{ #category : #accessing }
CirclePackingBubbleChartAdapter >> linkTarget [
	"Returns the target link to add in the bubbles"
	self subclassResponsibility.
]

{ #category : #accessing }
CirclePackingBubbleChartAdapter >> name [
	"Returns the name to identify the bubble"
	self subclassResponsibility.
]

{ #category : #accessing }
CirclePackingBubbleChartAdapter >> title [
	"Returns the title to show in the bubble"
	self subclassResponsibility.
]
