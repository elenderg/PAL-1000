unit nouns;

{$A+,B-,C-,D+,E-,F-,G+,H+,I-,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V-,W-,X+,Y+,Z1}

// Copyright © 1996, 1997, 1998 Perspective Technologies

// addenda				file  on disk: 	c:\PERSPECTIVE\ADDENDA
// configuration	file	on disk: 	c:\PERSPECTIVE\CONFIGURATION
// lock						file	on disk: 	c:\PERSPECTIVE\LOCK
// lexicon				file  on disk: 	c:\PERSPECTIVE\LEXICON
// sort						file	on disk:	c:\PERSPECTIVE\did\fid\SORT

// cabinet	      dir   on disk: 	c:\PERSPECTIVE\
// cabinet	      file  on disk: 	c:\PERSPECTIVE\INDEX
// drawer		      dir		on disk: 	c:\PERSPECTIVE\did\
// drawer		      file  on disk: 	c:\PERSPECTIVE\did\INDEX
// folder		      dir   on disk:	c:\PERSPECTIVE\did\fid\
// folder		      file  on disk: 	c:\PERSPECTIVE\did\fid\INDEX
// page			      file  on disk: 	c:\PERSPECTIVE\did\fid\pid

// last internal error 118

interface

uses windows,winspool,messages,sysutils,math,twain;

