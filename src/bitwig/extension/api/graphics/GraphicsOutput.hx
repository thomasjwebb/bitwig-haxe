package bitwig.extension.api.graphics;

import bitwig.extension.api.Color;
@:jsRequire("com.bitwig.extension.api.graphics", "GraphicsOutput")
interface GraphicsOutput
{
public function translate(x:Float,y:Float):Void;
public function rotate(angle:Float):Void;
public function scale(factor:Float):Void;
public function scale(xFactor:Float,yFactor:Float):Void;
public function appendPath(path:Path):Void;
public function moveTo(x:Float,y:Float):Void;
public function relMoveTo(x:Float,y:Float):Void;
public function lineTo(x:Float,y:Float):Void;
public function relLineTo(x:Float,y:Float):Void;
public function rectangle(x:Float,y:Float,width:Float,height:Float):Void;
public function arc(xc:Float,yc:Float,radius:Float,angle1:Float,angle2:Float):Void;
public function arcNegative(xc:Float,yc:Float,radius:Float,angle1:Float,angle2:Float):Void;
public function circle(centerX:Float,centerY:Float,radius:Float):Void;
public function curveTo(x1:Float,y1:Float,x2:Float,y2:Float,x3:Float,y3:Float):Void;
public function relCurveTo(x1:Float,y1:Float,x2:Float,y2:Float,x3:Float,y3:Float):Void;
public function paintWithAlpha(alpha:Float):Void;
public function mask(image:Image,x:Float,y:Float):Void;
public function setColor(red:Float,green:Float,blue:Float):Void;
public function setColor(red:Float,green:Float,blue:Float,alpha:Float):Void;
public function setColor(color:Color):Void;
public function setPattern(pattern:Pattern):Void;
public function setAntialias(antialiasMode:AntialiasMode):Void;
public function setLineWidth(width:Float):Void;
public function setDash(dashes:Array<Float>,offset:Float):Void;
public function setDash(dashes:Array<Float>):Void;
public function setFillRule(rule:FillRule):Void;
public function setLineCap(lineCap:LineCap):Void;
public function setLineJoin(lineJoin:LineJoin):Void;
public function setMiterLimit(limit:Float):Void;
public function setOperator(operator:Operator):Void;
public function setTolerance(tolerance:Float):Void;
public function drawImage(image:Image,x:Float,y:Float):Void;
public function createLinearGradient(x1:Float,y1:Float,x2:Float,y2:Float):GradientPattern;
public function showText(text:String):Void;
public function setFontSize(fontSize:Float):Void;
public function setFontFace(fontFace:FontFace):Void;
public function setFontOptions(fontOptions:FontOptions):Void;
public function getTextExtents(text:String):TextExtents;
}
