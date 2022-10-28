Class {
	#name : #D3SPartitionSunburstExampleComponent,
	#superclass : #WAComponent,
	#instVars : [
		'graph'
	],
	#category : #'D3SCharts-Examples'
}

{ #category : #accessing }
D3SPartitionSunburstExampleComponent >> children [

	^ { graph }
]

{ #category : #initialization }
D3SPartitionSunburstExampleComponent >> initialize [

	super initialize.
	graph := D3SPartitionSunburstComponent  new
		                        height: 900;
		                        width: 900;
		                        yourself.
]

{ #category : #rendering }
D3SPartitionSunburstExampleComponent >> renderContentOn: anHtmlCanvas [

	anHtmlCanvas render: graph.
]
