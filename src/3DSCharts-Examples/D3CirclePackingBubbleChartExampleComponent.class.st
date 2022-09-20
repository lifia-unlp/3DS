Class {
	#name : #D3CirclePackingBubbleChartExampleComponent,
	#superclass : #WAComponent,
	#instVars : [
		'graph'
	],
	#category : #'3DSCharts-Examples'
}

{ #category : #accessing }
D3CirclePackingBubbleChartExampleComponent >> children [

	^ { graph }
]

{ #category : #initialization }
D3CirclePackingBubbleChartExampleComponent >> initialize [

	super initialize.
	graph := D3CirclePackingBubbleChartComponent new
		                        height: 500;
		                        width: 800;
		                        yourself.
]

{ #category : #rendering }
D3CirclePackingBubbleChartExampleComponent >> renderContentOn: anHtmlCanvas [

	anHtmlCanvas render: graph.
]