type
	// aligns are stored on disk
	xalign=(xnoalign,xbothalign,xcenteralign,xleftalign,xrightalign,xspreadalign); // 1 byte
	xbitmap=pointer;
	xbitmapinfoheader=tbitmapinfoheader;
	xboolean=bool; // 4 bytes
	xbutton=integer;
	xbyte=byte;
	xchar=char;
	xcharset=set of char;
	xclock=1..255;
	xcursor=(xnocursor,xarrowcursor,xhandcursor,xibeamcursor);
	// datatyps are stored on disk
	xdatatyp=(xnodata,xbooleandata,xcabinetdata,xdatedata,xdrawerdata,
		xfolderdata,xnumberdata,xpagedata,xstringdata,xtimedata,xsymboldata,xpicturedata);
	xdatatypset=set of xdatatyp;
	xdate=tdatetime;
	xdegree=extended;
	// device sequence is critical
	xdevice=(xdisplay,xmemory,xprinter,xscratch);
	xdeviceset=set of xdevice;
	xdir=(xnodir,xback,xbottom,xdown,xend,xfront,xhome,xhorz,xin,xleft,xout,
		xpagedown,xpageup,xright,xtop,xup,xvert);
	xdoodadtyp=(xnodoodad,xdefaultdoodad,xcabinetdoodad,xprinterdoodad,xscannerdoodad);
  xdword=longword;
	xedge=(xnoedge,xtopedge,xbottomedge);
	xedgeset=set of xedge;
	xeventtyp=(xnoevent,
		xactivateevent,xarrowkeyevent,xbackspacekeyevent,
		xcharkeyevent,xclickevent,xcommandkeyevent,xcursorevent,
		xdeactivateevent,xdeletekeyevent,xdoubleclickevent,
		xescapekeyevent,xpaintevent,xpositionkeyevent,xreturnkeyevent,xrightclickevent,
		xshiftkeyevent,xshutdownevent,xsleepevent,xstartupevent,xtabkeyevent);
	xextended=extended;
	// faces are stored on disk
	xface=(xnoface,xarialface,xcourierface,xtimesface); // 1 byte
	xfile=file;
	xhandle=(xnohandle,xtopleft,xtopright,xbottomright,xbottomleft);
  xhndl=thandle;
	xinstrtyp=(xnoinstr,xcheckparametersinstr,
		xexternalinstr,xjumpinstr,xjumpfalseinstr,xjumptrueinstr,xinternalinstr,
		xmarkinstr,xpopinstr,xpushconstantinstr,xpushreferenceinstr);
	xinteger=integer; // 4 bytes
	xitemtyp=(xnoitem,xchoiceitem,xcmditem,xsepitem);
	xkey=integer;
	xlink=pointer;
	xmag=extended;
	xmenutyp=(xnomenu,xbordermenu,xdrawermenu,xeditmenu,
		xfilemenu,xfillmenu,xfoldermenu,xfontmenu,xpagemenu,xpenmenu,
		xshapemenu,xspecialmenu,xviewmenu);
	// mixtures are stored on disk
	xmixture=(xnomix,xdark,xlight,xnormal);
	xnumber=currency;
	xobject=pointer;
	xparent=pointer;
	xpchar=pchar;
	// pigments are stored on disk
	xpigment=(xnopig,xblack,xblue,xclear,xgray,xgreen,xorange,xpurple,xred,xwhite,xyellow);
	xpointer=pointer;
	xpoint=tpoint; // 8 bytes
	xprop=(xnoprop,xalignprop,xarrowprop,xborderprop,xfaceprop,xfillprop,xfontprop,
		xmixtureprop,xpenprop,xpigmentprop,xsizeprop,xstyleprop);
	xquadrant=xhandle;
	xrecordtyp=(xnorecord,xarearecord,xblockrecord,xcabinetrecord,xchainrecord,
		xdoodadrecord,xdrawerrecord,xfolderrecord,xinstrrecord,xitemrecord,
		xlockrecord,xmenurecord,xpagerecord,xpopuprecord,
		xsectionrecord,xshaperecord,xstackrecord,xstoprecord,xsymbolrecord,xvaluerecord);
	xrect=trect; // 16 bytes
	xrgbquad=trgbquad;
	xrow=string;
	xscope=string;
	xsearchtyp=(xnosearch,xdeepsearch,xspellsearch,xwordsearch);
	xsectiontyp=(xnosection,xrectanglesection,xtextsection);
	// shapetyps are stored on disk
	xshapeop=(xnoshapeop,xbackspaceshapeop,xdeleteshapeop,
		xindentshapeop,xinsertshapeop,xoutdentshapeop);
	xshapetyp=(xnoshape,xarcshape,xcurveshape,xellipseshape,xgroupshape,
		xpolygonshape,xrectangleshape,xtextshape,xpictureshape);
	xshortinteger=smallint;
	xshortstring=shortstring;
	// sizes are stored on disk
	xsize=0..2880; // 2 bytes
	xsizeinpixels=0..288;
	xslice=(xnoslice,xcslice,xfslice,xnslice,xuslice,xvslice);
	xsorttyp=(xnosort,xdefaultsort,xgroupsort,xhorzsort,xnamesort,
		xspecialsort,xusersort,xversionsort,xvertsort);
	xstring=ansistring;
	// styles are stored on disk
	xstyle=(xnostyle,xboldstyle,xitalicstyle,xplainstyle); // 1 byte
	xsymtyp=(xnosym,xexternsym,xfoldersym,xglobalsym,xinternsym,xlocalsym,
		xmarksym,xpagesym);
	xtick=integer;
	xtime=tdatetime;
	xtimer=(xcarettimer,xsleeptimer);
	// toktyps must correspond with tokens
	xtoktyp=(xnotok,xamptok,xandtok,xbackwardstok,xbreaktok,
		xcarettok,xcasetok,xcetok,xcolontok,xcommatok,xcommenttok,xcontinuetok,
		xdashtok,xdivtok,xdotok,xdottok,
		xelsetok,xendtok,xeqtok,xexittok,xfalsetok,xfortok,xfunctiontok,
		xgetok,xglobaltok,xgttok,xidenttok,xiftok,xintok,
		xlbtok,xletok,xlinetok,xlocaltok,xlooptok,xlptok,xlstok,xlttok,
		xmodtok,xnetok,xniltok,xnottok,xnumtok,xortok,xplustok,
		xrbtok,xrepeattok,xreturntok,xreturnstok,xrptok,xrstok,
		xslashtok,xspacetok,xstartok,xstrtok,xtotok,xtruetok,
		xuntiltok,xwhentok,xwhiletok,xxortok);
	xtwit=integer;
	xvariant=variant;
	xvartyp=(xnovar,xdynamicvar,xmarkvar,xrefvar,xregvar,xstaticvar);
	xversion=integer;
	xvertex=0..30;
	// view sequence is critical
	xview=(xareaview,xblockview,xcabinetview,xdrawerview,xfolderview,xpageview);
	xword=word;

	// records

	xarea=^xarearec;
	xblock=^xblockrec;
	xcabinet=^xcabinetrec;
	xchain=^xchainrec;
	xdoodad=^xdoodadrec;
	xdrawer=^xdrawerrec;
	xfolder=^xfolderrec;
	xinstruction=^xinstructionrec;
	xitem=^xitemrec;
	xlock=^xlockrec;
	xmenu=^xmenurec;
	xpage=^xpagerec;
	xpopup=^xpopuprec;
	xrecord=^xrecordrec;
	xrows=^xrowsvec;
	xsection=^xsectionrec;
	xshape=^xshaperec;
	xstack=^xstackrec;
	xstop=^xstoprec;
	xsymbol=^xsymbolrec;
	xvalue=^xvaluerec;
	xvar=^xvarrec;

	// chains

	xblocks=^xblocksrec;
	xcabinets=^xcabinetsrec;
	xchains=^xchainsrec;
	xdoodads=^xdoodadsrec;
	xdrawers=^xdrawersrec;
	xfolders=^xfoldersrec;
	xinstructions=^xinstructionsrec;
	xitems=^xitemsrec;
	xpages=^xpagesrec;
	xpopups=^xpopupsrec;
	xrecords=^xrecordsrec;
	xsections=^xsectionsrec;
	xshapes=^xshapesrec;
	xstacks=^xstacksrec;
	xstops=^xstopsrec;
	xsymbols=^xsymbolsrec;
	xvalues=^xvaluesrec;
	xvariables=xstack;

	// functions and procedures

	xhandlerproc=procedure;
	xinternfunc=procedure;
	xparseproc=procedure;

	// static records

	xbyteary=array[1..high(xinteger)] of xbyte;
	xbytes=^xbyteary;

	xarc=record
		rect:xrect;
		angles:array[1..2] of xdegree;
		arrows:array[1..2] of xboolean;
		mag:xmag;
	end;

	xbitmapinfo=record
		header:xbitmapinfoheader;
		count:xinteger;
		bits:xbytes;
	end;

	xcaret=record
		hidden:xboolean;
		rect:xrect;
	end;

	xcode=record
		endmark:xinteger;
	end;

	xcolor=record // 2 bytes
		pigment:xpigment; mixture:xmixture;
	end;

	xcolorref=record
		r,g,b,f:xbyte;
	end;

	xcurve=record
		rect:xrect;
		count:xinteger; vertices:array[xvertex] of xpoint;
		arrows:array[1..2] of xboolean;
		mag:xmag;
	end;

	xdebug=record
		cid:xstring; did,fid,pid,sid,pos:xinteger;
		slice:xslice;
	end;

	xdrawerentry=record // 92 bytes
		case xinteger of
			00: (lastdid:xinteger);
			01: (did,level:xinteger; group:string[20]; name:string[40]; version:string[20]);
	end;
	xdrawerentryary=array[0..high(xinteger) div sizeof(xdrawerentry)-1] of xdrawerentry;
	xdrawerindex=^xdrawerentryary;

	xellipse=record // 16 bytes
		rect:xrect;
	end;

	xevent=record
		etyp:xeventtyp;
		gp,lp:xpoint;
		command,shift:xboolean;
		ascii:xchar;
		dir:xdir;
		// software
		area:xarea;
		drawer:xdrawer;
		folder:xfolder;
		handle:xhandle;
		menu:xmenu;
		page:xpage;
		shape:xshape;
		vertex:xvertex;
	end;

	xfield=packed record // 84 bytes
		rect:xrect;
		edge:xedge;
		dtyp:xdatatyp;
		align:xalign;
		name:string[20];
		value:string[40];
    pad:array [1..3] of byte; // 2.2C -> 2.3C change delphi 4 -> 7
	end;
	xfields=array[1..10] of xfield;

	xfolderentry=record // 92 bytes
		case xinteger of
			00: (lastfid:xinteger);
			01: (fid,level:xinteger; name:string[60]; version:string[20]);
	end;
	xfolderentryary=array[0..high(xinteger) div sizeof(xfolderentry)-1] of xfolderentry;
	xfolderindex=^xfolderentryary;

	xfont=record // 6 bytes
		face:xface; size:xsize; style:xstyle; align:xalign;
	end;

	xloop=record
		startmark,nextmark,endmark:xinteger;
	end;

	xpageentry=record // 848 bytes
		case xinteger of
			00: (lastpid:xinteger);
			01:	(pid,level:xinteger; fields:xfields);
	end;
	xpageentryary=array[0..high(xinteger) div sizeof(xpageentry)-1] of xpageentry;
	xpageindex=^xpageentryary;

	xparms=array[0..3] of xvariant;

	xpicturepalette=array[1..256] of xrgbquad;
	xpicture=record
		rect,bitmaprect,croprect:xrect;
		omap,dmap:xbitmapinfo; // dynamic;
		color:xcolor;
		brightness:xinteger;
		mag:xmag;
	end;

	xpolygon=record
		rect:xrect;
		count:xinteger; vertices:array[xvertex] of xpoint;
		arrows:array[1..2] of xboolean;
		mag:xmag;
	end;

	xposition=record col,row:xinteger; end;

	xprintparms=record
		title:xstring;
		copies:xinteger;
		auto,collate,reverse:xboolean;
	end;

	xrgb=packed record
		b,g,r:xbyte; // in this order because that's how they are in bitmaps
	end;

	xrowstats=record
		fsc,lsc:xinteger;
	end;

	xrowsvec=array[1..high(xinteger) div sizeof(xrow)] of xrow;

	xtext=record
		rect:xrect;
		font:xfont;
		margin,wrap,blocksel:xboolean;
		caretpos,anchor,caretwas:xposition;
		mag:xmag;
		colwidth,rowheight,tabsize:xtwit;
		editing:xboolean;
		large:xboolean; count,size:xinteger; rows:xrows;
	end;

	xtextstats=record
		fsr,lsr,fvr,lvr:xinteger;
		nc,na:xposition;
	end;

	xtoken=record
		ttyp:xtoktyp;
		bool:xboolean;
		num:xnumber;
		str:xstring;
	end;

	xvarrec=record
		vtyp:xvartyp;
		dtyp:xdatatyp;
		ref:xvar;
		obj:xobject;
	end;
                          
	xyuv=packed record
		y,u,v:xbyte;
	end;

	// dynamic records

	xarearec=record rtyp:xrecordtyp; parent:xparent; chain:xchain; prev,next:xarea;
		head,body,clip:xrect;
		title:xtext;
		edge:xedge;
		mag:xmag; snap:xtwit; slice:xslice; edges,grid:xboolean;
		saved:record slice:xslice; edges,grid:xboolean; end;
		undo,redo:record pages:xpages; texts:xshapes; end;
		view:xview; block:xblock; cabinet:xcabinet; drawer:xdrawer; folder:xfolder; page:xpage;
		// machine
		programs:xdrawer;
		source:record shape:xshape; slice:xslice; end;
		mark:xinteger; code:xcode; loop:xloop;
		abort:xboolean;
		debug:xdebug;
		global,local:record symbols:xsymbols; stack:xstack; end;
		ip:xinstruction;
	end;

	xblockrec=record rtyp:xrecordtyp; parent:xparent; chain:xblocks; prev,next:xblock;
		name:xstring;
		origin:xpoint;
		body,clip:xrect;
		rpb:xinteger;
		edit:xshape;
		modified:xboolean;
	end;

	xcabinetrec=record rtyp:xrecordtyp; parent:xparent; chain:xcabinets; prev,next:xcabinet;
		cid:xstring; name:xstring;
		origin:xpoint; body:xrect;
		lastsort:xsorttyp;
		ops:xinteger;
		drawers:xdrawers;
		extras:xdrawers;
	end;

	xchainrec=record rtyp:xrecordtyp; parent:xparent; chain:xchains; prev,next:xchain;
		opened:xboolean;
		case integer of
			00: (first,last:xobject);                             
			01: (firstarea,lastarea:xarea);
			02: (firstcabinet,lastcabinet:xcabinet);
			03: (firstchain,lastchain:xchain);
			04: (firstdrawer,lastdrawer:xdrawer);
			06: (firstfolder,lastfolder:xfolder);
			07: (firstinstruction,lastinstruction:xinstruction);
			08: (firstitem,lastitem:xitem);
			09: (firstmenu,lastmenu:xmenu);
			10: (firstpage,lastpage:xpage);
			11: (firstrecord,lastrecord:xrecord);
			12: (firstshape,lastshape:xshape);
			13: (firstsymbol,lastsymbol:xsymbol);
			14: (firstvalue,lastvalue:xvalue);
	end;

	xblocksrec=xchainrec;
	xcabinetsrec=xchainrec;
	xchainsrec=xchainrec;
	xdoodadsrec=xchainrec;
	xdrawersrec=xchainrec;
	xfoldersrec=xchainrec;
	xinstructionsrec=xchainrec;
	xitemsrec=xchainrec;
	xpagesrec=xchainrec;
	xpopupsrec=xchainrec;
	xrecordsrec=xchainrec;
	xsectionsrec=xchainrec;
	xshapesrec=xchainrec;
	xstacksrec=xchainrec;
	xstopsrec=xchainrec;
	xsymbolsrec=xchainrec;
	xvaluesrec=xchainrec;

	xdoodadrec=record rtyp:xrecordtyp; parent:xparent; chain:xdoodads; prev,next:xdoodad;
		dtyp:xdoodadtyp;
		name:xstring;                           // xcabinet,xdefault,xprinter,xscanner
		cid:xstring;                            // xcabinet
		device:xstring;                         // xprinter,xscanner
		centerfeed,postscript,reverse:xboolean; // xprinter
		rotate:xinteger;           							// xprinter
		maxwidth,xoffset,yoffset:xinteger;  		// xprinter
		cabinets:array[1..3] of xstring;        // xdefault
		printer:xstring;        								// xdefault
		scanner:xstring;        								// xdefault
	end;

	xdrawerrec=record rtyp:xrecordtyp; parent:xcabinet; chain:xdrawers; prev,next:xdrawer;
		cid:xstring; did,level:xinteger; group,name,version:xstring;
		origin:xpoint; head,body:xrect;
		lastsort:xsorttyp;
		ops:xinteger;
		sel,was,deep:xboolean;
		folders:xfolders;
	end;

	xfolderrec=record rtyp:xrecordtyp; parent:xdrawer; chain:xfolders; prev,next:xfolder;
		cid:xstring; did,fid,level:xinteger; name,version:xstring;
		origin:xpoint; head,body:xrect;
		lastsort:xstring;
		ops:xinteger;
		sel,was,deep:xboolean;
		poly,hilite:xpolygon;
		pages:xpages;
	end;

	xinstructionrec=record rtyp:xrecordtyp; parent:xparent; chain:xinstructions; prev,next:xinstruction;
		ityp:xinstrtyp;
		debug:xdebug;
		page:xpage; 				        		// xexternal
		intern:xinternfunc;		        	// xinternal
		pcount:xinteger;  		        	// xexternal,xinternal,xcheckparameters,xpop
		ip:xinstruction;              	// xjump,xjumpfalse,xjumptrue
		mark:xinteger;              		// xjump,xjumpfalse,xjumptrue,xmark
		pop:xboolean;					        	// xjumpfalse,xjumptrue
		dtyp:xdatatyp; data:xvariant; 	// xpushconstant
		stack:xstack; offset:xinteger;	// xpushreference
	end;

	xitemrec=record rtyp:xrecordtyp; parent:xparent; chain:xitems; prev,next:xitem;
		ityp:xitemtyp;
		rect:xrect;
		sel:xboolean;
		title,accel:xtext;
		check:xboolean;
		handler:xhandlerproc;
		parms:xparms;
	end;

	xlockrec=record rtyp:xrecordtyp; parent:xparent; chain:xchain; prev,next:xlock;
		cid:xstring; fcb:file; count:xinteger;
	end;

	xmenurec=record rtyp:xrecordtyp; parent:xparent; chain:xchain; prev,next:xmenu;
		mtyp:xmenutyp;
		head,body:xrect;
		sel:xboolean;
		title:xtext;
		items:xitems;
	end;

	xpagerec=record rtyp:xrecordtyp; parent:xfolder; chain:xpages; prev,next:xpage;
		cid:xstring; did,fid,pid,level:xinteger; fields:xfields;
		origin:xpoint; head,body:xrect;
		sel,was,deep,modified:xboolean;
		scale:xextended;
		mag:xmag; snap:xtwit; slice:xslice; edges,grid:xboolean;
		edit:xshape; dup:record inprogress:xboolean; offset:xpoint; end;
		lastsid:xinteger; shapes:xshapes; horzs,verts,names,specials:xstops;
	end;

	xpopuprec=record rtyp:xrecordtyp; parent:xparent; chain:xpopups; prev,next:xmenu;
		rect:xrect;
		choices:xitems;
	end;

	xrecordrec=record
		rtyp:xrecordtyp; parent:xparent; chain:xrecords; prev,next:xrecord;
	end;

	xsectionrec=record rtyp:xrecordtyp; parent:xparent; chain:xsections; prev,next:xsection;
		styp:xsectiontyp;
		rect:xrect;
		number:xinteger;
	end;

	xshaperec=record rtyp:xrecordtyp; parent:xparent; chain:xshapes; prev,next:xshape;
		sid:xinteger;
		secx,secy:xinteger;
		rect:xrect;
		sel,was,hidden:xboolean;
		border,fill,pen:xcolor;
		mag:xmag;
		// text only
		dtyp:xdatatyp;
		slice:xslice;
		slices:array[xslice] of record pos:xinteger; str:xstring; end;
		text:xtext; lastop:xshapeop;
		instrs:xinstructions; calculated,modified:xboolean;
		case styp:xshapetyp of
			xarcshape:				(arc:xarc);
			xcurveshape:			(curve:xcurve);
			xellipseshape:		(ellipse:xellipse);
			xgroupshape:			(shapes:xshapes);
			xpictureshape:		(picture:xpicture);
			xpolygonshape:		(polygon:xpolygon);
			xrectangleshape:	(rectangle:xrect);
	end;

	xstoprec=record rtyp:xrecordtyp; parent:xpage; chain:xstops; prev,next:xstop;
		shape:xshape;
	end;

	xstackrec=record rtyp:xrecordtyp; parent:xparent; chain:xstacks; prev,next:xstack;
		sf,so,sp:xinteger;
		vars:array[1..10000] of xvarrec;
	end;

	xsymbolrec=record rtyp:xrecordtyp; parent:xparent; chain:xsymbols; prev,next:xsymbol;
		styp:xsymtyp;
		scope:xscope;					// xdata,xextern,xglobal,xintern,xtemplate
		name:xstring;         // xdata,xextern,xglobal,xintern,xlocal,xtemplate
		offset:xinteger;      // xglobal,xlocal
		intern:xinternfunc;		// xintern
		page:xpage;						// xdata,xextern,xtemplate
	end;

	xvaluerec=record rtyp:xrecordtyp; parent:xparent; chain:xvalues; prev,next:xvalue;
		value:xstring;
	end;

