Class {
	#name : #D3ForceDirectedGraphExampleComponent,
	#superclass : #WAComponent,
	#instVars : [
		'graph'
	],
	#category : #'D3SCharts-Examples'
}

{ #category : #accessing }
D3ForceDirectedGraphExampleComponent >> children [

	^ { graph }
]

{ #category : #initialization }
D3ForceDirectedGraphExampleComponent >> initialize [

	super initialize.
	graph := D3ForceDirectedGraphComponent new
		                        height: 900;
		                        width: 900;
		                        yourself.
]

{ #category : #rendering }
D3ForceDirectedGraphExampleComponent >> renderContentOn: anHtmlCanvas [

	anHtmlCanvas render: graph.
]
