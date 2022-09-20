Class {
	#name : #D3ForceDirectedGraphComponent,
	#superclass : #WAComponent,
	#instVars : [
		'height',
		'width',
		'nodes',
		'links'
	],
	#category : #'3DSCharts'
}

{ #category : #accessing }
D3ForceDirectedGraphComponent class >> graphLinksMock [
    "Returns an Array of Dictionaries with an example for this graph"
    | linksMock linkMock sourceArray targetArray valueArray arrayCount |

    sourceArray := #( 'Napoleon' 'Mlle.Baptistine' 'Mme.Magloire' 'Mme.Magloire' 'CountessdeLo' 'Geborand' 'Champtercier' 'Cravatte' 'Count' 'OldMan' 'Valjean' 'Valjean' 'Valjean' 'Valjean' 'Marguerite' 'Mme.deR' 'Isabeau' 'Gervais' 'Listolier' 'Fameuil' 'Fameuil' 'Blacheville' 'Blacheville' 'Blacheville' 'Favourite' 'Favourite' 'Favourite' 'Favourite' 'Dahlia' 'Dahlia' 'Dahlia' 'Dahlia' 'Dahlia' 'Zephine' 'Zephine' 'Zephine' 'Zephine' 'Zephine' 'Fantine' 'Fantine' 'Fantine' 'Fantine' 'Fantine' 'Fantine' 'Fantine' 'Mme.Thenardier' 'Mme.Thenardier' 'Thenardier' 'Thenardier' 'Thenardier' 'Cosette' 'Cosette' 'Cosette' 'Cosette' 'Javert' 'Javert' 'Javert' 'Javert' 'Javert' 'Fauchelevent' 'Fauchelevent' 'Bamatabois' 'Bamatabois' 'Bamatabois' 'Perpetue' 'Simplice' 'Simplice' 'Simplice' 'Simplice' 'Scaufflaire' 'Woman1' 'Woman1' 'Judge' 'Judge' 'Champmathieu' 'Champmathieu' 'Champmathieu' 'Brevet' 'Brevet' 'Brevet' 'Brevet' 'Chenildieu' 'Chenildieu' 'Chenildieu' 'Chenildieu' 'Chenildieu' 'Cochepaille' 'Cochepaille' 'Cochepaille' 'Cochepaille' 'Cochepaille' 'Cochepaille' 'Pontmercy' 'Boulatruelle' 'Eponine' 'Eponine' 'Anzelma' 'Anzelma' 'Woman2' 'Woman2' 'Woman2' 'MotherInnocent' 'MotherInnocent' 'Gribier' 'Mme.Burgon' 'Gavroche' 'Gavroche' 'Gavroche' 'Gavroche' 'Gillenormand' 'Gillenormand' 'Magnon' 'Magnon' 'Mlle.Gillenormand' 'Mlle.Gillenormand' 'Mlle.Gillenormand' 'Mme.Pontmercy' 'Mme.Pontmercy' 'Mlle.Vaubois' 'Lt.Gillenormand' 'Lt.Gillenormand' 'Lt.Gillenormand' 'Marius' 'Marius' 'Marius' 'Marius' 'Marius' 'Marius' 'Marius' 'Marius' 'Marius' 'Marius' 'BaronessT' 'BaronessT' 'Mabeuf' 'Mabeuf' 'Mabeuf' 'Enjolras' 'Enjolras' 'Enjolras' 'Enjolras' 'Enjolras' 'Combeferre' 'Combeferre' 'Combeferre' 'Combeferre' 'Prouvaire' 'Prouvaire' 'Prouvaire' 'Feuilly' 'Feuilly' 'Feuilly' 'Feuilly' 'Feuilly' 'Feuilly' 'Courfeyrac' 'Courfeyrac' 'Courfeyrac' 'Courfeyrac' 'Courfeyrac' 'Courfeyrac' 'Courfeyrac' 'Courfeyrac' 'Bahorel' 'Bahorel' 'Bahorel' 'Bahorel' 'Bahorel' 'Bahorel' 'Bahorel' 'Bahorel' 'Bossuet' 'Bossuet' 'Bossuet' 'Bossuet' 'Bossuet' 'Bossuet' 'Bossuet' 'Bossuet' 'Bossuet' 'Bossuet' 'Joly' 'Joly' 'Joly' 'Joly' 'Joly' 'Joly' 'Joly' 'Joly' 'Joly' 'Grantaire' 'Grantaire' 'Grantaire' 'Grantaire' 'Grantaire' 'Grantaire' 'Grantaire' 'Grantaire' 'Grantaire' 'MotherPlutarch' 'Gueulemer' 'Gueulemer' 'Gueulemer' 'Gueulemer' 'Gueulemer' 'Gueulemer' 'Babet' 'Babet' 'Babet' 'Babet' 'Babet' 'Babet' 'Claquesous' 'Claquesous' 'Claquesous' 'Claquesous' 'Claquesous' 'Claquesous' 'Claquesous' 'Claquesous' 'Montparnasse' 'Montparnasse' 'Montparnasse' 'Montparnasse' 'Montparnasse' 'Montparnasse' 'Montparnasse' 'Montparnasse' 'Toussaint' 'Toussaint' 'Toussaint' 'Child1' 'Child2' 'Child2' 'Brujon' 'Brujon' 'Brujon' 'Brujon' 'Brujon' 'Brujon' 'Brujon' 'Mme.Hucheloup' 'Mme.Hucheloup' 'Mme.Hucheloup' 'Mme.Hucheloup' 'Mme.Hucheloup' 'Mme.Hucheloup' 'Mme.Hucheloup'
    ).


    targetArray := #( 'Myriel' 'Myriel' 'Myriel' 'Mlle.Baptistine' 'Myriel' 'Myriel' 'Myriel' 'Myriel' 'Myriel' 'Myriel' 'Labarre' 'Mme.Magloire' 'Mlle.Baptistine' 'Myriel' 'Valjean' 'Valjean' 'Valjean' 'Valjean' 'Tholomyes' 'Tholomyes' 'Listolier' 'Tholomyes' 'Listolier' 'Fameuil' 'Tholomyes' 'Listolier' 'Fameuil' 'Blacheville' 'Tholomyes' 'Listolier' 'Fameuil' 'Blacheville' 'Favourite' 'Tholomyes' 'Listolier' 'Fameuil' 'Blacheville' 'Dahlia' 'Listolier' 'Fameuil' 'Blacheville' 'Favourite' 'Zephine' 'Marguerite' 'Valjean' 'Fantine' 'Valjean' 'Mme.Thenardier' 'Fantine' 'Valjean' 'Mme.Thenardier' 'Valjean' 'Tholomyes' 'Thenardier' 'Valjean' 'Fantine' 'Thenardier' 'Mme.Thenardier' 'Cosette' 'Javert' 'Valjean' 'Fantine' 'Javert' 'Valjean' 'Fantine' 'Perpetue' 'Valjean' 'Fantine' 'Javert' 'Valjean' 'Valjean' 'Javert' 'Valjean' 'Bamatabois' 'Valjean' 'Judge' 'Bamatabois' 'Judge' 'Champmathieu' 'Valjean' 'Bamatabois' 'Judge' 'Champmathieu' 'Brevet' 'Valjean' 'Bamatabois' 'Judge' 'Champmathieu' 'Brevet' 'Chenildieu' 'Valjean' 'Bamatabois' 'Thenardier' 'Thenardier' 'Mme.Thenardier' 'Thenardier' 'Eponine' 'Mme.Thenardier' 'Valjean' 'Cosette' 'Javert' 'Fauchelevent' 'Valjean' 'Fauchelevent' 'Jondrette' 'Mme.Burgon' 'Thenardier' 'Javert' 'Valjean' 'Valjean' 'Cosette' 'Gillenormand' 'Mme.Thenardier' 'Gillenormand' 'Cosette' 'Valjean' 'Mlle.Gillenormand' 'Pontmercy' 'Mlle.Gillenormand' 'Mlle.Gillenormand' 'Gillenormand' 'Cosette' 'Mlle.Gillenormand' 'Gillenormand' 'Pontmercy' 'Lt.Gillenormand' 'Cosette' 'Valjean' 'Tholomyes' 'Thenardier' 'Eponine' 'Gavroche' 'Gillenormand' 'Marius' 'Marius' 'Eponine' 'Gavroche' 'Marius' 'Gavroche' 'Javert' 'Mabeuf' 'Valjean' 'Enjolras' 'Marius' 'Gavroche' 'Mabeuf' 'Gavroche' 'Enjolras' 'Combeferre' 'Gavroche' 'Enjolras' 'Prouvaire' 'Combeferre' 'Mabeuf' 'Marius' 'Marius' 'Enjolras' 'Combeferre' 'Gavroche' 'Mabeuf' 'Eponine' 'Feuilly' 'Prouvaire' 'Combeferre' 'Gavroche' 'Courfeyrac' 'Mabeuf' 'Enjolras' 'Feuilly' 'Prouvaire' 'Marius' 'Marius' 'Courfeyrac' 'Gavroche' 'Bahorel' 'Enjolras' 'Feuilly' 'Prouvaire' 'Combeferre' 'Mabeuf' 'Valjean' 'Bahorel' 'Gavroche' 'Courfeyrac' 'Enjolras' 'Feuilly' 'Prouvaire' 'Combeferre' 'Mabeuf' 'Marius' 'Bossuet' 'Enjolras' 'Combeferre' 'Courfeyrac' 'Joly' 'Gavroche' 'Bahorel' 'Feuilly' 'Prouvaire' 'Mabeuf' 'Thenardier' 'Valjean' 'Mme.Thenardier' 'Javert' 'Gavroche' 'Eponine' 'Thenardier' 'Gueulemer' 'Valjean' 'Mme.Thenardier' 'Javert' 'Eponine' 'Thenardier' 'Babet' 'Gueulemer' 'Valjean' 'Mme.Thenardier' 'Javert' 'Eponine' 'Enjolras' 'Javert' 'Babet' 'Gueulemer' 'Claquesous' 'Valjean' 'Gavroche' 'Eponine' 'Thenardier' 'Cosette' 'Javert' 'Valjean' 'Gavroche' 'Gavroche' 'Child1' 'Babet' 'Gueulemer' 'Thenardier' 'Gavroche' 'Eponine' 'Claquesous' 'Montparnasse' 'Bossuet' 'Joly' 'Grantaire' 'Bahorel' 'Courfeyrac' 'Gavroche' 'Enjolras'
).




