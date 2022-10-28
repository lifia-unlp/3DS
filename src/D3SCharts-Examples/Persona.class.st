Class {
	#name : #Persona,
	#superclass : #D3SChartsDomainExamples,
	#instVars : [
		'nombre',
		'apellido',
		'dni'
	],
	#category : #'D3SCharts-Examples'
}

{ #category : #creation }
Persona class >> dni: anIDValue nombre: aNameText apellido: aSurnameText [

	^ self new
		  dni: anIDValue;
		  nombre: aNameText;
		  apellido: aSurnameText;
		  yourself
]

{ #category : #accessing }
Persona >> apellido [

	^ apellido
]

{ #category : #accessing }
Persona >> apellido: anObject [

	apellido := anObject
]

{ #category : #accessing }
Persona >> dni [

	^ dni
]

{ #category : #accessing }
Persona >> dni: anObject [

	dni := anObject
]

{ #category : #accessing }
Persona >> nombre [

	^ nombre
]

{ #category : #accessing }
Persona >> nombre: anObject [

	nombre := anObject
]
