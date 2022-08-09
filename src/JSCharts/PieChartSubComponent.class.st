Class {
	#name : #PieChartSubComponent,
	#superclass : #WAComponent,
	#instVars : [
		'width',
		'height',
		'data'
	],
	#category : #JSCharts
}

{ #category : #'instance creation' }
PieChartSubComponent class >> data: aDictionary [
	^ self new
		data: aDictionary;
		yourself
]

{ #category : #accessing }
PieChartSubComponent >> data [
	^ data
]

{ #category : #accessing }
PieChartSubComponent >> data: anObject [
	data := anObject
]

{ #category : #accessing }
PieChartSubComponent >> height [
	^ height
]

{ #category : #accessing }
PieChartSubComponent >> height: anObject [
	height := anObject
]

{ #category : #script }
PieChartSubComponent >> initialize [
   super initialize. 
	width := 900.
	height := 500.
	data := Dictionary new.
	data at: 'Work' put: 11;
	at: 'Fun' put: 2;
	at: 'Sports' put: 5;
	at: 'Study' put: 3.
]

{ #category : #script }
PieChartSubComponent >> js [
	^ 'google.charts.load(''current'', {''packages'':[''corechart'']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable('
		, self tableDataString
		,
			');

        var chart = new google.visualization.PieChart(document.getElementById(''piechart''));

        chart.draw(data);
      }'
]

{ #category : #script }
PieChartSubComponent >> jsForDivId: anId [

	^ 'google.charts.load(''current'', {''packages'':[''corechart'']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable('
	  , self tableDataString , ');

        var chart = new google.visualization.PieChart(document.getElementById('''
	  , anId , '''));

        chart.draw(data);
      }'
]

{ #category : #rendering }
PieChartSubComponent >> renderContentOn: html [

	| divId |
	divId := html nextId.
	html div
		id: divId;
		style:
			'width: ' , width printString , 'px; height: ' , height printString
			, 'px;'.
	html script: (self jsForDivId: divId)
]

{ #category : #script }
PieChartSubComponent >> tableDataString [
	"[['Task', 'Hours per Day'],['Fun',2],['Sports',5],['Study',3],['Work',11]]"

	| stream |
	stream := String new writeStream.
	stream nextPutAll: '[[''Key'', ''Value'']'.
	data
		keysAndValuesDo: [ :k :v | 
			stream
				nextPutAll: ',[''';
				nextPutAll: k;
				nextPutAll: ''',';
				nextPutAll: v printString;
				nextPutAll: ']' ].
	stream nextPutAll: ']'.
	^ stream contents
]

{ #category : #script }
PieChartSubComponent >> updateRoot: anHtmlRoot [
    super updateRoot: anHtmlRoot.
    anHtmlRoot javascript url: 'https://www.gstatic.com/charts/loader.js'.

]

{ #category : #accessing }
PieChartSubComponent >> width [
	^ width
]

{ #category : #accessing }
PieChartSubComponent >> width: anObject [
	width := anObject
]
