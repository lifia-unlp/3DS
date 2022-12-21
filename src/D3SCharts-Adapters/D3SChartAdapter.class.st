"
I represent a protocol that all the adapters must to conform

My main responsibilities - I create all adapters receiving the adaptee to adapt

Public API and Key Messages


- how to create instances:

 adapter := D3SChartAdapter withAdaptee: anObjectToAdapt

"
Class {
	#name : #D3SChartAdapter,
	#superclass : #Object,
	#instVars : [
		'adaptee'
	],
	#category : #'D3SCharts-Adapters'
}

{ #category : #creation }
D3SChartAdapter class >> withAdaptee: anAdaptee [

	^ self new
		  adaptee: anAdaptee;
		  yourself
]

{ #category : #accessing }
D3SChartAdapter >> adaptee [

	^ adaptee
]

{ #category : #accessing }
D3SChartAdapter >> adaptee: anObject [

	adaptee := anObject
]
