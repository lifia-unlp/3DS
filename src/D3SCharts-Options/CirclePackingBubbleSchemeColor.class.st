Class {
	#name : #CirclePackingBubbleSchemeColor,
	#superclass : #ChartColorSchemeOption,
	#instVars : [
		'groups',
		'fill',
		'fillOpacity'
	],
	#category : #'D3SCharts-Options'
}

{ #category : #creation }
CirclePackingBubbleSchemeColor class >> colors: aD3ColorScheme [

	^ self
		  colors: aD3ColorScheme
		  groups: nil
		  fill: '"#ccc"'
		  fillOpacity: '0.7'
		  
]

{ #category : #creation }
CirclePackingBubbleSchemeColor class >> colors: aD3ColorScheme groups: aGroupsColor fill: aFillValue fillOpacity: aOpacityValue [

	^ self new
		  colors: aD3ColorScheme;
		  groups: aGroupsColor;
		  fill: aFillValue;
		  fillOpacity: aOpacityValue;
		  yourself
]

{ #category : #'accessing - private' }
CirclePackingBubbleSchemeColor >> fill [

	^ fill
]

{ #category : #'accessing - private' }
CirclePackingBubbleSchemeColor >> fill: anObject [

	fill := anObject
]

{ #category : #'accessing - private' }
CirclePackingBubbleSchemeColor >> fillOpacity [

	^ fillOpacity
]

{ #category : #'accessing - private' }
CirclePackingBubbleSchemeColor >> fillOpacity: anObject [

	fillOpacity := anObject
]

{ #category : #'accessing - private' }
CirclePackingBubbleSchemeColor >> groups [

	^ groups
]

{ #category : #'accessing - private' }
CirclePackingBubbleSchemeColor >> groups: anObject [

	groups := anObject
]

{ #category : #printing }
CirclePackingBubbleSchemeColor >> printColorScheme [

	groups
		ifNil: [ 
			^ '
  colors:' , self colors , ',
  fill:' , fill , ',
  fillOpacity:' , fillOpacity , ',' ]
		ifNotNil: [ 
			^ '
  groups:' , groups , ',
  colors:' , colors , ',
  fill:' , fill , ',
  fillOpacity:' , fillOpacity , ',' ]
]
