Class {
	#name : #ForceDirectedGraphSchemeColor,
	#superclass : #ChartColorSchemeOption,
	#instVars : [
		'groups',
		'fill'
	],
	#category : #'D3SCharts-Options'
}

{ #category : #accessing }
ForceDirectedGraphSchemeColor class >> colors: aD3ColorScheme [

	^ self
		  colors: aD3ColorScheme
		  groups: nil
		  fill: '"currentColor"'
		  
]

{ #category : #creation }
ForceDirectedGraphSchemeColor class >> colors: aD3ColorScheme groups: aGroupsColor fill: aFillValue [

	^ self new
		  colors: aD3ColorScheme;
		  groups: aGroupsColor;
		  fill: aFillValue;
		  yourself
]

{ #category : #'accessing - private' }
ForceDirectedGraphSchemeColor >> fill [

	^ fill
]

{ #category : #'accessing - private' }
ForceDirectedGraphSchemeColor >> fill: anObject [

	fill := anObject
]

{ #category : #'accessing - private' }
ForceDirectedGraphSchemeColor >> groups [

	^ groups
]

{ #category : #'accessing - private' }
ForceDirectedGraphSchemeColor >> groups: anObject [

	groups := anObject
]

{ #category : #printing }
ForceDirectedGraphSchemeColor >> printColorScheme [

	groups
		ifNil: [ 
			^ '
  colors:' , self colors , ',
  nodeFill:' , fill , ',' ]
		ifNotNil: [ 
			^ '
  nodeGroups:' , groups , ',
  colors:' , colors , ',
  nodeFill:' , fill , ',' ]
]
