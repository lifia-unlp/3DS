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
CirclePackingBubbleSchemeColor class >> colors: aD3ColorScheme groups: aGroupsColor fill: aBottomMarginValue fillOpacity: aOpacityValue [

	^ self new
		  colors: aD3ColorScheme;
		  groups: aGroupsColor;
		  fill: aBottomMarginValue;
		  fillOpacity: aOpacityValue;
		  yourself
]

{ #category : #accessing }
CirclePackingBubbleSchemeColor >> fill [

	^ fill
]

{ #category : #accessing }
CirclePackingBubbleSchemeColor >> fill: anObject [

	fill := anObject
]

{ #category : #accessing }
CirclePackingBubbleSchemeColor >> fillOpacity [

	^ fillOpacity
]

{ #category : #accessing }
CirclePackingBubbleSchemeColor >> fillOpacity: anObject [

	fillOpacity := anObject
]

{ #category : #accessing }
CirclePackingBubbleSchemeColor >> groups [

	^ groups
]

{ #category : #accessing }
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