valueArray := #( 1 8 10 6 1 1 1 1 2 1 1 3 3 5 1 1 1 1 4 4 4 4 4 4 3 3 3 4 3 3 3 3 5 3 3 3 3 4 3 3 3 4 4 2 9 2 7 13 1 12 4 31 1 1 17 5 5 1 1 1 8 1 1 2 1 2 3 2 1 1 2 1 3 2 3 3 2 2 2 2 1 2 2 2 2 1 2 2 2 2 2 1 1 1 2 3 2 1 3 1 1 3 1 2 1 2 1 1 1 2 3 1 1 9 2 2 1 1 1 2 1 1 6 12 1 1 21 19 1 2 5 4 1 1 1 1 1 7 7 6 1 4 15 5 6 2 1 4 2 2 6 2 5 1 1 9 17 13 7 2 1 6 3 5 5 6 2 4 3 2 1 5 12 5 4 10 6 2 9 1 1 5 3 5 5 5 2 5 1 2 3 3 1 2 2 1 1 1 1 3 5 1 1 1 1 1 6 6 1 1 2 1 4 4 4 1 1 1 1 1 1 2 2 2 1 1 1 1 2 1 1 2 2 3 3 3 3 1 1 1 1 1 1 1 1 1 1 1
).


    linksMock := Array3DS new.
    arrayCount := sourceArray size.

    1 to: arrayCount do: [ :each | 
        linkMock := Dictionary3DS new.
        linkMock addKey: 'source' withValue: (sourceArray at: each);
            addKey: 'target' withValue: (targetArray at: each);
            addKey: 'value' withValue: (valueArray at: each).
        linksMock add: linkMock.
        ].
    

    ^ linksMock
]