const

	// event constants

	xfinalizeeventname='finalizeevent';
	xinitializeeventname='initializeevent';
	xmenueventname='menuevent';
  xnewpageeventname='newpageevent';

	// miscellaneous constants

	x00=chr(0);
	xblackcolor:xcolor=(pigment:xblack;	mixture:xnormal);
	xblankpicture:xpicture=(rect:(left:0; top:0; right:360; bottom:360); mag:1.0);
	xbluecolor:xcolor=(pigment:xblue;	mixture:xnormal);
	xchars=[chr($00)..chr($FF)];
	xclearcolor:xcolor=(pigment:xclear;	mixture:xnormal);
	xcodeformat='code';
	xcr=chr(13);
	xcrlf=chr(13)+chr(10);
	xdefaultbooleanformat='true|false';
	xdefaultdateformat='mm/dd/yyyy';
	xdefaultfont:xfont=(face:xarialface; size:180; style:xplainstyle; align:xleftalign);
	xdefaultnumberformat='9.zzzz';
	xdefaultprintername='default';
	xdefaultscannername='default';
	xdefaultscannerdevice='default';
	xdefaultstringformat='';
	xdefaulttimeformat='hh:mm:ss';
	xdigits=[chr($30)..chr($39)];
	xdkgraycolor:xcolor=(pigment:xgray;	mixture:xdark);
	xdq=chr(34);
	xdrawergrid=1080;
	xdrawerheight=1080;
	xdrawerwidth=1080;
	xdrps=3;
	xdsmentrystr='DSM_Entry'; // do not change case
	xet=chr(4);
	xff=chr(255);       //    C           B
	xfileversion:xversion=19980716; //19980324;
	xfileversionstring='C';
	xfoldergrid=360;
	xfolderheight=360;
	xfolderwidth=6120;
	xforever=false;
	xglobalsfoldername='globals';
	xgraycolor:xcolor=(pigment:xgray;	mixture:xnormal);
	xhhs=20;
	xhhsp=xhhs+20;
	xinputevents=[xarrowkeyevent,xbackspacekeyevent,
		xcharkeyevent,xclickevent,xcommandkeyevent,
		xdeactivateevent,xdeletekeyevent,xdoubleclickevent,xescapekeyevent,
		xpositionkeyevent,xreturnkeyevent,xrightclickevent,xshiftkeyevent,xtabkeyevent];
	xlf=chr(10);
	xlowers=[chr($61)..chr($7A),chr($9F),chr($E0)..chr($F6),chr($F8)..chr($FF)];
	xltbluecolor:xcolor=(pigment:xblue;	mixture:xlight);
	xltgraycolor:xcolor=(pigment:xgray;	mixture:xlight);
	xmaxcopies=1000;
	xmaxinteger:xinteger=2147483647;
	xmaxitems=26;
	xmaxnumber:xnumber=922337203685477.5807;
	xmaxshapeundos=25;
	xmaxundos=10;
	xmincopies=1;
	xmininteger:xinteger=-2147483647;
	xminnumber:xnumber=-922337203685477.5807;
	xmisc=[chr($B2)..chr($B3),chr($B9),chr($DF)];
	xname='PERSPECTIVE';
	xnamewithspaces='P E R S P E C T I V E';
	xnilcolor:xcolor=();
	xnildebug:xdebug=();
	xnilellipse:xellipse=();
	xnilfields:xfields=((),(),(),(),(),(),(),(),(),());
	xnilfont:xfont=();
	xnilloop:xloop=();
	xnilparms=0;
	xnilpicture:xpicture=();
	xnilpoint:xpoint=();
	xnilposition:xposition=();
	xnilrect:xrect=();
	xnilrowstats:xrowstats=();
	xniltextstats:xtextstats=();
	xniltoken:xtoken=();
	xnilvertices:array[1..2] of xtwit=(0,0);
	xnocenterfeedstr='nocenterfeed';
	xnopostscriptstr='nopostscript';
	xnoreversestr='noreverse';
	xpagegrid=180;
	xpageheight=180;
	xpagewidth=6120;
	xpicturesnap=30;
	xppi=72;	// pixels per inch
	xprogramsdrawergroup='perspective';
	xprogramsdrawername='programs';
	xprogramversionstring='2.3';
	xredcolor:xcolor=(pigment:xred; mixture:xnormal);
	xshadowwidth=30;
	xshiftscrollgrid=20;
	xsimpletypes=[xbooleandata,xdatedata,xnumberdata,xstringdata,xtimedata];
	xslices:array[xslice] of xstring=('','Code','Format','Name','Update','Value');
	xsorts:array[xsorttyp] of xstring=('','default','group','horz','name','special','user','version','vert');
	xsp=chr(32);
	xsq=chr(39);
	xsqs=[chr(39),chr(145),chr(146)];
	xtb=chr(09);
	xtd=chr(126);
	xtextmargin=40;
	// tokens must correspond with toktyps, see also getnextlanugagetoken
	xtokens:array[xtoktyp] of xstring=(
		'','&','and','backwards','break',
		'^','case',':=',':',',','','continue',
		'-','div','do','.',
		'else','end','=','exit','false','for','function',
		'>=','global','>','','if','in',
		'[','<=',xlf,'local','loop','(','{','<',
		'mod','<>','nil','not','','or','+',
		']','repeat',xcr,'returns',')','}',
		'/',' ','*','','to','true',
		'until','when','while','xor');
	xtpi=720;	// twits per inch
	xtpp=10;  // twits per pixel
	xtwaindllstr='twain_32.dll';
	xuppers=[chr($41)..chr($5A),chr($C0)..chr($D6),chr($D8)..chr($DE)];
	xwhitecolor:xcolor=(pigment:xwhite;	mixture:xnormal);
	xwtpi=144;
	xwtpp=2;
	xyescenterfeedstr='centerfeed';
	xyespostscriptstr='postscript';
	xyesreversestr='reverse';

const
	xfac=xtpi div xwtpi;
	xletters=xuppers+xlowers+xmisc;
	xmaxx=32767*xtpp;
	xmaxy=32767*xtpp;
	xminx=-32768*xtpp;
	xminy=-32768*xtpp;

var
	xareas:		    xchain;
	xbrushes:	    array[xpigment,xmixture] of hbrush;
	xbuffer:	    record pos,count,size:xinteger; bytes:xbytes; end;
	xbump:		    array[xdevice] of record x,y:xtwit; end;
	xca:			    xarea;
	xcarets:	    record state:xboolean; current:xcaret; stack:array[1..16] of xcaret; end;
	xce:			    xevent;
	xclip:		    record drawers:xdrawers; folders:xfolders; pages:xpages; shapes:xshapes; values:xvalues; end;
	xclocks:	    array[xclock] of record start,value:xtick; end;
	xcm:			    xmenu;
	xcmdline:	    record count:xinteger; commands:array[1..16] of xstring; end;
	xcolors:	    array[xpigment,xmixture] of tcolorref;
	xconfig:			record cid:xstring; opened:xboolean; doodads:xdoodads; end;
	xcursors:     record shapes:array[xcursor] of hcursor; current:xcursor; stack:array[1..16] of xcursor; end;
	xcx:			    xstring;
	xdcs:			    array[xdevice] of hdc;
	xdone:		    xboolean;
	xerr:			    xtext;
	xfocus:		    record active:xboolean; border:hpen; fill:hbrush; end;
	xfonts:		    array[xface,xsizeinpixels,xstyle] of hfont;
	xindex:		    record count,size:xinteger; case xinteger of 00:(entries:xbytes); 01:(drawerindex:xdrawerindex); 02:(folderindex:xfolderindex); 03:(pageindex:xpageindex); end;
	xleftbutton:	xinteger;
	xlexicon:	    record cid:xstring; opened:xboolean; words:array['a'..'z'] of xstring; addenda:xstring; suggestions:xvalues; end;
	xlocks:				xchain;
	xlogo:		    xrect;
	xmanager:	    record count:xinteger; old,new:tmemorymanager; end;
	xmenus:		    xchain;
	xmsg:			    xtext;
	xoldbitmaps:	array[xdevice] of hbitmap;
	xoldfields:	  record af,bf:xinteger; end;
	xoldpalettes:	array[xdevice] of hpalette;
	xpalettes:	  array[xdevice] of hpalette;
	xpens:		    array[xpigment,xmixture] of hpen;
	xprinting:    record canceled,error,inprogress:xboolean; clip:xrect; printer:xdoodad; devmode:pdevmode; end;
	xqueue:		    record closed:xboolean; count:xinteger; events:array[1..100] of xevent; end;
	xrightbutton:	xinteger;
	xsleeping:    xboolean;
	xscanning:		record inprogress:xboolean; color:xboolean; rect:xrect; res:xinteger; end=(inprogress:false; color:true; rect:(left:0; top:0; right:6120; bottom:7920); res:72);
	xscreen:	    record rect,head,body:xrect; end;
	xsearch:	    record styp:xsearchtyp; start:xview; entirepages:xboolean; page:xpage; value:xstring; debug:xdebug; error:xstring; end;
	xtemplates:		record drawing,form,func:xpage; end;
	xtok:			 		xtoken;
	xwindow:	 		hwnd;

// missing windows stuff

function  devicecapabilities(pdevice,port:pchar; fwcapability:word; poutput:pchar; pdevmode:pdevicemode):integer; stdcall; external 'winspool.drv' name 'DeviceCapabilitiesA';

// huge constant arrays

