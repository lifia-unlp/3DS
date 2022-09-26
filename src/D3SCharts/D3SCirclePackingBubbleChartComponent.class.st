Class {
	#name : #D3SCirclePackingBubbleChartComponent,
	#superclass : #D3SComponent,
	#instVars : [
		'data'
	],
	#category : #D3SCharts
}

{ #category : #accessing }
D3SCirclePackingBubbleChartComponent class >> data: anArrayOfDictionaries [
	^ self new
		data: anArrayOfDictionaries;
		yourself
]

{ #category : #accessing }
D3SCirclePackingBubbleChartComponent class >> dataMock [
    "Returns an Array of Dictionaries with an example for this chart"
    | arrayMock  dataMock idArrayMock valuesArrayMock arrayCount |

    idArrayMock := #( 'flare.analytics.cluster.AgglomerativeCluster' 'flare.analytics.cluster.CommunityStructure' 'flare.analytics.cluster.HierarchicalCluster' 'flare.analytics.cluster.MergeEdge'
                    'flare.analytics.graph.BetweennessCentrality'
                    'flare.analytics.graph.LinkDistance'
                    'flare.analytics.graph.MaxFlowMinCut'
                    'flare.analytics.graph.ShortestPaths'
                    'flare.analytics.graph.SpanningTree'
                    'flare.analytics.optimization.AspectRatioBanker'
                    'flare.animate.Easing'
                    'flare.animate.FunctionSequence'
                    'flare.animate.interpolate.ArrayInterpolator'
                    'flare.animate.interpolate.ColorInterpolator'
                    'flare.animate.interpolate.DateInterpolator'
                    'flare.animate.interpolate.Interpolator'
                    'flare.animate.interpolate.MatrixInterpolator'
                    'flare.animate.interpolate.NumberInterpolator'
                    'flare.animate.interpolate.ObjectInterpolator'
                    'flare.animate.interpolate.PointInterpolator'
                    'flare.animate.interpolate.RectangleInterpolator'
                    'flare.animate.ISchedulable'
                    'flare.animate.Parallel'
                    'flare.animate.Pause'
                    'flare.animate.Scheduler'
                    'flare.animate.Sequence'
                    'flare.animate.Transition'
                    'flare.animate.Transitioner'
                    'flare.animate.TransitionEvent'
                    'flare.animate.Tween'
                    'flare.data.converters.Converters'
                    'flare.data.converters.DelimitedTextConverter'
                    'flare.data.converters.GraphMLConverter'
                    'flare.data.converters.IDataConverter'
                    'flare.data.converters.JSONConverter'
                    'flare.data.DataField'
                    'flare.data.DataSchema'
                    'flare.data.DataSet'
                    'flare.data.DataSource'
                    'flare.data.DataTable'
                    'flare.data.DataUtil'
                    'flare.display.DirtySprite'
                    'flare.display.LineSprite'
                    'flare.display.RectSprite'
                    'flare.display.TextSprite'
                    'flare.flex.FlareVis'
                    'flare.physics.DragForce'
                    'flare.physics.GravityForce'
                    'flare.physics.IForce'
                    'flare.physics.NBodyForce'
                    'flare.physics.Particle'
                    'flare.physics.Simulation'
                    'flare.physics.Spring'
                    'flare.physics.SpringForce'
                    'flare.query.AggregateExpression'
                    'flare.query.And'
                    'flare.query.Arithmetic'
                    'flare.query.Average'
                    'flare.query.BinaryExpression'
                    'flare.query.Comparison'
                    'flare.query.CompositeExpression'
                    'flare.query.Count'
                    'flare.query.DateUtil'
                    'flare.query.Distinct'
                    'flare.query.Expression'
                    'flare.query.ExpressionIterator'
                    'flare.query.Fn'

                    ).



    
    valuesArrayMock := #( 3938
                        3812
                        6714
                        743
                        3534
                        5731
                        7840
                        5914
                        3416
                        7074
                        17010
                        5842
                        1983
                        2047
                        1375
                        8746
                        2202
                        1382
                        1629
                        1675
                        2042
                        1041
                        5176
                        449
                        5593
                        5534
                        9201
                        19975
                        1116
                        6006
                        721
                        4294
                        9800
                        1314
                        2220
                        1759
                        2165
                        586
                        3331
                        772
                        3322
                        8833
                        1732
                        3623
                        10066
                        4116
                        1082
                        1336
                        319
                        10498
                        2822
                        9983
                        2213
                        1681
                        1616
                        1027
                        3891
                        891
                        2893
                        5103
                        3677
                        781
                        4141
                        933
                        5130
                        3617
                        3240

                        ). 


    arrayMock := Array3DS new.
    arrayCount := idArrayMock size.

    1 to: arrayCount do: [ :each | 
        dataMock := Dictionary3DS new.
        dataMock addKey: 'id' withValue: (idArrayMock at: each);
        addKey: 'value' withValue: (valuesArrayMock at: each).
        arrayMock add: dataMock.
        ].

    ^ arrayMock

]

