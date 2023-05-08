Class {
	#name : #Alumno,
	#superclass : #D3SChartsDomainExamples,
	#instVars : [
		'nombreCompleto',
		'anioCarrera',
		'materiasAprobadas',
		'anioInscripcion'
	],
	#category : #'D3SCharts-Examples'
}

{ #category : #creation }
Alumno class >> nombreCompleto: aFullNameText materiasAprobadas: aValue anioInscripcion: aYear anioCarrera: aCarreerYear [

	^ self new
		  nombreCompleto: aFullNameText;
		  materiasAprobadas: aValue;
		  anioInscripcion: aYear;
		  anioCarrera: aCarreerYear;
		  yourself
]

{ #category : #accessing }
Alumno >> anioCarrera [

	^ anioCarrera printString
]

{ #category : #accessing }
Alumno >> anioCarrera: anObject [

	anioCarrera := anObject
]

{ #category : #accessing }
Alumno >> anioInscripcion [

	^ anioInscripcion printString
]

{ #category : #accessing }
Alumno >> anioInscripcion: anObject [

	anioInscripcion := anObject
]

{ #category : #accessing }
Alumno >> materiasAprobadas [

	^ materiasAprobadas printString
]

{ #category : #accessing }
Alumno >> materiasAprobadas: anObject [

	materiasAprobadas := anObject
]

{ #category : #accessing }
Alumno >> nombreCompleto [

	^ nombreCompleto 
]

{ #category : #accessing }
Alumno >> nombreCompleto: aFullNameText [

	nombreCompleto := aFullNameText
]
