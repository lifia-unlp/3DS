"
I represent the adapter protocol for the ForceDirectedLinkGraphChart's domain objects that must to conform

My main responsibilities - I set that messages must to answer the adapter

Public API and Key Messages

 	- (abstract) source 
	- (abstract) target
	- (abstract) linkValue

	- how to create instances:
	
 		adapter := ForceDirectedLinkGraphChartAdapter withAdaptee: anObjectToAdapt
"
Class {
	#name : #ForceDirectedLinkGraphChartInterface,
	#superclass : #D3SChartAdapter,
	#category : #'D3SCharts-Adapters'
}

{ #category : #accessing }
ForceDirectedLinkGraphChartInterface >> linkValue [
	"Returns the value of link's weight between nodes "
	self subclassResponsibility.
]

{ #category : #accessing }
ForceDirectedLinkGraphChartInterface >> source [
	"Returns the label or id to identify the source node"
	self subclassResponsibility.
]

{ #category : #accessing }
ForceDirectedLinkGraphChartInterface >> target [
	"Returns the label or id to identify the target node"
	self subclassResponsibility.
]
