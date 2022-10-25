Class {
	#name : #CirclePackingBubbleChartAdapter,
	#superclass : #Object,
	#instVars : [
		'adaptee'
	],
	#category : #'D3SCharts-Adapters'
}

{ #category : #creation }
CirclePackingBubbleChartAdapter class >> withAdaptee: anAdaptee [

	^ self new
		  adaptee: anAdaptee;
		  yourself
]

{ #category : #accessing }
CirclePackingBubbleChartAdapter >> adaptee [

	^ adaptee
]

{ #category : #accessing }
CirclePackingBubbleChartAdapter >> adaptee: anObject [

	adaptee := anObject
]

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