const
	xcolormap:array[0..32767] of xbyte=(
		001,036,036,036,036,036,036,036,036,036,072,072,072,072,072,072,108,108,108,108,234,234,234,144,144,144,144,144,144,180,180,180,
		006,006,036,036,036,036,036,036,036,036,072,072,072,072,072,072,108,108,108,108,234,234,234,144,144,144,144,144,144,180,180,180,
		006,006,006,036,036,036,036,036,036,036,072,072,072,072,072,072,108,108,108,108,234,234,234,144,144,144,144,144,144,180,180,180,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		012,012,012,048,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		012,012,012,048,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		012,012,012,048,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		012,012,012,048,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		231,231,231,048,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		231,231,231,231,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		231,231,231,231,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		231,231,231,054,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		018,018,018,054,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		018,018,018,054,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		018,018,018,054,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		018,018,018,054,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		230,230,230,230,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		230,230,230,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		230,230,230,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		024,024,024,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		024,024,024,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		024,024,024,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		024,024,024,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		030,030,030,066,066,066,066,066,066,066,102,102,102,102,102,102,138,138,138,138,138,138,174,174,174,174,174,174,174,210,210,210,
		030,030,030,066,066,066,066,066,066,066,102,102,102,102,102,102,138,138,138,138,138,138,174,174,174,174,174,174,174,210,210,210,
		030,030,030,066,066,066,066,066,066,066,102,102,102,102,102,102,138,138,138,138,138,138,174,174,174,174,174,174,174,210,210,210,
		001,001,036,036,036,036,036,036,036,036,072,072,072,072,072,072,108,108,108,108,234,234,234,144,144,144,144,144,144,180,180,180,
		001,001,036,036,036,036,036,036,036,036,072,072,072,072,072,072,108,108,108,108,234,234,234,144,144,144,144,144,144,180,180,180,
		006,006,006,036,036,036,036,036,036,036,072,072,072,072,072,072,108,108,108,108,234,234,234,144,144,144,144,144,144,180,180,180,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		012,012,012,048,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		012,012,012,048,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		012,012,012,048,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		012,012,012,048,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		231,231,231,048,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		231,231,231,231,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		231,231,231,231,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		231,231,231,054,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		018,018,018,054,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		018,018,018,054,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		018,018,018,054,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		018,018,018,054,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		230,230,230,230,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		230,230,230,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		230,230,230,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		024,024,024,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		024,024,024,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		024,024,024,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		024,024,024,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		030,030,030,066,066,066,066,066,066,066,102,102,102,102,102,102,138,138,138,138,138,138,174,174,174,174,174,174,174,210,210,210,
		030,030,030,066,066,066,066,066,066,066,102,102,102,102,102,102,138,138,138,138,138,138,174,174,174,174,174,174,174,210,210,210,
		030,030,030,066,066,066,066,066,066,066,102,102,102,102,102,102,138,138,138,138,138,138,174,174,174,174,174,174,174,210,210,210,
		001,001,001,036,036,036,036,036,036,036,072,072,072,072,072,072,108,108,108,108,234,234,234,144,144,144,144,144,144,180,180,180,
		001,001,001,036,036,036,036,036,036,036,072,072,072,072,072,072,108,108,108,108,234,234,234,144,144,144,144,144,144,180,180,180,
		001,001,001,036,036,036,036,036,036,036,072,072,072,072,072,072,108,108,108,108,234,234,234,144,144,144,144,144,144,180,180,180,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		006,006,006,042,042,042,042,042,042,042,078,078,078,078,078,078,114,114,114,114,114,114,150,150,150,150,150,150,150,186,186,186,
		012,012,012,048,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		012,012,012,048,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		012,012,012,048,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		012,012,012,048,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		231,231,231,048,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		231,231,231,231,048,048,048,048,048,048,084,084,084,084,084,084,120,120,120,120,120,120,156,156,156,156,156,156,156,192,192,192,
		231,231,231,231,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		231,231,231,054,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		018,018,018,054,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		018,018,018,054,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		018,018,018,054,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		018,018,018,054,054,054,054,054,054,054,090,090,090,090,090,090,126,126,126,126,126,126,162,162,162,162,162,162,162,198,198,198,
		230,230,230,230,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		230,230,230,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		230,230,230,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		024,024,024,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		024,024,024,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		024,024,024,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		024,024,024,060,060,060,060,060,060,060,096,096,096,096,096,096,132,132,132,132,132,132,168,168,168,168,168,168,168,204,204,204,
		030,030,030,066,066,066,066,066,066,066,102,102,102,102,102,102,138,138,138,138,138,138,174,174,174,174,174,174,174,210,210,210,
		030,030,030,066,066,066,066,066,066,066,102,102,102,102,102,102,138,138,138,138,138,138,174,174,174,174,174,174,174,210,210,210,
		030,030,030,066,066,066,066,066,066,066,102,102,102,102,102,102,138,138,138,138,138,138,174,174,174,174,174,174,174,210,210,210,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,238,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		231,231,231,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		231,231,231,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		230,230,230,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,238,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,238,238,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,238,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,238,238,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,238,238,238,238,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		013,013,013,049,049,049,049,049,049,238,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,238,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,238,238,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,238,238,238,238,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,238,238,238,238,238,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		013,013,013,049,049,049,049,049,238,238,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,238,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,238,238,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,238,238,238,238,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,238,238,238,238,238,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,238,238,238,238,238,239,239,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		013,013,013,049,049,049,049,238,238,239,239,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,239,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		007,007,007,043,043,043,043,043,043,043,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,043,238,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,238,238,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,238,238,238,238,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,238,238,238,238,238,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,238,238,238,238,238,239,239,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,238,238,238,238,238,239,239,239,239,239,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		013,013,013,049,049,049,238,238,239,239,239,239,239,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,239,239,239,239,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,239,239,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,239,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,049,085,085,085,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		001,001,001,037,037,037,037,037,037,037,073,073,073,073,073,073,109,109,109,109,109,109,145,145,145,145,145,145,145,181,181,181,
		007,007,007,043,043,043,043,043,043,238,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,043,238,238,079,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,043,238,238,238,238,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,043,238,238,238,238,238,079,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,043,238,238,238,238,238,239,239,079,079,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,043,238,238,238,238,238,239,239,239,239,239,079,079,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		007,007,007,238,238,238,238,238,239,239,239,239,239,239,219,219,115,115,115,115,115,115,151,151,151,151,151,151,151,187,187,187,
		013,013,013,049,049,238,238,239,239,239,239,239,239,219,219,219,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,239,239,239,239,239,219,219,219,219,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,239,239,239,219,219,219,219,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,239,239,219,219,219,219,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,219,219,219,219,085,085,085,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		013,013,013,049,049,049,049,049,049,219,219,219,085,085,085,240,121,121,121,121,121,121,157,157,157,157,157,157,157,193,193,193,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		019,019,019,055,055,055,055,055,055,055,091,091,091,091,091,091,127,127,127,127,127,127,163,163,163,163,163,163,163,199,199,199,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		025,025,025,061,061,061,061,061,061,061,097,097,097,097,097,097,133,133,133,133,133,133,169,169,169,169,169,169,169,205,205,205,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		031,031,031,067,067,067,067,067,067,067,103,103,103,103,103,103,139,139,139,139,139,139,175,175,175,175,175,175,175,211,211,211,
		002,002,002,038,038,038,038,038,038,038,074,074,074,074,074,074,110,110,110,110,110,110,146,146,146,146,146,146,146,182,182,182,
		002,002,002,038,038,038,038,038,038,038,074,074,074,074,074,074,110,110,110,110,110,110,146,146,146,146,146,146,146,182,182,182,
		002,002,002,038,038,038,038,038,038,038,074,074,074,074,074,074,110,110,110,110,110,110,146,146,146,146,146,146,146,182,182,182,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,238,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,238,238,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,238,238,239,239,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,238,238,239,239,239,239,239,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,238,238,239,239,239,239,239,239,219,219,219,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		014,014,014,050,050,050,050,239,239,239,239,239,219,219,219,219,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,239,239,239,219,219,219,219,086,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,239,239,219,219,219,219,086,086,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,219,219,219,086,086,086,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,219,219,086,086,086,240,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,219,086,086,086,240,240,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		002,002,002,038,038,038,038,038,038,038,074,074,074,074,074,074,110,110,110,110,110,110,146,146,146,146,146,146,146,182,182,182,
		002,002,002,038,038,038,038,038,038,038,074,074,074,074,074,074,110,110,110,110,110,110,146,146,146,146,146,146,146,182,182,182,
		002,002,002,038,038,038,038,038,038,038,074,074,074,074,074,074,110,110,110,110,110,110,146,146,146,146,146,146,146,182,182,182,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,239,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,239,239,239,239,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,239,239,239,239,239,219,219,219,219,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		014,014,014,050,050,050,050,050,239,239,239,219,219,219,219,086,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,239,239,219,219,219,219,086,086,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,219,219,219,086,086,086,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,219,219,086,086,086,240,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,219,086,086,086,240,240,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,086,086,086,240,240,240,240,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,240,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		002,002,002,038,038,038,038,038,038,038,074,074,074,074,074,074,110,110,110,110,110,110,146,146,146,146,146,146,146,182,182,182,
		002,002,002,038,038,038,038,038,038,038,074,074,074,074,074,074,110,110,110,110,110,110,146,146,146,146,146,146,146,182,182,182,
		002,002,002,038,038,038,038,038,038,038,074,074,074,074,074,074,110,110,110,110,110,110,146,146,146,146,146,146,146,182,182,182,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,239,239,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,239,239,239,219,219,219,219,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		014,014,014,050,050,050,050,050,239,239,219,219,219,219,086,086,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,219,219,219,086,086,086,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,219,219,086,086,086,240,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,219,086,086,086,240,240,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,086,086,086,240,240,240,240,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,050,086,086,240,240,240,240,240,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,240,240,241,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		002,002,002,038,038,038,038,038,038,038,074,074,074,074,074,237,237,110,110,110,110,110,146,146,146,146,146,146,146,182,182,182,
		002,002,002,038,038,038,038,038,038,038,074,074,074,074,074,237,237,110,110,110,110,110,146,146,146,146,146,146,146,182,182,182,
		002,002,002,038,038,038,038,038,038,038,074,074,074,074,074,237,237,110,110,110,110,110,146,146,146,146,146,146,146,182,182,182,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,239,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,239,239,219,219,219,219,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		014,014,014,050,050,050,050,050,050,219,219,219,219,086,086,086,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,219,219,086,086,086,240,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,219,086,086,086,240,240,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,086,086,086,240,240,240,240,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,050,086,086,240,240,240,240,240,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,050,086,240,240,240,240,240,241,241,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		020,020,020,056,056,056,056,056,056,056,092,092,092,240,240,241,241,241,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,241,241,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		002,002,002,038,038,038,038,038,038,038,074,074,074,074,237,237,237,237,110,110,110,110,146,146,146,146,146,146,146,182,182,182,
		002,002,002,038,038,038,038,038,038,038,074,074,074,074,237,237,237,237,110,110,110,110,146,146,146,146,146,146,146,182,182,182,
		002,002,002,038,038,038,038,038,038,038,074,074,074,074,237,237,237,237,110,110,110,110,146,146,146,146,146,146,146,182,182,182,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,237,237,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,219,219,219,219,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		014,014,014,050,050,050,050,050,050,219,219,219,086,086,086,240,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,219,086,086,086,240,240,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,086,086,086,240,240,240,240,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,050,086,086,240,240,240,240,240,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,050,086,240,240,240,240,240,241,241,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,050,240,240,240,240,240,241,241,241,241,122,122,122,158,158,158,158,158,158,158,194,194,194,
		020,020,020,056,056,056,056,056,056,056,092,092,240,240,241,241,241,241,241,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,241,241,241,241,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,241,241,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		002,002,002,038,038,038,038,038,038,038,074,074,074,237,237,237,237,237,237,110,110,110,146,146,146,146,146,146,146,182,182,182,
		002,002,002,038,038,038,038,038,038,038,074,074,074,237,237,237,237,237,237,110,110,110,146,146,146,146,146,146,146,182,182,182,
		002,002,002,038,038,038,038,038,038,038,074,074,074,237,237,237,237,237,237,110,110,110,146,146,146,146,146,146,146,182,182,182,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,237,237,237,237,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,044,080,080,080,080,080,080,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		008,008,008,044,044,044,044,044,044,219,219,219,080,080,080,240,116,116,116,116,116,116,152,152,152,152,152,152,152,188,188,188,
		014,014,014,050,050,050,050,050,050,219,219,086,086,086,240,240,122,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,219,086,086,086,240,240,240,240,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,050,086,086,240,240,240,240,240,122,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,050,086,240,240,240,240,240,241,241,122,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,050,240,240,240,240,240,241,241,241,241,122,122,122,158,158,158,158,158,158,158,194,194,194,
		014,014,014,050,050,050,050,050,050,240,240,240,240,240,241,241,241,241,241,241,122,122,158,158,158,158,158,158,158,194,194,194,
		020,020,020,056,056,056,056,056,056,056,092,240,240,241,241,241,241,241,241,242,242,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,241,241,241,241,241,242,242,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,241,241,241,242,242,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,241,242,242,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,242,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		020,020,020,056,056,056,056,056,056,056,092,092,092,092,092,092,128,128,128,128,128,128,164,164,164,164,164,164,164,200,200,200,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		026,026,026,062,062,062,062,062,062,062,098,098,098,098,098,098,134,134,134,134,134,134,170,170,170,170,170,170,170,206,206,206,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		032,032,032,068,068,068,068,068,068,068,104,104,104,104,104,104,140,140,140,140,140,140,176,176,176,176,176,176,176,212,212,212,
		003,003,003,039,039,039,039,039,039,039,075,075,075,237,237,237,237,237,237,111,111,111,147,147,147,147,147,147,147,183,183,183,
		003,003,003,039,039,039,039,039,039,039,075,075,075,237,237,237,237,237,237,111,111,111,147,147,147,147,147,147,147,183,183,183,
		003,003,003,039,039,039,039,039,039,039,075,075,075,237,237,237,237,237,237,111,111,111,147,147,147,147,147,147,147,183,183,183,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,237,237,237,237,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,240,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,240,240,241,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,240,240,241,241,241,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,240,240,241,241,241,241,241,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,240,240,241,241,241,241,241,241,242,242,123,159,159,159,159,159,159,159,195,195,195,
		021,021,021,057,057,057,057,057,057,057,093,093,241,241,241,241,241,241,242,242,242,242,165,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,241,241,241,241,242,242,242,242,242,165,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,241,241,242,242,242,242,242,129,165,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,242,242,242,242,242,129,129,165,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,242,242,242,242,129,129,129,165,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,242,242,129,129,129,243,243,165,165,165,165,165,165,201,201,201,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,243,243,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,141,141,141,141,177,177,177,177,177,177,177,213,213,213,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,141,141,141,141,177,177,177,177,177,177,177,213,213,213,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,141,141,141,141,177,177,177,177,177,177,177,213,213,213,
		003,003,003,039,039,039,039,039,039,039,075,075,075,075,237,237,237,237,111,111,111,111,147,147,147,147,147,147,147,183,183,183,
		003,003,003,039,039,039,039,039,039,039,075,075,075,075,237,237,237,237,111,111,111,111,147,147,147,147,147,147,147,183,183,183,
		003,003,003,039,039,039,039,039,039,039,075,075,075,075,237,237,237,237,111,111,111,111,147,147,147,147,147,147,147,183,183,183,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,237,237,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,241,241,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,241,241,241,241,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,241,241,241,241,241,242,242,123,123,159,159,159,159,159,159,159,195,195,195,
		021,021,021,057,057,057,057,057,057,057,093,093,093,241,241,241,241,242,242,242,242,242,165,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,241,241,242,242,242,242,242,129,165,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,242,242,242,242,242,129,129,165,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,242,242,242,242,129,129,129,165,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,242,242,129,129,129,243,243,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,242,129,129,129,243,243,243,165,165,165,165,165,165,201,201,201,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,243,243,243,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,141,141,141,141,177,177,177,177,177,177,177,213,213,213,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,141,141,141,141,177,177,177,177,177,177,177,213,213,213,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,141,141,141,141,177,177,177,177,177,177,177,213,213,213,
		003,003,003,039,039,039,039,039,039,039,075,075,075,075,075,237,237,111,111,111,111,111,147,147,147,147,147,147,147,183,183,183,
		003,003,003,039,039,039,039,039,039,039,075,075,075,075,075,237,237,111,111,111,111,111,147,147,147,147,147,147,147,183,183,183,
		003,003,003,039,039,039,039,039,039,039,075,075,075,075,075,237,237,111,111,111,111,111,147,147,147,147,147,147,147,183,183,183,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,241,241,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,241,241,241,242,242,123,123,123,159,159,159,159,159,159,159,195,195,195,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,241,241,242,242,242,242,242,129,165,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,242,242,242,242,242,129,129,165,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,242,242,242,242,129,129,129,165,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,242,242,129,129,129,243,243,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,242,129,129,129,243,243,243,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,129,129,129,243,243,243,243,165,165,165,165,165,165,201,201,201,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,243,243,243,244,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,141,141,141,229,229,177,177,177,177,177,177,213,213,213,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,141,141,141,229,229,177,177,177,177,177,177,213,213,213,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,141,141,141,229,229,177,177,177,177,177,177,213,213,213,
		003,003,003,039,039,039,039,039,039,039,075,075,075,075,075,075,111,111,111,111,111,111,147,147,147,147,147,147,147,183,183,183,
		003,003,003,039,039,039,039,039,039,039,075,075,075,075,075,075,111,111,111,111,111,111,147,147,147,147,147,147,147,183,183,183,
		003,003,003,039,039,039,039,039,039,039,075,075,075,075,075,075,111,111,111,111,111,111,147,147,147,147,147,147,147,183,183,183,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,241,242,242,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,242,242,242,242,242,129,129,165,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,242,242,242,242,129,129,129,165,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,242,242,129,129,129,243,243,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,242,129,129,129,243,243,243,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,129,129,129,243,243,243,243,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,129,129,243,243,243,243,244,244,165,165,165,165,165,201,201,201,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,243,243,243,244,244,244,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,244,244,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,229,229,171,171,171,171,171,171,207,207,207,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,141,141,229,229,229,177,177,177,177,177,177,213,213,213,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,141,141,229,229,229,177,177,177,177,177,177,213,213,213,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,141,141,229,229,229,177,177,177,177,177,177,213,213,213,
		003,003,003,039,039,039,039,039,039,039,075,075,075,075,075,075,111,111,111,111,111,111,147,147,147,147,147,147,147,183,183,183,
		003,003,003,039,039,039,039,039,039,039,075,075,075,075,075,075,111,111,111,111,111,111,147,147,147,147,147,147,147,183,183,183,
		003,003,003,039,039,039,039,039,039,039,075,075,075,075,075,075,111,111,111,111,111,111,147,147,147,147,147,147,147,183,183,183,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,242,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,242,242,242,242,129,129,129,165,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,242,242,129,129,129,243,243,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,242,129,129,129,243,243,243,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,129,129,129,243,243,243,243,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,129,129,243,243,243,243,244,244,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,129,243,243,243,243,244,244,244,165,165,165,165,165,201,201,201,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,243,243,243,244,244,244,244,244,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,244,244,244,244,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,244,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,229,229,229,171,171,171,171,171,171,207,207,207,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,141,229,229,229,229,177,177,177,177,177,177,213,213,213,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,141,229,229,229,229,177,177,177,177,177,177,213,213,213,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,141,229,229,229,229,177,177,177,177,177,177,213,213,213,
		003,003,003,039,039,039,039,039,039,039,075,075,075,075,075,075,111,111,111,111,111,111,236,236,236,147,147,147,147,183,183,183,
		003,003,003,039,039,039,039,039,039,039,075,075,075,075,075,075,111,111,111,111,111,111,236,236,236,147,147,147,147,183,183,183,
		003,003,003,039,039,039,039,039,039,039,075,075,075,075,075,075,111,111,111,111,111,111,236,236,236,147,147,147,147,183,183,183,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,236,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		009,009,009,045,045,045,045,045,045,045,081,081,081,081,081,081,117,117,117,117,117,117,153,153,153,153,153,153,153,189,189,189,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		015,015,015,051,051,051,051,051,051,051,087,087,087,087,087,087,123,123,123,123,123,123,159,159,159,159,159,159,159,195,195,195,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,242,242,129,129,129,243,243,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,242,129,129,129,243,243,243,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,129,129,129,243,243,243,243,165,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,129,129,243,243,243,243,244,244,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,129,243,243,243,243,244,244,244,165,165,165,165,165,201,201,201,
		021,021,021,057,057,057,057,057,057,057,093,093,093,093,093,093,243,243,243,243,244,244,244,244,244,165,165,165,165,201,201,201,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,243,243,243,244,244,244,244,244,244,218,218,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,244,244,244,244,244,218,218,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,244,244,218,218,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,218,218,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,218,171,171,171,171,171,171,207,207,207,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,135,135,135,171,171,171,171,171,171,232,232,232,232,
		027,027,027,063,063,063,063,063,063,063,099,099,099,099,099,099,135,135,135,229,229,229,229,171,171,171,171,171,232,232,232,232,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,229,229,229,229,229,177,177,177,177,177,232,232,232,232,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,229,229,229,229,229,177,177,177,177,177,177,213,213,213,
		033,033,033,069,069,069,069,069,069,069,105,105,105,105,105,105,141,141,229,229,229,229,229,177,177,177,177,177,177,213,213,213,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,236,236,236,236,236,236,148,148,184,184,184,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,236,236,236,236,236,236,148,148,184,184,184,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,236,236,236,236,236,236,148,148,184,184,184,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,236,236,236,236,236,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,243,243,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,243,243,243,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,243,243,243,244,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,243,243,243,244,244,244,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,243,243,243,244,244,244,244,244,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,243,243,243,244,244,244,244,244,244,218,218,166,166,202,202,202,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,243,243,244,244,244,244,244,244,218,218,218,218,218,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,244,244,244,244,218,218,218,218,218,172,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,244,244,218,218,218,218,218,172,172,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,218,218,218,218,218,172,172,172,232,232,232,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,218,218,218,218,172,172,172,232,232,232,232,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,218,218,172,172,172,246,232,232,232,232,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,229,229,229,229,172,172,172,246,246,232,232,232,232,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,229,229,229,229,229,178,178,178,178,178,232,232,232,232,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,229,229,229,229,229,178,178,178,178,178,178,232,232,232,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,229,229,229,229,229,178,178,178,178,178,178,214,214,214,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,236,236,236,236,236,148,148,148,184,184,184,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,236,236,236,236,236,148,148,148,184,184,184,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,236,236,236,236,236,148,148,148,184,184,184,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,236,236,236,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,244,244,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,244,244,244,244,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,244,244,244,244,244,218,218,166,166,166,202,202,202,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,244,244,244,244,218,218,218,218,218,172,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,244,244,218,218,218,218,218,172,172,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,218,218,218,218,218,172,172,172,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,218,218,218,218,172,172,172,246,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,218,218,172,172,172,246,246,232,232,232,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,218,172,172,172,246,246,232,232,232,232,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,172,172,172,246,246,246,232,232,232,232,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,178,178,232,232,232,232,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,178,178,178,214,214,214,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,178,178,178,214,214,214,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,236,236,236,236,148,148,148,148,184,184,184,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,236,236,236,236,148,148,148,148,184,184,184,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,236,236,236,236,148,148,148,148,184,184,184,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,236,236,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,244,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,244,244,218,218,166,166,166,166,202,202,202,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,244,244,218,218,218,218,218,172,172,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,218,218,218,218,218,172,172,172,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,218,218,218,218,172,172,172,246,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,218,218,172,172,172,246,246,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,218,172,172,172,246,246,246,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,172,172,172,246,246,246,246,232,232,232,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,172,172,246,246,246,246,232,232,232,232,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,178,178,232,232,232,232,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,178,178,178,214,214,214,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,178,178,178,214,214,214,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,112,236,236,148,148,148,148,148,184,184,184,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,112,236,236,148,148,148,148,148,184,184,184,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,112,236,236,148,148,148,148,148,184,184,184,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,236,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,218,218,166,166,166,166,166,202,202,202,
		228,228,228,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,218,218,218,218,218,172,172,172,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,218,218,218,218,172,172,172,246,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,218,218,172,172,172,246,246,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,218,172,172,172,246,246,246,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,172,172,172,246,246,246,246,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,172,172,246,246,246,246,247,232,232,232,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,172,246,246,246,246,247,247,232,232,232,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,178,247,247,232,232,232,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,178,178,178,214,214,214,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,178,178,178,214,214,214,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,112,236,148,148,148,148,148,148,184,184,184,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,112,236,148,148,148,148,148,148,184,184,184,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,112,236,148,148,148,148,148,148,184,184,184,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,218,166,166,166,166,166,166,202,202,202,
		228,228,228,228,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,218,218,218,218,172,172,172,246,208,208,208,
		228,228,228,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,218,218,172,172,172,246,246,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,218,172,172,172,246,246,246,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,172,172,172,246,246,246,246,208,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,172,172,246,246,246,246,247,247,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,172,246,246,246,246,247,247,247,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,246,246,246,246,247,247,247,247,232,232,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,247,247,247,247,214,214,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,178,178,247,214,214,214,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,178,178,178,214,214,214,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,112,148,148,148,148,148,148,148,184,184,184,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,112,148,148,148,148,148,148,148,184,184,184,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,112,148,148,148,148,148,148,148,184,184,184,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		228,228,228,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		228,228,228,228,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,218,218,172,172,172,246,246,208,208,208,
		228,228,228,228,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,218,172,172,172,246,246,246,208,208,208,
		228,228,228,228,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,172,172,172,246,246,246,246,208,208,208,
		228,228,228,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,172,172,246,246,246,246,247,247,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,172,246,246,246,246,247,247,247,208,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,246,246,246,246,247,247,247,247,247,208,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,246,246,246,247,247,247,247,247,217,217,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,247,247,247,247,217,217,217,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,178,247,217,217,217,214,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,178,178,217,217,214,214,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,112,148,148,148,148,148,148,148,184,184,184,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,112,148,148,148,148,148,148,148,184,184,184,
		004,004,004,040,040,040,040,040,040,040,076,076,076,076,076,076,112,112,112,112,112,112,148,148,148,148,148,148,148,184,184,184,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		010,010,010,046,046,046,046,046,046,046,082,082,082,082,082,082,118,118,118,118,118,118,154,154,154,154,154,154,154,190,190,190,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		016,016,016,052,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,160,196,196,196,
		224,224,224,224,052,052,052,052,052,052,088,088,088,088,088,088,124,124,124,124,124,124,160,160,160,160,160,160,235,235,235,235,
		224,224,224,224,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,235,235,235,235,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		022,022,022,058,058,058,058,058,058,058,094,094,094,094,094,094,130,130,130,130,130,130,166,166,166,166,166,166,166,202,202,202,
		228,228,228,228,058,058,058,058,058,058,094,094,094,094,094,223,223,130,130,130,130,130,220,220,166,166,166,166,166,202,202,202,
		228,228,228,228,064,064,064,064,064,064,100,100,100,100,223,223,223,223,136,136,136,220,220,220,220,220,246,246,246,208,208,208,
		228,228,228,228,064,064,064,064,064,064,100,100,100,100,223,223,223,223,136,136,136,220,220,220,220,246,246,246,246,208,208,208,
		228,228,228,228,064,064,064,064,064,064,100,100,100,100,100,223,223,136,136,136,136,136,220,220,246,246,246,246,247,247,208,208,
		228,228,228,228,064,064,064,064,064,064,100,100,100,100,100,223,223,136,136,136,136,136,220,246,246,246,246,247,247,247,208,208,
		228,228,228,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,246,246,246,246,247,247,247,247,247,208,
		228,228,228,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,246,246,246,247,247,247,247,247,217,217,
		028,028,028,064,064,064,064,064,064,064,100,100,100,100,100,100,136,136,136,136,136,136,246,246,247,247,247,247,247,217,217,217,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,247,247,247,247,217,217,217,216,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,247,217,217,217,216,216,
		034,034,034,070,070,070,070,070,070,070,106,106,106,106,106,106,142,142,142,142,142,142,178,178,178,178,178,217,217,216,216,216,
		005,005,005,041,041,041,041,041,041,041,077,077,077,077,077,077,113,113,113,113,113,113,149,149,149,149,149,149,149,185,185,185,
		005,005,005,041,041,041,041,041,041,041,077,077,077,077,077,077,113,113,113,113,113,113,149,149,149,149,149,149,149,185,185,185,
		005,005,005,041,041,041,041,041,041,041,077,077,077,077,077,077,113,113,113,113,113,113,149,149,149,149,149,149,149,185,185,185,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		017,017,017,053,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,161,197,197,197,
		017,017,017,053,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,161,197,197,197,
		017,017,017,053,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,161,197,197,197,
		017,017,017,053,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,161,197,197,197,
		224,224,224,053,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,161,235,235,235,
		224,224,224,224,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,235,235,235,235,
		224,224,224,224,059,059,059,059,059,059,095,095,095,095,095,095,131,131,131,131,131,131,167,167,167,167,167,167,235,235,235,235,
		224,224,224,059,059,059,059,059,059,059,095,095,095,095,095,095,131,131,131,131,131,131,167,167,167,167,167,167,167,235,235,235,
		023,023,023,059,059,059,059,059,059,059,095,095,095,095,095,095,131,131,131,131,131,131,167,167,167,167,167,167,167,203,203,203,
		023,023,023,059,059,059,059,059,059,059,095,095,095,095,095,095,131,131,131,131,131,131,167,167,167,167,167,167,167,203,203,203,
		023,023,023,059,059,059,059,059,059,059,095,095,095,095,095,095,131,131,131,131,131,131,167,167,167,167,167,167,167,203,203,203,
		228,228,228,059,059,059,059,059,059,059,095,095,095,095,223,223,223,131,131,131,131,131,220,220,220,167,167,167,167,203,203,203,
		228,228,228,228,065,065,065,065,065,065,101,101,101,223,223,223,223,223,223,137,137,220,220,220,220,220,220,173,173,209,209,209,
		228,228,228,228,065,065,065,065,065,065,101,101,101,101,223,223,223,223,137,137,137,220,220,220,220,220,173,173,173,209,209,209,
		228,228,228,228,065,065,065,065,065,065,101,101,101,101,223,223,223,223,137,137,137,220,220,220,220,173,173,173,247,209,209,209,
		228,228,228,065,065,065,065,065,065,065,101,101,101,101,101,223,223,137,137,137,137,137,220,220,173,173,173,247,247,247,209,209,
		029,029,029,065,065,065,065,065,065,065,101,101,101,101,101,223,223,137,137,137,137,137,220,173,173,173,247,247,247,247,209,209,
		029,029,029,065,065,065,065,065,065,065,101,101,101,101,101,101,137,137,137,137,137,137,173,173,173,247,247,247,247,217,217,217,
		029,029,029,065,065,065,065,065,065,065,101,101,101,101,101,101,137,137,137,137,137,137,173,173,247,247,247,247,217,217,217,216,
		035,035,035,071,071,071,071,071,071,071,107,107,107,107,107,107,143,143,143,143,143,143,179,179,179,247,247,217,217,217,216,216,
		035,035,035,071,071,071,071,071,071,071,107,107,107,107,107,107,143,143,143,143,143,143,179,179,179,179,179,217,217,216,216,216,
		035,035,035,071,071,071,071,071,071,071,107,107,107,107,107,107,143,143,143,143,143,143,179,179,179,179,179,217,216,216,216,216,
		005,005,005,041,041,041,041,041,041,041,077,077,077,077,077,077,113,113,113,113,113,113,149,149,149,149,149,149,149,185,185,185,
		005,005,005,041,041,041,041,041,041,041,077,077,077,077,077,077,113,113,113,113,113,113,149,149,149,149,149,149,149,185,185,185,
		005,005,005,041,041,041,041,041,041,041,077,077,077,077,077,077,113,113,113,113,113,113,149,149,149,149,149,149,149,185,185,185,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		017,017,017,053,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,161,197,197,197,
		017,017,017,053,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,161,197,197,197,
		017,017,017,053,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,161,197,197,197,
		017,017,017,053,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,161,197,197,197,
		224,224,224,053,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,161,235,235,235,
		224,224,224,224,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,235,235,235,235,
		224,224,224,224,059,059,059,059,059,059,095,095,095,095,095,095,131,131,131,131,131,131,167,167,167,167,167,167,235,235,235,235,
		224,224,224,059,059,059,059,059,059,059,095,095,095,095,095,095,131,131,131,131,131,131,167,167,167,167,167,167,167,235,235,235,
		023,023,023,059,059,059,059,059,059,059,095,095,095,095,095,095,131,131,131,131,131,131,167,167,167,167,167,167,167,203,203,203,
		023,023,023,059,059,059,059,059,059,059,095,095,095,095,095,095,131,131,131,131,131,131,167,167,167,167,167,167,167,203,203,203,
		023,023,023,059,059,059,059,059,059,059,095,095,095,095,095,095,131,131,131,131,131,131,167,167,167,167,167,167,167,203,203,203,
		023,023,023,059,059,059,059,059,059,059,095,095,095,095,223,223,223,131,131,131,131,131,220,220,220,167,167,167,167,203,203,203,
		228,228,228,065,065,065,065,065,065,065,101,101,101,223,223,223,223,223,223,137,137,220,220,220,220,220,220,173,173,209,209,209,
		029,029,029,065,065,065,065,065,065,065,101,101,101,101,223,223,223,223,137,137,137,220,220,220,220,220,173,173,173,209,209,209,
		029,029,029,065,065,065,065,065,065,065,101,101,101,101,223,223,223,223,137,137,137,220,220,220,220,173,173,173,173,209,209,209,
		029,029,029,065,065,065,065,065,065,065,101,101,101,101,101,223,223,137,137,137,137,137,220,220,173,173,173,173,173,209,209,209,
		029,029,029,065,065,065,065,065,065,065,101,101,101,101,101,223,223,137,137,137,137,137,220,173,173,173,173,173,247,209,209,209,
		029,029,029,065,065,065,065,065,065,065,101,101,101,101,101,101,137,137,137,137,137,137,173,173,173,173,173,247,217,217,217,209,
		029,029,029,065,065,065,065,065,065,065,101,101,101,101,101,101,137,137,137,137,137,137,173,173,173,173,247,217,217,217,216,216,
		035,035,035,071,071,071,071,071,071,071,107,107,107,107,107,107,143,143,143,143,143,143,179,179,179,179,179,217,217,216,216,216,
		035,035,035,071,071,071,071,071,071,071,107,107,107,107,107,107,143,143,143,143,143,143,179,179,179,179,179,217,216,216,216,216,
		035,035,035,071,071,071,071,071,071,071,107,107,107,107,107,107,143,143,143,143,143,143,179,179,179,179,179,179,216,216,216,215,
		005,005,005,041,041,041,041,041,041,041,077,077,077,077,077,077,113,113,113,113,113,113,149,149,149,149,149,149,149,185,185,185,
		005,005,005,041,041,041,041,041,041,041,077,077,077,077,077,077,113,113,113,113,113,113,149,149,149,149,149,149,149,185,185,185,
		005,005,005,041,041,041,041,041,041,041,077,077,077,077,077,077,113,113,113,113,113,113,149,149,149,149,149,149,149,185,185,185,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		011,011,011,047,047,047,047,047,047,047,083,083,083,083,083,083,119,119,119,119,119,119,155,155,155,155,155,155,155,191,191,191,
		017,017,017,053,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,161,197,197,197,
		017,017,017,053,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,161,197,197,197,
		017,017,017,053,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,161,197,197,197,
		017,017,017,053,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,161,197,197,197,
		224,224,224,053,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,161,235,235,235,
		224,224,224,224,053,053,053,053,053,053,089,089,089,089,089,089,125,125,125,125,125,125,161,161,161,161,161,161,235,235,235,235,
		224,224,224,224,059,059,059,059,059,059,095,095,095,095,095,095,131,131,131,131,131,131,167,167,167,167,167,167,235,235,235,235,
		224,224,224,059,059,059,059,059,059,059,095,095,095,095,095,095,131,131,131,131,131,131,167,167,167,167,167,167,167,235,235,235,
		023,023,023,059,059,059,059,059,059,059,095,095,095,095,095,095,131,131,131,131,131,131,167,167,167,167,167,167,167,203,203,203,
		023,023,023,059,059,059,059,059,059,059,095,095,095,095,095,095,131,131,131,131,131,131,167,167,167,167,167,167,167,203,203,203,
		023,023,023,059,059,059,059,059,059,059,095,095,095,095,095,095,131,131,131,131,131,131,167,167,167,167,167,167,167,203,203,203,
		023,023,023,059,059,059,059,059,059,059,095,095,095,095,223,223,223,131,131,131,131,131,220,220,220,167,167,167,167,203,203,203,
		029,029,029,065,065,065,065,065,065,065,101,101,101,223,223,223,223,223,223,137,137,220,220,220,220,220,220,173,173,209,209,209,
		029,029,029,065,065,065,065,065,065,065,101,101,101,101,223,223,223,223,137,137,137,220,220,220,220,220,173,173,173,209,209,209,
		029,029,029,065,065,065,065,065,065,065,101,101,101,101,223,223,223,223,137,137,137,220,220,220,220,173,173,173,173,209,209,209,
		029,029,029,065,065,065,065,065,065,065,101,101,101,101,101,223,223,137,137,137,137,137,220,220,173,173,173,173,173,209,209,209,
		029,029,029,065,065,065,065,065,065,065,101,101,101,101,101,223,223,137,137,137,137,137,220,173,173,173,173,173,173,209,209,209,
		029,029,029,065,065,065,065,065,065,065,101,101,101,101,101,101,137,137,137,137,137,137,173,173,173,173,173,173,217,217,209,209,
		029,029,029,065,065,065,065,065,065,065,101,101,101,101,101,101,137,137,137,137,137,137,173,173,173,173,173,217,217,216,216,216,
		035,035,035,071,071,071,071,071,071,071,107,107,107,107,107,107,143,143,143,143,143,143,179,179,179,179,179,217,216,216,216,216,
		035,035,035,071,071,071,071,071,071,071,107,107,107,107,107,107,143,143,143,143,143,143,179,179,179,179,179,179,216,216,216,215,
		035,035,035,071,071,071,071,071,071,071,107,107,107,107,107,107,143,143,143,143,143,143,179,179,179,179,179,179,216,216,215,215
	);

