Class {
	#name : #ChartMarginOption,
	#superclass : #Object,
	#instVars : [
		'margin',
		'top',
		'right',
		'left',
		'bottom'
	],
	#category : #'D3SCharts-Options'
}

{ #category : #creation }
ChartMarginOption class >> margin: aMarginValue [

	^ self
		  margin: aMarginValue
		  top: aMarginValue
		  bottom: aMarginValue
		  left: aMarginValue
		  right: aMarginValue
]

{ #category : #creation }
ChartMarginOption class >> margin: aMarginValue top: aTopMarginValue bottom: aBottomMarginValue left: aLeftMarginValue right: aRightMarginValue [

	^ self new
		  margin: aMarginValue;
		  top: aTopMarginValue;
		  bottom: aBottomMarginValue;
		  left: aLeftMarginValue;
		  right: aRightMarginValue;
		  yourself
]

{ #category : #'accessing - private' }
ChartMarginOption >> bottom [

	^ bottom
]

{ #category : #'accessing - private' }
ChartMarginOption >> bottom: anObject [

	bottom := anObject
]

{ #category : #'accessing - private' }
ChartMarginOption >> left [

	^ left
]

{ #category : #'accessing - private' }
ChartMarginOption >> left: anObject [

	left := anObject
]

{ #category : #'accessing - private' }
ChartMarginOption >> margin [

	^ margin
]

{ #category : #'accessing - private' }
ChartMarginOption >> margin: anObject [

	margin := anObject
]

{ #category : #printing }
ChartMarginOption >> printMarginOptions [

	^ '
  margin:' , margin printString , ',
  marginTop:' , top printString , ',
  marginRight:' , right printString , ',
  marginBottom:' , bottom printString , ',
  marginLeft:' , left printString , ','
]

{ #category : #'accessing - private' }
ChartMarginOption >> right [

	^ right
]

{ #category : #'accessing - private' }
ChartMarginOption >> right: anObject [

	right := anObject
]

{ #category : #'accessing - private' }
ChartMarginOption >> top [

	^ top
]

{ #category : #'accessing - private' }
ChartMarginOption >> top: anObject [

	top := anObject
]
