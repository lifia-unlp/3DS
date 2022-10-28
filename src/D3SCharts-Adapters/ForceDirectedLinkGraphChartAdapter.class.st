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
	#name : #ForceDirectedLinkGraphChartAdapter,
	#superclass : #D3SChartAdapter,
	#instVars : [
		'adapteeTarget'
	],
	#category : #'D3SCharts-Adapters'
}

{ #category : #creating }
ForceDirectedLinkGraphChartAdapter class >> withAdaptee: anAdaptee withAdapteeTarget: anAdapteeTarget [

	^ self new
		  adaptee: anAdaptee;
		  adapteeTarget: anAdapteeTarget;
		  yourself
]

{ #category : #'accessing - private' }
ForceDirectedLinkGraphChartAdapter >> adapteeTarget [

	^ adapteeTarget
]

{ #category : #'accessing - private' }
ForceDirectedLinkGraphChartAdapter >> adapteeTarget: anObject [

	adapteeTarget := anObject
]

{ #category : #accessing }
ForceDirectedLinkGraphChartAdapter >> linkValue [
	"Returns the value of link's weight between nodes "
	self subclassResponsibility.
]

{ #category : #accessing }
ForceDirectedLinkGraphChartAdapter >> source [
	"Returns the label or id to identify the source node"
	self subclassResponsibility.
]

{ #category : #accessing }
ForceDirectedLinkGraphChartAdapter >> target [
	"Returns the label or id to identify the target node"
	self subclassResponsibility.
]
