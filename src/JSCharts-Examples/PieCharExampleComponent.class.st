"
```language=Pharo&caption=Beautiful&anchor=Fig1
   WAAdmin register: PieCharExampleComponent asApplicationAt: 'piechart'
```

Eso es un ejemplo



"
Class {
	#name : #PieCharExampleComponent,
	#superclass : #WAComponent,
	#instVars : [
		'pieChartSubcomponent',
		'secondPie'
	],
	#category : #'JSCharts-Examples'
}

{ #category : #accessing }
PieCharExampleComponent >> children [

	^ { pieChartSubcomponent }
]

{ #category : #rendering }
PieCharExampleComponent >> demoData [

	^Dictionary new
		at: 'White' put: 20;
		at: 'Black' put: 40;
		at: 'Transparent' put: 40;
		yourself
]

{ #category : #rendering }
PieCharExampleComponent >> initialize [

	super initialize.
	pieChartSubcomponent := PieChartSubComponent new
		                        height: 250;
		                        width: 400;
		                        yourself.
	secondPie  := PieChartSubComponent new
		                        height: 250;
		                        width: 400;
		                        yourself.		
]

{ #category : #rendering }
PieCharExampleComponent >> renderContentOn: anHtmlCanvas [

	pieChartSubcomponent data: self demoData.
	anHtmlCanvas render: pieChartSubcomponent .
	anHtmlCanvas render: secondPie 
]