xpalette:array[0..247] of xrgb=(
	(b:000; g:000; r:000),
	(b:000; g:000; r:051),
	(b:000; g:000; r:102),
	(b:000; g:000; r:153),
	(b:000; g:000; r:204),
	(b:000; g:000; r:255),
	(b:000; g:051; r:000),
	(b:000; g:051; r:051),
	(b:000; g:051; r:102),
	(b:000; g:051; r:153),
	(b:000; g:051; r:204),
	(b:000; g:051; r:255),
	(b:000; g:102; r:000),
	(b:000; g:102; r:051),
	(b:000; g:102; r:102),
	(b:000; g:102; r:153),
	(b:000; g:102; r:204),
	(b:000; g:102; r:255),
	(b:000; g:153; r:000),
	(b:000; g:153; r:051),
	(b:000; g:153; r:102),
	(b:000; g:153; r:153),
	(b:000; g:153; r:204),
	(b:000; g:153; r:255),
	(b:000; g:204; r:000),
	(b:000; g:204; r:051),
	(b:000; g:204; r:102),
	(b:000; g:204; r:153),
	(b:000; g:204; r:204),
	(b:000; g:204; r:255),
	(b:000; g:255; r:000),
	(b:000; g:255; r:051),
	(b:000; g:255; r:102),
	(b:000; g:255; r:153),
	(b:000; g:255; r:204),
	(b:000; g:255; r:255),
	(b:051; g:000; r:000),
	(b:051; g:000; r:051),
	(b:051; g:000; r:102),
	(b:051; g:000; r:153),
	(b:051; g:000; r:204),
	(b:051; g:000; r:255),
	(b:051; g:051; r:000),
	(b:051; g:051; r:051),
	(b:051; g:051; r:102),
	(b:051; g:051; r:153),
	(b:051; g:051; r:204),
	(b:051; g:051; r:255),
	(b:051; g:102; r:000),
	(b:051; g:102; r:051),
	(b:051; g:102; r:102),
	(b:051; g:102; r:153),
	(b:051; g:102; r:204),
	(b:051; g:102; r:255),
	(b:051; g:153; r:000),
	(b:051; g:153; r:051),
	(b:051; g:153; r:102),
	(b:051; g:153; r:153),
	(b:051; g:153; r:204),
	(b:051; g:153; r:255),
	(b:051; g:204; r:000),
	(b:051; g:204; r:051),
	(b:051; g:204; r:102),
	(b:051; g:204; r:153),
	(b:051; g:204; r:204),
	(b:051; g:204; r:255),
	(b:051; g:255; r:000),
	(b:051; g:255; r:051),
	(b:051; g:255; r:102),
	(b:051; g:255; r:153),
	(b:051; g:255; r:204),
	(b:051; g:255; r:255),
	(b:102; g:000; r:000),
	(b:102; g:000; r:051),
	(b:102; g:000; r:102),
	(b:102; g:000; r:153),
	(b:102; g:000; r:204),
	(b:102; g:000; r:255),
	(b:102; g:051; r:000),
	(b:102; g:051; r:051),
	(b:102; g:051; r:102),
	(b:102; g:051; r:153),
	(b:102; g:051; r:204),
	(b:102; g:051; r:255),
	(b:102; g:102; r:000),
	(b:102; g:102; r:051),
	(b:102; g:102; r:102),
	(b:102; g:102; r:153),
	(b:102; g:102; r:204),
	(b:102; g:102; r:255),
	(b:102; g:153; r:000),
	(b:102; g:153; r:051),
	(b:102; g:153; r:102),
	(b:102; g:153; r:153),
	(b:102; g:153; r:204),
	(b:102; g:153; r:255),
	(b:102; g:204; r:000),
	(b:102; g:204; r:051),
	(b:102; g:204; r:102),
	(b:102; g:204; r:153),
	(b:102; g:204; r:204),
	(b:102; g:204; r:255),
	(b:102; g:255; r:000),
	(b:102; g:255; r:051),
	(b:102; g:255; r:102),
	(b:102; g:255; r:153),
	(b:102; g:255; r:204),
	(b:102; g:255; r:255),
	(b:153; g:000; r:000),
	(b:153; g:000; r:051),
	(b:153; g:000; r:102),
	(b:153; g:000; r:153),
	(b:153; g:000; r:204),
	(b:153; g:000; r:255),
	(b:153; g:051; r:000),
	(b:153; g:051; r:051),
	(b:153; g:051; r:102),
	(b:153; g:051; r:153),
	(b:153; g:051; r:204),
	(b:153; g:051; r:255),
	(b:153; g:102; r:000),
	(b:153; g:102; r:051),
	(b:153; g:102; r:102),
	(b:153; g:102; r:153),
	(b:153; g:102; r:204),
	(b:153; g:102; r:255),
	(b:153; g:153; r:000),
	(b:153; g:153; r:051),
	(b:153; g:153; r:102),
	(b:153; g:153; r:153),
	(b:153; g:153; r:204),
	(b:153; g:153; r:255),
	(b:153; g:204; r:000),
	(b:153; g:204; r:051),
	(b:153; g:204; r:102),
	(b:153; g:204; r:153),
	(b:153; g:204; r:204),
	(b:153; g:204; r:255),
	(b:153; g:255; r:000),
	(b:153; g:255; r:051),
	(b:153; g:255; r:102),
	(b:153; g:255; r:153),
	(b:153; g:255; r:204),
	(b:153; g:255; r:255),
	(b:204; g:000; r:000),
	(b:204; g:000; r:051),
	(b:204; g:000; r:102),
	(b:204; g:000; r:153),
	(b:204; g:000; r:204),
	(b:204; g:000; r:255),
	(b:204; g:051; r:000),
	(b:204; g:051; r:051),
	(b:204; g:051; r:102),
	(b:204; g:051; r:153),
	(b:204; g:051; r:204),
	(b:204; g:051; r:255),
	(b:204; g:102; r:000),
	(b:204; g:102; r:051),
	(b:204; g:102; r:102),
	(b:204; g:102; r:153),
	(b:204; g:102; r:204),
	(b:204; g:102; r:255),
	(b:204; g:153; r:000),
	(b:204; g:153; r:051),
	(b:204; g:153; r:102),
	(b:204; g:153; r:153),
	(b:204; g:153; r:204),
	(b:204; g:153; r:255),
	(b:204; g:204; r:000),
	(b:204; g:204; r:051),
	(b:204; g:204; r:102),
	(b:204; g:204; r:153),
	(b:204; g:204; r:204),
	(b:204; g:204; r:255),
	(b:204; g:255; r:000),
	(b:204; g:255; r:051),
	(b:204; g:255; r:102),
	(b:204; g:255; r:153),
	(b:204; g:255; r:204),
	(b:204; g:255; r:255),
	(b:255; g:000; r:000),
	(b:255; g:000; r:051),
	(b:255; g:000; r:102),
	(b:255; g:000; r:153),
	(b:255; g:000; r:204),
	(b:255; g:000; r:255),
	(b:255; g:051; r:000),
	(b:255; g:051; r:051),
	(b:255; g:051; r:102),
	(b:255; g:051; r:153),
	(b:255; g:051; r:204),
	(b:255; g:051; r:255),
	(b:255; g:102; r:000),
	(b:255; g:102; r:051),
	(b:255; g:102; r:102),
	(b:255; g:102; r:153),
	(b:255; g:102; r:204),
	(b:255; g:102; r:255),
	(b:255; g:153; r:000),
	(b:255; g:153; r:051),
	(b:255; g:153; r:102),
	(b:255; g:153; r:153),
	(b:255; g:153; r:204),
	(b:255; g:153; r:255),
	(b:255; g:204; r:000),
	(b:255; g:204; r:051),
	(b:255; g:204; r:102),
	(b:255; g:204; r:153),
	(b:255; g:204; r:204),
	(b:255; g:204; r:255),
	(b:255; g:255; r:000),
	(b:255; g:255; r:051),
	(b:255; g:255; r:102),
	(b:255; g:255; r:153),
	(b:255; g:255; r:204),
	(b:255; g:255; r:255),

	(b:240; g:240; r:240), // gray 		light
	(b:234; g:234; r:234), // gray 		light with shift
	(b:192; g:192; r:192), // gray 		normal
	(b:096; g:096; r:096), // gray 		dark
	(b:192; g:192; r:255), // red 		light
	(b:000; g:000; r:255), // red 		normal
	(b:000; g:000; r:204), // red 		dark
	(b:128; g:192; r:255), // orange 	light
	(b:000; g:128; r:255), // orange 	normal
	(b:051; g:102; r:153), // orange 	dark
	(b:204; g:255; r:255), // yellow 	light
	(b:000; g:255; r:255), // yellow 	normal
	(b:000; g:192; r:224), // yellow 	dark
	(b:160; g:255; r:160), // green 	light
	(b:000; g:192; r:000), // green 	normal
	(b:000; g:128; r:000), // green 	dark
	(b:255; g:224; r:192), // blue 		light
	(b:255; g:000; r:000), // blue 		normal
	(b:160; g:000; r:000), // blue 		dark
	(b:255; g:128; r:255), // purple	light
	(b:192; g:000; r:192), // purple 	normal
	(b:128; g:000; r:128), // purple 	dark

	(b:064; g:064; r:064),
	(b:080; g:080; r:080),
	//(b:096; g:096; r:096),
	(b:112; g:112; r:112),
	(b:128; g:128; r:128),
	(b:144; g:144; r:144),
	(b:160; g:160; r:160),
	(b:176; g:176; r:176),
	//(b:192; g:192; r:192),
	(b:160; g:160; r:160),
	(b:208; g:208; r:208),
	(b:224; g:224; r:224)
	//(b:240; g:240; r:240)
);

