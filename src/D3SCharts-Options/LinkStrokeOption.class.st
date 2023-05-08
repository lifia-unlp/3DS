Class {
	#name : #LinkStrokeOption,
	#superclass : #ChartStrokeOption,
	#instVars : [
		'linecap'
	],
	#category : #'D3SCharts-Options'
}

{ #category : #accessing }
LinkStrokeOption class >> stroke: aTextValue [

	^ self
		  stroke: aTextValue
		  opacity: 0.7
		  width: 1.5
		  linecap: '"round"'
]

{ #category : #creation }
LinkStrokeOption class >> stroke: aTextValue opacity: aOpacityValue width: aWidthValue linecap: aLinecapText [

	^ self new
		  stroke: aTextValue;
		  opacity: aOpacityValue;
		  width: aWidthValue;
		  linecap: aLinecapText;
		  yourself
]

{ #category : #accessing }
LinkStrokeOption >> linecap [

	^ linecap
]

{ #category : #accessing }
LinkStrokeOption >> linecap: anObject [

	linecap := anObject
]

{ #category : #printing }
LinkStrokeOption >> printStrokeOptions [

^ '
  linkStroke:', stroke printString,',
  linkStrokeWidth:', width printString ,',
  linkStrokeOpacity:', opacity printString ,',
  linkStrokeLinecap:', linecap printString ,','
]
