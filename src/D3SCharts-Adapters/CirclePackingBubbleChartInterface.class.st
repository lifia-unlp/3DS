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
	#name : #CirclePackingBubbleChartInterface,
	#superclass : #D3SChartAdapter,
	#category : #'D3SCharts-Adapters'
}

{ #category : #accessing }
CirclePackingBubbleChartInterface >> bubbleValue [

	"Returns the value to show in the bubble"

	self subclassResponsibility
]

{ #category : #accessing }
CirclePackingBubbleChartInterface >> group [
	"Returns the group to packing the bubbles"
	self subclassResponsibility.
]

{ #category : #accessing }
CirclePackingBubbleChartInterface >> label [

	"Returns the label to show in the bubble"

	self subclassResponsibility
]

{ #category : #accessing }
CirclePackingBubbleChartInterface >> link [

	"Returns the link to add in the bubbles"

	self subclassResponsibility
]

{ #category : #accessing }
CirclePackingBubbleChartInterface >> linkTarget [

	"Returns the target link to add in the bubbles"

	self subclassResponsibility
]

{ #category : #accessing }
CirclePackingBubbleChartInterface >> name [

	"Returns the name to identify the bubble"

	self subclassResponsibility
]

{ #category : #accessing }
CirclePackingBubbleChartInterface >> title [

	"Returns the title to show in the bubble"

	self subclassResponsibility
]