implementation

end.

{ version release notes }

  { 2.1 -> 2.2 }
  // changed xslapshape to indent the slap rect if the shap is the current edit shape
  // because the memory bitmap can be messed up by the new way menu tracking is done
  // and because the border of an edit shape is usually not drawn by drawtext

  { 2.2 -> 2.3 }
  // now call setarcdirection to ad_counterclockwise before drawing arcs
  // supposedly the default was counterclockwise, but we were getting inside out arcs

{ configuration ebnf }

// config 			= cabinet | default | printer | scanner
// cabinet			= 'cabinet' name path
// comment			= '{' { character-cr-'}' } '}' | cr
// default			= 'default' windowscomputername cabinetname cabinetname cabinetname printername scannername
// device				= windowsprintername | windowsscannername
// name					= character-sp { character-sp }
// path					= windows path
// printer			= 'printer' name device ( 'postscript' | 'nopostscript' ) ( 'center' | 'nocenter' )
//								( 'reverse' | 'noreverse' ) ( '0' | '90' | '270' ) [ maxwidth xoffset yoffset ]
// scanner			= 'scanner' name device

{ data ebnf }

// boolean	   	= boolean
// color		   	= pigment mixture
// extended	   	= extended
// font			   	= face size style align
// integer	   	= integer
// point		   	= x y
// rect			   	= left top right bottom
// string		   	= count { char }

