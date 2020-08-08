///scr_toggle_select(Pressx,Pressy,Releasex,Releasey)

/// @param Pressx
/// @param Pressy
/// @param Releasex
/// @param Releasey

var px = argument0
var py = argument1
var rx = argument2
var ry = argument3

var tlbr = x>px && x<rx && y>py && y<ry
var bltr = x>px && x<rx && y<py && y>ry
var brtl = x<px && x>rx && y<py && y>ry
var trbl = x<px && x>rx && y>py && y<ry

if (tlbr || bltr || brtl || trbl){
    return true;
}else{
    return false;
}