{ #category : #script }
D3SCirclePackingBubbleChartComponent >> bubbleDataString [
	"[{ 'id': 'flare.vis.operator.layout.PieLayout', 'value': 1 }, { 'id': 'flare.vis.operator.layout.RadialTreeLayout', 'value': 8 }] "
	"The dot notation in 'id' allows group of bubble with the same family / group "
	"Data must be an Array of Dictionaries with the format [{id, value}]"

	| stream |
	stream := String new writeStream.
	stream nextPutAll: data printString.
	
	^ stream contents
]

{ #category : #accessing }
D3SCirclePackingBubbleChartComponent >> data [
	^ data
]

{ #category : #accessing }
D3SCirclePackingBubbleChartComponent >> data: anObject [
	data := anObject
]

{ #category : #initialization }
D3SCirclePackingBubbleChartComponent >> initialize [
   super initialize. 
	width := 900.
	height := 500.
	data := self class dataMock.

]

{ #category : #script }
D3SCirclePackingBubbleChartComponent >> jsForDivId: anId [

	^ '
flare = ', self bubbleDataString , ';

files = flare.filter(d => d.value !== null) 
	
chart = BubbleChart(files, {
  label: d => [...d.id.split(".").pop().split(/(?=[A-Z][a-z])/g), d.value.toLocaleString("en")].join("\n"),
  value: d => d.value,
  group: d => d.id.split(".")[1],
  title: d => `${d.id}\n${d.value.toLocaleString("en")}`,
  link: d => `https://github.com/prefuse/Flare/blob/master/flare/src/${d.id.replace(/\./g, "/")}.as`,
  width: ', width printString , '
})

console.log(chart);

document.getElementById(''', anId , ''').append(chart);

	
// Copyright 2021 Observable, Inc.
// Released under the ISC license.
// https://observablehq.com/@d3/bubble-chart
function BubbleChart(data, {
  name = ([x]) => x, // alias for label
  label = name, // given d in data, returns text to display on the bubble
  value = ([, y]) => y, // given d in data, returns a quantitative size
  group, // given d in data, returns a categorical value for color
  title, // given d in data, returns text to show on hover
  link, // given a node d, its link (if any)
  linkTarget = "_blank", // the target attribute for links, if any
  width = 640, // outer width, in pixels
  height = width, // outer height, in pixels
  padding = 3, // padding between circles
  margin = 1, // default margins
  marginTop = margin, // top margin, in pixels
  marginRight = margin, // right margin, in pixels
  marginBottom = margin, // bottom margin, in pixels
  marginLeft = margin, // left margin, in pixels
  groups, // array of group names (the domain of the color scale)
  colors = d3.schemeTableau10, // an array of colors (for groups)
  fill = "#ccc", // a static fill color, if no group channel is specified
  fillOpacity = 0.7, // the fill opacity of the bubbles
  stroke, // a static stroke around the bubbles
  strokeWidth, // the stroke width around the bubbles, if any
  strokeOpacity, // the stroke opacity around the bubbles, if any
} = {}) {
  // Compute the values.
  const D = d3.map(data, d => d);
  const V = d3.map(data, value);
  const G = group == null ? null : d3.map(data, group);
  const I = d3.range(V.length).filter(i => V[i] > 0);

  // Unique the groups.
  if (G && groups === undefined) groups = I.map(i => G[i]);
  groups = G && new d3.InternSet(groups);

  // Construct scales.
  const color = G && d3.scaleOrdinal(groups, colors);

  // Compute labels and titles.
  const L = label == null ? null : d3.map(data, label);
  const T = title === undefined ? L : title == null ? null : d3.map(data, title);

  // Compute layout: create a 1-deep hierarchy, and pack it.
  const root = d3.pack()
      .size([width - marginLeft - marginRight, height - marginTop - marginBottom])
      .padding(padding)
    (d3.hierarchy({children: I})
      .sum(i => V[i]));

  const svg = d3.create("svg")
      .attr("width", width)
      .attr("height", height)
      .attr("viewBox", [-marginLeft, -marginTop, width, height])
      .attr("style", "max-width: 100%; height: auto; height: intrinsic;")
      .attr("fill", "currentColor")
      .attr("font-size", 10)
      .attr("font-family", "sans-serif")
      .attr("text-anchor", "middle");

  const leaf = svg.selectAll("a")
    .data(root.leaves())
    .join("a")
      .attr("xlink:href", link == null ? null : (d, i) => link(D[d.data], i, data))
      .attr("target", link == null ? null : linkTarget)
      .attr("transform", d => `translate(${d.x},${d.y})`);

  leaf.append("circle")
      .attr("stroke", stroke)
      .attr("stroke-width", strokeWidth)
      .attr("stroke-opacity", strokeOpacity)
      .attr("fill", G ? d => color(G[d.data]) : fill == null ? "none" : fill)
      .attr("fill-opacity", fillOpacity)
      .attr("r", d => d.r);

  if (T) leaf.append("title")
      .text(d => T[d.data]);

  if (L) {
    // A unique identifier for clip paths (to avoid conflicts).
    const uid = `O-${Math.random().toString(16).slice(2)}`;

    leaf.append("clipPath")
        .attr("id", d => `${uid}-clip-${d.data}`)
      .append("circle")
        .attr("r", d => d.r);

    leaf.append("text")
        .attr("clip-path", d => `url(${new URL(`#${uid}-clip-${d.data}`, location)})`)
      .selectAll("tspan")
      .data(d => `${L[d.data]}`.split(/\n/g))
      .join("tspan")
        .attr("x", 0)
        .attr("y", (d, i, D) => `${i - D.length / 2 + 0.85}em`)
        .attr("fill-opacity", (d, i, D) => i === D.length - 1 ? 0.7 : null)
        .text(d => d);
  }

  return Object.assign(svg.node(), {scales: {color}});
}'
]

{ #category : #script }
D3SCirclePackingBubbleChartComponent >> renderContentOn: html [

	| divId |
	divId := html nextId.
	html div
		id: divId;
		style:
			'width: ' , width printString , 'px; height: ' , height printString
			, 'px;'.
	html script: (self jsForDivId: divId)
]