// pm.arc				= rect angle1 angle2 arrow1 arrow2
// pm.curve			= pm.polygon
// pm.ellipse		= rect
// pm.picture		= rect bitmaprect bitmapinfo count { byte } color brightness
// pm.polygon   = rect count { point } arrow1 arrow2
// pm.rectangle	= rect
// pm.text			= pm.rect font margin wrap

// arc					= border fill pm.arc
// curve				= border fill pm.curve
// ellipse		  = border fill pm.ellipse
// group		   	= count { shape }
// picture	   	= border fill nameslice pm.polygon
// polygon	   	= border fill pm.picture
// rectangle   	= border fill rect
// text			   	= border fill pen slices dtyp pm.text

// dentry				= { did level group name version }
// dindex				=	{ dentry }
// fentry				= { fid level name version }
// findex				=	{ fentry }
// page					= { level body scale lastsid shapes }
// pentry				= { pid level fields }
// pindex				=	{ pentry }
// shape				= sid styp ( arc | curve | ellipse | group | picture | polygon | rectangle | text )
// shapes				= count { shape }

// lexicon			= { word phonex xcrlf }
// lock					= fver
// sort					= name [ xcrlf name ]

{ format ebnf }

// boolean	= { char } | { char }
// date 		= 'm' | 'mm' | 'mmm' | 'mmmm' dsep 'd' | 'dd' dsep 'yy' | 'yyyy'
// dsep			= ' ' | '-' | '/' | ',' [ dsep ]
// number		= [ '$' ] { 'z' | '9' | ',' } [ '.' { 'z' | '9' } ]
// time 		= 'h' | 'hh' | [ tsep 'm' | 'mm' [ tsep 's' | 'ss' ] ] [ tsep 'am' | 'pm' ]
// tsep			= ' ' | ':' [ tsep ]

