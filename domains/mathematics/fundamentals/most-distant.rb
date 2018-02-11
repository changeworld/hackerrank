#!/bin/ruby

xmax,xmin,ymax,ymin = 0,0,0,0
gets.to_i.times{
  x,y = gets.strip.split.map &:to_i
  xmax = x > xmax ? x : xmax
  xmin = x < xmin ? x : xmin
  ymax = y > ymax ? y : ymax
  ymin = y < ymin ? y : ymin
}
puts [xmax-xmin, ymax-ymin, Math.sqrt([xmax.abs, xmin.abs].max**2+[ymin.abs, ymax.abs].max**2)].max