{ #category : #accessing }
D3ForceDirectedGraphComponent class >> graphNodesMock [
    "Returns an Array of Dictionaries with an example for this graph"
    | nodesMock nodeMock idArrayMock groupArrayMock arrayCount |

    idArrayMock := #( 'Myriel'
                    'Napoleon'
                    'Mlle.Baptistine'
                    'Mme.Magloire'
                    'CountessdeLo'
                    'Geborand'
                    'Champtercier'
                    'Cravatte'
                    'Count'
                    'OldMan'
                    'Labarre'
                    'Valjean'
                    'Marguerite'
                    'Mme.deR'
                    'Isabeau'
                    'Gervais'
                    'Tholomyes'
                    'Listolier'
                    'Fameuil'
                    'Blacheville'
                    'Favourite'
                    'Dahlia'
                    'Zephine'
                    'Fantine'
                    'Mme.Thenardier'
                    'Cosette'
                    'Javert'
                    'Fauchelevent'
                    'Bamatabois'
                    'Perpetue'
                    'Simplice'
                    'Woman1'
                    'Judge'
                    'Champmathieu'
                    'Brevet'
                    'Chenildieu'
                    'Cochepaille'
                    'Pontmercy'
                    'Boulatruelle'
                    'Eponine'
                    'Anzelma'
                    'Woman2'
                    'MotherInnocent'
                    'Gribier'
                    'Jondrette'
                    'Mme.Burgon'
                    'Gavroche'
                    'Gillenormand'
                    'Magnon'
                    'Mlle.Gillenormand'
                    'Mme.Pontmercy'
                    'Mlle.Vaubois'
                    'Lt.Gillenormand'
                    'Marius'
                    'BaronessT'
                    'Mabeuf'
                    'Enjolras'
                    'Combeferre'
                    'Prouvaire'
                    'Feuilly'
                    'Courfeyrac'
                    'Bahorel'
                    'Bossuet'
                    'Joly'
                    'Grantaire'
                    'MotherPlutarch'
                    'Gueulemer'
                    'Mme.Hucheloup'
                    'Babet'
                    'Claquesous'
                    'Montparnasse'
                    'Toussaint'
                    'Child1'
                    'Child2'
                    'Brujon'
                    'Thenardier'
                    'Scaufflaire'

                    ).

    groupArrayMock := #( 1 1 1 1 1 1 1 1 1 1
                        2 2 3 2 2 2 3 3 3 3 3 3 3 3 4 5 4 0 2 3 2 2 2 2 2 2 2 4 6 4 4 5 0 0 7 7 8 5 5 5 5 5
                        5 8 5 8 8 8 8 8 8 8 8 8 8 9 4 8 4 4 4 5 10 10 4 4 2
                        ).


    nodesMock := Array3DS new.
    arrayCount := idArrayMock size.

    1 to: arrayCount do: [ :each | 
        nodeMock := Dictionary3DS new.
        nodeMock addKey: 'id' withValue: (idArrayMock at: each);
        		addKey: 'group' withValue: (groupArrayMock at: each).
        nodesMock add: nodeMock.
        ].
    
    ^ nodesMock
]