{ pop up ebnf }

// popup		= { char | '|' }

{ language ebnf }

// function						= 'function' identifier [ '(' identifierlist ')' ]
//											[ 'returns' identifier ] 'do' { local } { statement } 'end'
// assignment					= variable ':=' expression
// break							= 'break'
// boolean  					= 'false' | 'true'
// booleanexpression	= expression
// booleanoperator  	= 'and' | 'or' | 'xor'
// case  							= 'case' expression 'do' { 'when' expression 'do' { statement } 'end' }
// 											[ 'else' { statement } ] 'end'
// comment						= '{' { character-cr-'}' } '}' | cr
// comparisonoperator	= '=' | '<>' | '>' | '>=' | '<' | '<='
// complexexpression 	= simpleexpression { comparisonoperator simpleexpression }
// continue						= 'continue'
// dataname						= name
// exit								= 'exit'
// expression 				= superexpression [ ':=' expression ]
// folderidentifier		= identifier
// for  							= 'for' localname ':=' numberexpression 'to' numberexpression
//											[ 'backwards' ] 'do' { statement } 'end'
// 		  							| 'for' localname 'in' expression [ 'backwards' ] 'do' { statement } 'end'
// functioncall				= ( externalname | internal ) [ '(' expressionlist ')' ]
// externalname				= name
// global  						= 'global' identifierlist
// globalname				  = name
// identifier					= letter { character }
// if  								= 'if' booleanexpression 'do' { statement } [ 'else' { statement } ] 'end'
// internalname				= name
// ...list  					= token { ',' token }
// local  						= 'local' identifierlist
// localname    			= name
// loop  							= 'loop' { statement } 'end'
// name								= [ folderidentifier ':' ] identifier
// number  						= digit { digit } [ '.' { digit } ]
// numberexpression		= expression
// repeat  						= 'repeat' { statement } 'until' booleanexpression
// selector						= '.' identifier | '[' expression ']'
// shapename					= name
// simpleexpression  	= term { simpleoperator term }
// simpleoperator  		= '+' | '-' | '*' | '/' | '^' | 'div' | 'mod'
// statement  				= assignment
//										| break
//										| case
//										| continue
//										| exit
//										| expression
//										| for
// 										| functioncall
//										| global
//										| if
//										| loop
//										| repeat
//										| while
// string  						= ''' { character-cr-sq | '''' } '''
// superexpression 		= complexexpression { booleanoperator complexexpression }
// templatename				= name
// term  							= boolean
//										| number
//										| string
//										| 'nil'
//										| 'not' term
//										| '(' expression ')'
//										| ( '-' | '+'	) term
//										| '&' ( externalname | internalname )
// 										| functioncall
// 										| variable
// while  						= 'while' booleanexpression 'do' { statement } 'end'
// variable						= functioncall selector { selector }
//										| ( 'thispage' | globalname | localname | dataname | shapename | templatename ) { selector }

{ date and time }

// ctd(simpletyp):date
// ctt(simpletyp):time
// formatdate(date,format):string
// formattime(time,format):string
// getdate:date
// getday(date):number
// getdayofweek(date):number 1=sunday..7=saturday
// gethours(time):number
// getminutes(time):number
// getmonth(date):number
// getseconds(time):number
// gettime:time
// getyear(date):number

{ file system }

// closecabinet(cabinet):boolean
// closedrawer(drawer):boolean
// closefolder(folder):boolean
// closepage(page):boolean
// copydrawer(cabinet,drawer [ ',' after ] ):drawer
// copyfolder(drawer,folder [ ',' after ] ):folder
// copypage(folder,page [ ',' after ] ):page
// createpage(template):page
// deletedrawer(drawer):boolean
// deletefolder(folder):boolean
// deletepage(page):boolean
// destroypage(page)
// filepage(folder,page [ ',' after ] ):boolean
// finddrawer(cabinet,g,n [ ',' v ] ):drawer
// findfolder(drawer,n [ ',' v ] ):folder
// findpage(folder,fieldname,value):page
// getdrawercount(cabinet):number
// getfoldercount(drawer):number
// getpagecount(folder):number
// lock(cabinetname):boolean
// newdrawer(cabinet,g,n,v [ ',' after ] ):drawer
// newfolder(drawer,n,v [ ',' after ] ):folder
// newpage(folder,template [ ',' after ] ):page
// opencabinet(cabinetname):cabinet
// opendrawer(drawer):boolean
// openfolder(folder):boolean
// openpage(page):boolean
// printpage(printername,page,auto):boolean
// renamedrawer(drawer,g,n,v):boolean
// renamefolder(folder,n,v):boolean
// replicatepage(page):page
// savepage(page):boolean
// sortdrawers(cabinet,sorttyp)
// sortfolders(drawer,sorttyp)
// sortpages(folder,name)
// unfilepage(page):boolean
// unlock(cabinetname)
// unlockall
// updatepage(page):boolean
// xcx:string

{ interface }

// additem(menutype,name,commandkey,pagename | &internalname)
// addseparator(menutype)
// beep
// blink
// dialog(prompt,default,trim,nulls,last,var answer):boolean
// drawmenubar
// drawworkarea
// error([simpletyp] {',' simpletyp})
// getfirstselecteddrawer(cabinet):drawer
// getfirstselectedfolder(drawer):folder
// getfirstselectedpage(folder):page
// getlastselecteddrawer(cabinet):drawer
// getlastselectedfolder(drawer):folder
// getlastselectedpage(folder):page
// getselecteddrawercount(cabinet):number
// getselectedfoldercount(drawer):number
// getselectedpagecount(folder):number
// message([simpletyp] {',' simpletyp})
// selectdrawer(drawer,select)
// selectdrawers(cabinet,select)
// selectfolder(folder,select)
// selectfolders(drawer,select)
// selectpage(page,select)
// selectpages(folder,select)
// viewcabinet(cabinet,drawer)
// viewdrawer(drawer,folder)
// viewfolder(folder,page)
// viewpage(page)
// warning([simpletyp] {',' simpletyp})
// xcc:cabinet
// xcd:drawer
// xcf:folder
// xcp:page
// xcv:viewtyp


{ miscellaneous }

// ctb(simpletyp):boolean
// formatboolean(boolean,format):string
// getticks:number : in seconds
// makecountmessage(number,singular,plural):string
// pause(seconds)
// random(min:integer,max:integer):number
// randomize[(seed)]
// upperbound(shape):number

{ number }

// abs(number):number
// arccos(number):number
// arcsin(number):number
// arctan(number):number
// cos(number):number
// ctn(simpletyp):number
// dec(number[',' number ])
// degreetoradian(number):number
// formatnumber(number,format):string
// frac(number):number
// inc(number[',' number ])
// log(number,base):number
// max(btyp,btyp):btyp
// min(btyp,btyp):btyp
// radiantodegree(number):number
// round(number):number
// rounddown(number):number
// roundup(number):number
// sin(number):number
// sqrt(number):number
// tan(number):number
// trunc(number):number

{ statistical }

// avg(shape):number
// count(shape):number
// max(shape):number
// min(shape):number
// sum(shape):number

{ string }

// chr(number):char
// cts(simpletyp):string
// delete(string,pos,count):string
// fillleft(string,char,count):string
// fillright(string,char,count):string
// insert(string,insertstr,pos):string
// lcase(string):string
// left(string,count):string
// len(string):number
// mid(string,start,count):string
// ord(char):number
// pos(substr,string):number
// removeleading(string,char{',' char}):string
// removetrailing(string,char{',' char}):string
// right(string,count):string
// ucase(string):string

{ text file }

// deletefile(name):boolean
// gnt(string,var pos,wantdelims,delim{',' delim}):string
// gpt(string,var pos,wantdelims,delim{',' delim}):string
// gettoken(string,number,wantdelims,delim{',' delim}):string
// newfile(name):boolean
// readfile(name,var string):boolean
// removeunwanted(string):string
// renamefile(oldname,newname):boolean
// writefile(name,string):boolean

{ cabinet properties }

// first
// last
// name

{ drawer properties }

// cabinet
// first
// group
// last
// name
// next
// prev
// sel
// version

{ folder properties }

// drawer
// first
// last
// name
// next
// prev
// sel
// version

{ page properties }

// folder
// next
// prev
// sel

// shapes
// fields

{ events }

// initializeevent
// finalizeevent
// menuevent
// newpageevent(page)

{ character constants }

// x00
// xcr
// xcrlf
// xlf
// xsp
// xsq
// xtb

{ menu constants }

// filemenu
// pagemenu
// specialmenu

{ view constants }

// areaview
// cabinetview
// drawerview
// folderview
// pageview

{ miscellanous constants }

// blank - blank picture

{ command keys }

// 0 - user assigned
// 1 - user assigned
// 2 - user assigned
// 3 - user assigned
// 4 - user assigned
// 5 - user assigned
// 6 - user assigned
// 7 - user assigned
// 8 - user assigned
// 9 - user assigned
// A - select all
// B - bottom edges / bottom of page
// C - copy
// D - duplicate
// E - enlarge
// F - find
// G - group
// H - fill right
// I - fill down
// J - rotate
// K - compute
// L - reset
// M - modify
// N - next
// O - open
// P - print
// Q - quit
// R - reduce
// S - save
// T - top edges / top of page
// U - ungroup
// V - paste
// W - close
// X - cut
// Y - redo
// Z - undo

{ valid true booleans }

// 1 y t ok on yes true


