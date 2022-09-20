Class {
	#name : #D3PartitionSunburstExampleComponent,
	#superclass : #WAComponent,
	#instVars : [
		'graph'
	],
	#category : #'3DSCharts-Examples'
}

{ #category : #accessing }
D3PartitionSunburstExampleComponent >> children [

	^ { graph }
]

{ #category : #initialization }
D3PartitionSunburstExampleComponent >> initialize [

	super initialize.
	graph := D3PartitionSunburstComponent  new
		                        height: 900;
		                        width: 900;
		                        yourself.
]

{ #category : #rendering }
D3PartitionSunburstExampleComponent >> renderContentOn: anHtmlCanvas [

	anHtmlCanvas render: graph.
]