{ #category : #accessing }
D3ForceDirectedGraphComponent class >> nodes: anArrayOfNodes links: anArrayOfLinks [ 
	^ self new
		nodes: anArrayOfNodes
		links: anArrayOfLinks;
		yourself
]

{ #category : #accessing }
D3ForceDirectedGraphComponent >> graphDataString [
	" A JSON structure with 2 objects 
	 nodes, // an iterable of node objects (typically [{id}, …])
    links // an iterable of link objects (typically [{source, target}, …])"

	| stream data |
	
	data := Dictionary3DS new.
   data addKey: 'nodes' withChildren: nodes;
   		addKey: 'links' withChildren: links.
	
	stream := String new writeStream.
	stream nextPutAll: data printString.

	^ stream contents
]

{ #category : #accessing }
D3ForceDirectedGraphComponent >> height [
	^ height
]

{ #category : #accessing }
D3ForceDirectedGraphComponent >> height: anObject [
	height := anObject
]

{ #category : #initialization }
D3ForceDirectedGraphComponent >> initialize [
   super initialize. 
	width := 900.
	height := 900.
	nodes := self class graphNodesMock.
	links := self class graphLinksMock.
]

{ #category : #script }
D3ForceDirectedGraphComponent >> jsForDivId: anId [

	^ '
	dataGraph = ', self graphDataString , ';
	
chart = ForceGraph(dataGraph, {
  nodeId: d => d.id,
  nodeGroup: d => d.group,
  nodeTitle: d => `${d.id}\n${d.group}`,
  linkStrokeWidth: l => Math.sqrt(l.value),
  width: ', width printString,',
  height: ', height printString ,'
})

document.getElementById(''', anId , ''').append(chart);
	
// Copyright 2021 Observable, Inc.
// Released under the ISC license.
// https://observablehq.com/@d3/force-directed-graph

function ForceGraph({
  nodes, // an iterable of node objects (typically [{id}, …])
  links // an iterable of link objects (typically [{source, target}, …])
}, {
  nodeId = d => d.id, // given d in nodes, returns a unique identifier (string)
  nodeGroup, // given d in nodes, returns an (ordinal) value for color
  nodeGroups, // an array of ordinal values representing the node groups
  nodeTitle, // given d in nodes, a title string
  nodeFill = "currentColor", // node stroke fill (if not using a group color encoding)
  nodeStroke = "#fff", // node stroke color
  nodeStrokeWidth = 1.5, // node stroke width, in pixels
  nodeStrokeOpacity = 1, // node stroke opacity
  nodeRadius = 5, // node radius, in pixels
  nodeStrength,
  linkSource = ({source}) => source, // given d in links, returns a node identifier string
  linkTarget = ({target}) => target, // given d in links, returns a node identifier string
  linkStroke = "#999", // link stroke color
  linkStrokeOpacity = 0.6, // link stroke opacity
  linkStrokeWidth = 1.5, // given d in links, returns a stroke width in pixels
  linkStrokeLinecap = "round", // link stroke linecap
  linkStrength,
  colors = d3.schemeTableau10, // an array of color strings, for the node groups
  width = 640, // outer width, in pixels
  height = 400, // outer height, in pixels
  invalidation // when this promise resolves, stop the simulation
} = {}) {
  // Compute values.
  const N = d3.map(nodes, nodeId).map(intern);
  const LS = d3.map(links, linkSource).map(intern);
  const LT = d3.map(links, linkTarget).map(intern);
  if (nodeTitle === undefined) nodeTitle = (_, i) => N[i];
  const T = nodeTitle == null ? null : d3.map(nodes, nodeTitle);
  const G = nodeGroup == null ? null : d3.map(nodes, nodeGroup).map(intern);
  const W = typeof linkStrokeWidth !== "function" ? null : d3.map(links, linkStrokeWidth);
  const L = typeof linkStroke !== "function" ? null : d3.map(links, linkStroke);

  // Replace the input nodes and links with mutable objects for the simulation.
  nodes = d3.map(nodes, (_, i) => ({id: N[i]}));
  links = d3.map(links, (_, i) => ({source: LS[i], target: LT[i]}));

  // Compute default domains.
  if (G && nodeGroups === undefined) nodeGroups = d3.sort(G);

  // Construct the scales.
  const color = nodeGroup == null ? null : d3.scaleOrdinal(nodeGroups, colors);

  // Construct the forces.
  const forceNode = d3.forceManyBody();
  const forceLink = d3.forceLink(links).id(({index: i}) => N[i]);
  if (nodeStrength !== undefined) forceNode.strength(nodeStrength);
  if (linkStrength !== undefined) forceLink.strength(linkStrength);

  const simulation = d3.forceSimulation(nodes)
      .force("link", forceLink)
      .force("charge", forceNode)
      .force("center",  d3.forceCenter())
      .on("tick", ticked);

  const svg = d3.create("svg")
      .attr("width", width)
      .attr("height", height)
      .attr("viewBox", [-width / 2, -height / 2, width, height])
      .attr("style", "max-width: 100%; height: auto; height: intrinsic;");

  const link = svg.append("g")
      .attr("stroke", typeof linkStroke !== "function" ? linkStroke : null)
      .attr("stroke-opacity", linkStrokeOpacity)
      .attr("stroke-width", typeof linkStrokeWidth !== "function" ? linkStrokeWidth : null)
      .attr("stroke-linecap", linkStrokeLinecap)
    .selectAll("line")
    .data(links)
    .join("line");

  const node = svg.append("g")
      .attr("fill", nodeFill)
      .attr("stroke", nodeStroke)
      .attr("stroke-opacity", nodeStrokeOpacity)
      .attr("stroke-width", nodeStrokeWidth)
    .selectAll("circle")
    .data(nodes)
    .join("circle")
      .attr("r", nodeRadius)
      .call(drag(simulation));

  if (W) link.attr("stroke-width", ({index: i}) => W[i]);
  if (L) link.attr("stroke", ({index: i}) => L[i]);
  if (G) node.attr("fill", ({index: i}) => color(G[i]));
  if (T) node.append("title").text(({index: i}) => T[i]);
  if (invalidation != null) invalidation.then(() => simulation.stop());

  function intern(value) {
    return value !== null && typeof value === "object" ? value.valueOf() : value;
  }

  function ticked() {
    link
      .attr("x1", d => d.source.x)
      .attr("y1", d => d.source.y)
      .attr("x2", d => d.target.x)
      .attr("y2", d => d.target.y);

    node
      .attr("cx", d => d.x)
      .attr("cy", d => d.y);
  }

  function drag(simulation) {    
    function dragstarted(event) {
      if (!event.active) simulation.alphaTarget(0.3).restart();
      event.subject.fx = event.subject.x;
      event.subject.fy = event.subject.y;
    }
    
    function dragged(event) {
      event.subject.fx = event.x;
      event.subject.fy = event.y;
    }
    
    function dragended(event) {
      if (!event.active) simulation.alphaTarget(0);
      event.subject.fx = null;
      event.subject.fy = null;
    }
    
    return d3.drag()
      .on("start", dragstarted)
      .on("drag", dragged)
      .on("end", dragended);
  }

  return Object.assign(svg.node(), {scales: {color}});
}'
]

{ #category : #accessing }
D3ForceDirectedGraphComponent >> links [
	^ links
]

{ #category : #accessing }
D3ForceDirectedGraphComponent >> links: anArray [
 "Links must be an Array of Dictionaries with the format [{source, target, value}]"
	links := anArray
]

{ #category : #accessing }
D3ForceDirectedGraphComponent >> nodes [
	^ nodes
]

{ #category : #accessing }
D3ForceDirectedGraphComponent >> nodes: anArray [
 "Nodes must be an Array of Dictionaries with the format [{id, group}]"
	nodes := anArray
]

{ #category : #rendering }
D3ForceDirectedGraphComponent >> renderContentOn: html [

	| divId |
	divId := html nextId.
	html div
		id: divId;
		style:
			'width: ' , width printString , 'px; height: ' , height printString
			, 'px;'.
	html script: (self jsForDivId: divId).
]

{ #category : #updating }
D3ForceDirectedGraphComponent >> updateRoot: anHtmlRoot [
    super updateRoot: anHtmlRoot.
    anHtmlRoot javascript url: 'https://d3js.org/d3.v7.min.js'.
]

{ #category : #accessing }
D3ForceDirectedGraphComponent >> width [
	^ width
]

{ #category : #accessing }
D3ForceDirectedGraphComponent >> width: anObject [
	width := anObject
]
