Class {
	#name : #D3SPartitionSunburstComponent,
	#superclass : #D3SComponent,
	#instVars : [
		'data'
	],
	#category : #D3SCharts
}

{ #category : #accessing }
D3SPartitionSunburstComponent class >> data: aDictionary [
	^ self new
		data: aDictionary;
		yourself
]

{ #category : #accessing }
D3SPartitionSunburstComponent class >> dataMock [
    "Returns a Dictionary with an Array of Dictionaries (Like a Tree struct) with an example for this chart"

    | coreMock coreChildrenMock coreOptionsMock coreSubOptionMock childrensMock childrenMock dataMock |

    coreChildrenMock := Array3DS new.

    childrenMock := Array3DS new.
    coreSubOptionMock := Array3DS new.

    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'AgglomerativeCluster';
        addKey: 'size' withValue: 3938.
        
    childrenMock add: dataMock.
    
    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'CommunityStructure';
        addKey: 'size' withValue: 3812.
        
    childrenMock add: dataMock.
    
    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'HierarchicalCluster';
        addKey: 'size' withValue: 6714.
        
    childrenMock add: dataMock.
   
    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'MergeEdge';
        addKey: 'size' withValue: 743.
        
    childrenMock add: dataMock.

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'cluster';
        addKey: 'children'  withChildren: childrenMock.
        
    coreSubOptionMock add: childrensMock.
   
   " --- Reset variable to create new data ---"

    childrenMock := Array3DS new.

    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'BetweennessCentrality';
        addKey: 'size' withValue: 5731.
        
    childrenMock add: dataMock.
    
    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'LinkDistance';
        addKey: 'size' withValue: 3812.
        
    childrenMock add: dataMock.
    
    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'MaxFlowMinCut';
        addKey: 'size' withValue: 5914.
        
    childrenMock add: dataMock.
   
    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'ShortestPaths';
        addKey: 'size' withValue: 743.
        
    childrenMock add: dataMock.

    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'SpanningTree';
        addKey: 'size' withValue: 3416.
        
    childrenMock add: dataMock.

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'graph';
        addKey: 'children'  withChildren: childrenMock.
        
    coreSubOptionMock add: childrensMock.


   " --- Reset variable to create new data ---"

    childrenMock := Array3DS new.

    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'AspectRatioBanker';
        addKey: 'size' withValue: 7074.
        
    childrenMock add: dataMock.
    
    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'optimization';
        addKey: 'children'  withChildren: childrenMock.
        
    coreSubOptionMock add: childrensMock.

    coreOptionsMock := Dictionary3DS new.
    coreOptionsMock addKey: 'name'  withValue: 'analytics';
        addKey: 'children' withChildren: coreSubOptionMock.

    coreChildrenMock add: coreOptionsMock.

    " --- end brach ----------------------------------------------------------------------------------------"
    " --- new node ----------------------------------------------------------------------------------------"

    childrenMock := Array3DS new.
    coreSubOptionMock := Array3DS new.

    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'ArrayInterpolator';
        addKey: 'size' withValue: 1983.
        
    childrenMock add: dataMock.
    
    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'ColorInterpolator';
        addKey: 'size' withValue: 2047.
        
    childrenMock add: dataMock.
    
    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'DateInterpolator';
        addKey: 'size' withValue: 1375.
        
    childrenMock add: dataMock.
   
    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'Interpolator';
        addKey: 'size' withValue: 8746.
        
    childrenMock add: dataMock.

    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'MatrixInterpolator';
        addKey: 'size' withValue: 2202.
        
    childrenMock add: dataMock.

    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'NumberInterpolator';
        addKey: 'size' withValue: 1382.
        
    childrenMock add: dataMock.

    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'ObjectInterpolator';
        addKey: 'size' withValue: 1629.
        
    childrenMock add: dataMock.

    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'PointInterpolator';
        addKey: 'size' withValue: 1675.
        
    childrenMock add: dataMock.

    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'RectangleInterpolator';
        addKey: 'size' withValue: 2042.
        
    childrenMock add: dataMock.

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'interpolate';
        addKey: 'children'  withChildren: childrenMock.
        
    coreSubOptionMock add: childrensMock.
   
   " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'Easing';
        addKey: 'size'  withValue: 17010.
        
    coreSubOptionMock add: childrensMock.

   " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'FunctionSequence';
        addKey: 'size'  withValue: 5842.
        
    coreSubOptionMock add: childrensMock.

   " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'ISchedulable';
        addKey: 'size'  withValue: 1041.
        
    coreSubOptionMock add: childrensMock.

    " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'Parallel';
        addKey: 'size'  withValue: 5176.
        
    coreSubOptionMock add: childrensMock.


   " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'Pause';
        addKey: 'size'  withValue: 449.
        
    coreSubOptionMock add: childrensMock.

   " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'Scheduler';
        addKey: 'size'  withValue: 5593.
        
    coreSubOptionMock add: childrensMock.

   " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'Sequence';
        addKey: 'size'  withValue: 5534.
        
    coreSubOptionMock add: childrensMock.

   " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'Transition';
        addKey: 'size'  withValue: 9201.
        
    coreSubOptionMock add: childrensMock.

   " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'Transitioner';
        addKey: 'size'  withValue: 19975.
        
    coreSubOptionMock add: childrensMock.

   " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'TransitionEvent';
        addKey: 'size'  withValue: 1116.
        
    coreSubOptionMock add: childrensMock.

    " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'Tween';
        addKey: 'size'  withValue: 6006.
        
    coreSubOptionMock add: childrensMock.

    coreOptionsMock := Dictionary3DS new.
    coreOptionsMock addKey: 'name'  withValue: 'animate';
        addKey: 'children' withChildren: coreSubOptionMock.

    coreChildrenMock add: coreOptionsMock.

    " --- end brach ----------------------------------------------------------------------------------------"
    " --- new node ----------------------------------------------------------------------------------------"

    childrenMock := Array3DS new.
    coreSubOptionMock := Array3DS new.

    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'Converters';
        addKey: 'size' withValue: 721.
        
    childrenMock add: dataMock.
    
    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'DelimitedTextConverter';
        addKey: 'size' withValue: 4294.
        
    childrenMock add: dataMock.
    
    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'GraphMLConverter';
        addKey: 'size' withValue: 9800.
        
    childrenMock add: dataMock.
   
    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'IDataConverter';
        addKey: 'size' withValue: 1314.
        
    childrenMock add: dataMock.

    dataMock := Dictionary3DS new.
    dataMock addKey: 'name'  withValue: 'JSONConverter';
        addKey: 'size' withValue: 2220.
        
    childrenMock add: dataMock.

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'converters';
        addKey: 'children'  withChildren: childrenMock.
        
    coreSubOptionMock add: childrensMock.


    " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'DataUtil';
        addKey: 'size'  withValue: 3322.
        
    coreSubOptionMock add: childrensMock.

    " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'DataTable';
        addKey: 'size'  withValue: 772.
        
    coreSubOptionMock add: childrensMock.

    " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'DataSource';
        addKey: 'size'  withValue: 3331.
        
    coreSubOptionMock add: childrensMock.

    " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'DataSet';
        addKey: 'size'  withValue: 586.
        
    coreSubOptionMock add: childrensMock.

    " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'DataSchema';
        addKey: 'size'  withValue: 2165.
        
    coreSubOptionMock add: childrensMock.

    " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'DataField';
        addKey: 'size'  withValue: 1759.
        
    coreSubOptionMock add: childrensMock.

    coreOptionsMock := Dictionary3DS new.
    coreOptionsMock addKey: 'name'  withValue: 'data';
        addKey: 'children' withChildren: coreSubOptionMock.

    coreChildrenMock add: coreOptionsMock.

    " --- end brach ----------------------------------------------------------------------------------------"
    " --- new node ----------------------------------------------------------------------------------------"

    childrenMock := Array3DS new.
    coreSubOptionMock := Array3DS new.

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'TextSprite';
        addKey: 'size'  withValue: 10066.
        
    coreSubOptionMock add: childrensMock.

    " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'RectSprite';
        addKey: 'size'  withValue: 3623.
        
    coreSubOptionMock add: childrensMock.

    " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'LineSprite';
        addKey: 'size'  withValue: 1732.
        
    coreSubOptionMock add: childrensMock.

    " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'DirtySprite';
        addKey: 'size'  withValue: 8833.
        
    coreSubOptionMock add: childrensMock.

    coreOptionsMock := Dictionary3DS new.
    coreOptionsMock addKey: 'name'  withValue: 'display';
        addKey: 'children' withChildren: coreSubOptionMock.

    coreChildrenMock add: coreOptionsMock.

    " --- end brach ----------------------------------------------------------------------------------------"

    " --- new node ----------------------------------------------------------------------------------------"

    childrenMock := Array3DS new.
    coreSubOptionMock := Array3DS new.

    " --- Reset variable to create new data ---"

    childrensMock := Dictionary3DS new.
    childrensMock addKey: 'name'  withValue: 'FlareVis';
        addKey: 'size'  withValue: 4116.
        
    coreSubOptionMock add: childrensMock.

    coreOptionsMock := Dictionary3DS new.
    coreOptionsMock addKey: 'name'  withValue: 'flex';
        addKey: 'children' withChildren: coreSubOptionMock.

    coreChildrenMock add: coreOptionsMock.

    " --- end brach ----------------------------------------------------------------------------------------"


    coreMock := Dictionary3DS new.
    coreMock addKey: 'name'  withValue: 'flare';
        addKey: 'children' withChildren: coreChildrenMock.

    ^ coreMock

]

{ #category : #accessing }
D3SPartitionSunburstComponent >> data [
	^ data
]

{ #category : #accessing }
D3SPartitionSunburstComponent >> data: anObject [
	data := anObject
]

{ #category : #initialization }
D3SPartitionSunburstComponent >> initialize [
   super initialize. 
	data := self class dataMock.
]

{ #category : #script }
D3SPartitionSunburstComponent >> jsForDivId: anId [

	^ '
flare = ', self sunburstDataString ,';

chart = Sunburst(flare, {
  value: d => d.size, // size of each node (file); null for internal nodes (folders)
  label: d => d.name, // display name for each cell
  title: (d, n) => `${n.ancestors().reverse().map(d => d.data.name).join(".")}\n${n.value.toLocaleString("en")}`, // hover text
  link: (d, n) => n.children
    ? `https://github.com/prefuse/Flare/tree/master/flare/src/${n.ancestors().reverse().map(d => d.data.name).join("/")}`
    : `https://github.com/prefuse/Flare/blob/master/flare/src/${n.ancestors().reverse().map(d => d.data.name).join("/")}.as`,
  width: ', 100 printString , ',
  height: ', 100 printString , '
})

console.log(chart);

document.getElementById(''', anId , ''').append(chart);

	
// Copyright 2021 Observable, Inc.
// Released under the ISC license.
// https://observablehq.com/@d3/sunburst

function Sunburst(data, { // data is either tabular (array of objects) or hierarchy (nested objects)
  path, // as an alternative to id and parentId, returns an array identifier, imputing internal nodes
  id = Array.isArray(data) ? d => d.id : null, // if tabular data, given a d in data, returns a unique identifier (string)
  parentId = Array.isArray(data) ? d => d.parentId : null, // if tabular data, given a node d, returns its parent’s identifier
  children, // if hierarchical data, given a d in data, returns its children
  value, // given a node d, returns a quantitative value (for area encoding; null for count)
  sort = (a, b) => d3.descending(a.value, b.value), // how to sort nodes prior to layout
  label, // given a node d, returns the name to display on the rectangle
  title, // given a node d, returns its hover text
  link, // given a node d, its link (if any)
  linkTarget = "_blank", // the target attribute for links (if any)
  width = 640, // outer width, in pixels
  height = 400, // outer height, in pixels
  margin = 1, // shorthand for margins
  marginTop = margin, // top margin, in pixels
  marginRight = margin, // right margin, in pixels
  marginBottom = margin, // bottom margin, in pixels
  marginLeft = margin, // left margin, in pixels
  padding = 1, // separation between arcs
  radius = Math.min(width - marginLeft - marginRight, height - marginTop - marginBottom) / 2, // outer radius
  color = d3.interpolateRainbow, // color scheme, if any
  fill = "#ccc", // fill for arcs (if no color encoding)
  fillOpacity = 0.6, // fill opacity for arcs
} = {}) {

  // If id and parentId options are specified, or the path option, use d3.stratify
  // to convert tabular data to a hierarchy; otherwise we assume that the data is
  // specified as an object {children} with nested objects (a.k.a. the “flare.json”
  // format), and use d3.hierarchy.
  const root = path != null ? d3.stratify().path(path)(data)
      : id != null || parentId != null ? d3.stratify().id(id).parentId(parentId)(data)
      : d3.hierarchy(data, children);

  // Compute the values of internal nodes by aggregating from the leaves.
  value == null ? root.count() : root.sum(d => Math.max(0, value(d)));

  // Sort the leaves (typically by descending value for a pleasing layout).
  if (sort != null) root.sort(sort);

  // Compute the partition layout. Note polar coordinates: x is angle and y is radius.
  d3.partition().size([2 * Math.PI, radius])(root);

  // Construct a color scale.
  if (color != null) {
    color = d3.scaleSequential([0, root.children.length - 1], color).unknown(fill);
    root.children.forEach((child, i) => child.index = i);
  }

  // Construct an arc generator.
  const arc = d3.arc()
      .startAngle(d => d.x0)
      .endAngle(d => d.x1)
      .padAngle(d => Math.min((d.x1 - d.x0) / 2, 2 * padding / radius))
      .padRadius(radius / 2)
      .innerRadius(d => d.y0)
      .outerRadius(d => d.y1 - padding);

  const svg = d3.create("svg")
      .attr("viewBox", [
        marginRight - marginLeft - width / 2,
        marginBottom - marginTop - height / 2,
        width,
        height
      ])
      .attr("width", width)
      .attr("height", height)
      .attr("style", "max-width: 100%; height: auto; height: intrinsic;")
      .attr("font-family", "sans-serif")
      .attr("font-size", 10)
      .attr("text-anchor", "middle");

  const cell = svg
    .selectAll("a")
    .data(root.descendants())
    .join("a")
      .attr("xlink:href", link == null ? null : d => link(d.data, d))
      .attr("target", link == null ? null : linkTarget);

  cell.append("path")
      .attr("d", arc)
      .attr("fill", color ? d => color(d.ancestors().reverse()[1]?.index) : fill)
      .attr("fill-opacity", fillOpacity);

  if (label != null) cell
    .filter(d => (d.y0 + d.y1) / 2 * (d.x1 - d.x0) > 10)
    .append("text")
      .attr("transform", d => {
        if (!d.depth) return;
        const x = (d.x0 + d.x1) / 2 * 180 / Math.PI;
        const y = (d.y0 + d.y1) / 2;
        return `rotate(${x - 90}) translate(${y},0) rotate(${x < 180 ? 0 : 180})`;
      })
      .attr("dy", "0.32em")
      .text(d => label(d.data, d));

  if (title != null) cell.append("title")
      .text(d => title(d.data, d));

  return svg.node();
}'
]

{ #category : #rendering }
D3SPartitionSunburstComponent >> renderContentOn: html [

	| divId |
	divId := html nextId.
	html div
		id: divId;
		style:
			'width: ' , 100 printString , 'px; height: ' , 100 printString
			, 'px;'.
	html script: (self jsForDivId: divId)
]

{ #category : #accessing }
D3SPartitionSunburstComponent >> sunburstDataString [
 "[{ 'id': 'flare.vis.operator.layout.PieLayout', 'value': 1 }, { 'id': 'flare.vis.operator.layout.RadialTreeLayout', 'value': 8 }] "
	"The dot notation in 'id' allows group of bubble with the same family / group "
	"Data must be an Array of Dictionaries with the format [{id, value}]"

	| stream |
	stream := String new writeStream.

	stream nextPutAll: data printString.	

	^ stream contents
]
