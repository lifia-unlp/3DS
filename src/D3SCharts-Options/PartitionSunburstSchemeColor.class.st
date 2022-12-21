Class {
	#name : #PartitionSunburstSchemeColor,
	#superclass : #ChartColorSchemeOption,
	#instVars : [
		'fill',
		'fillOpacity'
	],
	#category : #'D3SCharts-Options'
}

{ #category : #creation }
PartitionSunburstSchemeColor class >> colors: aD3ColorScheme [

	^ self
		  colors: aD3ColorScheme
		  fill: '"#ccc"'
		  fillOpacity: '0.6'
		  
]

{ #category : #creation }
PartitionSunburstSchemeColor class >> colors: aD3ColorScheme fill: aFillValue fillOpacity: aOpacityValue [

	^ self new
		  colors: aD3ColorScheme;
		  fill: aFillValue;
		  fillOpacity: aOpacityValue;
		  yourself
]

{ #category : #'accessing - private' }
PartitionSunburstSchemeColor >> fill [

	^ fill
]

{ #category : #'accessing - private' }
PartitionSunburstSchemeColor >> fill: anObject [

	fill := anObject
]

{ #category : #'accessing - private' }
PartitionSunburstSchemeColor >> fillOpacity [

	^ fillOpacity
]

{ #category : #'accessing - private' }
PartitionSunburstSchemeColor >> fillOpacity: anObject [

	fillOpacity := anObject
]

{ #category : #printing }
PartitionSunburstSchemeColor >> printColorScheme [

	^ '
  color: ' , self colors , ',
  fill: ' , fill , ',
  fillOpacity: ' , fillOpacity , ','
]
