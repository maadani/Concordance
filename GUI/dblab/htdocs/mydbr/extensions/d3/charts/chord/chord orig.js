$(document).ready(function() {
  if (typeof chord_datas !== "undefined") {
    
    // Returns an array of tick angles and labels, given a group.
    function groupTicks(d) {
      var k = (d.endAngle - d.startAngle) / d.value;
      return d3.range(0, d.value, chord_data.step).map(function(v, i) {
        return {
          angle: v * k + d.startAngle,
          // label: i % 5 ? null : v / 1000 + "k"
          label: i % 5 ? null : v
        };
      });
    }

    // Returns an event handler for fading a given chord group.
    function fade(opacity) {
      return function(g, i) {
          svg.selectAll("#"+chord_data.object+" .chord path")
            .filter(function(d) { 
              return d.source.index != i && d.target.index != i; 
            })
          .transition()
            .style("opacity", opacity);
      };
    }
    
    var chord = d3.layout.chord().padding(.05).sortSubgroups(d3.descending).matrix(chord_datas);

    var width = chord_data.size.x,
        height = chord_data.size.y,
        innerRadius = Math.min(width, height) * .41,
        outerRadius = innerRadius * 1.1;

    var fill = d3.scale.ordinal()
        .domain(d3.range(4))
        .range(["#000000", "#FFDD89", "#957244", "#F26223"]);

    var 
        svg = d3.select("#"+chord_data.object).append("svg")
        .attr("width", width)
        .attr("height", height)
      .append("g")
        .attr("transform", "translate(" + width / 2 + "," + height / 2 + ")");

    // Draw groups angles
    svg.append("g").selectAll("path")
        .data(chord.groups)
      .enter().append("path")
        .style("fill", function(d) { return fill(d.index); })
        .style("stroke", function(d) { return fill(d.index); })
        .attr("d", d3.svg.arc().innerRadius(innerRadius).outerRadius(outerRadius))
        .on("mouseover", fade(.1))
        .on("mouseout", fade(1));
    // Tick points
    var ticks = svg.append("g").selectAll("g")
        .data(chord.groups)
        .enter().append("g").selectAll("g")
        .data(groupTicks)
        .enter().append("g")
        .attr("transform", function(d) {
          return "rotate(" + (d.angle * 180 / Math.PI - 90) + ")"
              + "translate(" + outerRadius + ",0)";
        });

    // Tick lines
    ticks.append("line")
        .attr("x1", 1)
        .attr("y1", 0)
        .attr("x2", 5)
        .attr("y2", 0)
        .style("stroke", "#000");

    // Tick texts
    ticks.append("text")
        .attr("x", 8)
        .attr("dy", ".35em")
        .attr("transform", function(d) { return d.angle > Math.PI ? "rotate(180)translate(-16)" : null; })
        .style("text-anchor", function(d) { return d.angle > Math.PI ? "end" : null; })
        .text(function(d) { return d.label; });

    svg.append("g")
        .attr("class", "chord")
      .selectAll("path")
        .data(chord.chords)
      .enter().append("path")
        .attr("d", d3.svg.chord().radius(innerRadius))
        .style("fill", function(d) { return fill(d.target.index); })
        .style("opacity", 1);

  }
});
