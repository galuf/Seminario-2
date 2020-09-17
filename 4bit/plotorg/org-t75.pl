#!/usr/bin/perl -w
use Tk;
my $padding = 10; 
my $height = 360;
my %pane    = ( width =>  10, height => $height );
my %canvas  = ( width => 500, height => $height); 
my %window  = ( width => $pane{width}+$canvas{width}+4*$padding, height => $height+2*$padding );
my $mw = MainWindow->new;
$mw->configure( -width=>$window{width}, -height=>$window{height});
$mw->title('Hypernetwork at clocktime =75');
my $pane = $mw->Frame; 
$pane->pack( -side=>'left', -padx=>$padding, -pady=>$padding, -fill=>'both' );
$pane->Button( -text=>'Continue', -command=>sub{ exit } )->pack( -side=>'top',-pady=>$padding );
my  $canvas = $mw->Canvas(-cursor=>'crosshair', -background=>'white',-width=>$canvas{width}, -height=>$canvas{height}); 
$canvas->pack (-side=>'right', -padx=>$padding, -pady=>$padding);
$canvas->createRectangle(1,1,18,18,-fill=>'LightYellow1');
$canvas->createText(10,10,-text=>'');
$canvas->createRectangle(1,21,18,38,-fill=>'LightYellow1');
$canvas->createText(10,30,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(1,41,18,58,-fill=>'LightYellow1');
$canvas->createText(10,50,-text=>'');
$canvas->createRectangle(1,61,18,78,-fill=>'LightYellow1');
$canvas->createText(10,70,-text=>'');
$canvas->createRectangle(21,1,38,18,-fill=>'LightYellow1');
$canvas->createText(30,10,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(21,21,38,38,-fill=>'LightYellow1');
$canvas->createText(30,30,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(21,41,38,58,-fill=>'LightYellow1');
$canvas->createText(30,50,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(21,61,38,78,-fill=>'LightYellow1');
$canvas->createText(30,70,-text=>'');
$canvas->createRectangle(41,1,58,18,-fill=>'LightYellow1');
$canvas->createText(50,10,-text=>'');
$canvas->createRectangle(41,21,58,38,-fill=>'LightYellow1');
$canvas->createText(50,30,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(41,41,58,58,-fill=>'LightYellow1');
$canvas->createText(50,50,-text=>'');
$canvas->createRectangle(41,61,58,78,-fill=>'LightYellow1');
$canvas->createText(50,70,-text=>'');
$canvas->createRectangle(61,1,78,18,-fill=>'LightYellow1');
$canvas->createText(70,10,-text=>'');
$canvas->createRectangle(61,21,78,38,-fill=>'LightYellow1');
$canvas->createText(70,30,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(61,41,78,58,-fill=>'LightYellow1');
$canvas->createText(70,50,-text=>'');
$canvas->createRectangle(61,61,78,78,-fill=>'LightYellow1');
$canvas->createText(70,70,-text=>'');
$canvas->createRectangle(81,1,98,18,-fill=>'LightYellow1');
$canvas->createText(90,10,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(81,21,98,38,-fill=>'LightYellow1');
$canvas->createText(90,30,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(81,41,98,58,-fill=>'LightYellow1');
$canvas->createText(90,50,-text=>'');
$canvas->createRectangle(81,61,98,78,-fill=>'LightYellow1');
$canvas->createText(90,70,-text=>'');
$canvas->createRectangle(1,101,18,118,-fill=>'LightYellow1');
$canvas->createText(10,110,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(1,121,18,138,-fill=>'LightYellow1');
$canvas->createText(10,130,-text=>'');
$canvas->createRectangle(1,141,18,158,-fill=>'LightYellow1');
$canvas->createText(10,150,-text=>'');
$canvas->createRectangle(1,161,18,178,-fill=>'maroon1');
$canvas->createText(10,170,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(21,101,38,118,-fill=>'LightYellow1');
$canvas->createText(30,110,-text=>'');
$canvas->createRectangle(21,121,38,138,-fill=>'LightYellow1');
$canvas->createText(30,130,-text=>'');
$canvas->createRectangle(21,141,38,158,-fill=>'SkyBlue1');
$canvas->createText(30,150,-text=>'');
$canvas->createRectangle(21,161,38,178,-fill=>'LightYellow1');
$canvas->createText(30,170,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(41,101,58,118,-fill=>'SkyBlue1');
$canvas->createText(50,110,-text=>'');
$canvas->createRectangle(41,121,58,138,-fill=>'LightYellow1');
$canvas->createText(50,130,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(41,141,58,158,-fill=>'LightYellow1');
$canvas->createText(50,150,-text=>'');
$canvas->createRectangle(41,161,58,178,-fill=>'LightYellow1');
$canvas->createText(50,170,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(61,101,78,118,-fill=>'SkyBlue1');
$canvas->createText(70,110,-text=>'');
$canvas->createRectangle(61,121,78,138,-fill=>'LightYellow1');
$canvas->createText(70,130,-text=>'');
$canvas->createRectangle(61,141,78,158,-fill=>'LightYellow1');
$canvas->createText(70,150,-text=>'');
$canvas->createRectangle(61,161,78,178,-fill=>'maroon1');
$canvas->createText(70,170,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(81,101,98,118,-fill=>'LightYellow1');
$canvas->createText(90,110,-text=>'');
$canvas->createRectangle(81,121,98,138,-fill=>'SkyBlue1');
$canvas->createText(90,130,-text=>'');
$canvas->createRectangle(81,141,98,158,-fill=>'LightYellow1');
$canvas->createText(90,150,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(81,161,98,178,-fill=>'LightYellow1');
$canvas->createText(90,170,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(121,1,138,18,-fill=>'LightYellow1');
$canvas->createText(130,10,-text=>'');
$canvas->createRectangle(121,21,138,38,-fill=>'LightYellow1');
$canvas->createText(130,30,-text=>'');
$canvas->createRectangle(121,41,138,58,-fill=>'LightYellow1');
$canvas->createText(130,50,-text=>'');
$canvas->createRectangle(121,61,138,78,-fill=>'LightYellow1');
$canvas->createText(130,70,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(141,1,158,18,-fill=>'LightYellow1');
$canvas->createText(150,10,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(141,21,158,38,-fill=>'LightYellow1');
$canvas->createText(150,30,-text=>'');
$canvas->createRectangle(141,41,158,58,-fill=>'LightYellow1');
$canvas->createText(150,50,-text=>'');
$canvas->createRectangle(141,61,158,78,-fill=>'LightYellow1');
$canvas->createText(150,70,-text=>'');
$canvas->createRectangle(161,1,178,18,-fill=>'LightYellow1');
$canvas->createText(170,10,-text=>'');
$canvas->createRectangle(161,21,178,38,-fill=>'LightYellow1');
$canvas->createText(170,30,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(161,41,178,58,-fill=>'LightYellow1');
$canvas->createText(170,50,-text=>'');
$canvas->createRectangle(161,61,178,78,-fill=>'LightYellow1');
$canvas->createText(170,70,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(181,1,198,18,-fill=>'LightYellow1');
$canvas->createText(190,10,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(181,21,198,38,-fill=>'LightYellow1');
$canvas->createText(190,30,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(181,41,198,58,-fill=>'LightYellow1');
$canvas->createText(190,50,-text=>'');
$canvas->createRectangle(181,61,198,78,-fill=>'LightYellow1');
$canvas->createText(190,70,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(201,1,218,18,-fill=>'LightYellow1');
$canvas->createText(210,10,-text=>'');
$canvas->createRectangle(201,21,218,38,-fill=>'LightYellow1');
$canvas->createText(210,30,-text=>'');
$canvas->createRectangle(201,41,218,58,-fill=>'LightYellow1');
$canvas->createText(210,50,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(201,61,218,78,-fill=>'LightYellow1');
$canvas->createText(210,70,-text=>'');
$canvas->createRectangle(121,101,138,118,-fill=>'LightYellow1');
$canvas->createText(130,110,-text=>'');
$canvas->createRectangle(121,121,138,138,-fill=>'LightYellow1');
$canvas->createText(130,130,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(121,141,138,158,-fill=>'LightYellow1');
$canvas->createText(130,150,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(121,161,138,178,-fill=>'LightYellow1');
$canvas->createText(130,170,-text=>'');
$canvas->createRectangle(141,101,158,118,-fill=>'LightYellow1');
$canvas->createText(150,110,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(141,121,158,138,-fill=>'LightYellow1');
$canvas->createText(150,130,-text=>'');
$canvas->createRectangle(141,141,158,158,-fill=>'LightYellow1');
$canvas->createText(150,150,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(141,161,158,178,-fill=>'LightYellow1');
$canvas->createText(150,170,-text=>'');
$canvas->createRectangle(161,101,178,118,-fill=>'LightYellow1');
$canvas->createText(170,110,-text=>'');
$canvas->createRectangle(161,121,178,138,-fill=>'LightYellow1');
$canvas->createText(170,130,-text=>'');
$canvas->createRectangle(161,141,178,158,-fill=>'LightYellow1');
$canvas->createText(170,150,-text=>'');
$canvas->createRectangle(161,161,178,178,-fill=>'LightYellow1');
$canvas->createText(170,170,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(181,101,198,118,-fill=>'LightYellow1');
$canvas->createText(190,110,-text=>'');
$canvas->createRectangle(181,121,198,138,-fill=>'LightYellow1');
$canvas->createText(190,130,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(181,141,198,158,-fill=>'LightYellow1');
$canvas->createText(190,150,-text=>'');
$canvas->createRectangle(181,161,198,178,-fill=>'LightYellow1');
$canvas->createText(190,170,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(201,101,218,118,-fill=>'LightYellow1');
$canvas->createText(210,110,-text=>'');
$canvas->createRectangle(201,121,218,138,-fill=>'LightYellow1');
$canvas->createText(210,130,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(201,141,218,158,-fill=>'LightYellow1');
$canvas->createText(210,150,-text=>'');
$canvas->createRectangle(201,161,218,178,-fill=>'LightYellow1');
$canvas->createText(210,170,-text=>'');
$canvas->createRectangle(121,201,138,218,-fill=>'LightYellow1');
$canvas->createText(130,210,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(121,221,138,238,-fill=>'LightYellow1');
$canvas->createText(130,230,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(121,241,138,258,-fill=>'LightYellow1');
$canvas->createText(130,250,-text=>'');
$canvas->createRectangle(121,261,138,278,-fill=>'LightYellow1');
$canvas->createText(130,270,-text=>'');
$canvas->createRectangle(141,201,158,218,-fill=>'LightYellow1');
$canvas->createText(150,210,-text=>'');
$canvas->createRectangle(141,221,158,238,-fill=>'LightYellow1');
$canvas->createText(150,230,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(141,241,158,258,-fill=>'LightYellow1');
$canvas->createText(150,250,-text=>'');
$canvas->createRectangle(141,261,158,278,-fill=>'LightYellow1');
$canvas->createText(150,270,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(161,201,178,218,-fill=>'LightYellow1');
$canvas->createText(170,210,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(161,221,178,238,-fill=>'LightYellow1');
$canvas->createText(170,230,-text=>'');
$canvas->createRectangle(161,241,178,258,-fill=>'LightYellow1');
$canvas->createText(170,250,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(161,261,178,278,-fill=>'LightYellow1');
$canvas->createText(170,270,-text=>'');
$canvas->createRectangle(181,201,198,218,-fill=>'LightYellow1');
$canvas->createText(190,210,-text=>'');
$canvas->createRectangle(181,221,198,238,-fill=>'LightYellow1');
$canvas->createText(190,230,-text=>'');
$canvas->createRectangle(181,241,198,258,-fill=>'LightYellow1');
$canvas->createText(190,250,-text=>'');
$canvas->createRectangle(181,261,198,278,-fill=>'LightYellow1');
$canvas->createText(190,270,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(201,201,218,218,-fill=>'LightYellow1');
$canvas->createText(210,210,-text=>'');
$canvas->createRectangle(201,221,218,238,-fill=>'LightYellow1');
$canvas->createText(210,230,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(201,241,218,258,-fill=>'LightYellow1');
$canvas->createText(210,250,-text=>'');
$canvas->createRectangle(201,261,218,278,-fill=>'LightYellow1');
$canvas->createText(210,270,-text=>'');
$canvas->createRectangle(241,1,258,18,-fill=>'LightYellow1');
$canvas->createText(250,10,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(241,21,258,38,-fill=>'LightYellow1');
$canvas->createText(250,30,-text=>'');
$canvas->createRectangle(241,41,258,58,-fill=>'LightYellow1');
$canvas->createText(250,50,-text=>'');
$canvas->createRectangle(241,61,258,78,-fill=>'LightYellow1');
$canvas->createText(250,70,-text=>'');
$canvas->createRectangle(261,1,278,18,-fill=>'LightYellow1');
$canvas->createText(270,10,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(261,21,278,38,-fill=>'LightYellow1');
$canvas->createText(270,30,-text=>'');
$canvas->createRectangle(261,41,278,58,-fill=>'LightYellow1');
$canvas->createText(270,50,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(261,61,278,78,-fill=>'LightYellow1');
$canvas->createText(270,70,-text=>'');
$canvas->createRectangle(281,1,298,18,-fill=>'LightYellow1');
$canvas->createText(290,10,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(281,21,298,38,-fill=>'LightYellow1');
$canvas->createText(290,30,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(281,41,298,58,-fill=>'LightYellow1');
$canvas->createText(290,50,-text=>'');
$canvas->createRectangle(281,61,298,78,-fill=>'LightYellow1');
$canvas->createText(290,70,-text=>'');
$canvas->createRectangle(301,1,318,18,-fill=>'LightYellow1');
$canvas->createText(310,10,-text=>'');
$canvas->createRectangle(301,21,318,38,-fill=>'LightYellow1');
$canvas->createText(310,30,-text=>'');
$canvas->createRectangle(301,41,318,58,-fill=>'LightYellow1');
$canvas->createText(310,50,-text=>'');
$canvas->createRectangle(301,61,318,78,-fill=>'LightYellow1');
$canvas->createText(310,70,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(321,1,338,18,-fill=>'LightYellow1');
$canvas->createText(330,10,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(321,21,338,38,-fill=>'LightYellow1');
$canvas->createText(330,30,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(321,41,338,58,-fill=>'LightYellow1');
$canvas->createText(330,50,-text=>'');
$canvas->createRectangle(321,61,338,78,-fill=>'LightYellow1');
$canvas->createText(330,70,-text=>'');
$canvas->createRectangle(241,101,258,118,-fill=>'LightYellow1');
$canvas->createText(250,110,-text=>'');
$canvas->createRectangle(241,121,258,138,-fill=>'LightYellow1');
$canvas->createText(250,130,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(241,141,258,158,-fill=>'LightYellow1');
$canvas->createText(250,150,-text=>'');
$canvas->createRectangle(241,161,258,178,-fill=>'LightYellow1');
$canvas->createText(250,170,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(261,101,278,118,-fill=>'LightYellow1');
$canvas->createText(270,110,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(261,121,278,138,-fill=>'LightYellow1');
$canvas->createText(270,130,-text=>'');
$canvas->createRectangle(261,141,278,158,-fill=>'LightYellow1');
$canvas->createText(270,150,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(261,161,278,178,-fill=>'LightYellow1');
$canvas->createText(270,170,-text=>'');
$canvas->createRectangle(281,101,298,118,-fill=>'LightYellow1');
$canvas->createText(290,110,-text=>'');
$canvas->createRectangle(281,121,298,138,-fill=>'LightYellow1');
$canvas->createText(290,130,-text=>'');
$canvas->createRectangle(281,141,298,158,-fill=>'LightYellow1');
$canvas->createText(290,150,-text=>'');
$canvas->createRectangle(281,161,298,178,-fill=>'LightYellow1');
$canvas->createText(290,170,-text=>'');
$canvas->createRectangle(301,101,318,118,-fill=>'LightYellow1');
$canvas->createText(310,110,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(301,121,318,138,-fill=>'LightYellow1');
$canvas->createText(310,130,-text=>'');
$canvas->createRectangle(301,141,318,158,-fill=>'LightYellow1');
$canvas->createText(310,150,-text=>'');
$canvas->createRectangle(301,161,318,178,-fill=>'LightYellow1');
$canvas->createText(310,170,-text=>'');
$canvas->createRectangle(321,101,338,118,-fill=>'LightYellow1');
$canvas->createText(330,110,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(321,121,338,138,-fill=>'LightYellow1');
$canvas->createText(330,130,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(321,141,338,158,-fill=>'LightYellow1');
$canvas->createText(330,150,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(321,161,338,178,-fill=>'LightYellow1');
$canvas->createText(330,170,-text=>'');
$canvas->createRectangle(241,201,258,218,-fill=>'LightYellow1');
$canvas->createText(250,210,-text=>'');
$canvas->createRectangle(241,221,258,238,-fill=>'LightYellow1');
$canvas->createText(250,230,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(241,241,258,258,-fill=>'LightYellow1');
$canvas->createText(250,250,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(241,261,258,278,-fill=>'LightYellow1');
$canvas->createText(250,270,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(261,201,278,218,-fill=>'LightYellow1');
$canvas->createText(270,210,-text=>'');
$canvas->createRectangle(261,221,278,238,-fill=>'LightYellow1');
$canvas->createText(270,230,-text=>'');
$canvas->createRectangle(261,241,278,258,-fill=>'LightYellow1');
$canvas->createText(270,250,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(261,261,278,278,-fill=>'LightYellow1');
$canvas->createText(270,270,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(281,201,298,218,-fill=>'LightYellow1');
$canvas->createText(290,210,-text=>'');
$canvas->createRectangle(281,221,298,238,-fill=>'LightYellow1');
$canvas->createText(290,230,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(281,241,298,258,-fill=>'LightYellow1');
$canvas->createText(290,250,-text=>'');
$canvas->createRectangle(281,261,298,278,-fill=>'LightYellow1');
$canvas->createText(290,270,-text=>'');
$canvas->createRectangle(301,201,318,218,-fill=>'LightYellow1');
$canvas->createText(310,210,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(301,221,318,238,-fill=>'LightYellow1');
$canvas->createText(310,230,-text=>'');
$canvas->createRectangle(301,241,318,258,-fill=>'LightYellow1');
$canvas->createText(310,250,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(301,261,318,278,-fill=>'LightYellow1');
$canvas->createText(310,270,-text=>'');
$canvas->createRectangle(321,201,338,218,-fill=>'LightYellow1');
$canvas->createText(330,210,-text=>'');
$canvas->createRectangle(321,221,338,238,-fill=>'LightYellow1');
$canvas->createText(330,230,-text=>'');
$canvas->createRectangle(321,241,338,258,-fill=>'LightYellow1');
$canvas->createText(330,250,-text=>'');
$canvas->createRectangle(321,261,338,278,-fill=>'LightYellow1');
$canvas->createText(330,270,-text=>'');
$canvas->createRectangle(361,1,378,18,-fill=>'LightYellow1');
$canvas->createText(370,10,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(361,21,378,38,-fill=>'LightYellow1');
$canvas->createText(370,30,-text=>'');
$canvas->createRectangle(361,41,378,58,-fill=>'LightYellow1');
$canvas->createText(370,50,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(361,61,378,78,-fill=>'LightYellow1');
$canvas->createText(370,70,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(361,81,378,98,-fill=>'LightYellow1');
$canvas->createText(370,90,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(381,1,398,18,-fill=>'LightYellow1');
$canvas->createText(390,10,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(381,21,398,38,-fill=>'LightYellow1');
$canvas->createText(390,30,-text=>'');
$canvas->createRectangle(381,41,398,58,-fill=>'LightYellow1');
$canvas->createText(390,50,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(381,61,398,78,-fill=>'LightYellow1');
$canvas->createText(390,70,-text=>'');
$canvas->createRectangle(380,80,400,100,-fill=>'green');
$canvas->createRectangle(381,81,398,98,-fill=>'LightYellow1');
$canvas->createText(390,90,-text=>'0' , -font=>'-family times', -font=>'-size 14'  );
$canvas->createRectangle(401,1,418,18,-fill=>'LightYellow1');
$canvas->createText(410,10,-text=>'r', -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(400,20,420,40,-fill=>'green');
$canvas->createRectangle(401,21,418,38,-fill=>'LightYellow1');
$canvas->createText(410,30,-text=>'0' , -font=>'-family times', -font=>'-size 14'  );
$canvas->createRectangle(401,41,418,58,-fill=>'LightYellow1');
$canvas->createText(410,50,-text=>'');
$canvas->createRectangle(401,61,418,78,-fill=>'LightYellow1');
$canvas->createText(410,70,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(401,81,418,98,-fill=>'LightYellow1');
$canvas->createText(410,90,-text=>'');
$canvas->createRectangle(421,1,438,18,-fill=>'LightYellow1');
$canvas->createText(430,10,-text=>'');
$canvas->createRectangle(421,21,438,38,-fill=>'LightYellow1');
$canvas->createText(430,30,-text=>'');
$canvas->createRectangle(420,40,440,60,-fill=>'green');
$canvas->createRectangle(421,41,438,58,-fill=>'LightYellow1');
$canvas->createText(430,50,-text=>'0' , -font=>'-family times', -font=>'-size 14'  );
$canvas->createRectangle(421,61,438,78,-fill=>'LightYellow1');
$canvas->createText(430,70,-text=>'');
$canvas->createRectangle(421,81,438,98,-fill=>'LightYellow1');
$canvas->createText(430,90,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(441,1,458,18,-fill=>'LightYellow1');
$canvas->createText(450,10,-text=>'');
$canvas->createRectangle(441,21,458,38,-fill=>'LightYellow1');
$canvas->createText(450,30,-text=>'e'  , -font=>'-family times', -font=>'-size 14');
$canvas->createRectangle(441,41,458,58,-fill=>'LightYellow1');
$canvas->createText(450,50,-text=>'');
$canvas->createRectangle(441,61,458,78,-fill=>'LightYellow1');
$canvas->createText(450,70,-text=>'');
$canvas->createRectangle(441,81,458,98,-fill=>'LightYellow1');
$canvas->createText(450,90,-text=>'');
$canvas->update();
$canvas->postscript(-file=>'plotorg/org-t75.ps');
MainLoop;
