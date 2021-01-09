unit verbs;

{$A+,B-,C-,D+,E-,F-,G+,H+,I-,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V-,W-,X+,Y+,Z1}

// Copyright © 1996, 1997, 1998 Perspective Technologies

interface

uses windows,winspool,messages,commdlg,sysutils,math,twain,nouns;

function  xabortprinting(d:xdevice):xboolean;
function  xactp(var t:xtext; c:xinteger):xposition; // absolutecharactertoposition
procedure xaddcommand(m:xmenu; ck:xboolean; n:xstring; a:xchar; h:xhandlerproc; const p:array of xvariant);
procedure xaddexternalcall(e:xpage; p:xinteger);
procedure xaddfoldersymbol(f:xfolder);
procedure xaddglobalsymbol(s:xscope; n:xstring; i:xinteger);
procedure xaddglobalmarksymbol;
procedure xaddinternalcall(i:xinternfunc; p:xinteger);
procedure xaddinternalsymbol(n:xstring; i:xinternfunc);
procedure xaddjump(m:xinteger);
procedure xaddjumpfalse(m:xinteger; popit:xboolean);
procedure xaddjumptrue(m:xinteger; popit:xboolean);
procedure xaddlocalsymbol(n:xstring; i:xinteger);
procedure xaddmark(m:xinteger);
function  xaddnametosort(f:xfolder; n:xstring):xboolean;
procedure xaddpagesymbol(t:xsymtyp; s:xscope; n:xstring; p:xpage);
procedure xaddpop(p:xinteger);
procedure xaddpushconstant(d:xdatatyp; v:xvariant);
procedure xaddpushreference(s:xstack; o:xinteger);
procedure xaddseparator(m:xmenu);
procedure xaddsortcommands(m:xmenu);
procedure xaddsuggestioncommands(m:xmenu);
function  xaddword(w,x:xstring):xboolean;
procedure xadjustareas;
procedure xadjustbar;
procedure xadjustblock(b:xblock);
procedure xadjustcabinet(c:xcabinet);
procedure xadjustcaret(s:xshape);
function  xadjustcase(a,b:xstring):xstring;
procedure xadjustcurrentpageformode;
procedure xadjustdrawer(d:xdrawer);
procedure xadjustfolder(f:xfolder);
procedure xadjustmenu(m:xmenu);
procedure xadjustpage(p:xpage);
procedure xadjustpicture(var pict:xpicture; dither:xboolean);
procedure xadjustpolygon(var n:xpolygon);
procedure xadjustpopup(p:xpopup);
procedure xadjustselection(s:xshape);
procedure xadjustshape(s:xshape);
procedure xadjusttext(var t:xtext);
procedure xadjusttextcaret(var t:xtext);
function  xaligntoboundary(i,b:xinteger):xinteger;
function  xangletoquadrant(a:xdegree):xquadrant;
procedure xappendcurvevertices(var c:xcurve; const v:array of xtwit);
function  xappenddrawerentry(cid:xstring; d:xdrawerentry):xboolean;
function  xappendfolderentry(cid:xstring; did:xinteger; f:xfolderentry):xboolean;
procedure xappendlink(c:xpointer; n:xlink);
function  xappendpageentry(cid:xstring; did,fid:xinteger; p:xpageentry):xboolean;
procedure xappendpolygonvertices(var n:xpolygon; const v:array of xtwit);
function  xappendrecord(path:xstring; s:xinteger; var r):xboolean;
procedure xappendrow(var t:xtext);
procedure xassignfile(var f:xfile; path:xstring);
function  xautoscrollblock(b:xblock; sp:xpoint):xboolean;
function  xautoscrollcabinet(c:xcabinet; sp:xpoint):xboolean;
function  xautoscrolldrawer(d:xdrawer; sp:xpoint):xboolean;
function  xautoscrollfolder(f:xfolder; sp:xpoint):xboolean;
function  xautoscrollpage(p:xpage; sp:xpoint):xboolean;
function  xbackspacecharacters(s:xshape; jump:xboolean):xboolean;
procedure xbeep;
procedure xbeginedit(s:xshape);
procedure xbeginpageedit(p:xpage; s:xshape);
procedure xbeginprinterpage(r:xrect; auto:xboolean);
procedure xbeginprinting(d:xdoodad);
procedure xbegintransaction;
function  xbitmaptopicture(b:xbitmap; var p:xpicture):xboolean;
procedure xblink;
procedure xblitbits(f,t:xdevice; r:xrect);
procedure xblitrectangle(r:xrect);
function  xblockisconfiguration(b:xblock):xboolean;
function  xblockiscurrentconfiguration(b:xblock):xboolean;
function  xblockisreadonly(b:xblock):xboolean;
procedure xblockread(var f:xfile; var b; c:xinteger);
procedure xblockwrite(var f:xfile; const b; c:xinteger);
function  xbooleandialog(p,d:xstring; last:xboolean; var b:xboolean):xboolean;
function  xbts(b:xboolean):xstring;
function  xcabinetidentifierisvalid(cid:xstring):xboolean;
function  xcabinetidentifierisreadonly(cid:xstring):xboolean;
function  xcabinetisreadonly(c:xcabinet):xboolean;
function  xcabinetnametocid(cn:xstring):xstring;
function  xcalculatedelta(a,b:xpoint; gx,gy:xtwit):xpoint;
procedure xcancelprinting;
function  xcaretrectangle(s:xshape):xrect;
function  xcb:xblock;
function  xcc:xcabinet;
function  xcd:xdrawer;
procedure xcentershape(s:xshape; r:xrect);
function  xcf:xfolder;
procedure xchangealignment(s:xshape; a:xalign);
procedure xchangealignments(s:xshapes; a:xalign; selected:xboolean);
procedure xchangearcvertex(var a:xarc; v:xvertex; p:xpoint);
procedure xchangearrow(s:xshape; a,b:xboolean);
procedure xchangearrows(s:xshapes; a,b,selected:xboolean);
procedure xchangebrightness(s:xshape; d:xdir);
procedure xchangebrightnesses(s:xshapes; d:xdir; selected:xboolean);
procedure xchangecurvevertex(var c:xcurve; v:xvertex; p:xpoint);
procedure xchangeface(s:xshape; f:xface);
procedure xchangefaces(s:xshapes; f:xface; selected:xboolean);
procedure xchangemixture(s:xshape; p:xprop; m:xmixture);
procedure xchangemixtures(s:xshapes; p:xprop; m:xmixture; selected:xboolean);
procedure xchangepicturevertex(var e:xpicture; v:xvertex; p:xpoint);
procedure xchangepigment(s:xshape; p:xprop; g:xpigment);
procedure xchangepigments(s:xshapes; p:xprop; g:xpigment; selected:xboolean);
procedure xchangepolygonvertex(var n:xpolygon; v:xvertex; p:xpoint);
function  xchangerectanglevertex(r,mr,sr:xrect; v:xvertex; p:xpoint; mag:xmag):xrect;
procedure xchangesize(s:xshape; z:xsize);
procedure xchangesizes(s:xshapes; z:xsize; selected:xboolean);
procedure xchangestyle(s:xshape; v:xstyle);
procedure xchangestyles(s:xshapes; v:xstyle; selected:xboolean);
procedure xchangevertex(s:xshape; v:xvertex; np:xpoint);
function  xcheckparameters(a,b:xinteger):xboolean;
procedure xchopbottom(d:xdevice; r:xrect; w:xtwit; b:xcolor);
function  xcidtocabinetname(cid:xstring):xstring;
procedure xcleanrow(var t:xtext; r:xinteger);
procedure xclearreadonlyflag(path:xstring);
procedure xclosebelow(v:xview);
function  xcloseblock(b:xblock):xboolean;
function  xclosecabinet(c:xcabinet):xboolean;
procedure xcloseconfiguration;
function  xclosedrawer(d:xdrawer):xboolean;
procedure xclosefile(var f:xfile);
function  xclosefolder(f:xfolder):xboolean;
procedure xclosemachine;
function  xclosemenu(m:xmenu):xboolean;
function  xclosepage(p:xpage):xboolean;
function  xclosepopup(p:xpopup):xboolean;
procedure xcloseprograms;
procedure xcompileerror(e:xstring);
function  xcompileshape(s:xshape; v:xslice; p:xparseproc):xboolean;
function  xconcatinatenames(n:array of xstring):xstring;
function  xcopydrawer(d:xdrawer; ids:xboolean):xdrawer;
function  xcopyfolder(f:xfolder; ids:xboolean):xfolder;
procedure xcopyfolders(a,b:xfolders; ids:xboolean);
function  xcopypage(p:xpage; ids:xboolean):xpage;
procedure xcopypages(a,b:xpages; ids:xboolean);
function  xcopypicture(p:xpicture):xpicture;
function  xcopyselectedcharacters(s:xshape):xboolean;
function  xcopyshape(s:xshape):xshape;
procedure xcopyshapes(a,b:xshapes);
function  xcopytext(var t:xtext):xtext;
function  xcp:xpage;
function  xcreatearc(r:xrect; c,d:xdegree; b,f:xcolor):xshape;
function  xcreatearea:xarea;
function  xcreateblock(n:xstring):xblock;
function  xcreatecabinet(cn:xstring):xcabinet;
function  xcreatecabinetdoodad(n,d:xstring):xdoodad;
function  xcreatechain(p:xparent):xpointer;
function  xcreatecheckparameters(p:xinteger):xinstruction;
function  xcreatechoice(p:xpopup; n:xstring):xitem;
function  xcreatecommand(ck:xboolean; n:xstring; a:xchar; h:xhandlerproc; const p:array of xvariant):xitem;
function  xcreatecurve(r:xrect; const v:array of xtwit; b,f:xcolor):xshape;
function  xcreatedefaultdoodad(n,c1,c2,c3,p,s:xstring):xdoodad;
function  xcreatedefaulttext(f,v:xstring):xshape;
function  xcreatedrawer(dg,dn,dv:xstring):xdrawer;
function  xcreateellipse(r:xrect; b,f:xcolor):xshape;
function  xcreateexternalcall(e:xpage; p:xinteger):xinstruction;
function  xcreatefolder(n,v:xstring):xfolder;
function  xcreatefoldersymbol(f:xfolder):xsymbol;
function  xcreateglobalmarksymbol:xsymbol;
function  xcreateglobalsymbol(s:xscope; n:xstring; i:xinteger):xsymbol;
function  xcreategroup:xshape;
function  xcreateinternalcall(i:xinternfunc; p:xinteger):xinstruction;
function  xcreateinternalsymbol(n:xstring; i:xinternfunc):xsymbol;
function  xcreatejump(m:xinteger):xinstruction;
function  xcreatejumpfalse(m:xinteger; popit:xboolean):xinstruction;
function  xcreatejumptrue(m:xinteger; popit:xboolean):xinstruction;
function  xcreatelocalsymbol(n:xstring; i:xinteger):xsymbol;
function  xcreatelock(cid:xstring):xlock;
function  xcreatemark(m:xinteger):xinstruction;
function  xcreatemenu(t:xmenutyp; n:xstring):xmenu;
function  xcreatepage:xpage;
function  xcreatepagefromtemplate(t:xpage):xpage;
function  xcreatepagesymbol(t:xsymtyp; s:xscope; n:xstring; p:xpage):xsymbol;
function  xcreatepicture(p:xpicture; b,f:xcolor):xshape;
function  xcreatepolygon(r:xrect; const v:array of xtwit; b,f:xcolor):xshape;
function  xcreatepop(p:xinteger):xinstruction;
function  xcreatepopup:xpopup;
function  xcreateprinterdoodad(n,d:xstring; p,c,r:xboolean; t,w,x,y:xinteger):xdoodad;
function  xcreatepushconstant(d:xdatatyp; v:xvariant):xinstruction;
function  xcreatepushreference(s:xstack; o:xinteger):xinstruction;
function  xcreaterectangle(r:xrect; b,f:xcolor):xshape;
function  xcreatesection(s:xsectiontyp; h:xshape; n:xinteger):xsection;
function  xcreateseparator:xitem;
function  xcreatescannerdoodad(n,d:xstring):xdoodad;
function  xcreateshape(t:xshapetyp):xshape;
function  xcreatestack:xstack;
function  xcreatestop(s:xshape):xstop;
procedure xcreatestops(p:xpage);
function  xcreatetext(r:xrect; n:xfont; m,w:xboolean; b,f,p:xcolor; larg:xboolean; o,v:xstring):xshape;
function  xcreatevalue(v:xstring):xvalue;
function  xcs:xshape;
function  xcsab(s,t:xstring):xinteger;
function  xcsad(s,t:xstring):xinteger;
function  xcsan(s,t:xstring):xinteger;
function  xcsas(s,t:xstring):xinteger;
function  xcsat(s,t:xstring):xinteger;
function  xcv:xview;
function  xdatatype(o:xobject):xdatatyp;
function  xdeletecharacters(s:xshape; jump:xboolean):xboolean;
procedure xdeletedirectory(path:xstring);
function  xdeletedrawer(d:xdrawer):xboolean;
function  xdeletefile(path:xstring):xboolean;
function  xdeletefolder(f:xfolder):xboolean;
function  xdeletepage(p:xpage):xboolean;
procedure xdeleteselectedcharacters(s:xshape; wrapme:xboolean);
function  xdeleteword(w:xstring):xboolean;
procedure xdentcharacters(s:xshape; d:xdir);
function  xdeque:xevent;
procedure xdestroyarea(a:xarea);
procedure xdestroyareas(chain:xboolean);
procedure xdestroyblock(b:xblock);
procedure xdestroycabinet(c:xcabinet);
procedure xdestroychain(c:xpointer);
procedure xdestroychains(c:xchains; chain:xboolean);
procedure xdestroydoodad(d:xdoodad);
procedure xdestroydoodads(d:xdoodads; chain:xboolean);
procedure xdestroydrawer(d:xdrawer);
procedure xdestroydrawers(d:xdrawers; chain:xboolean);
procedure xdestroyfolder(f:xfolder);
procedure xdestroyfolders(f:xfolders; chain:xboolean);
procedure xdestroyinstruction(i:xinstruction);
procedure xdestroyinstructions(i:xinstructions; chain:xboolean);
procedure xdestroyitem(i:xitem);
procedure xdestroyitems(i:xitems; chain:xboolean);
procedure xdestroylock(n:xlock);
procedure xdestroylocks(chain:xboolean);
procedure xdestroymenu(m:xmenu);
procedure xdestroymenus(chain:xboolean);
procedure xdestroypage(p:xpage);
procedure xdestroypages(p:xpages; chain:xboolean);
procedure xdestroypopup(p:xpopup);
procedure xdestroysection(s:xsection);
procedure xdestroysections(s:xsections; chain:xboolean);
procedure xdestroyshape(s:xshape);
procedure xdestroyshapes(s:xshapes; chain:xboolean);
procedure xdestroystack(s:xstack);
procedure xdestroystop(s:xstop);
procedure xdestroystops(s:xstops; chain:xboolean);
procedure xdestroysymbol(s:xsymbol);
procedure xdestroysymbols(s:xsymbols; tomark,chain:xboolean);
procedure xdestroyvalue(v:xvalue);
procedure xdestroyvalues(v:xvalues; chain:xboolean);
procedure xdestroyvariables(v:xvariables; tomark,stack:xboolean);
function  xdialog(p,d:xstring; trim,nulls,last:xboolean; var v:xstring):xboolean;
function  xdirectoryexists(path:xstring):xboolean;
function  xdrag(p:xpoint; g:xtwit):xboolean;
procedure xdrawarea(d:xdevice; a:xarea);
procedure xdrawareas(d:xdevice);
procedure xdrawarc(d:xdevice; a:xarc; b,f:xcolor; closed:xboolean);
procedure xdrawarrow(d:xdevice; p:xpoint; a:xdegree; m:xmag; c:xcolor);
procedure xdrawbar(d:xdevice);
procedure xdrawblock(d:xdevice; b:xblock);
procedure xdrawcabinet(d:xdevice; c:xcabinet);
procedure xdrawcaret;
procedure xdrawcurve(d:xdevice; c:xcurve; b,f:xcolor; closed:xboolean);
procedure xdrawdiamond(d:xdevice; r:xrect; b,f:xcolor);
procedure xdrawdrawer(d:xdevice; t:xdrawer);
procedure xdrawellipse(d:xdevice; e:xellipse; b,f:xcolor);
function  xdraweriscurrent(d:xdrawer; de:xinteger):xboolean;
function  xdrawerisfiled(d:xdrawer):xboolean;
function  xdrawerisfound(d:xdrawer; s:xstring):xboolean;
function  xdrawerisreadonly(d:xdrawer):xboolean;
function  xdrawerisvisible(d:xdrawer; fully:xboolean):xboolean;
procedure xdrawerror(d:xdevice);
procedure xdrawfields(d:xdevice; o:xpoint; var f:xfields);
procedure xdrawfocus(d:xdevice; s:xshape; r:xrect; op:xpoint);
procedure xdrawfocusrectangle(d:xdevice; r:xrect);
procedure xdrawfocusrectangles(d:xdevice; r,b:xrect; op:xpoint);
procedure xdrawfolder(d:xdevice; f:xfolder);
procedure xdrawitem(d:xdevice; i:xitem);
procedure xdrawitems(d:xdevice; m:xmenu);
procedure xdrawline(d:xdevice; l,t,r,b:xtwit; c:xcolor);
procedure xdrawlogo(d:xdevice; n:xrect; bc,fc:xcolor; border,selected:xboolean);
procedure xdrawmachine(d:xdevice);
procedure xdrawmenu(d:xdevice; m:xmenu);
procedure xdrawmessage(d:xdevice);
procedure xdrawpage(d:xdevice; p:xpage);
procedure xdrawpicture(d:xdevice; p:xpicture; b:xcolor);
procedure xdrawpolygon(d:xdevice; n:xpolygon; b,f:xcolor; closed:xboolean);
procedure xdrawpopup(d:xdevice; p:xpopup);
procedure xdrawrectangle(d:xdevice; r:xrect; b,f:xcolor);
procedure xdrawshadow(d:xdevice; r:xrect; w:xtwit);
procedure xdrawshape(d:xdevice; s:xshape);
procedure xdrawshapehandles(d:xdevice; s:xshape);
procedure xdrawshapes(d:xdevice; s:xshapes);
procedure xdrawshapevertices(d:xdevice; s:xshape);
procedure xdrawtext(d:xdevice; var t:xtext; origin:xpoint; clip:xrect; b,f,p:xcolor; invert,editinside,syntax:xboolean);
procedure xdrawvertex(d:xdevice; p:xpoint);
function  xdts(d:xdate):xstring;
function  xduplicatedirectorycontents(tpath,fpath:xstring):xboolean;
function  xduplicatedrawer(c:xcabinet; d,a:xdrawer):xdrawer;
function  xduplicatefile(tpath,fpath:xstring):xboolean;
function  xduplicatefolder(d:xdrawer; f,a:xfolder):xfolder;
function  xduplicatepage(f:xfolder; p,a:xpage):xpage;
procedure xeasytext(d:xdevice; r:xrect; f:xfont; p:xcolor; i:xstring);
procedure xeasytextwithellipsis(d:xdevice; r:xrect; f:xfont; p:xcolor; i:xstring);
function  xediting:xboolean;
procedure xendedit(s:xshape);
function  xendofbuffer(s:xinteger):xboolean;
procedure xendpageedit(p:xpage);
procedure xendprinterpage;
procedure xendprinting;
procedure xendtransaction;
procedure xenque(e:xevent);
procedure xenter(c:xinteger);
procedure xerror(e:xstring);
procedure xexecuteinternal(i:xinternfunc; c:xinteger; leavereturn:xboolean);
procedure xexecutepage(p:xpage; c:xinteger; leavereturn:xboolean);
procedure xexecuteshape(s:xshape; v:xslice; p:xparseproc);
procedure xexit;
function  xexpecttoken(t:xtoktyp):xboolean;
procedure xextendselection(s:xshape; p:xpoint);
procedure xfetchaddenda;
function  xfetcharc:xarc;
procedure xfetchascii(var s:xstring);
function  xfetchblock(n:xstring):xblock;
function  xfetchboolean:xboolean;
procedure xfetchbytes(b:xpointer; c:xinteger);
function  xfetchcolor:xcolor;
function  xfetchconfiguration:xboolean;
function  xfetchcurve:xcurve;
function  xfetchellipse:xellipse;
function  xfetchextended:xextended;
function  xfetchfont:xfont;
function  xfetchinteger:xinteger;
function  xfetchjpeg(var b:xbitmap):xboolean;
procedure xfetchlexicon;
function  xfetchpage(p:xpage):xboolean;
function  xfetchpicture:xpicture;
function  xfetchpoint:xpoint;
function  xfetchpolygon:xpolygon;
function  xfetchrectangle:xrect;
function  xfetchshapes(s:xshapes):xboolean;
function  xfetchsort(var s:xstring):xboolean;
function  xfetchstring:xstring;
function  xfetchtext:xtext;
function  xfileexists(path:xstring):xboolean;
function  xfilepage(f:xfolder; p,a:xpage):xboolean;
function  xfilesize(var f:xfile):xinteger;
function  xfillleft(s:xstring; c:xchar; d:xinteger):xstring;
function  xfillright(s:xstring; c:xchar; d:xinteger):xstring;
procedure xfillslices(p:xpage; d:xdir);
procedure xfinalizeareas;
procedure xfinalizebrushes;
procedure xfinalizebuffers;
procedure xfinalizecarets;
procedure xfinalizeclipboards;
procedure xfinalizecolors;
procedure xfinalizecommandline;
procedure xfinalizeconfiguration;
procedure xfinalizecursors;
procedure xfinalizedevicecontexts;
procedure xfinalizefocus;
procedure xfinalizefont(f:xfont);
procedure xfinalizefonts;
procedure xfinalizelexicon;
procedure xfinalizelocks;
procedure xfinalizememorymanager;
procedure xfinalizemenus;
procedure xfinalizemouse;
procedure xfinalizepalettes;
procedure xfinalizepens;
procedure xfinalizepicture(var p:xpicture);
procedure xfinalizescreen;
procedure xfinalizestrings;
procedure xfinalizetemplates;
procedure xfinalizetext(var t:xtext);
procedure xfinalizetimers;
procedure xfinalizewindows;
function  xfindcode(s:xshapes):xshape;
function  xfinddoodad(t:xdoodadtyp; n:xstring):xdoodad;
function  xfinddoodadbycid(t:xdoodadtyp; cid:xstring):xdoodad;
function  xfinddoodadbydevice(t:xdoodadtyp; d:xstring):xdoodad;
function  xfinddrawer(d:xdrawers; g,n,v:xstring):xdrawer;
function  xfinddrawerbyid(d:xdrawers; id:xinteger):xdrawer;
function  xfinddrawerbypoint(d:xdrawers; p:xpoint):xdrawer;
function  xfinddrawerentry(did:xinteger; var d:xinteger):xboolean;
function  xfinddrawerwithcurrentversion(d:xdrawers; g,n:xstring):xdrawer;
function  xfindfield(const f:xfields; n:xstring):xinteger;
function  xfindfolder(f:xfolders; n,v:xstring):xfolder;
function  xfindfolderbyid(f:xfolders; id:xinteger):xfolder;
function  xfindfolderbypoint(f:xfolders; p:xpoint):xfolder;
function  xfindfolderentry(fid:xinteger; var f:xinteger):xboolean;
function  xfindfolderwithcurrentversion(f:xfolders; n:xstring):xfolder;
function  xfinditembycommandkey(a:xchar):xitem;
function  xfinditembypoint(i:xitems; p:xpoint):xitem;
function  xfindlock(cid:xstring):xlock;
function  xfindmenubypoint(p:xpoint):xmenu;
function  xfindpage(p:xpages; f,n:xstring):xpage;
function  xfindpagebyid(p:xpages; id:xinteger):xpage;
function  xfindpagebypoint(p:xpages; q:xpoint):xpage;
function  xfindpageentry(pid:xinteger; var p:xinteger):xboolean;
function  xfindshape(s:xshapes; n:xstring):xshape;
function  xfindshapebyid(s:xshapes; id:xinteger):xshape;
function  xfindshapebypoint(s:xshapes; p:xpoint):xshape;
function  xfindshapeonedgebyname(s:xshapes; n:xstring):xshape;
function  xfindstopbynameandsubscript(s:xstops; n:xstring; subscript:xboolean; r:xinteger):xstop;
function  xfindstopbyshape(s:xstops; h:xshape):xstop;
function  xfindstopshapebypoint(s:xstops; p:xpoint):xshape;
function  xfindsymbol(c:array of xsymbols; t:xsymtyp; s:xscope; n:xstring):xsymbol;
function  xfliparc(a:xarc; d:xdir):xarc;
function  xflipcurve(c:xcurve; d:xdir):xcurve;
function  xflippicture(p:xpicture; d:xdir):xpicture;
function  xflippolygon(n:xpolygon; d:xdir):xpolygon;
procedure xflipshape(s:xshape; d:xdir);
procedure xflushevents;
procedure xfocusgraphics(d:xdevice; focus:xboolean);
function  xfocusshape(s:xshape; p:xpoint):xshape;
function  xfolderiscurrent(f:xfolder; fe:xinteger):xboolean;
function  xfolderisfiled(f:xfolder):xboolean;
function  xfolderisfound(f:xfolder; s:xstring):xboolean;
function  xfolderisreadonly(f:xfolder):xboolean;
function  xfolderisvisible(f:xfolder; fully:xboolean):xboolean;
function  xformatboolean(b:xboolean; f:xstring):xstring;
function  xformatdate(d:xdate; f:xstring):xstring;
function  xformatnumber(n:xnumber; f:xstring):xstring;
function  xformatrow(d:xdevice; var t:xtext; r:xinteger; origin:xpoint; clip:xrect; var fc,lc:xinteger):xtwit;
procedure xformatshape(s:xshape);
function  xformattime(t:xtime; f:xstring):xstring;
function  xformattodatatype(s:xshape):xdatatyp;
function  xfreememory(p:xpointer):xinteger;
procedure xgeneratesuggestions(w:xstring);
function  xgetaddendafilename:xstring;
function  xgetanchorhandle(h:xhandle):xhandle;
function  xgetangle(a,b:xpoint):xdegree;
function  xgetarcpoint(a:xarc; v:xvertex):xpoint;
function  xgetareacount:xinteger;
function  xgetblockstatus(b:xblock):xstring;
function  xgetboundingrectangle(s:xshapes; selected:xboolean):xrect;
function  xgetcabinetstatus(c:xcabinet):xstring;
function  xgetcenterinrectangle(p:xpage; r:xrect):xrect;
function  xgetcenterpoint(r:xrect):xpoint;
function  xgetcharactercount(s:xshape; lfs:xboolean):xinteger;
function  xgetcliprectangle(d:xdevice):xrect;
function  xgetclock(c:xclock):xinteger;
function  xgetclockstring(c:xclock):xstring;
function  xgetconfigurationfilename:xstring;
function  xgetcurrentcharacter(s:xshape):xinteger;
function  xgetcurrentline(s:xshape):xinteger;
function  xgetdebuginformation:xdebug;
function  xgetdeepdrawercount(d:xdrawers):xinteger;
function  xgetdeepdrawersubscript(d:xdrawers; a:xdrawer):xinteger;
function  xgetdeepfoldercount(f:xfolders):xinteger;
function  xgetdeepfoldersubscript(f:xfolders; a:xfolder):xinteger;
function  xgetdeeppagecount(p:xpages):xinteger;
function  xgetdeeppagesubscript(p:xpages; a:xpage):xinteger;
function  xgetdefaultprinter(var n,p:xstring):xboolean;
procedure xgetdefaultprinterconfiguration(pn,pp:xstring; var postscript,center,reverse:xboolean; var rotate:xinteger);
function  xgetdirectorysize(path:xstring):xinteger;
function  xgetdistance(a,b:xpoint):xextended;
function  xgetdrawer(o:xobject):xdrawer;
function  xgetdrawercount(d:xdrawers):xinteger;
function  xgetdrawerdirectoryname(cid:xstring; did:xinteger):xstring;
function  xgetdrawerindexname(cid:xstring):xstring;
function  xgetdrawersize(d:xdrawer):xinteger;
function  xgetdrawerstatus(d:xdrawer):xstring;
function  xgetedge(s:xshape):xedge;
function  xgetfilesize(path:xstring):xinteger;
function  xgetfirstdeepdrawer(d:xdrawers):xdrawer;
function  xgetfirstdeepfolder(f:xfolders):xfolder;
function  xgetfirstdeeppage(p:xpages):xpage;
function  xgetfirstselecteddrawer(d:xdrawers):xdrawer;
function  xgetfirstselectedfolder(f:xfolders):xfolder;
function  xgetfirstselectedpage(p:xpages):xpage;
function  xgetfirstselectedshape(s:xshapes):xshape;
function  xgetfirstselectedshapeonstops(s:xstops):xshape;
function  xgetfirstselectedstop(s:xstops):xstop;
function  xgetfirstvisibledrawer(d:xdrawers; fully:xboolean):xdrawer;
function  xgetfirstvisiblefolder(f:xfolders; fully:xboolean):xfolder;
function  xgetfirstvisiblepage(p:xpages; fully:xboolean):xpage;
function  xgetfolder(s:xshape):xfolder;
function  xgetfoldercount(f:xfolders):xinteger;
function  xgetfolderdirectoryname(cid:xstring; did,fid:xinteger):xstring;
function  xgetfolderindexname(cid:xstring; did:xinteger):xstring;
function  xgetfoldersize(f:xfolder):xinteger;
function  xgetfolderstatus(f:xfolder):xstring;
function  xgetfoldersubscript(f:xfolders; a:xfolder):xinteger;
function  xgetitemcount(i:xitems):xinteger;
function  xgetlargestcolumn(s:xshape; sr,er:xinteger):xinteger;
function  xgetlastselecteddrawer(d:xdrawers):xdrawer;
function  xgetlastselectedfolder(f:xfolders):xfolder;
function  xgetlastselectedpage(p:xpages):xpage;
function  xgetlastvisiblepage(p:xpages; fully:xboolean):xpage;
function  xgetlexiconfilename:xstring;
function  xgetloadedpagesize(p:xpage):xinteger;
function  xgetlogicalxpixels(d:xdevice):xinteger;
function  xgetlogicalypixels(d:xdevice):xinteger;
function  xgetmark:xinteger;
function  xgetmaximumcroprectangle(var p:xpicture):xrect;
function  xgetmaximumitemwidth(i:xitems; m:xinteger):xinteger;
function  xgetmemory(s:xinteger):xpointer;
function  xgetmousepoint:xpoint;
function  xgetnextcommenttoken(const s:xstring; var p:xinteger):xstring;
function  xgetnextdeepdrawer(d:xdrawer):xdrawer;
function  xgetnextdeepfolder(f:xfolder):xfolder;
function  xgetnextdeeppage(p:xpage):xpage;
function  xgetnextgenerictoken(const s:xstring; var p:xinteger; wantdelims:xboolean; const delims:xcharset):xstring;
function  xgetnextlanguagetoken(const s:xstring; var p:xinteger; wantleaders:xboolean):xtoken;
function  xgetnextnumbertoken(const s:xstring; var p:xinteger; dot:xboolean; var r:xstring):xnumber;
function  xgetnextstringtoken(const s:xstring; var p:xinteger):xstring;
procedure xgetnexttoken;
function  xgetnextword(const s:xstring; var p:xinteger):xstring;
function  xgetpage(o:xobject):xpage;
function  xgetpagecount(p:xpages):xinteger;
function  xgetpagefilename(cid:xstring; did,fid,pid:xinteger):xstring;
function  xgetpageindexname(cid:xstring; did,fid:xinteger):xstring;
function  xgetpagesize(p:xpage):xinteger;
function  xgetpagestatus(p:xpage):xstring;
function  xgetpagesubscript(p:xpages; a:xpage):xinteger;
function  xgetpagetype(p:xpage):xstring;
function  xgetphysicalheight(d:xdevice):xinteger;
function  xgetphysicalwidth(d:xdevice):xinteger;
function  xgetphysicalxoffset(d:xdevice):xinteger;
function  xgetphysicalyoffset(d:xdevice):xinteger;
function  xgetpreviousgenerictoken(const s:xstring; var p:xinteger; wantdelims:xboolean; const delims:xcharset):xstring;
function  xgetrandomnumber(min,max:xinteger):xinteger;
function  xgetrectanglemovemessage(o,n:xrect):xstring;
function  xgetrectanglesizemessage(r:xrect):xstring;
function  xgetrowchunk(var t:xtext):xinteger;
function  xgetrowstatistics(var t:xtext; r:xinteger):xrowstats;
function  xgetselectedcharacters(s:xshape):xstring;
function  xgetselecteddrawercount(d:xdrawers):xinteger;
function  xgetselectedfoldercount(f:xfolders):xinteger;
function  xgetselectedpagecount(p:xpages):xinteger;
function  xgetselectedshapecount(s:xshapes):xinteger;
function  xgetselectedstopcount(s:xstops):xinteger;
function  xgetshapecount(s:xshapes):xinteger;
procedure xgetshapeinformation(s:xshape; var p:xparent; var o:xpoint; var c,r:xrect);
function  xgetshapemessage(s:xshape):xstring;
function  xgetshapemovemessage(os,ns:xshape):xstring;
function  xgetshapeproperty(s:xshape; p,sp:xprop; var applied:xboolean):xinteger;
function  xgetshapesproperty(s:xshapes; p,sp:xprop; selected:xboolean; var applied:xboolean):xinteger;
function  xgetshapesizemessage(s:xshape):xstring;
function  xgetshiftgrid(a,b:xinteger):xpoint;
function  xgetshiftratio(a,b:xinteger):xinteger;
function  xgetslice(s:xshape; i:xslice):xstring;
function  xgetsortfilename(cid:xstring; did,fid:xinteger):xstring;
function  xgettangentangle(a:xarc; v:xvertex):xdegree;
function  xgettextstatistics(var t:xtext; origin:xpoint; clip:xrect):xtextstats;
function  xgettextwidth(var t:xtext):xtwit;
function  xgetticks:xtick;
function  xgetupperbound(c:xstops; n:xstring):xinteger;
function  xgetvalue(var t:xtext):xstring;
function  xgetvaluecount(v:xvalues):xinteger;
function  xgetversionstring:xstring;
function  xgetvertexcount(s:xshape):xinteger;
procedure xglobalizeshape(s:xshape; op:xpoint);
function  xgp(p,o:xpoint):xpoint;
function  xgr(r:xrect; o:xpoint):xrect;
procedure xgrowbuffer;
procedure xgrowindex;
procedure xgrowrows(var t:xtext);
function  xgvbr(b:xblock):xrect;
function  xgvcr(c:xcabinet):xrect;
function  xgvdr(d:xdrawer):xrect;
function  xgvfr(f:xfolder):xrect;
function  xgvpr(p:xpage):xrect;
function  xgvsr(s:xshape):xrect;
procedure xhandleactivate;
procedure xhandleaddword;
procedure xhandlealign(a:xalign);
procedure xhandlearrow(a,b:xboolean);
procedure xhandlearrowkey;
procedure xhandlebackup;
procedure xhandlebackspacekey;
procedure xhandlebrightness(d:xdir);
procedure xhandlecharacterkey;
procedure xhandleclick;
procedure xhandleclose;
procedure xhandlecommandkey;
procedure xhandlecompile;
procedure xhandlecompute;
procedure xhandlecopy;
procedure xhandlecorrect(v:xvalue);
procedure xhandlecursor;
procedure xhandlecut;
procedure xhandledeactivate;
procedure xhandledelete;
procedure xhandledeletekey;
procedure xhandledeleteword;
procedure xhandledent(d:xdir);
procedure xhandledevices;
procedure xhandledoubleclick;
procedure xhandleduplicate;
procedure xhandleedge(e:xedge);
procedure xhandleedges;
procedure xhandleescapekey;
procedure xhandleface(f:xface);
procedure xhandlefill(d:xdir);
procedure xhandlefind;
procedure xhandlefinddeep;
procedure xhandlefinderror;
procedure xhandlefindmisspellings;
procedure xhandleflip(d:xdir);
procedure xhandlegrid;
procedure xhandlegroup;
procedure xhandlemixture(p:xprop; m:xmixture);
procedure xhandlemodify;
procedure xhandlemove(q:xquadrant);
procedure xhandlenew(t:xpage);
procedure xhandlenewshape(t:xshapetyp);
procedure xhandlenext;
procedure xhandleopen;
procedure xhandlepaint;
procedure xhandlepaste;
procedure xhandlepigment(p:xprop; c:xpigment);
procedure xhandleposition(d:xdir);
procedure xhandlepositionkey;
procedure xhandleprint;
procedure xhandleprintspecial;
procedure xhandleprogram(o:xobject);
procedure xhandlequit;
procedure xhandleredo;
procedure xhandlerename;
procedure xhandlerenumber;
procedure xhandleresize;
procedure xhandlereturnkey;
procedure xhandlereverse;
procedure xhandlerightclick;
procedure xhandlerotate;
procedure xhandlesave;
procedure xhandlescale;
procedure xhandleselectall;
procedure xhandlesend(d:xdir);
procedure xhandleshiftkey;
procedure xhandleshutdown;
procedure xhandlesize(s:xsize);
procedure xhandlesleep;
procedure xhandleslice(s:xslice);
procedure xhandlesnap(s:xtwit);
procedure xhandlesort(s:xsorttyp; f:xstring);
procedure xhandlespace;
procedure xhandlestartup;
procedure xhandlestyle(v:xstyle);
procedure xhandletabkey;
function  xhandletopoint(h:xhandle; r:xrect):xpoint;
procedure xhandleundo;
procedure xhandleungroup;
procedure xhandlezoom(d:xdir);
function  xheight(r:xrect):xtwit;
procedure xhelpdo(undo:xboolean);
procedure xhelpfindblockmisspellings;
procedure xhelpfinddeep(first:xboolean);
procedure xhelpfinddrawer(first:xboolean);
procedure xhelpfindfolder(first:xboolean);
procedure xhelpfindmisspellings(first:xboolean);
procedure xhelpfindpage(first:xboolean);
procedure xhelpfindshape(first:xboolean);
procedure xhelpfindtext;
function  xhelpnewshapepicture(var p:xpicture):xboolean;
procedure xhelpopenareaview;
procedure xhelpprintblock(p:xdoodad; copies:xinteger; auto,selection:xboolean);
procedure xhelpprintedges(p:xdoodad; copies:xinteger; auto:xboolean; title:xstring);
procedure xhelpprintpage(p:xdoodad; copies:xinteger; auto:xboolean);
procedure xhelpprintpages(p:xdoodad; copies:xinteger; auto,collate:xboolean);
procedure xhidecaret;
procedure xhidecursor;
procedure xhideedges(p:xpage; edges:xboolean);
procedure xhidegrid(p:xpage; grid:xboolean);
procedure xhideshape(s:xshape; hidden:xboolean);
procedure xhideshapes(s:xshapes; hidden:xboolean);
function  xidts(id:xinteger):xstring;
function  xinarea:xboolean;
function  xinblock:xboolean;
function  xincabinet:xboolean;
procedure xindentcode(s:xshape);
function  xindentellipse(e:xellipse; i:xinteger):xellipse;
procedure xindexpage(p:xpage);
function  xindrawer:xboolean;
function  xinfolder:xboolean;
function  xinhandle:xboolean;
procedure xinitializeareas;
procedure xinitializebrushes;
procedure xinitializebuffers;
procedure xinitializecarets;
procedure xinitializeclipboards;
procedure xinitializecolors;
procedure xinitializecommandline;
procedure xinitializeconfiguration;
procedure xinitializecursors;
procedure xinitializedevicecontexts;
procedure xinitializefocus;
function  xinitializefont(f:xfont):hfont;
procedure xinitializefonts;
procedure xinitializelexicon;
procedure xinitializelocks;
procedure xinitializememorymanager;
procedure xinitializemenus;
procedure xinitializemouse;
procedure xinitializepalettes;
procedure xinitializepens;
procedure xinitializescreen;
procedure xinitializestrings;
procedure xinitializetemplates;
procedure xinitializetimers;
procedure xinitializewindows;
function  xinlimbo:xboolean;
function  xinlogo:xboolean;
function  xinlonelylimbo:xboolean;
function  xinmenu:xboolean;
function  xinmenubar:xboolean;
function  xinpage:xboolean;
procedure xinsertcharacters(s:xshape; v:xstring);
procedure xinsertcurvevertex(var c:xcurve; p,a:xpoint);
procedure xinsertlinkafter(c:xpointer; an,n:xlink);
procedure xinsertlinkbefore(c:xpointer; bn,n:xlink);
procedure xinsertpolygonvertex(var n:xpolygon; p,a:xpoint);
procedure xinsertrowsafter(var t:xtext; ar,rc:xinteger);
procedure xinsertshapevertex(s:xshape; np,ap:xpoint);
function  xinshape:xboolean;
function  xintab:xboolean;
procedure xinternalabsolutevalue;
procedure xinternaladd;
procedure xinternaladditem;
procedure xinternaladdseparator;
procedure xinternaland;
procedure xinternalarccosine;
procedure xinternalarcsine;
procedure xinternalarctangent;
procedure xinternalassign;
procedure xinternalaverage;
procedure xinternalbeep;
procedure xinternalblink;
procedure xinternalcharacter;
procedure xinternalclosecabinet;
procedure xinternalclosedrawer;
procedure xinternalclosefolder;
procedure xinternalclosepage;
procedure xinternalconverttoboolean;
procedure xinternalconverttodate;
procedure xinternalconverttonumber;
procedure xinternalconverttostring;
procedure xinternalconverttotime;
procedure xinternalcopypage;
procedure xinternalcosine;
procedure xinternalcount;
procedure xinternalcreatepage;
procedure xinternaldecrement;
procedure xinternaldelete;
procedure xinternaldeletedrawer;
procedure xinternaldeletefile;
procedure xinternaldeletefolder;
procedure xinternaldeletepage;
procedure xinternaldegreetoradian;
procedure xinternaldestroypage;
procedure xinternaldialog;
procedure xinternaldrawmenubar;
procedure xinternaldrawworkarea;
procedure xinternalduplicatedrawer;
procedure xinternalduplicatefolder;
procedure xinternalduplicatepage;
procedure xinternalequal;
procedure xinternalerror;
procedure xinternalfilepage;
procedure xinternalfillleft;
procedure xinternalfillright;
procedure xinternalfinddrawer;
procedure xinternalfindfolder;
procedure xinternalfindpage;
procedure xinternalfirstrecord;
procedure xinternalformatboolean;
procedure xinternalformatdate;
procedure xinternalformatnumber;
procedure xinternalformattime;
procedure xinternalfraction;
procedure xinternalgetcurrentcabinet;
procedure xinternalgetcurrentdrawer;
procedure xinternalgetcurrenterror;
procedure xinternalgetcurrentfolder;
procedure xinternalgetcurrentpage;
procedure xinternalgetcurrentview;
procedure xinternalgetdate;
procedure xinternalgetday;
procedure xinternalgetdayofweek;
procedure xinternalgetdrawercount;
procedure xinternalgetfirstselecteddrawer;
procedure xinternalgetfirstselectedfolder;
procedure xinternalgetfirstselectedpage;
procedure xinternalgetfoldercount;
procedure xinternalgethours;
procedure xinternalgetlastselecteddrawer;
procedure xinternalgetlastselectedfolder;
procedure xinternalgetlastselectedpage;
procedure xinternalgetminutes;
procedure xinternalgetmonth;
procedure xinternalgetnexttoken;
procedure xinternalgetpagecount;
procedure xinternalgetprevioustoken;
procedure xinternalgetseconds;
procedure xinternalgetselecteddrawercount;
procedure xinternalgetselectedfoldercount;
procedure xinternalgetselectedpagecount;
procedure xinternalgetticks;
procedure xinternalgettime;
procedure xinternalgettoken;
procedure xinternalgetyear;
procedure xinternalgreater;
procedure xinternalgreaterequal;
procedure xinternalincrement;
procedure xinternalindex;
procedure xinternalinsert;
procedure xinternalintegerdivide;
procedure xinternalleft;
procedure xinternallength;
procedure xinternalless;
procedure xinternallessequal;
procedure xinternallock;
procedure xinternallogarithm;
procedure xinternallowercase;
procedure xinternalmakecountmessage;
procedure xinternalmaximum;
procedure xinternalmessage;
procedure xinternalmiddle;
procedure xinternalminimum;
procedure xinternalmodulus;
procedure xinternalmultiply;
procedure xinternalnegate;
procedure xinternalnewdrawer;
procedure xinternalnewfile;
procedure xinternalnewfolder;
procedure xinternalnewpage;
procedure xinternalnextrecord;
procedure xinternalnot;
procedure xinternalnotequal;
procedure xinternalopencabinet;
procedure xinternalopendrawer;
procedure xinternalopenfolder;
procedure xinternalopenpage;
procedure xinternalor;
procedure xinternalordinal;
procedure xinternalpause;
procedure xinternalposition;
procedure xinternalpower;
procedure xinternalprintpage;
procedure xinternalradiantodegree;
procedure xinternalrealdivide;
procedure xinternalreadfile;
procedure xinternalrandom;
procedure xinternalrandomize;
procedure xinternalremoveleading;
procedure xinternalremovetrailing;
procedure xinternalremoveunwanted;
procedure xinternalrenamedrawer;
procedure xinternalrenamefile;
procedure xinternalrenamefolder;
procedure xinternalresolve;
procedure xinternalright;
procedure xinternalround;
procedure xinternalrounddown;
procedure xinternalroundup;
procedure xinternalsavepage;
procedure xinternalselectdrawer;
procedure xinternalselectdrawers;
procedure xinternalselectfolder;
procedure xinternalselectfolders;
procedure xinternalselectpage;
procedure xinternalselectpages;
procedure xinternalsine;
procedure xinternalsortdrawers;
procedure xinternalsortfolders;
procedure xinternalsortpages;
procedure xinternalsquareroot;
procedure xinternalsubtract;
procedure xinternalsum;
procedure xinternalswap;
procedure xinternaltangent;
procedure xinternaltruncate;
procedure xinternalunfilepage;
procedure xinternalunlock;
procedure xinternalunlockall;
procedure xinternalupdatepage;
procedure xinternalupperbound;
procedure xinternaluppercase;
procedure xinternalviewcabinet;
procedure xinternalviewdrawer;
procedure xinternalviewfolder;
procedure xinternalviewpage;
procedure xinternalwarning;
procedure xinternalwritefile;
procedure xinternalxor;
function  xintersectradiusandellipse(r:xrect; p:xpoint):xpoint;
function  xintersectrectangles(a,b:xrect):xrect;
function  xintext:xboolean;
function  xinvertex:xboolean;
procedure xinvertpolygon(d:xdevice; n:xpolygon);
procedure xinvertrectangle(d:xdevice; r:xrect);
function  xioerror(r:xinteger):xboolean;
function  xioresult:xinteger;
function  xir(r:xrect; i:xtwit):xrect;
function  xisalphanumeric(c:xchar):xboolean;
function  xisbooleanformat(f:xstring):xboolean;
function  xiscolordevice(d:xdevice):xboolean;
function  xiscode(s:xshape):xboolean;
function  xisdateformat(f:xstring):xboolean;
function  xisdrawingpage(p:xpage):xboolean;
function  xiseditable(s:xshape):xboolean;
function  xiseditshape(s:xshape):xboolean;
function  xisformpage(p:xpage):xboolean;
function  xisfunctionpage(p:xpage):xboolean;
function  xishuge(var t:xtext):xboolean;
function  xisnumberformat(f:xstring):xboolean;
function  xisoneline(var t:xtext):xboolean;
function  xispopable(s:xshape):xboolean;
function  xisprogramsdrawer(d:xdrawer):xboolean;
function  xisselection(s:xshape):xboolean;
function  xissimple(var t:xtext):xboolean;
function  xistextselection(var t:xtext):xboolean;
function  xistimeformat(f:xstring):xboolean;
function  xits(i:xinteger):xstring;
function  xitt(i:xextended):xtwit;
function  xkeytodirection(k:xkey; command,shift:xboolean):xdir;
function  xlimit(a,min,max:xinteger):xinteger;
function  xlimitpoint(p:xpoint; r:xrect):xpoint;
function  xlockcabinet(cid:xstring):xboolean;
function  xlp(g,o:xpoint):xpoint;
function  xlr(r:xrect; o:xpoint):xrect;
function  xlvbr(b:xblock):xrect;
function  xlvcr(c:xcabinet):xrect;
function  xlvdr(d:xdrawer):xrect;
function  xlvfr(f:xfolder):xrect;
function  xlvpr(p:xpage):xrect;
function  xmakearc(r:xrect; a,b:xdegree):xarc;
function  xmakecurve:xcurve;
function  xmakeellipse(r:xrect):xellipse;
function  xmakedrawerentry(id,lev:xinteger; g,n,v:xstring):xdrawerentry;
function  xmakeevent(e:xeventtyp):xevent;
function  xmakefolderentry(id,lev:xinteger; n,v:xstring):xfolderentry;
function  xmakepageentry(id,lev:xinteger; const f:xfields):xpageentry;
function  xmakepicture:xpicture;
function  xmakepolygon:xpolygon;
function  xmakeposition(col,row:xinteger):xposition;
procedure xmaketextfitwithellipsis(var t:xtext);
function  xmakeyuv(y,u,v:xinteger):xyuv;
function  xmax(x,y:xinteger):xinteger;
function  xmc(p:xpigment; m:xmixture):xcolor;
function  xmcm(n:xnumber; s,p:xstring):xstring; // makecountmessage
procedure xmessage(m:xstring);
function  xmf(f:xface; s:xsize; v:xstyle; a:xalign):xfont;
function  xmidpoint(a,b:xpoint):xpoint;
function  xmin(x,y:xinteger):xinteger;
procedure xmorphpage(p:xpage);
function  xmousehasmoved(a,b:xpoint; gx,gy:xtwit):xboolean;
function  xmouseisdown(b:xbutton):xboolean;
function  xmovearc(a:xarc; dx,dy:xtwit):xarc;
procedure xmoveblockorigin(b:xblock; dx,dy:xinteger);
procedure xmovecabinetorigin(c:xcabinet; dx:xinteger);
procedure xmovecaret(s:xshape; d:xdir; jump,extend,reset:xboolean);
function  xmovecurve(c:xcurve; dx,dy:xtwit):xcurve;
procedure xmovedrawerorigin(d:xdrawer; dy:xinteger);
function  xmoveellipse(e:xellipse; dx,dy:xtwit):xellipse;
procedure xmovefolderorigin(f:xfolder; dy:xinteger);
procedure xmovepage(p:xpage; q:xquadrant);
procedure xmovepageorigin(p:xpage; dx,dy:xinteger);
function  xmovepicture(p:xpicture; dx,dy:xtwit):xpicture;
function  xmovepoint(p:xpoint; dx,dy:xtwit):xpoint;
function  xmovepolygon(n:xpolygon; dx,dy:xtwit):xpolygon;
function  xmoverectangle(r:xrect; dx,dy:xtwit):xrect;
procedure xmoveshape(s:xshape; dx,dy:xinteger);
procedure xmoveshapes(s:xshapes; dx,dy:xinteger; selected:xboolean);
function  xmovetext(var t:xtext; dx,dy:xtwit):xtext;
function  xmp(x,y:xtwit):xpoint;
function  xmr(l,t,r,b:xtwit):xrect;
function  xmt(r:xrect; f:xfont; m,w:xboolean; larg:xboolean; v:xstring):xtext;
procedure xnavigatecabinet(c:xcabinet; d:xdir);
procedure xnavigatedrawer(d:xdrawer; i:xdir);
procedure xnavigatefolder(f:xfolder; d:xdir);
procedure xnavigatemachine(d:xdir);
procedure xnavigatepage(p:xpage; d:xdir);
function  xnewdirectory(path:xstring):xboolean;
function  xnewdrawer(c:xcabinet; g,n,v:xstring; a:xdrawer):xdrawer;
function  xnewfile(path:xstring):xboolean;
function  xnewfolder(d:xdrawer; n,v:xstring; a:xfolder):xfolder;
function  xnewpage(f:xfolder; t,a:xpage):xpage;
function  xnormalizeangle(a:xdegree):xdegree;
procedure xnormalizepage(p:xpage; z:xextended; s:xtwit; v:xslice);
function  xnr(r:xrect):xrect;
function  xnts(n:xnumber):xstring;
function  xobjectisnull(o:xobject):xboolean;
procedure xobscurecursor;
function  xopenblock(bn:xstring):xblock;
function  xopencabinet(cn:xstring):xcabinet;
function  xopenconfiguration:xboolean;
function  xopendrawer(d:xdrawer):xboolean;
function  xopenfolder(f:xfolder):xboolean;
function  xopenlexicon:xboolean;
procedure xopenmachine;
procedure xopenmenu(m:xmenu);
function  xopenpage(p:xpage):xboolean;
procedure xopenpopup(p:xpopup);
procedure xopenprograms;
function  xopensort(f:xfolder; var s:xstring):xboolean;
function  xoperandisnull(c:xinteger):xboolean;
function  xoperandsarenull(c:xinteger):xboolean;
function  xpageiscurrent(p:xpage; pe:xinteger):xboolean;
function  xpageisfiled(p:xpage):xboolean;
function  xpageisfound(p:xpage; e:xedgeset; s:xstring):xboolean;
function  xpageisloose(p:xpage):xboolean;
function  xpageisreadonly(p:xpage):xboolean;
function  xpageisvisible(p:xpage; fully:xboolean):xboolean;
procedure xparsebreak;
procedure xparsecase;
procedure xparsecomplexexpression;
procedure xparsecontinue;
procedure xparseexit;
procedure xparseexpression;
procedure xparsefor;
procedure xparsefunction;
procedure xparseglobal;
function  xparseidentifier:xsymbol;
procedure xparseif;
procedure xparselocal;
procedure xparselocals;
procedure xparseloop;
function  xparsename(var tok:xstring):xsymbol;
procedure xparserepeat;
procedure xparseselector;
procedure xparseselectors;
procedure xparsesimpleexpression;
procedure xparsestatement;
procedure xparsestatements;
procedure xparsesuperexpression;
procedure xparseterm;
procedure xparsewhile;
function  xpastecharacters(s:xshape):xboolean;
procedure xpause(t:xtick);
function  xpeekasstring(p:xinteger):xstring;
function  xpeekboolean(p:xinteger):xboolean;
function  xpeekcabinet(p:xinteger):xcabinet;
function  xpeekcharacter(p:xinteger):xchar;
function  xpeekdate(p:xinteger):xdate;
function  xpeekdrawer(p:xinteger):xdrawer;
function  xpeekfolder(p:xinteger):xfolder;
function  xpeekinteger(p:xinteger):xinteger;
function  xpeeknamable(p:xinteger):xshape;
function  xpeeknexttoken:xtoken;
function  xpeeknumber(p:xinteger):xnumber;
function  xpeekobject(p:xinteger):xobject;
function  xpeekpage(p:xinteger):xpage;
function  xpeekregister(o:xinteger):xinteger;
function  xpeekstring(p:xinteger):xstring;
function  xpeeksymbol(p:xinteger):xsymbol;
function  xpeektext(p:xinteger):xshape;
function  xpeektime(p:xinteger):xtime;
function  xpeektype(p:xinteger):xdatatyp;
function  xpeekvariable(p:xinteger):xvar;
function  xphonex(w:xshortstring):xshortstring;
function  xpir(r:xrect; p:xpoint):xboolean;
function  xpointequals(a,b:xpoint):xboolean;
function  xpointinarc(a:xarc; p:xpoint):xboolean;
function  xpointincurve(c:xcurve; p:xpoint):xboolean;
function  xpointinellipse(e:xellipse; p:xpoint):xboolean;
function  xpointinhandle(s:xshape; p:xpoint; var h:xhandle):xboolean;
function  xpointinpicture(e:xpicture; p:xpoint):xboolean;
function  xpointinpolygon(n:xpolygon; p:xpoint):xboolean;
function  xpointinshape(s:xshape; p:xpoint):xboolean;
function  xpointintext(var t:xtext; p:xpoint):xboolean;
function  xpointinvertex(s:xshape; p:xpoint; var v:xvertex):xboolean;
function  xpointonarc(a:xarc; p:xpoint; closed:xboolean):xboolean;
function  xpointoncurve(c:xcurve; p:xpoint; closed:xboolean):xboolean;
function  xpointonellipse(e:xellipse; p:xpoint):xboolean;
function  xpointonline(a,b,p:xpoint):xboolean;
function  xpointonpicture(e:xpicture; p:xpoint):xboolean;
function  xpointonpolygon(n:xpolygon; p:xpoint; closed:xboolean):xboolean;
function  xpointonrectangle(r:xrect; p:xpoint):xboolean;
function  xpointonshape(s:xshape; p:xpoint):xboolean;
function  xpointontext(var t:xtext; p:xpoint):xboolean;
function  xpointtoposition(var t:xtext; p:xpoint):xposition;
procedure xpokenumber(p:xinteger; n:xnumber);
procedure xpokeobject(p:xinteger; o:xobject);
procedure xpokestring(p:xinteger; t:xstring);
function  xpopasstring(s:xstack):xstring;
function  xpopboolean(s:xstack):xboolean;
procedure xpopcaret;
procedure xpopcursor;
procedure xpopmachine;
procedure xpopmark(s:xstack);
procedure xpopn(s:xstack; n:xinteger);
function  xpopnumber(s:xstack):xnumber;
function  xpopobject(s:xstack):xobject;
function  xpopregister(s:xstack):xinteger;
procedure xpositioncabinet(c:xcabinet; d:xdir);
procedure xpositiondrawer(t:xdrawer; d:xdir);
procedure xpositionfolder(f:xfolder; d:xdir);
function  xpositionrectangle(r:xrect; x,y:xtwit):xrect;
function  xpositiontopoint(d:xdevice; var t:xtext; p:xposition):xpoint;
function  xprintpage(p:xpage; auto:xboolean):xboolean;
function  xptac(var t:xtext; p:xposition):xinteger; // positiontoabsolutecharacter
procedure xpushboolean(s:xstack; b:xboolean);
procedure xpushcaret;
procedure xpushcursor;
procedure xpushdate(s:xstack; d:xdate);
procedure xpushmachine;
procedure xpushnumber(s:xstack; n:xnumber);
procedure xpushmark(s:xstack);
procedure xpushobject(s:xstack; v:xvartyp; d:xdatatyp; o:xobject);
procedure xpushregister(s:xstack; v:xinteger);
procedure xpushstring(s:xstack; v:xstring);
procedure xpushtime(s:xstack; t:xtime);
function  xqts(s:xstring):xstring;
function  xreadaddenda:xboolean;
function  xreadblock(path:xstring; var b:xblock):xboolean;
function  xreadconfiguration:xboolean;
function  xreaddrawerentry(cid:xstring; rid:xinteger; var d:xdrawerentry):xboolean;
function  xreaddrawerindex(cid:xstring):xboolean;
function  xreadentry(path:xstring; rid,rlen:xinteger; var e):xboolean;
function  xreadfile(path:xstring):xboolean;
function  xreadfolderentry(cid:xstring; did,rid:xinteger; var f:xfolderentry):xboolean;
function  xreadfolderindex(cid:xstring; did:xinteger):xboolean;
function  xreadindex(path:xstring; rlen:xinteger):xboolean;
function  xreadlexicon:xboolean;
function  xreadpage(p:xpage):xboolean;
function  xreadpageentry(cid:xstring; did,fid,rid:xinteger; var p:xpageentry):xboolean;
function  xreadpageindex(cid:xstring; did,fid:xinteger):xboolean;
function  xreadpicture(path:xstring; var p:xpicture):xboolean;
function  xreadsort(f:xfolder; var s:xstring):xboolean;
function  xreallocmemory(p:xpointer; s:xinteger):xpointer;
function  xrectangleencloses(a,b:xrect):xboolean;
function  xrectangleequals(a,b:xrect):xboolean;
function  xrectangleintersects(a,b:xrect):xboolean;
procedure xrefreshmenus;
function  xremovecharacters(s:xstring; c:xcharset):xstring;
procedure xremovecurvevertex(var c:xcurve; v:xvertex);
function  xremoveleading(s:xstring; c:xcharset):xstring;
function  xremovelink(n:xlink):xlink;
procedure xremovepolygonvertex(var n:xpolygon; v:xvertex);
function  xremovepossessive(w:xstring):xstring;
procedure xremoverows(var t:xtext; sr,er:xinteger);
procedure xremoveshapevertex(s:xshape; v:xvertex);
function  xremovetrailing(s:xstring; c:xcharset):xstring;
function  xremoveunwanted(s:xstring):xstring;
function  xrenamedrawer(d:xdrawer; g,n,v:xstring):xboolean;
function  xrenamefile(opath,npath:xstring):xboolean;
function  xrenamefolder(f:xfolder; n,v:xstring):xboolean;
function  xreplacecharacters(s:xshape; v:xstring):xboolean;
procedure xreplacelink(a,b:xlink);
procedure xresamplebits(obits:xbytes; ow,oh:xinteger; nbits:xbytes; nw,nh:xinteger);
procedure xreset(var f:xfile; r:xinteger);
procedure xresetbuffer;
procedure xresetclock(c:xclock);
procedure xresetclocks;
procedure xresetduplicate(p:xpage);
procedure xresetmachine;
procedure xresolvejumps(i:xinstructions);
function  xrestorepagestate(undo:xboolean):xboolean;
function  xrestoreshapestate(s:xshape; undo:xboolean):xboolean;
procedure xrestrictpage(p:xpage);
procedure xreturnboolean(b:xboolean);
procedure xreturndate(d:xdate);
procedure xreturnnull;
procedure xreturnnumber(n:xnumber);
procedure xreturnobject(t:xvartyp; o:xobject);
procedure xreturnstring(s:xstring);
procedure xreturnstringastype(d:xdatatyp; s:xstring);
procedure xreturntime(t:xtime);
procedure xreversechain(c:xpointer);
procedure xreverserows(s:xshape; sr,er:xinteger);
procedure xrewrite(var f:xfile; r:xinteger);
function  xrotatearc(a:xarc):xarc;
function  xrotatecurve(c:xcurve; a:xdegree):xcurve;
function  xrotateellipse(e:xellipse):xellipse;
function  xrotatepicture(p:xpicture):xpicture;
function  xrotatepolygon(n:xpolygon; a:xdegree):xpolygon;
function  xrotaterectangle(r:xrect):xrect;
procedure xrotateshape(s:xshape);
function  xrotatetext(var t:xtext):xtext;
procedure xrunerror(e:xstring);
function  xrunevent(s:xscope; n:xstring; c:xinteger; p:array of xobject):xboolean;
procedure xrunitem(i:xitem);
function  xsaveblock(b:xblock):xboolean;
procedure xsavedrawerselections(d:xdrawers);
procedure xsaveedit(s:xshape);
procedure xsavefolderselections(f:xfolders);
function  xsavepage(p:xpage):xboolean;
procedure xsavepageselections(p:xpages);
procedure xsavepagestate;
procedure xsaveshapestate(s:xshape; o:xshapeop);
procedure xsaveshapeselections(s:xshapes);
procedure xsavestopselections(s:xstops);
function  xscanpicture(s:xdoodad; var p:xpicture):xboolean;
procedure xscrollblock(b:xblock);
procedure xscrollcabinet(c:xcabinet);
procedure xscrolldrawer(d:xdrawer);
procedure xscrollfolder(f:xfolder);
procedure xscrollpage(p:xpage);
function  xscrolltoblockcaret(b:xblock):xboolean;
function  xscrolltoblockrectangle(b:xblock; r:xrect):xboolean;
function  xscrolltocaret(p:xpage):xboolean;
procedure xscrolltodrawer(d:xdrawer);
procedure xscrolltofolder(f:xfolder);
procedure xscrolltopage(p:xpage);
function  xscrolltorectangle(p:xpage; r:xrect):xboolean;
procedure xscrolltoshape(s:xshape);
procedure xseek(var f:xfile; p:xinteger);
procedure xselectcharacters(s:xshape);
procedure xselectdrawers(d:xdrawers; selected:xboolean);
function  xselectenclosedshapes(s:xshapes; r:xrect):xboolean;
procedure xselectfolders(f:xfolders; selected:xboolean);
function  xselectintersecteddrawers(d:xdrawers; r:xrect):xboolean;
function  xselectintersectedfolders(f:xfolders; r:xrect):xboolean;
function  xselectintersectedpages(p:xpages; r:xrect):xboolean;
function  xselectintersectedstops(s:xstops; r:xrect):xboolean;
function  xselectionrectangle(s:xshape):xrect;
procedure xselectpages(p:xpages; selected:xboolean);
procedure xselectshape(s:xshape; selected:xboolean);
procedure xselectshapes(s:xshapes; selected:xboolean);
procedure xselectstops(s:xstops; selected:xboolean);
procedure xselectword(s:xshape);
procedure xsetcaret(s:xshape; p:xpoint);
procedure xsetcliprectangle(d:xdevice; r:xrect);
procedure xsetcolors(d:xdevice; b,f:xcolor);
procedure xsetdrawerdeepflags(d:xdrawers);
procedure xsetfolderdeepflags(f:xfolders);
procedure xsetfont(d:xdevice; f:xfont; m:xmag);
procedure xsetmemoryorigin(o:xpoint);
procedure xsetpagedeepflags(p:xpages);
procedure xsetselection(s:xshape; b,e:xinteger);
procedure xsetselectionbycolumnandrow(s:xshape; ac,ar,cc,cr:xinteger);
procedure xsetslice(s:xshape; i:xslice; v:xstring);
procedure xsettabname(n:array of xstring);
procedure xsetvalue(var t:xtext; v:xstring);
function  xshapeisfound(s:xshape; n:xslice; v:xstring; first:xboolean; var b:xinteger):xboolean;
function  xshapeisonedge(s:xshape):xboolean;
function  xshapeisvisible(s:xshape; fully:xboolean):xboolean;
procedure xshrinkrows(var t:xtext);
procedure xshowcaret(s:xshape);
procedure xshowcursor(c:xcursor);
function  xsizearc(a:xarc; dw,dh:xtwit; h:xhandle):xarc;
function  xsizearcproportionately(a:xarc; dw,dh:xextended; h:xhandle):xarc;
function  xsizecurve(c:xcurve; dw,dh:xtwit; h:xhandle):xcurve;
function  xsizecurveproportionately(c:xcurve; dw,dh:xextended; h:xhandle):xcurve;
function  xsizeellipse(e:xellipse; dw,dh:xtwit; h:xhandle):xellipse;
function  xsizeellipseproportionately(e:xellipse; dw,dh:xextended; h:xhandle):xellipse;
function  xsizepicture(p:xpicture; dw,dh:xtwit; h:xhandle):xpicture;
function  xsizepictureproportionately(p:xpicture; dw,dh:xextended; h:xhandle):xpicture;
function  xsizepolygon(n:xpolygon; dw,dh:xtwit; h:xhandle):xpolygon;
function  xsizepolygonproportionately(n:xpolygon; dw,dh:xextended; h:xhandle):xpolygon;
function  xsizerectangle(r:xrect; dw,dh:xtwit; h:xhandle):xrect;
function  xsizerectangleproportionately(r:xrect; dw,dh:xextended; h:xhandle):xrect;
procedure xsizeshape(s:xshape; dw,dh:xtwit; h:xhandle);
procedure xsizeshapeproportionately(s:xshape; dw,dh:xextended; h:xhandle);
procedure xsizeshapes(s:xshapes; dw,dh:xtwit; h:xhandle; selected:xboolean);
function  xsizetext(var t:xtext; dw,dh:xtwit; h:xhandle):xtext;
function  xsizetextproportionately(var t:xtext; dw,dh:xextended; h:xhandle):xtext;
function  xskiptoken(t:xtoktyp):xboolean;
function  xskipword(w:xstring):xboolean;
procedure xslapbar;
procedure xslapblock(b:xblock);
procedure xslapcabinet(c:xcabinet);
procedure xslapdrawer(d:xdrawer);
procedure xslaperror;
procedure xslapfolder(f:xfolder);
procedure xslaplogo(selected:xboolean);
procedure xslapmachine;
procedure xslapmenu(m:xmenu);
procedure xslapmessage;
procedure xslappage(p:xpage);
procedure xslappopup(p:xpopup);
procedure xslapshape(s:xshape);
procedure xslapworkarea;
function  xsleep(d:xpointer):xinteger;
procedure xslicepage(p:xpage; s:xslice);
procedure xsliceshape(s:xshape; c:xslice);
procedure xsliceshapes(s:xshapes; c:xslice);
procedure xsnapshape(s:xshape; g:xtwit);
function  xsnappoint(p:xpoint; g:xtwit):xpoint;
function  xsnaprectangle(r:xrect; g:xtwit):xrect;
procedure xsortchain(c:xpointer; s:xsorttyp; n:xstring; adjust:xboolean);
procedure xsortrows(s:xshape; sr,er,sc,ec:xinteger);
function  xsr(r:xrect; dl,dt,dr,db:xtwit):xrect;
procedure xsquish(var t:xtext; sr,sc,er,ec:xinteger; wrapme:xboolean);
procedure xstartclock(c:xclock);
function  xstb(s:xstring):xboolean;
function  xstd(s:xstring):xdate;
function  xstdwe(s:xstring; var d:xdate):xboolean;
function  xsti(s:xstring):xinteger;
function  xstiwe(s:xstring; var i:xinteger):xboolean;
function  xstn(s:xstring):xnumber;
function  xstnc(s:xstring):xnumber;
function  xstncwe(s:xstring; var n:xnumber):xboolean;
procedure xstopclock(c:xclock);
procedure xstoreaddenda;
procedure xstorearc(a:xarc);
procedure xstoreascii(const s:xstring);
procedure xstoreblock(b:xblock);
procedure xstoreboolean(b:xboolean);
procedure xstorebytes(b:xpointer; c:xinteger);
procedure xstorecolor(c:xcolor);
procedure xstorecurve(c:xcurve);
procedure xstoreellipse(e:xellipse);
procedure xstoreextended(e:xextended);
procedure xstorefont(f:xfont);
procedure xstoreinteger(i:xinteger);
procedure xstorelexicon;
procedure xstorepage(p:xpage);
procedure xstorepicture(p:xpicture);
procedure xstorepoint(p:xpoint);
procedure xstorepolygon(p:xpolygon);
procedure xstorerectangle(r:xrect);
procedure xstoreshapes(s:xshapes);
procedure xstoresort(s:xstring);
procedure xstorestring(v:xstring);
procedure xstoretext(var t:xtext);
function  xstq(s:xstring):xstring;
function  xstt(s:xstring):xtime;
function  xsttwe(s:xstring; var t:xtime):xboolean;
procedure xswitcharea(a:xarea);
function  xsymboltostring(s:xsymbol):xstring;
function  xsystemerrormessage(e:xinteger):xstring;
procedure xtimerprocedure(w:hwnd; m:uint; t:uint; s:dword); stdcall;
function  xtitlecase(s:xstring):xstring;
function  xtokentostring(t:xtoken):xstring;
function  xtokentypetostring(t:xtoktyp):xstring;
procedure xtrackblock;
procedure xtrackcabinet;
procedure xtrackdrawer;
procedure xtrackfolder;
procedure xtrackhandle(var dw,dh:xtwit);
procedure xtracklimbos;
function  xtracklogo:xboolean;
function  xtrackmenu:xitem;
function  xtrackpopup(p:xpopup; var v:xstring):xboolean;
function  xtrackrubberband:xrect;
procedure xtrackselection;
function  xtrackshape:xpoint;
function  xtrackvertex:xpoint;
function  xtti(t:xtwit):xextended;
function  xtts(t:xtime):xstring;
function  xtype(o:xobject):xrecordtyp;
function  xtypemismatch(v:xvar; t:xdatatypset):xboolean;
function  xunfilepage(p:xpage):xboolean;
function  xunionrectangles(a,b:xrect):xrect;
procedure xunlockcabinet(cid:xstring);
procedure xunlockcabinets;
function  xupdatepage(p:xpage):xboolean;
function  xupdateshape(s:xshape):xboolean;
function  xuseraborted:xboolean;
function  xuserissure(last:xboolean):xboolean;
function  xuserwantstosave(b:xblock):xboolean;
function  xv(s:xstring):xstring;
procedure xviewarea;
procedure xviewblock(b:xblock);
procedure xviewcabinet(c:xcabinet; d:xdrawer);
procedure xviewdrawer(d:xdrawer; f:xfolder);
procedure xviewfolder(f:xfolder; p:xpage);
procedure xviewpage(p:xpage; s:xshape; b,e:xinteger);
function  xvertextopoint(s:xshape; v:xvertex):xpoint;
procedure xwarning(w:xstring);
function  xwidth(r:xrect):xtwit;
function  xwindowprocedure(w:hwnd; m:uint; wp:wparam; lp:lparam):lresult; stdcall;
function  xwordisnew(w:xstring):xboolean;
function  xwordisold(w:xstring):xboolean;
function  xwordisvalid(w:xstring):xboolean;
procedure xwraptext(var t:xtext; sr:xinteger; all,fixcaret:xboolean);
procedure xwriteaddenda;
function  xwriteblock(b:xblock):xboolean;
function  xwritedrawerentry(cid:xstring; rid:xinteger; d:xdrawerentry):xboolean;
function  xwritedrawerindex(cid:xstring):xboolean;
function  xwriteentry(path:xstring; rid,rlen:xinteger; const e):xboolean;
function  xwritefile(path:xstring):xboolean;
function  xwritefolderentry(cid:xstring; did,rid:xinteger; f:xfolderentry):xboolean;
function  xwritefolderindex(cid:xstring; did:xinteger):xboolean;
function  xwriteindex(path:xstring; rlen:xinteger):xboolean;
function  xwritepage(p:xpage):xboolean;
function  xwritepageentry(cid:xstring; did,fid,rid:xinteger; p:xpageentry):xboolean;
function  xwritepageindex(cid:xstring; did,fid:xinteger):xboolean;
function  xwritesort(f:xfolder; s:xstring):xboolean;
function  xyes(p,d:xstring; last:xboolean):xboolean;
function  xyuvtorgb(c:xyuv):xrgb;
function  xzdg:xtwit;
function  xzoomarc(a:xarc; z:xextended):xarc;
function  xzoomcurve(c:xcurve; z:xextended):xcurve;
function  xzoomellipse(e:xellipse; z:xextended):xellipse;
function  xzoomfont(f:xfont; z:xextended):xfont;
function  xzoommargin(var t:xtext):xtwit;
procedure xzoompage(p:xpage; z:xextended);
function  xzoompicture(p:xpicture; z:xextended):xpicture;
function  xzoompoint(p:xpoint; z:xextended):xpoint;
function  xzoompolygon(n:xpolygon; z:xextended):xpolygon;
function  xzoomrectangle(r:xrect; z:xextended):xrect;
procedure xzoomshape(s:xshape; z:xextended);
procedure xzoomshapes(s:xshapes; z:xextended);
function  xzoomtext(var t:xtext; z:xextended):xtext;
function  xzpg:xtwit;
function  xzsg:xinteger;

implementation

uses temps;

{a}

function  xabortprinting(d:xdevice):xboolean;
begin
	with xprinting do result:=(d=xprinter) and (inprogress) and (error or canceled);
end;

function  xactp(var t:xtext; c:xinteger):xposition; // absolutecharactertoposition
	var cr,n:xinteger;
begin
	with t,result do begin
		result:=xnilposition; n:=0;
		for cr:=1 to count do begin
			inc(n,length(rows[cr]));
			if n>=c then begin row:=cr; col:=length(rows[cr])-(n-c); exit; end;
		end;
	end;
end;

function  xaligntoboundary(i,b:xinteger):xinteger;
	var t:xinteger;
begin
	t:=i mod b; if t=0 then result:=i else result:=i+(b-t);
end;

procedure xaddcheckparameters(p:xinteger);
begin
	xappendlink(xca.source.shape.instrs,xcreatecheckparameters(p));
end;

procedure xaddcommand(m:xmenu; ck:xboolean; n:xstring; a:xchar; h:xhandlerproc; const p:array of xvariant);
begin
	if m=nil then exit;
	if xgetitemcount(m.items)>xmaxitems then exit;
	xappendlink(m.items,xcreatecommand(ck,n,a,h,p));
end;

procedure xaddexternalcall(e:xpage; p:xinteger);
begin
	if e=nil then exit;
	xappendlink(xca.source.shape.instrs,xcreateexternalcall(e,p));
end;

procedure xaddfoldersymbol(f:xfolder);
begin
	if f=nil then exit;
	xappendlink(xca.global.symbols,xcreatefoldersymbol(f));
end;

procedure xaddglobalsymbol(s:xscope; n:xstring; i:xinteger);
begin
	xappendlink(xca.global.symbols,xcreateglobalsymbol(s,n,i));
end;

procedure xaddglobalmarksymbol;
begin
	xappendlink(xca.global.symbols,xcreateglobalmarksymbol);
end;

procedure xaddinternalcall(i:xinternfunc; p:xinteger);
begin
	xappendlink(xca.source.shape.instrs,xcreateinternalcall(i,p));
end;

procedure xaddinternalsymbol(n:xstring; i:xinternfunc);
begin
	xappendlink(xca.global.symbols,xcreateinternalsymbol(n,i));
end;

procedure xaddjump(m:xinteger);
begin
	xappendlink(xca.source.shape.instrs,xcreatejump(m));
end;

procedure xaddjumpfalse(m:xinteger; popit:xboolean);
begin
	xappendlink(xca.source.shape.instrs,xcreatejumpfalse(m,popit));
end;

procedure xaddjumptrue(m:xinteger; popit:xboolean);
begin
	xappendlink(xca.source.shape.instrs,xcreatejumptrue(m,popit));
end;

procedure xaddlocalsymbol(n:xstring; i:xinteger);
begin
	xappendlink(xca.local.symbols,xcreatelocalsymbol(n,i));
end;

procedure xaddmark(m:xinteger);
begin
	xappendlink(xca.source.shape.instrs,xcreatemark(m));
end;

function  xaddnametosort(f:xfolder; n:xstring):xboolean;
	var s:xstring;
begin
	result:=false;
	if not xlockcabinet(f.cid) then exit;
	try
		xreadsort(f,s);
		if xv(s)=xv(n) then exit;
		xwritesort(f,n);
		result:=true;
	finally xunlockcabinet(f.cid); end;
end;

procedure xaddpagesymbol(t:xsymtyp; s:xscope; n:xstring; p:xpage);
begin
	if p=nil then exit;
	xappendlink(xca.global.symbols,xcreatepagesymbol(t,s,n,p));
end;

procedure xaddpop(p:xinteger);
begin
	xappendlink(xca.source.shape.instrs,xcreatepop(p));
end;

procedure xaddpushconstant(d:xdatatyp; v:xvariant);
begin
	xappendlink(xca.source.shape.instrs,xcreatepushconstant(d,v));
end;

procedure xaddpushreference(s:xstack; o:xinteger);
begin
	xappendlink(xca.source.shape.instrs,xcreatepushreference(s,o));
end;

procedure xaddseparator(m:xmenu);
begin
	if m=nil then exit;
	if xgetitemcount(m.items)>xmaxitems then exit;
	if m.items.lastitem=nil then exit;
	if m.items.lastitem.ityp=xsepitem then exit;
	xappendlink(m.items,xcreateseparator);
end;

procedure xaddsortcommands(m:xmenu);

procedure xaddsortcommands_blockview;
begin
	xaddcommand(m,false,'Sort...',x00,@xhandlesort,[xdefaultsort,'']);
end;

procedure xaddsortcommands_cabinetview;
begin
	with xcc^ do begin
		xaddcommand(m,lastsort=xgroupsort,'by Group',x00,@xhandlesort,[xgroupsort,'']);
		xaddcommand(m,lastsort=xnamesort,'by Name',x00,@xhandlesort,[xnamesort,'']);
		xaddcommand(m,lastsort=xversionsort,'by Version',x00,@xhandlesort,[xversionsort,'']);
	end;
end;

procedure xaddsortcommands_drawerview;
begin
	with xcd^ do begin
		xaddcommand(m,lastsort=xnamesort,'by Name',x00,@xhandlesort,[xnamesort,'']);
		xaddcommand(m,lastsort=xversionsort,'by Version',x00,@xhandlesort,[xversionsort,'']);
	end;
end;

procedure xaddsortcommands_folderview;
	var cf,ci,cj:xinteger; f:xfields; p:xpage; t:xfield;
begin
	with xcf^ do begin
		p:=xgetfirstselectedpage(xcf.pages);
		if p=nil then p:=xcf.pages.first; if p=nil then exit;
		f:=p.fields;
		// sort     // exchange sort
		for ci:=low(f) to high(f)-1 do begin
			for cj:=high(f) downto ci+1 do begin
				if f[ci].rect.left>f[cj].rect.left then begin t:=f[ci]; f[ci]:=f[cj]; f[cj]:=t; end;
			end;
		end;
		// put on menu
		for cf:=low(f) to high(f) do with f[cf] do begin
			if edge<>xca.edge then continue;
			if name='' then continue;
			xaddcommand(m,xv(lastsort)=xv(name),'by '+xtitlecase(name),x00,@xhandlesort,[xusersort,name]);
		end;
	end;
end;

begin
	if xcv=xblockview		then begin xaddsortcommands_blockview; exit; end;
	if xcv=xcabinetview	then begin xaddsortcommands_cabinetview; exit; end;
	if xcv=xdrawerview 	then begin xaddsortcommands_drawerview; exit; end;
	if xcv=xfolderview 	then begin xaddsortcommands_folderview; exit; end;
end;

procedure xaddsuggestioncommands(m:xmenu);
	var cv:xvalue;
begin
	cv:=xlexicon.suggestions.first;
	while cv<>nil do begin
		xaddcommand(m,false,cv.value,x00,@xhandlecorrect,[xinteger(cv)]);
		cv:=cv.next;
	end;
end;

function  xaddword(w,x:xstring):xboolean;
	var p:xinteger; t:xstring;
begin
	with xlexicon do begin
		result:=false;
		if not xwordisvalid(w) then exit;
		if not xlockcabinet(cid) then exit;
		try
			if (not opened) and (not xreadlexicon) then exit;
			xlexicon.opened:=true;
			xreadaddenda;
			if not xwordisnew(w) then exit;
			result:=true;
			w:=xremovepossessive(xv(w)); p:=1;
			repeat
				t:=xgetnextgenerictoken(addenda,p,false,[xcr,xlf,xsp]);
				if t='' then break;
				if t>=w then break;
				xgetnextgenerictoken(addenda,p,false,[xcr,xlf,xsp]);
			until xforever;
			w:=w+xsp+xphonex(x)+xcrlf;
			if t<>'' then insert(w,addenda,p-length(t)) else addenda:=addenda+w;
			xwriteaddenda;
		finally xunlockcabinet(cid); end;
	end;
end;

procedure xadjustareas;
	var ca:xarea; w:xtwit;
begin
	w:=xwidth(xscreen.body) div xgetareacount;
	ca:=xareas.first;
	while ca<>nil do with ca^,head do begin
		with xscreen.body do head:=xmr(left,bottom-240,0,bottom);
		if ca.prev<>nil then left:=ca.prev.head.right;
		right:=left+w;
		title.rect:=xsr(head,+30,+60,-30,-60);
		ca:=ca.next;
	end;
end;

procedure xadjustbar;
	var cm:xmenu;
begin
	cm:=xmenus.first;
	while cm<>nil do with cm^,head do begin
		with xscreen.head do head:=xmr(left+120+240+120-60,top,0,bottom);
		if cm.prev<>nil then left:=cm.prev.head.right;
		right:=left+60+xgettextwidth(title)+60;
		title.rect:=xsr(head,+60,+30,-60,-30);
		cm:=cm.next;
	end;
end;

procedure xadjustblock(b:xblock);
begin
	if b=nil then exit;
	with b^,edit^,text,font do begin
		rpb:=xheight(xca.clip) div size;
		clip.left:=xca.clip.left;
		clip.top:=xca.clip.top+(xheight(xca.clip)-rpb*size) div 2;
		clip.right:=xca.clip.right;
		clip.bottom:=clip.top+rpb*size;
		body.left:=0;
		body.top:=0;
		body.right:=high(xinteger) div 2;
		body.bottom:=high(xinteger) div 2;
	end;
end;

procedure xadjustcabinet(c:xcabinet);
	var cd:xdrawer; cc,dc,cr:xinteger; pb:xrect;
begin
	if c=nil then exit;
	with c^,body do begin
		pb:=body;
		ops:=xwidth(xsr(xca.clip,+270,0,-270,0)) div xdrawerwidth;
		dc:=xgetdrawercount(drawers); if dc=0 then ops:=0 else ops:=xmin(ops,(dc-1) div xdrps+1);
		left:=xca.clip.left+(xwidth(xca.clip)-ops*xdrawerwidth) div 2;
		top:=xca.clip.top+(xheight(xca.clip)-xdrps*xdrawerheight) div 2;
		right:=left+ops*xdrawerwidth;
		bottom:=top+xdrps*xdrawerheight;
		if not xrectangleequals(pb,body) then origin:=xmp(body.left,body.top);
		xdestroydrawers(c.extras,false);
		if drawers.first=nil then exit;
		cc:=0; cr:=0; cd:=drawers.first;
		while cd<>nil do begin
			if cr>xdrps-1 then begin inc(cc); cr:=0; end;
			cd.head:=xmr(cc*xdrawerwidth,cr*xdrawerheight,cc*xdrawerwidth+xdrawerwidth,cr*xdrawerheight+xdrawerheight);
			inc(cr); cd:=cd.next;
		end;
		for cr:=cr to xdrps-1 do with c^,extras^ do begin
			xappendlink(extras,xcreatedrawer('','',''));
			lastdrawer.head:=xmr(cc*xdrawerwidth,cr*xdrawerheight,cc*xdrawerwidth+xdrawerwidth,cr*xdrawerheight+xdrawerheight);
		end;
	end;
end;

procedure xadjustcaret(s:xshape);
begin
	if s=nil then exit;
	xadjusttextcaret(s.text);
end;

function  xadjustcase(a,b:xstring):xstring;
	var c:xboolean; cc:xinteger;
begin
	result:=a;if (a='') or (b='') then exit;
	c:=true;
	for cc:=1 to length(b) do if b[cc] in xlowers then begin c:=false; break; end;
	if c then begin result:=ansiuppercase(result); exit; end;
	c:=true;
	for cc:=1 to length(b) do if b[cc] in xuppers then begin c:=false; break; end;
	if c then begin result:=ansilowercase(result); exit; end;
	if b[1] in xuppers then begin result[1]:=upcase(result[1]); exit; end;
end;

procedure xadjustcurrentpageformode;
begin
	with xca^ do begin
		if page=nil then exit;
		page.edges:=edges;
		if xisdrawingpage(page) then begin slice:=saved.slice; edges:=saved.edges; grid:=saved.grid; end;
		if not xisdrawingpage(page) then begin slice:=xvslice; edges:=false; grid:=xisfunctionpage(page); end;
		if xisfunctionpage(page) then grid:=saved.grid;
		page.snap:=snap; xslicepage(page,slice); xhideedges(page,edges);
		xadjustpage(page);
		xselectshapes(page.shapes,false);
		xrestrictpage(page);
		xdestroypages(undo.pages,false); xdestroypages(redo.pages,false);
		xrefreshmenus;
	end;
end;

procedure xadjustdrawer(d:xdrawer);
	var cf:xfolder; cr:xinteger; r:xrect;
begin
	if d=nil then exit;
	with d^,body do begin
		ops:=xheight(xca.clip) div xfolderheight;
		left:=xca.clip.left+(xwidth(xca.clip)-xfolderwidth) div 2;
		top:=xca.clip.top+(xheight(xca.clip)-ops*xfolderheight) div 2;
		right:=left+xfolderwidth;
		bottom:=top+ops*xfolderheight;
		if folders.first=nil then exit;
		cr:=0; cf:=folders.first;
		while cf<>nil do with cf^,r do begin
			head:=xmr(0,cr*xfolderheight,xfolderwidth,cr*xfolderheight+xfolderheight);
			if cf=d.folders.last then head.bottom:=head.top+3960;
			if cf=d.folders.last then r:=head else r:=xsr(head,0,0,0,+180);
			poly:=xmakepolygon; hilite:=xmakepolygon;
			xappendpolygonvertices(poly,[left,bottom,left,top+180,left+180,top,right-180,top,right,top+180,right,bottom]);
			if cf<>d.folders.last then xappendpolygonvertices(poly,[right-180,bottom-180,left+180,bottom-180,left,bottom]);
			xappendpolygonvertices(hilite,[left+30,top+330,left+30,top+200,left+200,top+30,right-190,top+30,right-30,top+190,right-30,top+330,left+30,top+330]);
			inc(cr);
			cf:=cf.next;
		end;
	end;
end;

procedure xadjustfolder(f:xfolder);
	var cp:xpage; cr:xinteger;
begin
	if f=nil then exit;
	with f^,body do begin
		ops:=xheight(xca.clip) div xpageheight;
		left:=xca.clip.left+(xwidth(xca.clip)-xpagewidth) div 2;
		top:=xca.clip.top+(xheight(xca.clip)-ops*xpageheight) div 2;
		right:=left+xpagewidth;
		bottom:=top+ops*xpageheight;
		if pages.first=nil then exit;
		cr:=0; cp:=pages.first;
		while cp<>nil do begin
			cp.head:=xmr(0,cr*xpageheight,xpagewidth,cr*xpageheight+xpageheight);
			inc(cr);
			cp:=cp.next;
		end;
	end;
end;

procedure xadjustmenu(m:xmenu);
	var ci:xitem; w,y:xtwit;
begin
	if m=nil then exit;
	with m^,head,items^ do begin
		if (lastitem<>nil) and (lastitem.ityp=xsepitem) then xdestroyitem(lastitem);
		w:=xgetmaximumitemwidth(items,1500); y:=bottom+30;
		ci:=first;
		while ci<>nil do with ci^,rect do begin
			with m.head do rect:=xmr(left,y,left+w,y+180);
			if ci.ityp=xcmditem then with ci^ do begin
				title.rect:=xsr(rect,+180,0,-180*3,0);
				accel.rect:=xmr(right-180-60,top,right,bottom);
			end;
			if ci.ityp=xsepitem then bottom:=y+60;
			y:=bottom;
			ci:=ci.next;
		end;
		m.body:=xmr(left,bottom,left+w,y+30);
	end;
end;

procedure xadjustpage(p:xpage);
begin
	if p=nil then exit;
	xhideedges(p,p.edges);
	xcreatestops(p);
end;

procedure xadjustpicture(var pict:xpicture; dither:xboolean);

const black:xrgb=(b:000; g:000; r:000); white:xrgb=(b:255; g:255; r:255);
var sh,sw:xextended; tr:xrect;

function  xadjustpicture_mapcolor(c:xrgb):xrgb; forward;

procedure xadjustpicture_brightness;
	var cc,cr,cw,rw:xinteger; rgb:^xrgb;
begin
	with pict,dmap,header do begin
		cw:=3; rw:=xaligntoboundary(biwidth*cw,4);
		for cr:=1 to biheight do begin
			for cc:=1 to biwidth do begin
				rgb:=@bits[(((cr-1)*rw)+((cc-1)*cw))+1];
				rgb.r:=xlimit(round(rgb.r+brightness*2),0,255);
				rgb.g:=xlimit(round(rgb.g+brightness*2),0,255);
				rgb.b:=xlimit(round(rgb.b+brightness*2),0,255);
			end;
		end;
	end;
end;

procedure xadjustpicture_color;
	var cc,cr,cw,g,rw:xinteger; rgb:^xrgb;
begin
	with pict,dmap,header,color do begin
		if pigment in [xblack,xclear] then exit;
		cw:=3; rw:=xaligntoboundary(biwidth*cw,4);
		for cr:=1 to biheight do begin
			for cc:=1 to biwidth do begin
				rgb:=@bits[(((cr-1)*rw)+((cc-1)*cw))+1];
				g:=xlimit(trunc(0.29900*rgb.r+0.58700*rgb.g+0.11400*rgb.b),0,255);
				if pigment=xwhite then begin rgb.r:=255-g; rgb.g:=255-g; rgb.b:=255-g; continue; end;
				if pigment=xgray then begin rgb.r:=g; rgb.g:=g; rgb.b:=g; continue; end;
				rgb.r:=trunc(g*(xcolorref(xcolors[pigment,mixture]).r/255));
				rgb.g:=trunc(g*(xcolorref(xcolors[pigment,mixture]).g/255));
				rgb.b:=trunc(g*(xcolorref(xcolors[pigment,mixture]).b/255));
			end;
		end;
	end;
end;

procedure xadjustpicture_dither;

var cc,cr,cw,eb,eg,er,i,nrw,rw:xinteger; t1:^xrgb; t2:xrgb;

procedure xadjustpicture_dither_diffuse(r,c:xinteger; rx,gx,bx:xinteger);
	var n:xinteger; t:^xrgb;
begin
	with pict,dmap,header do begin
		if (c<1) or (c>biwidth) or (r<1) or (r>biheight) then exit;
		t:=@bits[(((r-1)*rw)+((c-1)*cw))+1];
		t.r:=xlimit(t.r+rx,0,255);
		t.g:=xlimit(t.g+gx,0,255);
		t.b:=xlimit(t.b+bx,0,255);
	end;
end;

begin
	with pict,dmap,header do begin
		cw:=3; rw:=xaligntoboundary(biwidth*cw,4);
		for cr:=1 to biheight do begin
			for cc:=1 to biwidth do begin
				t1:=@bits[(((cr-1)*rw)+((cc-1)*cw))+1];
				t2:=xadjustpicture_mapcolor(t1^);
				er:=t1.r-t2.r; eg:=t1.g-t2.g; eb:=t1.b-t2.b;
				xadjustpicture_dither_diffuse(cr+0,cc+1,7*er div 16,7*eg div 16,7*eb div 16);
				xadjustpicture_dither_diffuse(cr+1,cc-1,3*er div 16,3*eg div 16,3*eb div 16);
				xadjustpicture_dither_diffuse(cr+1,cc+0,5*er div 16,5*eg div 16,5*eb div 16);
				xadjustpicture_dither_diffuse(cr+1,cc+1,1*er div 16,1*eg div 16,1*eb div 16);
				t1^:=t2;
			end;
		end;
	end;
end;

function  xadjustpicture_mapcolor(c:xrgb):xrgb;
	const b=5;
	var g:xinteger;
begin
	with pict,color do begin
		if pigment<>xblack then begin
			c.r:=c.r shr (8-b); c.g:=c.g shr (8-b); c.b:=c.b shr (8-b);
			result:=xrgb(xpointer(@xpalette[xcolormap[(c.r shl (2*b))+(c.g shl b)+c.b]])^);
			exit;
		end;
		g:=xlimit(trunc(0.29900*c.r+0.58700*c.g+0.11400*c.b),0,255);
		if g>=64 then result:=white else result:=black;
	end;
end;

begin
	with pict,dmap,header do begin
		header:=omap.header;
		freemem(bits); bits:=nil; count:=0;
		if omap.bits=nil then exit;
		if (xwidth(rect)-10<=0) or (xheight(rect)-10<=0) then exit;
		if (xwidth(croprect)-10<=0) or (xheight(croprect)-10<=0) then exit;
		sw:=(xwidth(rect)-10)/(xwidth(croprect)-10);
		sh:=(xheight(rect)-10)/(xheight(croprect)-10);
		tr:=xsizerectangleproportionately(bitmaprect,sw,sh,xbottomright);
		biwidth:=(xwidth(tr)) div xtpp; biheight:=(xheight(tr)) div xtpp;
		count:=xaligntoboundary(biwidth*3,4)*biheight;
		reallocmem(bits,count);
		xresamplebits(omap.bits,omap.header.biwidth,omap.header.biheight,bits,biwidth,biheight);
		xadjustpicture_brightness;
		xadjustpicture_color;
		if (dither) or (color.pigment in [xblack,xwhite]) then xadjustpicture_dither;
	end;
end;

procedure xadjustpolygon(var n:xpolygon);
	var cv:xvertex;
begin
	with n,rect do begin
		rect:=xnilrect; if count=0 then exit;
		left:=xmaxx; top:=xmaxy; right:=xminx; bottom:=xminy;
		for cv:=1 to count do with vertices[cv] do begin
			if left>x 	then left:=x;
			if top>y 		then top:=y;
			if right<x 	then right:=x;
			if bottom<y	then bottom:=y;
		end;
	end;
end;

procedure xadjustpopup(p:xpopup);
	var ci:xitem; h,hw,t,w,y:xtwit; mp:xpoint; r:xrect;
begin
	if p=nil then exit;
	with p^,rect,choices^,xca.clip do begin
		w:=xgetmaximumitemwidth(choices,0); h:=xgetitemcount(choices)*180+60;
		hw:=w div 2;
		mp:=xgetmousepoint;
		t:=mp.y-180 div 2-30;
		r:=xmr(mp.x-hw,t,mp.x+hw,t+h);
		if r.right+xshadowwidth>=right 		then r:=xmoverectangle(r,right-r.right-xshadowwidth-10,0);
		if r.bottom+xshadowwidth>=bottom	then r:=xmoverectangle(r,0,bottom-r.bottom-xshadowwidth-10);
		if r.left<=left										then r:=xmoverectangle(r,left-r.left+10,0);
		if r.top<=top 										then r:=xmoverectangle(r,0,top-r.top+10);
		y:=r.top+30;
		ci:=first;
		while ci<>nil do with ci^,rect do begin
			with r do rect:=xmr(left,y,left+w,y+180);
			if ci.ityp=xchoiceitem then with ci^ do begin
				title.rect:=xsr(rect,+180,0,-180,0);
			end;
			y:=bottom;
			ci:=ci.next;
		end;
		p.rect:=xmr(r.left,r.top,r.right,r.bottom);
	end;
end;

procedure xadjustselection(s:xshape);
begin
	if s=nil then exit;
	with s^,text do begin
		if blocksel then exit;
		if caretpos.row<>anchor.row then exit;
		if caretpos.col<=length(rows[caretpos.row]) then exit;
		if anchor.col<=length(rows[caretpos.row]) then exit;
		anchor:=caretpos;
	end;
end;

procedure xadjustshape(s:xshape);

procedure xadjustshape_picture;
begin
	with s^,text do begin
		s.rect:=s.picture.rect;
		rect:=s.rect;
		font:=xzoomfont(xdefaultfont,s.mag);
		margin:=s.border.pigment<>xclear;
		xadjusttext(text);
	end;
end;

begin
	if s=nil then exit;
	with s^ do case styp of
		xarcshape:        rect:=s.arc.rect;
		xcurveshape:      rect:=s.curve.rect;
		xellipseshape:    rect:=s.ellipse.rect;
		xgroupshape:      rect:=xgetboundingrectangle(s.shapes,false);
		xpictureshape:		xadjustshape_picture;
		xpolygonshape:    rect:=s.polygon.rect;
		xrectangleshape:  rect:=s.rectangle;
		xtextshape:       rect:=s.text.rect;
	end;
end;

procedure xadjusttext(var t:xtext);
	var tm:ttextmetric;
begin
	with t do begin
		xsetfont(xmemory,font,mag);
		gettextmetrics(xdcs[xmemory],tm);
		colwidth:=tm.tmavecharwidth*xfac;
		rowheight:=font.size;
		getcharwidth(xdcs[xmemory],ord(xsp),ord(xsp),tabsize); // not scaled
		blocksel:=blocksel and xissimple(t);
	end;
end;

procedure xadjusttextcaret(var t:xtext);
	var len,m:xinteger;
begin
	with t do begin
		caretpos.row:=xlimit(caretpos.row,1,count);
		if xissimple(t) then m:=xmaxinteger else m:=length(rows[caretpos.row]);
		caretpos.col:=xlimit(caretpos.col,1,m);
		anchor.row:=xlimit(anchor.row,1,count);
		if xissimple(t) then m:=xmaxinteger else m:=length(rows[anchor.row]);
		anchor.col:=xlimit(anchor.col,1,m);
		if blocksel then exit;
		if caretpos.row<>anchor.row then exit;
		len:=length(rows[caretpos.row]);
		if (caretpos.col>=len) and (anchor.col>=len) then anchor:=caretpos;
	end;
end;

function  xangletoquadrant(a:xdegree):xquadrant;
begin
	if a<090 then begin result:=xtopright; exit; end;
	if a<180 then begin result:=xtopleft; exit; end;
	if a<270 then begin result:=xbottomleft; exit; end;
	result:=xbottomright;
end;

procedure xappendcurvevertices(var c:xcurve; const v:array of xtwit);
begin
	xappendpolygonvertices(xpolygon(c),v);
end;

function  xappenddrawerentry(cid:xstring; d:xdrawerentry):xboolean;
begin
	result:=xappendrecord(xgetdrawerindexname(cid),sizeof(d),d);
end;

function  xappendfolderentry(cid:xstring; did:xinteger; f:xfolderentry):xboolean;
begin
	result:=xappendrecord(xgetfolderindexname(cid,did),sizeof(f),f);
end;

procedure xappendlink(c:xpointer; n:xlink);
	var r:xrecord;
begin
	r:=n; if (c=nil) or (r=nil) then exit;
	if xrecord(c).rtyp<>xchainrecord then begin xerror('Internal Error 112.'); exit; end;
	with xchain(c)^,r^ do begin
		r.parent:=xchain(c).parent; r.chain:=c;
		prev:=last; next:=nil;
		if last=nil then first:=r else lastrecord.next:=r;
		last:=r;
	end;
end;

function  xappendpageentry(cid:xstring; did,fid:xinteger; p:xpageentry):xboolean;
begin
	result:=xappendrecord(xgetpageindexname(cid,did,fid),sizeof(p),p);
end;

procedure xappendpolygonvertices(var n:xpolygon; const v:array of xtwit);
	var cv:xinteger;
begin
	with n do begin
		cv:=0;
		while (cv<high(v)) and (count<high(xvertex)) do begin
			inc(count);
			vertices[count].x:=v[cv];
			vertices[count].y:=v[cv+1];
			inc(cv,2);
		end;
		xadjustpolygon(n);
	end;
end;

function  xappendrecord(path:xstring; s:xinteger; var r):xboolean;
	var fcb:file;
begin
	xassignfile(fcb,path);
	xreset(fcb,s);
	xseek(fcb,xfilesize(fcb));
	xblockwrite(fcb,r,1);
	xclosefile(fcb);
	result:=not xioerror(xioresult);
end;

procedure xappendrow(var t:xtext);
begin
	with t do begin
		inc(count); if count>size then xgrowrows(t);
		finalize(rows[count]);
	end;
end;

procedure xassignfile(var f:xfile; path:xstring);
begin
	assignfile(f,path);
end;

function  xautoscrollblock(b:xblock; sp:xpoint):xboolean;
	var a:xrect; g,op:xpoint; sx,sy:xinteger;
begin
	result:=false; if b=nil then exit;
	with b^,edit^,text do begin
		op:=origin;
		a:=xir(clip,10);
		if xpir(a,sp) then exit;
		g:=xgetshiftgrid(colwidth,rowheight);
		sx:=colwidth; sy:=g.y*xgetshiftratio(count*rowheight,xheight(clip));
		if sp.x<=a.left 	then xmoveblockorigin(b,+sx,0);
		if sp.y<=a.top 		then xmoveblockorigin(b,0,+sy);
		if sp.x>=a.right 	then xmoveblockorigin(b,-sx,0);
		if sp.y>=a.bottom	then xmoveblockorigin(b,0,-sy);
		result:=not xpointequals(op,origin);
		if not result then exit;
		xpause(50);
	end;
end;

function  xautoscrollcabinet(c:xcabinet; sp:xpoint):xboolean;
	var a:xrect; op:xpoint; sx:xinteger;
begin
	result:=false; if c=nil then exit;
	with c^,drawers^ do begin
		op:=origin;
		a:=xir(xca.body,10);
		if xpir(a,sp) then exit;
		sx:=xdrawergrid*xgetshiftratio(lastdrawer.head.right,xwidth(body));
		if sp.x<=a.left then xmovecabinetorigin(c,+sx);
		if sp.x>=a.right then xmovecabinetorigin(c,-sx);
		result:=not xpointequals(op,origin);
		if not result then exit;
		xpause(50);
	end;
end;

function  xautoscrolldrawer(d:xdrawer; sp:xpoint):xboolean;
	var a:xrect; op:xpoint; sy:xinteger;
begin
	result:=false; if d=nil then exit;
	with d^,folders^ do begin
		op:=origin;
		a:=xir(xca.body,10);
		if xpir(a,sp) then exit;
		sy:=xfoldergrid*xgetshiftratio(lastfolder.head.bottom,xheight(body));
		if sp.y<=a.top then xmovedrawerorigin(d,+sy);
		if sp.y>=a.bottom then xmovedrawerorigin(d,-sy);
		result:=not xpointequals(op,origin);
		if not result then exit;
		xpause(50);
	end;
end;

function  xautoscrollfolder(f:xfolder; sp:xpoint):xboolean;
	var a:xrect; op:xpoint; sy:xinteger;
begin
	result:=false; if f=nil then exit;
	with f^,pages^ do begin
		op:=origin;
		a:=xir(xca.body,10);
		if xpir(a,sp) then exit;
		sy:=xpagegrid*xgetshiftratio(lastpage.head.bottom,xheight(body));
		if sp.y<=a.top then xmovefolderorigin(f,+sy);
		if sp.y>=a.bottom then xmovefolderorigin(f,-sy);
		result:=not xpointequals(op,origin);
		if not result then exit;
		xpause(50);
	end;
end;

function  xautoscrollpage(p:xpage; sp:xpoint):xboolean;
	var a:xrect; op:xpoint; sx,sy:xinteger;
begin
	result:=false; if p=nil then exit;
	with p^ do begin
		op:=origin;
		a:=xir(xca.body,10);
		if xpir(a,sp) then exit;
		sx:=xzdg*xgetshiftratio(xwidth(p.body),xwidth(xca.clip));
		sy:=xzdg*xgetshiftratio(xheight(p.body),xheight(xca.clip));
		if sp.x<=a.left then xmovepageorigin(p,+sx,0);
		if sp.y<=a.top then xmovepageorigin(p,0,+sy);
		if sp.x>=a.right then xmovepageorigin(p,-sx,0);
		if sp.y>=a.bottom then xmovepageorigin(p,0,-sy);
		result:=not xpointequals(op,origin);
		if not result then exit;
		xpause(50);
	end;
end;

{b}

function  xbackspacecharacters(s:xshape; jump:xboolean):xboolean;
begin
	result:=false; if s=nil then exit;
	with s^,text,caretpos do begin
		if (row=1) and (col=1) and (not xisselection(s)) then exit;
		result:=true;
		if xisselection(s) then begin xdeleteselectedcharacters(s,true); exit; end;
		if (not jump) and (col=1) then begin xsquish(text,row-1,length(rows[row-1]),row,col,true); exit; end;
		xmovecaret(s,xleft,jump,true,false);
		xdeleteselectedcharacters(s,true);
	end;
end;

procedure xbeep;
begin
	messagebeep($FFFFFFFF);
end;

procedure xbeginedit(s:xshape);
begin
	if s=nil then exit;
	with s^,text do begin
		xdestroyshapes(xca.undo.texts,false);
		xdestroyshapes(xca.redo.texts,false);
		editing:=true;
		xadjustcaret(s);
	end;
end;

procedure xbeginpageedit(p:xpage; s:xshape);
begin
	if (p=nil) or (s=nil) then exit;
	xsavepagestate;
	if xisformpage(xcp) then xselectstops(p.horzs,false) else xselectshapes(p.shapes,false);
	xselectshape(s,true);
	p.edit:=s;
	xbeginedit(s);
	xsaveshapestate(p.edit,xnoshapeop);
end;

procedure xbeginprinterpage(r:xrect; auto:xboolean);

var lx,ly,pw,ph:xtwit; ro:xpoint;

function  xbeginprinterpage_getpapersize:xinteger;
	const ps:array[1..6] of record c:xinteger; w,h:xextended; end=
		((c:dmpaper_letter;  w:08.5; h:11.0), // must be in ascending order
		 (c:dmpaper_legal;   w:08.5; h:14.0),
		 (c:dmpaper_tabloid; w:11.0; h:17.0),
		 (c:dmpaper_csheet;  w:17.0; h:22.0),
		 (c:dmpaper_dsheet;  w:22.0; h:34.0),
		 (c:dmpaper_esheet;  w:34.0; h:44.0));
	var cp,pa:xinteger;
begin
	result:=0; pa:=(xwidth(r)-10)*(xheight(r)-10);
	for cp:=low(ps) to high(ps) do with ps[cp] do begin
		if pa>xitt(w)*xitt(h) then continue;
		result:=c; break;
	end;
end;

procedure xbeginprinterpage_setdeviceattributes;
	var off:xpoint;
begin
	if xprinting.error or xprinting.canceled then exit;
	with xprinting,printer^,devmode^ do begin
		setmapmode(xdcs[xprinter],mm_anisotropic);
		setwindowextex(xdcs[xprinter],xwtpi,xwtpi,nil);
		setviewportextex(xdcs[xprinter],lx,ly,nil);
		setviewportorgex(xdcs[xprinter],0,0,nil);
		ro.x:=ro.x div xfac; ro.y:=ro.y div xfac; lptodp(xdcs[xprinter],ro,1);
		off:=xmp(xoffset,yoffset);
		if (dmorientation=dmorient_landscape) and (rotate=090) then off:=xmp(-yoffset,+xoffset);
		if (dmorientation=dmorient_landscape) and (rotate=270) then off:=xmp(+yoffset,-xoffset);
		off.x:=off.x div xfac; off.y:=off.y div xfac; lptodp(xdcs[xprinter],off,1);
		if off.x=0 then off.x:=xgetphysicalxoffset(xprinter);
		if off.y=0 then off.y:=xgetphysicalyoffset(xprinter);
		setviewportorgex(xdcs[xprinter],-off.x+ro.x,-off.y+ro.y,nil);
		setbkmode(xdcs[xprinter],transparent);
		setstretchbltmode(xdcs[xprinter],halftone);
		selectpalette(xdcs[xprinter],xpalettes[xprinter],false);
		realizepalette(xdcs[xprinter]);
	end;
end;

procedure xbeginprinterpage_setprinterproperties;
	var c,h,s,w:xtwit;
begin
	if xprinting.error or xprinting.canceled then exit;
	with xprinting,printer^,devmode^ do begin
		clip:=r; w:=xwidth(r)-10; h:=xheight(r)-10;
		dmspecversion:=dm_specversion;
		dmfields:=dmfields or dm_orientation or dm_papersize or dm_ttoption;
		if w>h then dmorientation:=dmorient_landscape else dmorientation:=dmorient_portrait;
		if (w>maxwidth) and (w>h) then dmorientation:=dmorient_landscape else dmorientation:=dmorient_portrait;
		if ((w div xfac)*(h div xfac)<=2467584) and (w>h) then dmorientation:=dmorient_landscape;
		dmpapersize:=xbeginprinterpage_getpapersize;
		if not auto then begin dmfields:=dmfields or dm_defaultsource; dmdefaultsource:=dmbin_manual; end;
		dmttoption:=dmtt_download;
		resetdc(xdcs[xprinter],devmode^);
		lx:=xgetlogicalxpixels(xprinter);	ly:=xgetlogicalypixels(xprinter);
		pw:=xgetphysicalwidth(xprinter);	ph:=xgetphysicalheight(xprinter);
		ro:=xnilpoint;
		c:=0;
		if w<h then s:=w else s:=h;
		if centerfeed then c:=(xitt(pw/lx)-s) div 2;
		if dmorientation<>dmorient_landscape then begin ro.x:=c; exit; end;
		if centerfeed then c:=(xitt(ph/ly)-s) div 2;
		case rotate of
			090:  begin ro.x:=xitt(pw/lx)-w; ro.y:=c; end;
			270:	ro.y:=(xitt(ph/ly)-h)-c;
		end;
	end;
end;

procedure xbeginprinterpage_startpage;
begin
	if xprinting.error or xprinting.canceled then exit;
	xprinting.error:=startpage(xdcs[xprinter])<=0;
end;

begin
	// sequence is critical - can't call resetdc between startpage and endpage
	xbeginprinterpage_setprinterproperties;
	xbeginprinterpage_startpage;
	xbeginprinterpage_setdeviceattributes;
end;

procedure xbeginprinting(d:xdoodad);
	var i:tdocinfo; p:xhndl; s:xinteger; stubdev:tdevmode;
begin
	with xprinting do begin
		canceled:=false; error:=false; inprogress:=true; printer:=d;
		if (d=nil) or (d.dtyp<>xprinterdoodad) then begin error:=true; exit; end;
		// get dc
		xdcs[xprinter]:=createdc(nil,xpchar(d.device),nil,nil);
		if xdcs[xprinter]=0 then begin error:=true; exit; end;
		xoldpalettes[xprinter]:=selectpalette(xdcs[xprinter],xpalettes[xprinter],false);
		// get devmode
		openprinter(xpchar(d.device),p,nil);
		s:=documentproperties(0,p,xpchar(d.device),stubdev,stubdev,0);
		if s<=0 then begin error:=true; exit; end;
		getmem(devmode,s);
		if documentproperties(0,p,xpchar(d.device),devmode^,stubdev,dm_out_buffer)<0 then begin error:=true; exit; end;
		closeprinter(p);
		// set bumps
		xbump[xprinter].x:=round(xtpi/xgetlogicalxpixels(xprinter));
		xbump[xprinter].y:=round(xtpi/xgetlogicalypixels(xprinter));
		if d.postscript then begin xbump[xprinter].x:=0; xbump[xprinter].y:=0; end;
		// start document
		fillchar(i,sizeof(i),x00);
		i.cbsize:=sizeof(i);
		i.lpszdocname:=xname;
		error:=startdoc(xdcs[xprinter],i)<=0;
	end;
end;

procedure xbegintransaction;
begin
	xcx:='';
	xhidecursor;
	xslapbar;
end;

function  xbitmaptopicture(b:xbitmap; var p:xpicture):xboolean;

var colorcount,ncw,nrw:xinteger; flip:xboolean; sourcebits:xbytes;
var colors:xpicturepalette;

procedure xbitmaptopicture_setpixel(r,c,i:xinteger); forward;

procedure xbitmaptopicture_01;
	var pixels:xbyte; cc,cr,cw,rw:xinteger;
begin
	with p,omap,header do begin
		header:=pbitmapinfo(b).bmiheader;
		ncw:=3; nrw:=xaligntoboundary(biwidth*ncw,4);
		count:=nrw*biheight;
		cw:=8; rw:=xaligntoboundary(ceil(biwidth/cw),4);
		getmem(bits,count); fillchar(bits^,count,x00);
		for cr:=1 to biheight do begin
			for cc:=1 to ceil(biwidth/cw) do begin
				pixels:=sourcebits[(((cr-1)*(rw))+(cc-1))+1];
				xbitmaptopicture_setpixel(cr,((cc-1)*cw)+1,(pixels and $80) shr 7);
				xbitmaptopicture_setpixel(cr,((cc-1)*cw)+2,(pixels and $40) shr 6);
				xbitmaptopicture_setpixel(cr,((cc-1)*cw)+3,(pixels and $20) shr 5);
				xbitmaptopicture_setpixel(cr,((cc-1)*cw)+4,(pixels and $10) shr 4);
				xbitmaptopicture_setpixel(cr,((cc-1)*cw)+5,(pixels and $08) shr 3);
				xbitmaptopicture_setpixel(cr,((cc-1)*cw)+6,(pixels and $04) shr 2);
				xbitmaptopicture_setpixel(cr,((cc-1)*cw)+7,(pixels and $02) shr 1);
				xbitmaptopicture_setpixel(cr,((cc-1)*cw)+8,(pixels and $01) shr 0);
			end;
		end;
		bibitcount:=24;
		result:=true;
	end;
end;

procedure xbitmaptopicture_04;
	var pixels:xbyte; cc,cr,cw,rw:xinteger;
begin
	with p,omap,header do begin
		header:=pbitmapinfo(b).bmiheader;
		ncw:=3; nrw:=xaligntoboundary(biwidth*ncw,4);
		count:=nrw*biheight;
		cw:=2; rw:=xaligntoboundary(ceil(biwidth/cw),4);
		getmem(bits,count); fillchar(bits^,count,x00);
		for cr:=1 to biheight do begin
			for cc:=1 to ceil(biwidth/cw) do begin
				pixels:=sourcebits[(((cr-1)*(rw))+(cc-1))+1];
				xbitmaptopicture_setpixel(cr,((cc-1)*cw)+1,(pixels and $f0) shr 4);
				xbitmaptopicture_setpixel(cr,((cc-1)*cw)+2,(pixels and $0f) shr 0);
			end;
		end;
		bibitcount:=24;
		result:=true;
	end;
end;

procedure xbitmaptopicture_08;
	var cc,cr,cw,rw:xinteger;
begin
	with p,omap,header do begin
		header:=pbitmapinfo(b).bmiheader;
		ncw:=3; nrw:=xaligntoboundary(biwidth*ncw,4);
		count:=nrw*biheight;
		getmem(bits,count); fillchar(bits^,count,x00);
		cw:=1; rw:=xaligntoboundary(biwidth,4);
		for cr:=1 to biheight do begin
			for cc:=1 to biwidth do begin
				xbitmaptopicture_setpixel(cr,cc,sourcebits[(((cr-1)*(rw))+((cc-1)*cw))+1]);
			end;
		end;
		bibitcount:=24;
		result:=true;
	end;
end;
{
procedure xbitmaptopicture_16;
begin
	with tbitmapinfo(b^),bmiheader do begin
		p.info.header:=bmiheader;
		xmessage('Analyzing colors...');
		xbitmaptopicture_initializecolors;
		xbitmaptopicture_countcolors16;
		xbitmaptopicture_sortcolors;
		xbitmaptopicture_buildpalettes;
		xmessage('Converting bitmap...');
		xbitmaptopicture_convertbits16;
		p.info.header.bibitcount:=8;
		p.origcolors:=p.info.colors;
		result:=true;
	end;
end;
}
procedure xbitmaptopicture_24;
begin
	with p,omap,header do begin
		header:=pbitmapinfo(b).bmiheader;
		count:=xaligntoboundary(biwidth*3,4)*biheight;
		getmem(bits,count);
		move(sourcebits^,bits^,count);
		result:=true;
	end;
end;
{
procedure xbitmaptopicture_32;
begin
	with tbitmapinfo(b^),bmiheader do begin
		p.info.header:=bmiheader;
		xmessage('Analyzing colors...');
		xbitmaptopicture_initializecolors;
		xbitmaptopicture_countcolors32;
		xbitmaptopicture_sortcolors;
		xbitmaptopicture_buildpalettes;
		xmessage('Converting bitmap...');
		xbitmaptopicture_convertbits32;
		p.info.header.bibitcount:=8;
		p.origcolors:=p.info.colors;
		result:=true;
	end;
end;
}
{
procedure xbitmaptopicture_convertbits16;
	var c:brgb; cc,cr,cw,nrw,rw:xinteger; colors:xshortinteger;
begin
	with tbitmapinfo(b^),bmiheader do begin
		nrw:=xaligntoboundary(biwidth,4);
		p.count:=nrw*biheight;
		getmem(p.bits,p.count); fillchar(p.bits^,p.count,x00);
		cw:=2; rw:=xaligntoboundary(biwidth*cw,4);
		for cr:=1 to biheight do begin
			for cc:=1 to biwidth do begin
				colors:=xshortinteger(xpointer(@sourcebits[(((cr-1)*(rw))+((cc-1)*cw))+1])^);
				c.red:=(colors and $7c00) shr 10;
				c.green:=(colors and $03e0) shr 5;
				c.blue:=(colors and $001f) shr 0;
				c.red:=(c.red div gap)*gap;
				c.green:=(c.green div gap)*gap;
				c.blue:=(c.blue div gap)*gap;
				p.bits[(((cr-1)*nrw)+(cc-1))+1]:=getnearestpaletteindex(logpalette,rgb(c.red,c.green,c.blue));
			end;
		end;
	end;
end;
}
{
procedure xbitmaptopicture_convertbits32;
	var c:brgb; cc,cr,cw,nrw,rw:xinteger;
begin
	with tbitmapinfo(b^),bmiheader do begin
		nrw:=xaligntoboundary(biwidth,4);
		p.count:=nrw*biheight;
		getmem(p.bits,p.count); fillchar(p.bits^,p.count,x00);
		cw:=4; rw:=xaligntoboundary(biwidth*cw,4);
		for cr:=1 to biheight do begin
			for cc:=1 to biwidth do begin
				c:=brgb(xpointer(@sourcebits[(((cr-1)*(rw))+((cc-1)*cw))+2])^);
				c.red:=(c.red div gap)*gap;
				c.green:=(c.green div gap)*gap;
				c.blue:=(c.blue div gap)*gap;
				p.bits[(((cr-1)*nrw)+(cc-1))+1]:=getnearestpaletteindex(logpalette,rgb(c.red,c.green,c.blue));
			end;
		end;
	end;
end;
}
procedure xbitmaptopicture_flip;
	var cw,er,rw,sr:xinteger; t:pointer;
begin
	with p,omap,header do begin
		sr:=1; er:=biheight; cw:=3; rw:=xaligntoboundary(biwidth*cw,4);
		getmem(t,rw);
		while sr<er do begin
			move(bits[(sr-1)*rw+1],t^,rw);
			move(bits[(er-1)*rw+1],bits[(sr-1)*rw+1],rw);
			move(t^,bits[(er-1)*rw+1],rw);
			inc(sr); dec(er);
		end;
		freemem(t);
	end;
end;

procedure xbitmaptopicture_setpixel(r,c,i:xinteger);
begin
	with p,omap,header do begin
		xrgb(xpointer(@bits[(((r-1)*nrw)+(c-1)*ncw)+1])^):=xrgb(xpointer(@colors[i+1])^);
	end;
end;

procedure xbitmaptopicture_snap;
	const ps=xpicturesnap div xtpp;
	var cc,cr,cw,ncw,nc,ncr,nh,nw,nrw,rw:xinteger;
begin
	with p,omap,header do begin
		cw:=3; rw:=xaligntoboundary(biwidth*cw,4);
		nw:=ps*trunc((biwidth-1)/ps)+1; nh:=ps*trunc((biheight-1)/ps)+1;
		ncw:=3; nrw:=xaligntoboundary(nw*ncw,4);
		nc:=nrw*nh; ncr:=0;
		for cr:=biheight-nh+1 to biheight do begin
			inc(ncr); move(bits[((cr-1)*rw)+1],bits[((ncr-1)*nrw)+1],nw*ncw);
		end;
		biwidth:=nw; biheight:=nh;
		count:=nc; reallocmem(bits,count);
	end;
end;

begin
	result:=false; p:=xmakepicture; if b=nil then exit;
	with tbitmapinfo(b^),bmiheader do begin
		if bisize<40 then begin xcx:='Bitmap versions previous to Windows 3.x are not supported.'; exit; end;
		if bicompression<>0 then begin xcx:='Compressed bitmaps are not supported.'; exit; end;
		flip:=biheight<0; if flip then biheight:=-biheight;
		colorcount:=biclrused; if (biclrused=0) and (bibitcount<16) then colorcount:=1 shl bibitcount;
		move(bmicolors[0],colors[1],colorcount*sizeof(trgbquad));
		sourcebits:=xpointer(xpchar(b)+bisize+(colorcount*sizeof(trgbquad)));
		xmessage('Converting bitmap...');
		case bibitcount of
			01:		xbitmaptopicture_01;
			04: 	xbitmaptopicture_04;
			08: 	xbitmaptopicture_08;
			//16: 	xbitmaptopicture_16;
			24: 	xbitmaptopicture_24;
			//32: 	xbitmaptopicture_32;
			else	xcx:=xits(bibitcount)+' bit bitmaps are not supported.';
		end;
		if not result then exit;
		if flip then xbitmaptopicture_flip;
		xbitmaptopicture_snap;
		p.bitmaprect:=xmr(0,0,p.omap.header.biwidth*xtpp-10,p.omap.header.biheight*xtpp-10);
		p.rect:=p.bitmaprect; p.croprect:=p.bitmaprect;
	end;
end;

procedure xblink;
begin
	xbeep;
	xslaplogo(true);
	xpause(250);
	xslaplogo(false);
end;

procedure xblitbits(f,t:xdevice; r:xrect);
begin
	with r do begin
		selectcliprgn(xdcs[f],0);
		selectcliprgn(xdcs[t],0);
		bitblt(xdcs[t],left div xfac,top div xfac,xwidth(r) div xfac,xheight(r) div xfac,
					 xdcs[f],left div xfac,top div xfac,srccopy);
	end;
end;

procedure xblitrectangle(r:xrect);
begin
	with r do begin
		xpushcaret;
		xsetcliprectangle(xdisplay,r);
		bitblt(xdcs[xdisplay],left div xfac,top div xfac,xwidth(r) div xfac,xheight(r) div xfac,
					 xdcs[xmemory],left div xfac,top div xfac,srccopy);
		xpopcaret;
	end;
end;

function  xblockisconfiguration(b:xblock):xboolean;
begin
	result:=false; if b=nil then exit;
	result:=extractfilename(xv(b.name))=extractfilename(xv(xgetconfigurationfilename));
end;

function  xblockiscurrentconfiguration(b:xblock):xboolean;
begin
	result:=false; if b=nil then exit;
	result:=xv(b.name)=xv(xgetconfigurationfilename);
end;

function  xblockisreadonly(b:xblock):xboolean;
begin
	result:=(b<>nil) and (xcabinetidentifierisreadonly(extractfiledrive(b.name)+'\'));
	if result then xcx:='File is read only.';
end;

procedure xblockread(var f:xfile; var b; c:xinteger);
begin
	blockread(f,b,c);
end;

procedure xblockwrite(var f:xfile; const b; c:xinteger);
begin
	blockwrite(f,b,c);
end;

function  xbooleandialog(p,d:xstring; last:xboolean; var b:xboolean):xboolean;
	var a:xstring;
begin
	result:=xdialog(p,d,true,false,last,a);
	if result then b:=xstb(a);
end;

function  xbts(b:xboolean):xstring;
begin
	if b then result:='true' else result:='false';
end;

{c}

function  xcabinetidentifierisvalid(cid:xstring):xboolean;
	const v=[drive_cdrom,drive_fixed,drive_remote,drive_removable];
	var t:xinteger;
begin
	t:=getdrivetype(xpchar(cid));
	if not (t in [0,1]) then begin result:=t in v; exit; end;
	result:=xdirectoryexists(cid);
end;

function  xcabinetidentifierisreadonly(cid:xstring):xboolean;
	const v=[drive_fixed,drive_remote,drive_removable];
	var t:xinteger;
begin
	t:=getdrivetype(xpchar(cid));
	if not (t in [0,1]) then begin result:=not (t in v); exit; end;
	result:=filesetattr(cid,filegetattr(cid) and ($ffffffff-fareadonly))<>0
end;

function  xcabinetisreadonly(c:xcabinet):xboolean;
begin
	result:=(c<>nil) and (xcabinetidentifierisreadonly(c.cid));
	if result then xcx:='Cabinet is read only.';
end;

function  xcabinetnametocid(cn:xstring):xstring;
	var c:xdoodad;
begin
	result:='';
	c:=xfinddoodad(xcabinetdoodad,cn); if c=nil then exit;
	result:=c.cid;
end;

function  xcalculatedelta(a,b:xpoint; gx,gy:xtwit):xpoint;
begin
	if gx<>0 then result.x:=round((b.x-a.x)/gx)*gx else result.x:=b.x-a.x;
	if gy<>0 then result.y:=round((b.y-a.y)/gy)*gy else result.y:=b.y-a.y;
end;

procedure xcancelprinting;
begin
	if not xprinting.inprogress then exit;
	if xprinting.canceled then exit;
	xprinting.canceled:=true;
	if not xprinting.error then abortdoc(xdcs[xprinter]);
	xendprinting;
end;

function  xcaretrectangle(s:xshape):xrect;
	var i:xinteger; p:xpoint;
begin
	result:=xnilrect; if s=nil then exit;
	with s^,text do begin
		p:=xpositiontopoint(xmemory,text,caretpos);
		p.x:=xlimit(p.x,rect.left+xzoommargin(text),xmax(p.x,rect.right-xzoommargin(text)));
		if margin then i:=10 else i:=0;
		result:=xintersectrectangles(xmr(p.x,p.y+10,p.x,p.y+rowheight),xsr(rect,0,+i,0,-i));
	end;
end;

function  xcb:xblock;
begin
	result:=nil; if xca=nil then exit;
	result:=xca.block;
end;

function  xcc:xcabinet;
begin
	result:=nil; if xca=nil then exit;
	result:=xca.cabinet;
end;

function  xcd:xdrawer;
begin
	result:=nil; if xca=nil then exit;
	result:=xca.drawer;
end;

procedure xcentershape(s:xshape; r:xrect);
	var scp,rcp:xpoint;
begin
	if s=nil then exit;
	scp:=xgetcenterpoint(s.rect); rcp:=xgetcenterpoint(r);
	xmoveshape(s,rcp.x-scp.x,rcp.y-scp.y);
end;

function  xcf:xfolder;
begin
	result:=nil; if xca=nil then exit;
	result:=xca.folder;
end;

procedure xchangealignment(s:xshape; a:xalign);
begin
	if s=nil then exit;
	if s.styp=xgroupshape then begin xchangealignments(s.shapes,a,false); exit; end;
	if s.styp<>xtextshape then exit;
	s.text.font.align:=a;
	xadjusttext(s.text);
	xwraptext(s.text,1,true,not xissimple(s.text));
end;

procedure xchangealignments(s:xshapes; a:xalign; selected:xboolean);
	var cs,ns:xshape;
begin
	if s=nil then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if selected and not cs.sel then continue;
		xchangealignment(cs,a);
	end;
end;

procedure xchangearcvertex(var a:xarc; v:xvertex; p:xpoint);
begin
	a.angles[v]:=trunc(xgetangle(xgetcenterpoint(a.rect),p));
end;

procedure xchangearrow(s:xshape; a,b:xboolean);
begin
	if s=nil then exit;
	with s^ do case styp of
		xarcshape:    	begin arc.arrows[1]:=a; arc.arrows[2]:=b; end;
		xcurveshape:   	begin curve.arrows[1]:=a; curve.arrows[2]:=b; end;
		xgroupshape:		xchangearrows(shapes,a,b,false);
		xpolygonshape:	begin polygon.arrows[1]:=a; polygon.arrows[2]:=b; end;
	end;
end;

procedure xchangearrows(s:xshapes; a,b,selected:xboolean);
	var cs,ns:xshape;
begin
	if s=nil then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if selected and not cs.sel then continue;
		xchangearrow(cs,a,b);
	end;
end;

procedure xchangebrightness(s:xshape; d:xdir);
	var i:xinteger;
begin
	if s=nil then exit;
	if s.styp=xgroupshape then begin xchangebrightnesses(s.shapes,d,false); exit; end;
	if s.styp<>xpictureshape then exit;
	with s.picture do case d of
		xdown:  brightness:=brightness-1;
		xnodir:	brightness:=0;
		xup:    brightness:=brightness+1;
	end;
	xadjustpicture(s.picture,true);
end;

procedure xchangebrightnesses(s:xshapes; d:xdir; selected:xboolean);
	var cs,ns:xshape;
begin
	if s=nil then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if selected and not cs.sel then continue;
		xchangebrightness(cs,d);
	end;
end;

procedure xchangecurvevertex(var c:xcurve; v:xvertex; p:xpoint);
begin
	xchangepolygonvertex(xpolygon(c),v,p);
end;

procedure xchangeface(s:xshape; f:xface);
begin
	if s=nil then exit;
	if s.styp=xgroupshape then begin xchangefaces(s.shapes,f,false); exit; end;
	if s.styp<>xtextshape then exit;
	s.text.font.face:=f;
	xadjusttext(s.text);
	xwraptext(s.text,1,true,not xissimple(s.text));
end;

procedure xchangefaces(s:xshapes; f:xface; selected:xboolean);
	var cs,ns:xshape;
begin
	if s=nil then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if selected and not cs.sel then continue;
		xchangeface(cs,f);
	end;
end;

procedure xchangemixture(s:xshape; p:xprop; m:xmixture);
	const n=[xclear,xblack,xwhite];
begin
	if s=nil then exit;
	if s.styp=xgroupshape then begin xchangemixtures(s.shapes,p,m,false); exit; end;
	case p of
		xborderprop:	if not (s.border.pigment in n) then s.border.mixture:=m;
		xfillprop:    if not (s.fill.pigment in n) then s.fill.mixture:=m;
		xpenprop:     if not (s.pen.pigment in n) then s.pen.mixture:=m;
	end;
	if (s.styp=xpictureshape) and (p=xfillprop) then begin s.picture.color:=s.fill; xadjustpicture(s.picture,true); end;
end;

procedure xchangemixtures(s:xshapes; p:xprop; m:xmixture; selected:xboolean);
	var cs,ns:xshape;
begin
	if s=nil then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if selected and not cs.sel then continue;
		xchangemixture(cs,p,m);
	end;
end;

procedure xchangepicturevertex(var e:xpicture; v:xvertex; p:xpoint);
	var nr:xrect; dx,dy:xtwit; g:xinteger; sh,sw:xextended;
begin
	with e,rect do begin
		if omap.bits=nil then exit;
		g:=round(60*mag);
		if (xwidth(rect)-10<=0) or (xheight(rect)-10<=0) then exit;
		if (xwidth(croprect)-10<=0) or (xheight(croprect)-10<=0) then exit;
		sw:=(xwidth(croprect)-10)*mag/(xwidth(rect)-10);
		sh:=(xheight(croprect)-10)*mag/(xheight(rect)-10);
		nr:=xpositionrectangle(xzoomrectangle(xsizerectangleproportionately(bitmaprect,1/sw,1/sh,xbottomright),mag),left,top);
		nr:=xmoverectangle(nr,trunc(((bitmaprect.left-croprect.left)*mag)*(1/sw)),trunc(((bitmaprect.top-croprect.top)*mag)*(1/sh)));
		with nr do begin right:=g*trunc(right/g); bottom:=g*trunc(bottom/g); end;
		case v of
			1:	begin p.x:=xlimit(p.x,nr.left,right-g); dx:=round((p.x-left)*(1/mag));		left:=p.x; 		inc(croprect.left,trunc(dx*sw)); end;
			2:	begin p.y:=xlimit(p.y,nr.top,bottom-g); dy:=round((p.y-top)*(1/mag)); 		top:=p.y; 		inc(croprect.top,trunc(dy*sh)); end;
			3:	begin p.x:=xlimit(p.x,left+g,nr.right); dx:=round((p.x-right)*(1/mag)); 	right:=p.x; 	inc(croprect.right,trunc(dx*sw)); end;
			4:	begin p.y:=xlimit(p.y,top+g,nr.bottom); dy:=round((p.y-bottom)*(1/mag));	bottom:=p.y;	inc(croprect.bottom,trunc(dy*sh)); end;
		end;
	end;
end;

procedure xchangepigment(s:xshape; p:xprop; g:xpigment);
begin
	if s=nil then exit;
	if s.styp=xgroupshape then begin xchangepigments(s.shapes,p,g,false); exit; end;
	case p of
		xborderprop:	begin s.border.pigment:=g;	s.border.mixture:=xnormal; end;
		xfillprop:    begin s.fill.pigment:=g; 		s.fill.mixture:=xnormal; end;
		xpenprop:     begin s.pen.pigment:=g; 		s.pen.mixture:=xnormal; end;
	end;
	if (s.styp in [xpictureshape,xtextshape]) and (p=xborderprop) then s.text.margin:=g<>xclear;
	if (s.styp=xpictureshape) and (p=xfillprop) then begin s.picture.color:=s.fill; xadjustpicture(s.picture,true); end;
end;

procedure xchangepigments(s:xshapes; p:xprop; g:xpigment; selected:xboolean);
	var cs,ns:xshape;
begin
	if s=nil then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if selected and not cs.sel then continue;
		xchangepigment(cs,p,g);
	end;
end;

procedure xchangepolygonvertex(var n:xpolygon; v:xvertex; p:xpoint);
begin
	n.vertices[v]:=p;
	xadjustpolygon(n);
end;

function  xchangerectanglevertex(r,mr,sr:xrect; v:xvertex; p:xpoint; mag:xmag):xrect;
	var g:xtwit;
begin
	g:=round(60*mag);
	result:=r;
	with result do case v of
		1:	begin left:=xlimit(p.x,mr.left,sr.right-g); end;
		2:	begin top:=xlimit(p.y,mr.top,sr.bottom-g); end;
		3:	begin right:=xlimit(p.x,sr.left+g,mr.right); end;
		4:	begin bottom:=xlimit(p.y,sr.top+g,mr.bottom); end;
	end;
end;

procedure xchangesize(s:xshape; z:xsize);
	var apos,cpos:xinteger;
begin
	if s=nil then exit;
	with s^,text do begin
		if styp=xgroupshape then begin xchangesizes(shapes,z,false); exit; end;
		if styp<>xtextshape then exit;
		font.size:=round(z*mag);
		xadjusttext(text);
		xwraptext(text,1,true,not xissimple(s.text));
	end;
end;

procedure xchangesizes(s:xshapes; z:xsize; selected:xboolean);
	var cs,ns:xshape;
begin
	if s=nil then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if selected and not cs.sel then continue;
		xchangesize(cs,z);
	end;
end;

procedure xchangestyle(s:xshape; v:xstyle);
begin
	if s=nil then exit;
	if s.styp=xgroupshape then begin xchangestyles(s.shapes,v,false); exit; end;
	if s.styp<>xtextshape then exit;
	s.text.font.style:=v;
	xadjusttext(s.text);
	xwraptext(s.text,1,true,not xissimple(s.text));
end;

procedure xchangestyles(s:xshapes; v:xstyle; selected:xboolean);
	var cs,ns:xshape;
begin
	if s=nil then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if selected and not cs.sel then continue;
		xchangestyle(cs,v);
	end;
end;

procedure xchangevertex(s:xshape; v:xvertex; np:xpoint);
begin
	if s=nil then exit;
	case s.styp of
		xarcshape:			xchangearcvertex(s.arc,v,np);
		xcurveshape:		xchangecurvevertex(s.curve,v,np);
		xpictureshape:	xchangepicturevertex(s.picture,v,np);
		xpolygonshape:	xchangepolygonvertex(s.polygon,v,np);
	end;
	xadjustshape(s);
end;

function  xcheckparameters(a,b:xinteger):xboolean;
	var pc:xinteger;
begin
	result:=false;
	pc:=xpeekregister(0); if xca.abort then exit;
	if pc<a then begin xrunerror('Too few parameters.'); exit; end;
	if pc>b then begin xrunerror('Too many parameters.'); exit; end;
	result:=true;
end;

procedure xchopbottom(d:xdevice; r:xrect; w:xtwit; b:xcolor);
	var cr:xinteger;
begin
	cr:=0;
	while cr<=w do begin
		xdrawline(d,r.left,r.bottom-cr,r.left+(w-cr)-10,r.bottom-cr,b);
		xdrawline(d,r.right,r.bottom-cr,r.right-(w-cr)-10,r.bottom-cr,b);
		inc(cr,10);
	end;
end;

function  xcidtocabinetname(cid:xstring):xstring;
	var c:xdoodad;
begin
	result:=cid;
	c:=xfinddoodadbycid(xcabinetdoodad,cid); if c=nil then exit;
	result:=c.name;
end;

procedure xcleanrow(var t:xtext; r:xinteger);
begin
	with t do begin
		if (r<1) or (r>count) then exit;
		while (length(rows[r])-1>0) and (rows[r][length(rows[r])-1] in [xsp,xtb]) do delete(rows[r],length(rows[r])-1,1);
	end;
end;

procedure xclearreadonlyflag(path:xstring);
begin
	filesetattr(path,filegetattr(path) and ($ffffffff-fareadonly));
end;

procedure xclosebelow(v:xview);
begin
	with xca^ do begin
		if v=xpageview then exit;
		if view=xpageview then begin
			xendpageedit(page); xsavepage(page); xclosepage(page);
			view:=xfolderview; page:=nil;
			xdestroypages(undo.pages,false); xdestroypages(redo.pages,false);
		end;
		if v=xfolderview 	then exit;
		if view=xfolderview then begin
			xclosefolder(folder); view:=xdrawerview; folder:=nil;
		end;
		if v=xdrawerview 	then exit;
		if view=xdrawerview then begin
			xclosedrawer(drawer); view:=xcabinetview; drawer:=nil;
		end;
		if v=xcabinetview	then exit;
		if view=xcabinetview then begin
			xclosecabinet(cabinet); view:=xareaview; cabinet:=nil;
		end;
		if v=xblockview then exit;
		if view=xblockview then begin
			xcloseblock(block); view:=xareaview; block:=nil;
		end;
	end;
end;

function  xcloseblock(b:xblock):xboolean;
begin
	result:=false; if b=nil then exit;
	result:=true;
	xdestroyblock(b);
end;

function  xclosecabinet(c:xcabinet):xboolean;
begin
	result:=false; if c=nil then exit;
	result:=true;
	xdestroycabinet(c);
end;

procedure xcloseconfiguration;
begin
	xdestroydoodads(xconfig.doodads,false);
end;

function  xclosedrawer(d:xdrawer):xboolean;
begin
	result:=false; if d=nil then exit;
	result:=true; d.folders.opened:=false;
	xdestroyfolders(d.folders,false);
	xadjustdrawer(d);
end;

procedure xclosefile(var f:xfile);
begin
	closefile(f);
end;

function  xclosefolder(f:xfolder):xboolean;
begin
	result:=false; if f=nil then exit;
	result:=true; f.pages.opened:=false;
	xdestroypages(f.pages,false);
	xadjustfolder(f);
end;

procedure xclosemachine;
begin
	with xca.global do begin
		xdestroyvariables(stack,false,false);
		xdestroysymbols(symbols,false,false);
	end;
end;

function  xclosemenu(m:xmenu):xboolean;
begin
	result:=false; if m=nil then exit;
	result:=true;
	xdestroyitems(m.items,false);
	m.items.opened:=false;
end;

function  xclosepage(p:xpage):xboolean;
begin
	result:=false; if p=nil then exit;
	result:=true; p.shapes.opened:=false;
	xdestroyshapes(p.shapes,false);
	xnormalizepage(p,1/p.mag,60,xvslice);
	xadjustpage(p);
end;

function  xclosepopup(p:xpopup):xboolean;
begin
	result:=false; if p=nil then exit;
	result:=true;
	xdestroyitems(p.choices,false);
	p.choices.opened:=false;
end;

procedure xcloseprograms;
begin
	with xca^ do begin
		if programs=nil then exit;
		xrunevent('',xfinalizeeventname,0,[nil]);
		xdestroydrawer(programs); programs:=nil;
		xdestroyvariables(global.stack,true,false);
		xdestroysymbols(global.symbols,true,false);
	end;
end;

procedure xcompileerror(e:xstring);
begin
	with xca^,source do begin
		if abort then exit;
		abort:=true;
		xcx:=e;
		finalize(xsearch.debug); xsearch.debug:=xgetdebuginformation;
		xsearch.error:=e;
	end;
end;

function  xcompileshape(s:xshape; v:xslice; p:xparseproc):xboolean;
begin
	result:=false; if s=nil then exit;
	with xca^,s^ do begin
		if abort then exit;
		local.stack.so:=3; mark:=0; loop:=xnilloop;
		source.shape:=s; source.slice:=v; s.slices[v].pos:=1; xdestroyinstructions(instrs,false);
		xgetnexttoken;
		p;
		result:=not abort;
		instrs.opened:=not abort;
		if not instrs.opened then xdestroyinstructions(instrs,false);
		if instrs.opened then xresolvejumps(instrs);
		xdestroysymbols(local.symbols,false,false);
	end;
end;

function  xconcatinatenames(n:array of xstring):xstring;
	var cn:xinteger;
begin
	result:=''; for cn:=0 to high(n) do if n[cn]<>'' then result:=result+n[cn]+xsp;
	result:=xremovetrailing(result,[xsp]);
end;

function  xcopydrawer(d:xdrawer; ids:xboolean):xdrawer;
begin
	result:=nil; if d=nil then exit;
	result:=xcreatedrawer('','','');
	with result^ do begin
		rtyp:=d.rtyp; parent:=nil; chain:=nil; prev:=nil; next:=nil;
		if ids then begin cid:=d.cid; did:=d.did; level:=d.level; end;
		group:=d.group; name:=d.name; version:=d.version;
		origin:=d.origin; head:=d.head; body:=d.body;
		lastsort:=d.lastsort;
		ops:=d.ops;
		sel:=d.sel; was:=d.was; deep:=d.deep;
		xcopyfolders(folders,d.folders,true);
		xadjustdrawer(result);
	end;
end;

function  xcopyfolder(f:xfolder; ids:xboolean):xfolder;
begin
	result:=nil; if f=nil then exit;
	result:=xcreatefolder('','');
	with result^ do begin
		rtyp:=f.rtyp; parent:=nil; chain:=nil; prev:=nil; next:=nil;
		if ids then begin cid:=f.cid; did:=f.did; fid:=f.fid; level:=f.level; end;
		name:=f.name; version:=f.version;
		origin:=f.origin; head:=f.head; body:=f.body;
		lastsort:=f.lastsort;
		ops:=f.ops;
		sel:=f.sel; was:=f.was; deep:=f.deep;
		poly:=f.poly; hilite:=f.hilite;
		xcopypages(pages,f.pages,true);
		xadjustfolder(result);
	end;
end;

procedure xcopyfolders(a,b:xfolders; ids:xboolean);
	var cf:xfolder;
begin
	if (a=nil) or (b=nil) then exit;
	a.opened:=b.opened;
	cf:=b.first; while cf<>nil do begin xappendlink(a,xcopyfolder(cf,ids)); cf:=cf.next; end;
end;

function  xcopypage(p:xpage; ids:xboolean):xpage;
begin
	result:=nil; if p=nil then exit;
	result:=xcreatepage;
	with result^ do begin
		rtyp:=p.rtyp; parent:=nil; chain:=nil; prev:=nil; next:=nil;
		if ids then begin cid:=p.cid; did:=p.did; fid:=p.fid; pid:=p.pid; level:=p.level; end;
		fields:=p.fields;
		origin:=p.origin; head:=p.head; body:=p.body;
		sel:=p.sel; was:=p.was; deep:=p.deep; modified:=p.modified;
		scale:=p.scale;
		mag:=p.mag; snap:=p.snap; slice:=p.slice; edges:=p.edges;
		dup:=p.dup;
		lastsid:=p.lastsid;
		xcopyshapes(shapes,p.shapes);
		xadjustpage(result);
	end;
end;

procedure xcopypages(a,b:xpages; ids:xboolean);
	var cp:xpage;
begin
	if (a=nil) or (b=nil) then exit;
	a.opened:=b.opened;
	cp:=b.first; while cp<>nil do begin xappendlink(a,xcopypage(cp,ids)); cp:=cp.next; end;
end;

function  xcopypicture(p:xpicture):xpicture;
begin
	result:=xmakepicture;
	with result do begin
		rect:=p.rect;
		bitmaprect:=p.bitmaprect;
		croprect:=p.croprect;

		omap.header:=p.omap.header;
		omap.count:=p.omap.count;
		getmem(omap.bits,omap.count); move(p.omap.bits^,omap.bits^,omap.count);

		dmap.header:=p.dmap.header;
		dmap.count:=p.dmap.count;
		getmem(dmap.bits,dmap.count); move(p.dmap.bits^,dmap.bits^,dmap.count);

		color:=p.color;
		brightness:=p.brightness;
		mag:=p.mag;
	end;
end;

function  xcopyselectedcharacters(s:xshape):xboolean;

procedure xcopyselectedcharacters_blockselection;
	var cr:xinteger; rstats:xrowstats; tstats:xtextstats; v:xstring;
begin
	with s^,text,tstats,rstats do begin
		tstats:=xgettextstatistics(text,xnilpoint,xnilrect);
		for cr:=fsr to lsr do with rstats do begin
			rstats:=xgetrowstatistics(text,cr);
			v:=xfillright(copy(rows[cr],fsc,lsc-fsc+1),xsp,abs(na.col-nc.col));
			xappendlink(xclip.values,xcreatevalue(v));
		end;
	end;
end;

begin
	result:=false; if s=nil then exit;
	with s^,text do begin
		if not xisselection(s) then exit;
		result:=true;
		xdestroyvalues(xclip.values,false);
		if blocksel then begin xcopyselectedcharacters_blockselection; exit; end;
		xappendlink(xclip.values,xcreatevalue(xgetselectedcharacters(s)));
	end;
end;

function  xcopyshape(s:xshape):xshape;
begin
	result:=nil; if s=nil then exit;
	result:=xcreateshape(s.styp);
	with result^ do begin
		rtyp:=s.rtyp; parent:=nil; chain:=nil;	prev:=nil; next:=nil;
		sid:=s.sid;
		secx:=s.secx; secy:=s.secy;
		rect:=s.rect;
		sel:=s.sel; was:=s.was; hidden:=s.hidden;
		border:=s.border; fill:=s.fill; pen:=s.pen;
		mag:=s.mag;
		styp:=s.styp;
		case styp of
			xarcshape:        arc:=s.arc;
			xcurveshape:      curve:=s.curve;
			xellipseshape:    ellipse:=s.ellipse;
			xgroupshape:      xcopyshapes(shapes,s.shapes);
			xpictureshape:		begin picture:=xcopypicture(s.picture); slice:=s.slice; slices:=s.slices; xfinalizetext(text); text:=xcopytext(s.text); lastop:=s.lastop; modified:=s.modified; end;
			xpolygonshape:    polygon:=s.polygon;
			xrectangleshape:  rectangle:=s.rectangle;
			xtextshape:				begin dtyp:=s.dtyp; slice:=s.slice; slices:=s.slices; xfinalizetext(text); text:=xcopytext(s.text); lastop:=s.lastop; modified:=s.modified; end;
		end;
		xadjustshape(result);
	end;
end;

procedure xcopyshapes(a,b:xshapes);
	var cs:xshape;
begin
	if (a=nil) or (b=nil) then exit;
	a.opened:=b.opened;
	cs:=b.first; while cs<>nil do begin xappendlink(a,xcopyshape(cs)); cs:=cs.next; end;
end;

function  xcopytext(var t:xtext):xtext;
	var cr:xinteger;
begin
	fillchar(result,sizeof(result),x00);
	with result do begin
		rect:=t.rect;
		font:=t.font;
		margin:=t.margin; wrap:=t.wrap; blocksel:=t.blocksel;
		caretpos:=t.caretpos; anchor:=t.anchor; caretwas:=t.caretwas;
		mag:=t.mag;
		colwidth:=t.colwidth; rowheight:=t.rowheight; tabsize:=t.tabsize;
		editing:=t.editing;
		large:=t.large;
		count:=t.count; size:=t.size;
		getmem(rows,size*sizeof(xrow)); fillchar(rows^,size*sizeof(xrow),x00);
		for cr:=1 to count do rows[cr]:=t.rows[cr];
	end;
end;

function  xcp:xpage;
begin
	result:=nil; if xca=nil then exit;
	result:=xca.page;
end;

function  xcreatearc(r:xrect; c,d:xdegree; b,f:xcolor):xshape;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xshaperecord; styp:=xarcshape;
		rect:=r;
		border:=b; fill:=f;
		mag:=1.0;
		arc:=xmakearc(r,c,d);
	end;
end;

function  xcreatearea:xarea;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^,xscreen.rect do begin
		rtyp:=xarearecord;
		head:=xnilrect;
		body:=xmr(left,top+240,right,bottom-240);
		clip:=xmr(left,top+240+120,right,bottom-240-120);
		title:=xmt(xnilrect,xmf(xarialface,120,xplainstyle,xcenteralign),false,false,false,xnamewithspaces);
		edge:=xtopedge;
		mag:=1.0; snap:=60; slice:=xvslice; edges:=false; grid:=false;
		with saved do begin slice:=xvslice; edges:=true; grid:=true; end;
		undo.pages:=xcreatechain(result);
		undo.texts:=xcreatechain(result);
		redo.pages:=xcreatechain(result);
		redo.texts:=xcreatechain(result);
		global.symbols:=xcreatechain(result);
		global.stack:=xcreatestack;
		local.symbols:=xcreatechain(result);
		local.stack:=xcreatestack;
	end;
end;

function  xcreateblock(n:xstring):xblock;
	const font:xfont=(face:xcourierface; size:180; style:xplainstyle; align:xleftalign);
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xblockrecord;
		name:=n;
		edit:=xcreatetext(xmr(0,0,high(xinteger) div 2,high(xinteger) div 2),font,false,false,xclearcolor,xwhitecolor,xblackcolor,true,'','');
		edit.parent:=result;
		edit.text.rect.left:=edit.text.colwidth*2;
		xadjustshape(edit);
		xbeginedit(edit);
	end;
end;

function  xcreatecabinet(cn:xstring):xcabinet;
	var c:xdoodad;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xcabinetrecord;
		c:=xfinddoodad(xcabinetdoodad,cn); if c<>nil then cid:=c.cid;
		if (cid='') and (xdirectoryexists(cn)) then cid:=cn;
		if cid[length(cid)]<>'\' then cid:=cid+'\';
		if c<>nil then name:=c.name else name:=cn;
		drawers:=xcreatechain(result);
		extras:=xcreatechain(result);
	end;
end;

function  xcreatecabinetdoodad(n,d:xstring):xdoodad;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xdoodadrecord;
		dtyp:=xcabinetdoodad;
		name:=n; cid:=d;
		if (cid<>'') and (cid[length(cid)]<>'\') then cid:=cid+'\';
	end;
end;

function  xcreatechain(p:xparent):xpointer;
	var r:xchain;
begin
	new(r); fillchar(r^,sizeof(r^),x00);
	with r^ do begin rtyp:=xchainrecord; parent:=p; result:=r; end;
end;

function  xcreatecheckparameters(p:xinteger):xinstruction;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xinstrrecord; ityp:=xcheckparametersinstr;
		pcount:=p;
	end;
end;

function  xcreatecommand(ck:xboolean; n:xstring; a:xchar; h:xhandlerproc; const p:array of xvariant):xitem;
	var cp:xinteger;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xitemrecord; ityp:=xcmditem;
		title:=xmt(xnilrect,xmf(xarialface,180,xplainstyle,xleftalign),false,false,false,n);
		accel:=xmt(xnilrect,xmf(xarialface,180,xplainstyle,xleftalign),false,false,false,upcase(a));
		if @h=@xhandleface 	then title.font.face:=p[0];
		if @h=@xhandlestyle	then title.font.style:=p[0];
		check:=ck;
		handler:=h; for cp:=0 to high(p) do parms[cp+1]:=p[cp];
	end;
end;

function  xcreatecurve(r:xrect; const v:array of xtwit; b,f:xcolor):xshape;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xshaperecord; styp:=xcurveshape;
		rect:=r;
		border:=b; fill:=f;
		mag:=1.0;
		curve:=xmakecurve;
		xappendcurvevertices(curve,v);
	end;
end;

function  xcreatedrawer(dg,dn,dv:xstring):xdrawer;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xdrawerrecord;
		group:=dg; name:=dn; version:=dv;
		folders:=xcreatechain(result);
	end;
end;

function  xcreatechoice(p:xpopup; n:xstring):xitem;
begin
	result:=nil; if p=nil then exit;
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xitemrecord; ityp:=xchoiceitem;
		title:=xmt(xnilrect,xmf(xarialface,180,xplainstyle,xleftalign),false,false,false,n);
		accel:=xmt(xnilrect,xmf(xarialface,180,xplainstyle,xleftalign),false,false,false,x00);
		xappendlink(p.choices,result);
	end;
end;

function  xcreatedefaultdoodad(n,c1,c2,c3,p,s:xstring):xdoodad;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xdoodadrecord;
		dtyp:=xdefaultdoodad;
		name:=n; cabinets[1]:=c1; cabinets[2]:=c2; cabinets[3]:=c3;
		printer:=p; scanner:=s;
	end;
end;

function  xcreatedefaulttext(f,v:xstring):xshape;
begin
	result:=xcreatetext(xnilrect,xnilfont,false,false,xnilcolor,xnilcolor,xnilcolor,false,f,v);
end;

function  xcreateellipse(r:xrect; b,f:xcolor):xshape;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xshaperecord; styp:=xellipseshape;
		rect:=r;
		border:=b; fill:=f;
		mag:=1.0;
		ellipse:=xmakeellipse(r);
	end;
end;

function  xcreateexternalcall(e:xpage; p:xinteger):xinstruction;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xinstrrecord; ityp:=xexternalinstr;
		finalize(debug); debug:=xgetdebuginformation;
		pcount:=p;
		page:=e;
	end;
end;

function  xcreatefolder(n,v:xstring):xfolder;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xfolderrecord;
		name:=n; version:=v;
		pages:=xcreatechain(result);
	end;
end;

function  xcreatefoldersymbol(f:xfolder):xsymbol;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xsymbolrecord; styp:=xfoldersym;
		if f<>nil then name:=xv(f.name);
	end;
end;

function  xcreateglobalsymbol(s:xscope; n:xstring; i:xinteger):xsymbol;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xsymbolrecord; styp:=xglobalsym;
		scope:=xv(s); name:=xv(n);
		offset:=i;
	end;
end;

function  xcreateglobalmarksymbol:xsymbol;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin rtyp:=xsymbolrecord; styp:=xmarksym; end;
end;

function  xcreategroup:xshape;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xshaperecord; styp:=xgroupshape;
		mag:=1.0;
		shapes:=xcreatechain(result);
	end;
end;

function  xcreateinternalcall(i:xinternfunc; p:xinteger):xinstruction;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xinstrrecord; ityp:=xinternalinstr;
		finalize(debug); debug:=xgetdebuginformation;
		pcount:=p;
		intern:=i;
	end;
end;

function  xcreateinternalsymbol(n:xstring; i:xinternfunc):xsymbol;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xsymbolrecord; styp:=xinternsym;
		name:=xv(n);
		intern:=i;
	end;
end;

function  xcreatejump(m:xinteger):xinstruction;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xinstrrecord; ityp:=xjumpinstr;
		finalize(debug); debug:=xgetdebuginformation;
		mark:=m;
	end;
end;

function  xcreatejumpfalse(m:xinteger; popit:xboolean):xinstruction;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xinstrrecord; ityp:=xjumpfalseinstr;
		finalize(debug); debug:=xgetdebuginformation;
		mark:=m;
		pop:=popit;
	end;
end;

function  xcreatejumptrue(m:xinteger; popit:xboolean):xinstruction;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xinstrrecord; ityp:=xjumptrueinstr;
		finalize(debug); debug:=xgetdebuginformation;
		mark:=m;
		pop:=popit;
	end;
end;

function  xcreatelocalsymbol(n:xstring; i:xinteger):xsymbol;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xsymbolrecord; styp:=xlocalsym;
		name:=xv(n);
		offset:=i;
	end;
end;

function  xcreatelock(cid:xstring):xlock;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	result.rtyp:=xlockrecord;
	result.cid:=xv(cid);
end;

function  xcreatemark(m:xinteger):xinstruction;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xinstrrecord; ityp:=xmarkinstr;
		finalize(debug); debug:=xgetdebuginformation;
		mark:=m;
	end;
end;

function  xcreatemenu(t:xmenutyp; n:xstring):xmenu;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xmenurecord; mtyp:=t;
		title:=xmt(xnilrect,xmf(xarialface,180,xplainstyle,xleftalign),false,false,false,n);
		items:=xcreatechain(result);
		xappendlink(xmenus,result);
	end;
end;

function  xcreatepage:xpage;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xpagerecord;
		body:=xmr(0,0,6120,7920);
		scale:=1.0;
		mag:=1.0; snap:=60; slice:=xvslice; edges:=true;
		xresetduplicate(result);
		shapes:=xcreatechain(result);
		horzs:=xcreatechain(result);
		verts:=xcreatechain(result);
		names:=xcreatechain(result);
		specials:=xcreatechain(result);
	end;
end;

function  xcreatepagefromtemplate(t:xpage):xpage;
begin
	result:=nil; if t=nil then t:=xtemplates.drawing;
	if not xopenpage(t) then exit;
	result:=xcopypage(t,false);
end;

function  xcreatepagesymbol(t:xsymtyp; s:xscope; n:xstring; p:xpage):xsymbol;
begin
	result:=nil; if p=nil then exit;
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xsymbolrecord; styp:=t;
		scope:=xv(s); name:=xv(n);
		page:=p;
	end;
end;

function  xcreatepicture(p:xpicture; b,f:xcolor):xshape;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xshaperecord; styp:=xpictureshape;
		rect:=p.rect;
		border:=b; fill:=f;
		mag:=1.0;
		picture:=p;
		text:=xmt(rect,xdefaultfont,false,true,false,'');
	end;
end;

function  xcreatepolygon(r:xrect; const v:array of xtwit; b,f:xcolor):xshape;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xshaperecord; styp:=xpolygonshape;
		rect:=r;
		border:=b; fill:=f;
		mag:=1.0;
		polygon:=xmakepolygon;
		xappendpolygonvertices(polygon,v);
	end;
end;

function  xcreatepop(p:xinteger):xinstruction;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xinstrrecord; ityp:=xpopinstr;
		finalize(debug); debug:=xgetdebuginformation;
		pcount:=p;
	end;
end;

function  xcreatepopup:xpopup;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xpopuprecord;
		choices:=xcreatechain(result);
	end;
end;

function  xcreateprinterdoodad(n,d:xstring; p,c,r:xboolean; t,w,x,y:xinteger):xdoodad;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xdoodadrecord;
		dtyp:=xprinterdoodad;
		name:=xv(n); device:=xv(d);
		postscript:=p; centerfeed:=c; reverse:=r;
		rotate:=t; maxwidth:=w; xoffset:=x; yoffset:=y;
	end;
end;

function  xcreatepushconstant(d:xdatatyp; v:xvariant):xinstruction;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xinstrrecord; ityp:=xpushconstantinstr;
		finalize(debug); debug:=xgetdebuginformation;
		dtyp:=d; data:=v;
	end;
end;

function  xcreatepushreference(s:xstack; o:xinteger):xinstruction;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xinstrrecord; ityp:=xpushreferenceinstr;
		finalize(debug); debug:=xgetdebuginformation;
		stack:=s;
		offset:=o;
	end;
end;

function  xcreaterectangle(r:xrect; b,f:xcolor):xshape;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xshaperecord; styp:=xrectangleshape;
		rect:=r;
		border:=b; fill:=f;
		mag:=1.0;
		rectangle:=r;
	end;
end;

function  xcreatesection(s:xsectiontyp; h:xshape; n:xinteger):xsection;
begin
	result:=nil; if h=nil then exit;
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xsectionrecord;
		styp:=s;
		rect:=h.rect;
		number:=n;
	end;
end;

function  xcreateseparator:xitem;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin rtyp:=xitemrecord; ityp:=xsepitem; end;
end;

function  xcreatescannerdoodad(n,d:xstring):xdoodad;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xdoodadrecord;
		dtyp:=xscannerdoodad;
		name:=xv(n); device:=xv(d);
	end;
end;

function  xcreateshape(t:xshapetyp):xshape;
begin
	case t of
		xarcshape:        result:=xcreatearc(xnilrect,0,0,xnilcolor,xnilcolor);
		xcurveshape:      result:=xcreatecurve(xnilrect,xnilvertices,xnilcolor,xnilcolor);
		xellipseshape:    result:=xcreateellipse(xnilrect,xnilcolor,xnilcolor);
		xgroupshape:      result:=xcreategroup;
		xpictureshape:		result:=xcreatepicture(xnilpicture,xnilcolor,xnilcolor);
		xpolygonshape:    result:=xcreatepolygon(xnilrect,xnilvertices,xnilcolor,xnilcolor);
		xrectangleshape:	result:=xcreaterectangle(xnilrect,xnilcolor,xnilcolor);
		xtextshape:       result:=xcreatetext(xnilrect,xnilfont,false,false,xnilcolor,xnilcolor,xnilcolor,false,'','');
		else							result:=nil;
	end;
end;

function  xcreatestack:xstack;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	result.rtyp:=xstackrecord;
end;

function  xcreatestop(s:xshape):xstop;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	result.rtyp:=xstoprecord;
	result.shape:=s;
end;

procedure xcreatestops(p:xpage);

procedure xcreatestops_calculatesections;

var secs:xsections; lastno:xinteger;

procedure xcreatestops_calculatesections_createsections(c:xshapes);
	var cs,ns:xshape; t:xsectiontyp;
begin
	ns:=c.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if cs.styp=xgroupshape then begin xcreatestops_calculatesections_createsections(cs.shapes); continue; end;
		//if not (cs.styp in [xrectangleshape,xtextshape]) then continue;
		if (not xiseditshape(cs)) and (cs.styp<>xrectangleshape) then continue;
		inc(lastno);
		if cs.styp=xrectangleshape then t:=xrectanglesection else t:=xtextsection;
		xappendlink(secs,xcreatesection(t,cs,lastno));
	end;
end;

procedure xcreatestops_calculatesections_label(s:xstops);
	var cs:xshape; ns:xstop; ct,nt:xsection; texts:xboolean;
begin
	if s=nil then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns.shape; ns:=ns.next;
		nt:=secs.first; texts:=true;
		while nt<>nil do begin ct:=nt; nt:=nt.next;
			if ct.styp<>xrectanglesection then continue;
			if not xrectangleencloses(ct.rect,cs.rect) then continue;
			cs.secx:=ct.rect.left;
			cs.secy:=ct.rect.top;
			texts:=false;
			break;
		end;
		if not texts then continue;
		nt:=secs.first;
		while nt<>nil do begin ct:=nt; nt:=nt.next;
			if ct.styp<>xtextsection then continue;
			if not xrectangleintersects(ct.rect,cs.rect) then continue;
			cs.secx:=ct.rect.left;
			cs.secy:=ct.rect.top;
			break;
		end;
	end;
end;

procedure xcreatestops_calculatesections_partition;
	var cs,ct,nt:xsection; union:xboolean;
begin
	repeat
		union:=false;
		cs:=secs.first;
		while cs<>nil do begin
			if cs.styp<>xrectanglesection then begin cs:=cs.next; continue; end;
			nt:=secs.first;
			while nt<>nil do begin ct:=nt; nt:=nt.next;
				if cs=ct then continue;
				//if ct.styp<>xtextsection then continue;
				if not xrectangleencloses(cs.rect,ct.rect) then continue;
				xdestroysection(ct);
				union:=true;
			end;
			cs:=cs.next;
		end;
	until not union;
	repeat
		union:=false;
		cs:=secs.first;
		while cs<>nil do begin
			if cs.styp<>xtextsection then begin cs:=cs.next; continue; end;
			nt:=secs.first;
			while nt<>nil do begin ct:=nt; nt:=nt.next;
				if cs=ct then continue;
				if ct.styp<>xtextsection then continue;
				if not xrectangleintersects(cs.rect,ct.rect) then continue;
				cs.rect:=xunionrectangles(cs.rect,ct.rect);
				xdestroysection(ct);
				union:=true;
			end;
			cs:=cs.next;
		end;
	until not union;
end;

begin
	lastno:=0;
	secs:=xcreatechain(nil);
	xcreatestops_calculatesections_createsections(p.shapes);
	xcreatestops_calculatesections_partition;
	xcreatestops_calculatesections_label(p.specials);
	xcreatestops_calculatesections_label(p.names);
	xdestroysections(secs,true);
end;

procedure xcreatestops_create(c:xshapes);
	var cs,ns:xshape; e:xedge;
begin
	ns:=c.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if cs.styp=xgroupshape then xcreatestops_create(cs.shapes);
		//if cs.styp<>xtextshape then continue;
		if not (cs.styp in [xpictureshape,xtextshape]) then continue;
		e:=xgetedge(cs);
		if (e=xnoedge) and (xgetslice(cs,xnslice)<>'') then xappendlink(p.names,xcreatestop(cs));
		if cs.hidden then continue;
		if not xiseditshape(cs) then continue;
		if (not xisdrawingpage(p)) and (e<>xnoedge) then continue;
		if not xisdrawingpage(p) and not xiseditable(cs) then continue;
		xappendlink(p.horzs,xcreatestop(cs));
		xappendlink(p.verts,xcreatestop(cs));
		xappendlink(p.specials,xcreatestop(cs));
	end;
end;

begin
	xdestroystops(p.specials,false);
	xdestroystops(p.names,false);
	xdestroystops(p.verts,false);
	xdestroystops(p.horzs,false);
	xcreatestops_create(p.shapes);
	xsortchain(p.horzs,xhorzsort,'',false);
	xsortchain(p.verts,xvertsort,'',false);
	xcreatestops_calculatesections;
	xsortchain(p.names,xspecialsort,'',false);
	xsortchain(p.specials,xspecialsort,'',false);
end;

function  xcreatetext(r:xrect; n:xfont; m,w:xboolean; b,f,p:xcolor; larg:xboolean; o,v:xstring):xshape;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	with result^ do begin
		rtyp:=xshaperecord; styp:=xtextshape;
		border:=b; fill:=f; pen:=p;
		mag:=1.0;
		slice:=xvslice;
		slices[xfslice].str:=o; // don't call xsetslice — it will format twice
		instrs:=xcreatechain(result);
		text:=xmt(r,n,m,w,larg,v);
		xsetslice(result,xvslice,v);
		xadjustshape(result);
	end;
end;

function  xcreatevalue(v:xstring):xvalue;
begin
	new(result); fillchar(result^,sizeof(result^),x00);
	result.rtyp:=xvaluerecord;
	result.value:=v;
end;

function  xcs:xshape;
begin
	result:=nil;
	if (xca<>nil) and (xca.block<>nil) then result:=xca.block.edit;
	if (xca<>nil) and (xca.page<>nil) then result:=xca.page.edit;
end;

function  xcsab(s,t:xstring):xinteger;
	var a,b:xboolean;
begin
	result:=0; 	if (s='') and (t='') then exit;
	result:=1; 	if s='' then exit;
	result:=-1;	if t='' then exit;
	a:=xstb(s); b:=xstb(t);
	result:=-1; if a<b then exit;
	result:=1;  if a>b then exit;
	result:=0;
end;

function  xcsad(s,t:xstring):xinteger;
	var a,b:xdate;
begin
	result:=0; 	if (s='') and (t='') then exit;
	result:=1; 	if s='' then exit;
	result:=-1;	if t='' then exit;
	a:=xstd(s); b:=xstd(t);
	result:=-1; if a<b then exit;
	result:=1;  if a>b then exit;
	result:=0;
end;

function  xcsan(s,t:xstring):xinteger;
	var a,b:xnumber;
begin
	result:=0; 	if (s='') and (t='') then exit;
	result:=1; 	if s='' then exit;
	result:=-1;	if t='' then exit;
	a:=xstnc(s); b:=xstnc(t);
	result:=-1; if a<b then exit;
	result:=1;  if a>b then exit;
	result:=0;
end;

function  xcsas(s,t:xstring):xinteger;
begin
	result:=0; 	if (s='') and (t='') then exit;
	result:=1; 	if s='' then exit;
	result:=-1;	if t='' then exit;
	result:=comparetext(s,t);
end;

function  xcsat(s,t:xstring):xinteger;
	var a,b:xtime;
begin
	result:=0; 	if (s='') and (t='') then exit;
	result:=1; 	if s='' then exit;
	result:=-1;	if t='' then exit;
	a:=xstt(s); b:=xstt(t);
	result:=-1; if a<b then exit;
	result:=1;  if a>b then exit;
	result:=0;
end;

function  xcv:xview;
begin
	result:=xareaview; if xca=nil then exit;
	result:=xca.view;
end;

{d}

function  xdatatype(o:xobject):xdatatyp;
begin
	result:=xnodata; if o=nil then exit;
	case xtype(o) of
		xcabinetrecord:	result:=xcabinetdata;
		xdrawerrecord:  result:=xdrawerdata;
		xfolderrecord:  result:=xfolderdata;
		xpagerecord:    result:=xpagedata;
		xshaperecord:   if xshape(o).styp=xpictureshape then result:=xpicturedata else result:=xshape(o).dtyp;
	end;
end;

function  xdeletecharacters(s:xshape; jump:xboolean):xboolean;
begin
	result:=false; if s=nil then exit;
	with s^,text,caretpos do begin
		if (row=count) and (col>=length(rows[row])) and (not xisselection(s)) then exit;
		result:=true;
		if xisselection(s) then begin xdeleteselectedcharacters(s,true); exit; end;
		if (not jump) and (col>=length(rows[row])) then begin xsquish(text,row,col,row+1,1,true); exit; end;
		xmovecaret(s,xright,jump,true,false);
		xdeleteselectedcharacters(s,true);
	end;
end;

procedure xdeletedirectory(path:xstring);
	var r:xinteger; sr:tsearchrec;
begin
	if not xdirectoryexists(path) then exit;
	if length(path)<4 then exit; // safety check
	r:=findfirst(path+'*.*',faanyfile,sr);
	while r=0 do begin
		if (sr.name[1]<>'.') and ((sr.attr and fadirectory)<>0) then begin
			xdeletedirectory(path+sr.name+'\');
			r:=findnext(sr);
			continue;
		end;
		if sr.name[1]<>'.' then xdeletefile(path+sr.name);
		r:=findnext(sr);
	end;
	findclose(sr);
	if path[length(path)]='\' then delete(path,length(path),1);
	rmdir(path);
end;

function  xdeletedrawer(d:xdrawer):xboolean;
	var cd:xinteger; cid:xstring; parent:xcabinet;
begin
	result:=false; if d=nil then exit;
	if not xdrawerisfiled(d) then exit;
	cid:=d.cid; if not xlockcabinet(cid) then exit;
	with xindex do try
		if not xreaddrawerindex(d.cid) then exit;
		if not xfinddrawerentry(d.did,cd) then exit;
		if not xdraweriscurrent(d,cd) then exit;
		move(drawerindex[cd+1],drawerindex[cd],(count-cd)*sizeof(xdrawerentry));
		dec(count);
		if not xwritedrawerindex(d.cid) then exit;
		result:=true;
		xdeletedirectory(xgetdrawerdirectoryname(d.cid,d.did));
		parent:=d.parent; xdestroydrawer(d); xadjustcabinet(parent);
	finally xunlockcabinet(cid); end;
end;

function  xdeletefile(path:xstring):xboolean;
begin
	result:=deletefile(path);
end;

function  xdeletefolder(f:xfolder):xboolean;
	var cf:xinteger; cid:xstring; parent:xdrawer;
begin
	result:=false; if f=nil then exit;
	if not xfolderisfiled(f) then exit;
	cid:=f.cid; if not xlockcabinet(cid) then exit;
	with xindex do try
		if not xreadfolderindex(f.cid,f.did) then exit;
		if not xfindfolderentry(f.fid,cf) then exit;
		if not xfolderiscurrent(f,cf) then exit;
		move(folderindex[cf+1],folderindex[cf],(count-cf)*sizeof(xfolderentry));
		dec(count);
		if not xwritefolderindex(f.cid,f.did) then exit;
		result:=true;
		xdeletedirectory(xgetfolderdirectoryname(f.cid,f.did,f.fid));
		parent:=f.parent; xdestroyfolder(f); xadjustdrawer(parent);
	finally xunlockcabinet(cid); end;
end;

function  xdeletepage(p:xpage):xboolean;
	var cid:xstring; cp:xinteger; parent:xfolder;
begin
	result:=false; if p=nil then exit;
	if not xpageisfiled(p) then exit;
	cid:=p.cid; if not xlockcabinet(cid) then exit;
	with xindex do try
		if not xreadpageindex(p.cid,p.did,p.fid) then exit;
		if not xfindpageentry(p.pid,cp) then exit;
		if not xpageiscurrent(p,cp) then exit;
		move(pageindex[cp+1],pageindex[cp],(count-cp)*sizeof(xpageentry));
		dec(count);
		if not xwritepageindex(p.cid,p.did,p.fid) then exit;
		result:=true;
		xdeletefile(xgetpagefilename(p.cid,p.did,p.fid,p.pid));
		parent:=p.parent; xdestroypage(p); xadjustfolder(parent);
	finally xunlockcabinet(cid); end;
end;

procedure xdeleteselectedcharacters(s:xshape; wrapme:xboolean);

var a,b:xrowstats; tstats:xtextstats;

procedure xdeleteselectedcharacters_blockselection;
	var cr:xinteger; r:xrowstats;
begin
	with s^,text,tstats,caretpos do begin
		for cr:=fsr to lsr do with r do begin
			r:=xgetrowstatistics(text,cr);
			delete(rows[cr],fsc,lsc-fsc+1);
		end;
		col:=na.col; row:=fsr; anchor:=caretpos; caretwas:=caretpos;
	end;
end;

begin
	if s=nil then exit;
	with s^,text,tstats do begin
		if not xisselection(s) then exit;
		tstats:=xgettextstatistics(text,xnilpoint,s.rect);
		if blocksel then begin xdeleteselectedcharacters_blockselection; exit; end;
		na.col:=xlimit(na.col,1,length(rows[na.row]));
		nc.col:=xlimit(nc.col,1,length(rows[nc.row]));
		xsquish(text,na.row,na.col,nc.row,nc.col,wrapme);
	end;
end;

function  xdeleteword(w:xstring):xboolean;
	var p:xinteger;
begin
	with xlexicon do begin
		result:=false;
		if not xwordisvalid(w) then exit;
		if not xlockcabinet(cid) then exit;
		try
			if (not opened) and (not xreadlexicon) then exit;
			xlexicon.opened:=true;
			xreadaddenda;
			w:=xremovepossessive(xv(w));
			if pos(xlf+w+xsp,addenda)=0 then begin xcx:=''''+w+''' is not in lexicon.'; exit; end;
			result:=true;
			p:=pos(xlf+w+xsp,addenda); if p=0 then exit;
			delete(addenda,p+1,length(w)+1+length(xphonex(w))+2);
			xwriteaddenda;
		finally xunlockcabinet(cid); end;
	end;
end;

procedure xdentcharacters(s:xshape; d:xdir);

var tstats:xtextstats;

procedure xdentcharacters_in;
	var cc,cr:xinteger;
begin
	with s^,text,tstats do begin
		for cr:=fsr to lsr do begin
			if blocksel then cc:=na.col else cc:=1;
			if cc>length(rows[cr]) then continue;
			insert(xsp+xsp,rows[cr],cc);
			if blocksel then continue;
			if (cr=caretpos.row) and (caretpos.col<>1) then inc(caretpos.col,2);
			if (cr=anchor.row) and (anchor.col<>1) then inc(anchor.col,2);
		end;
	end;
end;

procedure xdentcharacters_out;
	var cc,cr:xinteger;
begin
	with s^,text,tstats do begin
		for cr:=fsr to lsr do begin
			if blocksel then cc:=na.col else cc:=1;
			if cc>length(rows[cr]) then continue;
			if not (rows[cr][cc] in [xsp,xtb]) then continue;
			if rows[cr][cc] in [xsp,xtb] then delete(rows[cr],cc,1);
			if rows[cr][cc] in [xsp,xtb] then delete(rows[cr],cc,1);
			if blocksel then continue;
			if cr=caretpos.row then caretpos.col:=xlimit(caretpos.col-2,1,xmaxinteger);
			if cr=anchor.row then anchor.col:=xlimit(anchor.col-2,1,xmaxinteger);
		end;
	end;
end;

begin
	if s=nil then exit;
	with s^ do begin
		if not xisselection(s) then exit;
		tstats:=xgettextstatistics(text,xnilpoint,xnilrect);
		if d=xin then xdentcharacters_in else xdentcharacters_out;
	end;
end;

function  xdeque:xevent;
	var m:tmsg;
begin
	with xqueue do begin
		fillchar(result,sizeof(result),x00);
		while count=0 do begin
			if not getmessage(m,0,0,0) then xdone:=true;
			if xdone then exit;
			translatemessage(m);
			dispatchmessage(m);
		end;
		result:=events[1];
		dec(count);
		move(events[2],events[1],sizeof(xevent)*count);
		killtimer(xwindow,ord(xsleeptimer));
		settimer(xwindow,ord(xsleeptimer),15*60*1000,@xtimerprocedure);
	end;
end;

procedure xdestroyarea(a:xarea);
begin
	if a=nil then exit;
	xremovelink(a);
	xdestroyvariables(a.local.stack,false,true);
	xdestroysymbols(a.local.symbols,false,true);
	xdestroyvariables(a.global.stack,false,true);
	xdestroysymbols(a.global.symbols,false,true);
	xdestroydrawer(a.programs);
	xdestroyshapes(a.redo.texts,true);
	xdestroypages(a.redo.pages,true);
	xdestroyshapes(a.undo.texts,true);
	xdestroypages(a.undo.pages,true);
	xdestroyblock(a.block);
	xdestroycabinet(a.cabinet);
	xfinalizetext(a.title);
	dispose(a);
end;

procedure xdestroyareas(chain:xboolean);
begin
	if xareas=nil then exit;
	while xareas.first<>nil do xdestroyarea(xareas.first);
	xareas.opened:=false;
	if chain then xdestroychain(xareas);
end;

procedure xdestroyblock(b:xblock);
begin
	if b=nil then exit;
	xsetvalue(b.edit.text,''); // keeps endedit from putting in slice
	xendedit(b.edit);
	xdestroyshape(b.edit);
	xremovelink(b);
	dispose(b);
end;

procedure xdestroycabinet(c:xcabinet);
begin
	if c=nil then exit;
	xremovelink(c);
	xdestroydrawers(c.extras,true);
	xdestroydrawers(c.drawers,true);
	dispose(c);
end;

procedure xdestroychain(c:xpointer);
begin
	if c=nil then exit;
	if xrecord(c).rtyp<>xchainrecord then begin xerror('Internal Error 118.'); exit; end;
	xremovelink(c);
	dispose(xchain(c));
end;

procedure xdestroychains(c:xchains; chain:xboolean);
begin
	if c=nil then exit;
	while c.first<>nil do xdestroychain(c.first);
	c.opened:=false;
	if chain then xdestroychain(c);
end;

procedure xdestroydoodad(d:xdoodad);
begin
	if d=nil then exit;
	xremovelink(d);
	dispose(d);
end;

procedure xdestroydoodads(d:xdoodads; chain:xboolean);
begin
	if d=nil then exit;
	while d.first<>nil do xdestroydoodad(d.first);
	d.opened:=false;
	if chain then xdestroychain(d);
end;

procedure xdestroydrawer(d:xdrawer);
begin
	if d=nil then exit;
	xremovelink(d);
	xdestroyfolders(d.folders,true);
	dispose(d);
end;

procedure xdestroydrawers(d:xdrawers; chain:xboolean);
begin
	if d=nil then exit;
	while d.first<>nil do xdestroydrawer(d.first);
	d.opened:=false;
	if chain then xdestroychain(d);
end;

procedure xdestroyfolder(f:xfolder);
begin
	if f=nil then exit;
	xremovelink(f);
	xdestroypages(f.pages,true);
	dispose(f);
end;

procedure xdestroyfolders(f:xfolders; chain:xboolean);
begin
	if f=nil then exit;
	while f.first<>nil do xdestroyfolder(f.first);
	f.opened:=false;
	if chain then xdestroychain(f);
end;

procedure xdestroyinstruction(i:xinstruction);
begin
	if i=nil then exit;
	xremovelink(i);
	dispose(i);
end;

procedure xdestroyinstructions(i:xinstructions; chain:xboolean);
begin
	if i=nil then exit;
	while i.first<>nil do xdestroyinstruction(i.first);
	i.opened:=false;
	if chain then xdestroychain(i);
end;

procedure xdestroyitem(i:xitem);
begin
	if i=nil then exit;
	xremovelink(i);
	xfinalizetext(i.accel);
	xfinalizetext(i.title);
	dispose(i);
end;

procedure xdestroyitems(i:xitems; chain:xboolean);
begin
	if i=nil then exit;
	while i.first<>nil do xdestroyitem(i.first);
	i.opened:=false;
	if chain then xdestroychain(i);
end;

procedure xdestroylock(n:xlock);
begin
	if n=nil then exit;
	xremovelink(n);
	dispose(n);
end;

procedure xdestroylocks(chain:xboolean);
begin
	if xlocks=nil then exit;
	while xlocks.first<>nil do xdestroylock(xlocks.first);
	if chain then xdestroychain(xlocks);
end;

procedure xdestroymenu(m:xmenu);
begin
	if m=nil then exit;
	xremovelink(m);
	xfinalizetext(m.title);
	xdestroyitems(m.items,true);
	dispose(m);
end;

procedure xdestroymenus(chain:xboolean);
begin
	if xmenus=nil then exit;
	while xmenus.first<>nil do xdestroymenu(xmenus.first);
	xmenus.opened:=false;
	if chain then xdestroychain(xmenus);
end;

procedure xdestroypage(p:xpage);
begin
	if p=nil then exit;
	xremovelink(p);
	xdestroystops(p.specials,true);
	xdestroystops(p.names,true);
	xdestroystops(p.verts,true);
	xdestroystops(p.horzs,true);
	xdestroyshapes(p.shapes,true);
	dispose(p);
end;

procedure xdestroypages(p:xpages; chain:xboolean);
begin
	if p=nil then exit;
	while p.first<>nil do xdestroypage(p.first);
	p.opened:=false;
	if chain then xdestroychain(p);
end;

procedure xdestroypopup(p:xpopup);
begin
	if p=nil then exit;
	xremovelink(p);
	xdestroyitems(p.choices,true);
	dispose(p);
end;

procedure xdestroysection(s:xsection);
begin
	if s=nil then exit;
	xremovelink(s);
	dispose(s);
end;

procedure xdestroysections(s:xsections; chain:xboolean);
begin
	if s=nil then exit;
	while s.first<>nil do xdestroysection(s.first);
	s.opened:=false;
	if chain then xdestroychain(s);
end;

procedure xdestroyshape(s:xshape);
begin
	if s=nil then exit;
	xremovelink(s);
	if s.styp=xgroupshape then xdestroyshapes(s.shapes,true);
	if s.styp=xpictureshape then begin xfinalizepicture(s.picture); xfinalizetext(s.text); end;
	if s.styp=xtextshape then begin xdestroyinstructions(s.instrs,true); xfinalizetext(s.text); end;
	dispose(s);
end;

procedure xdestroyshapes(s:xshapes; chain:xboolean);
begin
	if s=nil then exit;
	while s.first<>nil do xdestroyshape(s.first);
	s.opened:=false;
	if chain then xdestroychain(s);
end;

procedure xdestroystack(s:xstack);
begin
	if s=nil then exit;
	xremovelink(s);
	dispose(s);
end;

procedure xdestroystop(s:xstop);
begin
	if s=nil then exit;
	xremovelink(s);
	dispose(s);
end;

procedure xdestroystops(s:xstops; chain:xboolean);
begin
	if s=nil then exit;
	while s.first<>nil do xdestroystop(s.first);
	s.opened:=false;
	if chain then xdestroychain(s);
end;

procedure xdestroysymbol(s:xsymbol);
begin
	if s=nil then exit;
	xremovelink(s);
	dispose(s);
end;

procedure xdestroysymbols(s:xsymbols; tomark,chain:xboolean);
	var cs,ns:xsymbol;
begin
	if s=nil then exit;
	ns:=s.last;
	while ns<>nil do begin cs:=ns; ns:=ns.prev;
		if (not chain) and (tomark) and (cs.styp=xmarksym) then exit;
		xdestroysymbol(cs);
	end;
	s.opened:=false;
	if chain then xdestroychain(s);
end;

procedure xdestroyvalue(v:xvalue);
begin
	if v=nil then exit;
	xremovelink(v);
	dispose(v);
end;

procedure xdestroyvalues(v:xvalues; chain:xboolean);
begin
	if v=nil then exit;
	while v.first<>nil do xdestroyvalue(v.first);
	v.opened:=false;
	if chain then xdestroychain(v);
end;

procedure xdestroyvariables(v:xvariables; tomark,stack:xboolean);
	var ci,m:xinteger;
begin
	if v=nil then exit;
	m:=0;
	for ci:=v.sp downto 1 do with v.vars[ci] do begin
		if (tomark) and (vtyp=xmarkvar) then begin m:=ci; break; end;
		if vtyp=xstaticvar then begin xdestroyshape(obj); obj:=nil; continue; end;
	end;
	if stack then begin xdestroystack(v); exit; end;
	if tomark then begin v.sp:=m; exit; end;
	v.sf:=0; v.so:=0; v.sp:=0;
end;

function  xdialog(p,d:xstring; trim,nulls,last:xboolean; var v:xstring):xboolean;

var indialog:xboolean; input,prompt:xshape; pe:xevent; pr,pu:xshapes; rect:xrect;

procedure xdialog_finalize; forward;
procedure xdialog_handlecopy; forward;
procedure xdialog_handlecut; forward;
procedure xdialog_handledo(undo:xboolean); forward;
procedure xdialog_handlepaste; forward;
procedure xdialog_handleselectall; forward;
function  xdialog_ininput:xboolean; forward;
procedure xdialog_initialize; forward;
procedure xdialog_trackselection; forward;

procedure xdialog_finalize;
begin
	xendedit(input);
	xpopcursor;
	xpopcaret;
	v:=xgetvalue(input.text);
	xflushevents;
	if trim then begin v:=xremoveleading(v,[xsp]); v:=xremovetrailing(v,[xsp]); end;
	if (not nulls) and (v='') then result:=false;
	xsetvalue(xmsg,'');
	if not result or last then xslapbar;
	xdestroyshape(input);
	xdestroyshape(prompt);
	xdestroyshapes(xca.redo.texts,true); xca.redo.texts:=pr;
	xdestroyshapes(xca.undo.texts,true); xca.undo.texts:=pu;
	xce:=pe;
end;

procedure xdialog_handlebackspacekey;
begin
	xobscurecursor;
	xsaveshapestate(input,xbackspaceshapeop);
	if not xbackspacecharacters(input,xce.command) then xblink;
	xslapshape(input);
	xshowcaret(input);
end;

procedure xdialog_handlecharkey;
begin
	xobscurecursor;
  xsaveshapestate(input,xinsertshapeop);
	xinsertcharacters(input,xce.ascii);
	xslapshape(input);
	xshowcaret(input);
end;

procedure xdialog_handleclick;

procedure xdialog_handleclick_logo;
begin
	result:=xtracklogo;
	indialog:=not result;
end;

begin
	if xdialog_ininput	then begin xdialog_trackselection; exit; end;
	if xinlogo 					then begin xdialog_handleclick_logo; exit; end;
	if xinmenubar				then exit;
	indialog:=false;
end;

procedure xdialog_handlecommandkey;
begin
	case xv(xce.ascii)[1] of
		'a':	xdialog_handleselectall;
		'c':  xdialog_handlecopy;
		'v':  xdialog_handlepaste;
		'x':  xdialog_handlecut;
		'y':  xdialog_handledo(false);
		'z':  xdialog_handledo(true);
	end;
end;

procedure xdialog_handlecopy;
begin
	if not xcopyselectedcharacters(input) then xblink;
end;

procedure xdialog_handlecursor;
begin
	if xdialog_ininput then xshowcursor(xibeamcursor) else xshowcursor(xarrowcursor);
end;

procedure xdialog_handlecut;
begin
	xsaveshapestate(input,xnoshapeop);
	if not xcopyselectedcharacters(input) then begin xblink; exit; end;
	xdeletecharacters(input,false);
	xslapshape(input);
	xshowcaret(input);
end;

procedure xdialog_handledeletekey;
begin
	xobscurecursor;
	xsaveshapestate(input,xdeleteshapeop);
	if not xdeletecharacters(input,xce.command) then xblink;
	xslapshape(input);
	xshowcaret(input);
end;

procedure xdialog_handledo(undo:xboolean);
begin
	if not xrestoreshapestate(input,undo) then xblink;
	xslapshape(input);
	xshowcaret(input);
end;

procedure xdialog_handledoubleclick;
begin
	xselectword(input);
	xslapshape(input);
	xshowcaret(input);
end;

procedure xdialog_handlemovecaret;
begin
	xobscurecursor;
	xmovecaret(input,xce.dir,xce.command,xce.shift,true);
	xslapshape(input);
	xshowcaret(input);
end;

procedure xdialog_handlepaste;
begin
	if xclip.values.first<>nil then xsaveshapestate(input,xnoshapeop);
	if not xpastecharacters(input) then xblink;
	xslapshape(input);
	xshowcaret(input);
end;

procedure xdialog_handlereturnkey;
begin
	result:=true;
	indialog:=false;
end;

procedure xdialog_handleselectall;
begin
	xselectcharacters(input);
	xslapshape(input);
	xshowcaret(input);
end;

function  xdialog_ininput:xboolean;
begin
	result:=xpir(xsr(input.rect,0,-30,0,+30),xce.gp);
end;

procedure xdialog_initialize;
begin
	with rect do begin
		with xscreen.head do rect:=xmr(left+120+240+120,top+30,right-120,bottom-30);
		xpushcaret;
		xpushcursor;
		pe:=xce;
		pu:=xca.undo.texts; xca.undo.texts:=xcreatechain(nil);
		pr:=xca.redo.texts; xca.redo.texts:=xcreatechain(nil);
		prompt:=xcreatetext(xnilrect,xmf(xarialface,180,xplainstyle,xleftalign),false,false,xwhitecolor,xwhitecolor,xblackcolor,false,'',p);
		prompt.text.rect:=xmr(left,top,left+xgettextwidth(prompt.text),bottom); xadjustshape(prompt);
		input:=xcreatetext(xmr(prompt.rect.right+60,top,right,bottom),xmf(xarialface,180,xplainstyle,xleftalign),true,false,xwhitecolor,xwhitecolor,xblackcolor,false,'',d);
		xselectcharacters(input);
		xbeginedit(input);
		xsetcliprectangle(xmemory,rect);
		xdrawrectangle(xmemory,rect,xwhitecolor,xwhitecolor);
		xdrawshape(xmemory,prompt);
		xdrawshape(xmemory,input);
		xblitrectangle(rect);
		xshowcaret(input);
		xshowcursor(xarrowcursor);
		xflushevents;
	end;
end;

procedure xdialog_trackselection;
	var cp,np:xpoint;
begin
	xhidecaret;
	cp:=xce.gp;
	if xce.shift then xextendselection(input,cp) else xsetcaret(input,cp);
	xslapshape(input);
	while xmouseisdown(xleftbutton) do begin
		np:=xgetmousepoint;
		if not xmousehasmoved(cp,np,10,10) then continue;
		xextendselection(input,np);
		xslapshape(input);
		cp:=np;
	end;
	xadjustselection(input);
	xshowcaret(input);
end;

begin
	result:=false;
	xdialog_initialize;
	indialog:=true;
	repeat
		xce:=xdeque;
		case xce.etyp of
			xarrowkeyevent:	 		xdialog_handlemovecaret;
			xbackspacekeyevent:	xdialog_handlebackspacekey;
			xcharkeyevent:			xdialog_handlecharkey;
			xclickevent:				xdialog_handleclick;
			xcommandkeyevent:	  xdialog_handlecommandkey;
			xcursorevent:				xdialog_handlecursor;
			xdeactivateevent:	  indialog:=false;
			xdeletekeyevent:	  xdialog_handledeletekey;
			xdoubleclickevent:	xdialog_handledoubleclick;
			xescapekeyevent:		indialog:=false;
			xpositionkeyevent:	xdialog_handlemovecaret;
			xreturnkeyevent:		xdialog_handlereturnkey;
		end;
	until not indialog;
	xdialog_finalize;
end;

function  xdirectoryexists(path:xstring):xboolean;
	var c:xinteger;
begin
	result:=false;
	if path='' then exit;
	if path[length(path)]='\' then delete(path,length(path),1);
	c:=getfileattributes(xpchar(path));
	result:=(c<>-1) and (file_attribute_directory and c<>0);
end;

function  xdrag(p:xpoint; g:xtwit):xboolean;
begin
	result:=true;
	while xmouseisdown(xleftbutton) do begin
		if xmousehasmoved(p,xgetmousepoint,g,g) then exit;
	end;
	result:=false;
end;

procedure xdrawarea(d:xdevice; a:xarea);
begin
	if a=nil then exit;
	with a^,head do begin
		xsetcliprectangle(d,head);
		xdrawrectangle(d,head,xgraycolor,xgraycolor);
		if a<>xareas.first then xdrawline(d,left,top,left,bottom,xblackcolor);
		if a<>xareas.last then xdrawline(d,right,top,right,bottom,xblackcolor);
		if a<>xca then xdrawline(d,left,top,right,top,xblackcolor);
		xchopbottom(d,head,60,xblackcolor);
		xdrawtext(d,title,xnilpoint,head,xclearcolor,xclearcolor,xblackcolor,false,false,false);
	end;
	if a<>xca then exit;
	xsetcliprectangle(d,a.body);
	xdrawrectangle(d,xsr(a.body,0,+10,0,-10),xgraycolor,xgraycolor);
end;

procedure xdrawareas(d:xdevice);
	var ca:xarea;
begin
	if xareas=nil then exit;
	ca:=xareas.first; while ca<>nil do begin xdrawarea(d,ca); ca:=ca.next; end;
end;

procedure xdrawarc(d:xdevice; a:xarc; b,f:xcolor; closed:xboolean);

var ep,sp:xpoint; r:xrect;

procedure xdrawarc_arrows;
	var ah:xtwit; ap,mp:xpoint; cv:xvertex; n:xpolygon;
begin
	with a do begin
		for cv:=1 to 2 do begin
			if not arrows[cv] then continue;
			if cv=1 then ap:=sp else ap:=ep;
			n:=xmakepolygon;
			ah:=round(60*mag); // arbitrary rectangle
			xappendpolygonvertices(n,[ah,ah,-ah,ah,-ah,-ah,ah,-ah,ah,ah]);
			n:=xrotatepolygon(n,xgettangentangle(a,cv));
			n:=xmovepolygon(n,ap.x,ap.y);
			mp:=xmidpoint(n.vertices[cv*2],n.vertices[cv*2+1]);
			mp:=xintersectradiusandellipse(rect,mp);
			xdrawarrow(d,ap,xgetangle(mp,ap),mag,b);
		end;
	end;
end;

begin
	with a,r do begin
		if xabortprinting(d) then exit;
		sp:=xgetarcpoint(a,1); ep:=xgetarcpoint(a,2); r:=rect;
		if b.pigment=xclear then begin inc(left,xbump[d].x); inc(top,xbump[d].y); end;
		xsetcolors(d,b,f);
		left:=left div xfac; top:=top div xfac; right:=(right+xbump[d].x) div xfac; bottom:=(bottom+xbump[d].y) div xfac;
		if closed then begin pie(xdcs[d],left,top,right,bottom,sp.x div xfac,sp.y div xfac,ep.x div xfac,ep.y div xfac); exit; end;
		arc(xdcs[d],left,top,right,bottom,sp.x div xfac,sp.y div xfac,ep.x div xfac,ep.y div xfac);
		xdrawarc_arrows;
	end;
end;

procedure xdrawarrow(d:xdevice; p:xpoint; a:xdegree; m:xmag; c:xcolor);
	var arrow:xpolygon; h,w:xtwit;
begin
	w:=round(40*m);
	h:=round(60*m);
	arrow:=xmakepolygon;
	xappendpolygonvertices(arrow,[h,w div 2,0,0,0,w,h,w div 2]);
	arrow:=xrotatepolygon(arrow,a);
	with arrow do arrow:=xmovepolygon(arrow,p.x-vertices[1].x,p.y-vertices[1].y);
	xdrawpolygon(d,arrow,c,c,true);
end;

procedure xdrawbar(d:xdevice);
	var cm:xmenu;
begin
	with xscreen,head do begin
		xsetcliprectangle(d,head);
		xdrawrectangle(d,head,xwhitecolor,xwhitecolor);
		xdrawline(d,left,bottom,right,bottom,xblackcolor);
		cm:=xmenus.first;
		while cm<>nil do begin
			xdrawtext(d,cm.title,xnilpoint,head,xclearcolor,xclearcolor,xblackcolor,false,false,false);
			cm:=cm.next;
		end;
		xdrawlogo(d,xlogo,xwhitecolor,xblackcolor,true,false);
		xdrawmessage(d);
	end;
end;

procedure xdrawblock(d:xdevice; b:xblock);
begin
	if b=nil then exit;
	with b^ do begin
		xsetcliprectangle(d,clip);
		xdrawrectangle(d,clip,xwhitecolor,xwhitecolor);
		xdrawshape(d,edit);
	end;
end;

procedure xdrawcabinet(d:xdevice; c:xcabinet);

var cd:xdrawer;

procedure xdrawcabinet_drawer(t:xdrawer);
	const font:xfont=(face:xarialface; size:180; style:xplainstyle; align:xcenteralign);
	var r:xrect;
begin
	with t^,r do begin
		if not xdrawerisvisible(t,true) then exit;
		r:=xgr(head,parent.origin);
		xsetcliprectangle(d,r);
		xdrawrectangle(d,r,xblackcolor,xwhitecolor);
		xdrawline(d,left+360,top+660,left+720,top+660,xblackcolor);
		xeasytext(d,xmr(left+30,top+180,right-30,top+360),font,xblackcolor,group);
		xeasytext(d,xmr(left+30,top+360,right-30,top+540),font,xblackcolor,name);
		xeasytext(d,xmr(left+30,top+780,right-30,top+960),font,xblackcolor,version);
		if sel then xinvertrectangle(d,xir(r,30));
	end;
end;

begin
	if c=nil then exit;
	with c^,body,drawers^ do begin
		if first=nil then exit;
		cd:=first; while cd<>nil do begin xdrawcabinet_drawer(cd); cd:=cd.next; end;
		cd:=extras.first; while cd<>nil do begin xdrawcabinet_drawer(cd); cd:=cd.next; end;
		xsetcliprectangle(d,body);
		if not xdrawerisvisible(first,true)	then xdrawline(d,left,top,left,bottom,xgraycolor);
		if not xdrawerisvisible(last,true) 	then xdrawline(d,right,top,right,bottom,xgraycolor);
	end;
end;

procedure xdrawcaret;
	var ocr:xrect;
begin
	with xcarets,current,rect do begin
		if hidden then exit;
		ocr:=xgetcliprectangle(xdisplay);
		xsetcliprectangle(xdisplay,xscreen.rect);
		setrop2(xdcs[xdisplay],r2_notxorpen);
		selectobject(xdcs[xdisplay],xpens[xblack,xnormal]);
		movetoex(xdcs[xdisplay],left div xfac,top div xfac,nil);
		lineto(xdcs[xdisplay],right div xfac,(bottom+10) div xfac);
		state:=not state;
		setrop2(xdcs[xdisplay],r2_copypen);
		xsetcliprectangle(xdisplay,ocr);
	end;
end;

procedure xdrawcurve(d:xdevice; c:xcurve; b,f:xcolor; closed:xboolean);
	var cv,pc:xinteger; points:array[1..high(xvertex)*3] of xpoint; epas:xboolean;
begin
	with c do begin
		if xabortprinting(d) then exit;
		if count<2 then exit;
		epas:=xpointequals(vertices[1],vertices[count]);
		xsetcolors(d,b,f);
		setpolyfillmode(xdcs[d],winding);
		pc:=1;
		if epas then points[pc]:=xmidpoint(vertices[1],vertices[2]);
		if not epas then points[pc]:=vertices[1];
		for cv:=2 to count-1 do begin
			inc(pc); points[pc]:=vertices[cv];
			inc(pc); points[pc]:=vertices[cv];
			if (not epas) and (cv=count-1) then break;
			inc(pc); points[pc]:=xmidpoint(vertices[cv],vertices[cv+1]);
		end;
		if epas then begin
			inc(pc); points[pc]:=vertices[1];
			inc(pc); points[pc]:=vertices[1];
			inc(pc); points[pc]:=xmidpoint(vertices[1],vertices[2]);
		end;
		if not epas then begin inc(pc); points[pc]:=vertices[count]; end;
		for cv:=1 to pc do with points[cv] do begin x:=x div xfac; y:=y div xfac; end;
		beginpath(xdcs[d]);
		polybezier(xdcs[d],points,pc);
		endpath(xdcs[d]);
		if closed then begin strokeandfillpath(xdcs[d]); exit; end;
		strokepath(xdcs[d]);
		if arrows[1] then xdrawarrow(d,vertices[1],xgetangle(vertices[2],vertices[1]),mag,b);
		if arrows[2] then xdrawarrow(d,vertices[count],xgetangle(vertices[count-1],vertices[count]),mag,b);
	end;
end;

procedure xdrawdiamond(d:xdevice; r:xrect; b,f:xcolor);
	var cp:xpoint; n:xpolygon;
begin
	with cp,r do begin
		n:=xmakepolygon;
		cp:=xgetcenterpoint(r);
		xappendpolygonvertices(n,[left,y,x,top,right,y,x,bottom,left,y]);
		xdrawpolygon(d,n,b,f,true);
	end;
end;

procedure xdrawdrawer(d:xdevice; t:xdrawer);

var cf:xfolder;

procedure xdrawdrawer_folder(f:xfolder);
	const font1:xfont=(face:xcourierface; size:180; style:xplainstyle; align:xleftalign);
	const font2:xfont=(face:xcourierface; size:180; style:xplainstyle; align:xrightalign);
	var m,w,t:xtwit;
begin
	with f^,parent^,origin,xgr(f.head,origin) do begin
		if not xfolderisvisible(f,false) then exit;
		xsetcliprectangle(d,body);
		xdrawpolygon(d,xmovepolygon(poly,x,y),xblackcolor,xwhitecolor,true);
		t:=left+240; m:=60;
		w:=4200; xeasytext(d,xmr(t,top+90,t+w,top+270),font1,xblackcolor,f.name);  inc(t,m+w);
		w:=1380; xeasytext(d,xmr(t,top+90,t+w,top+270),font2,xblackcolor,f.version); inc(t,m+w);
		if f.sel then xinvertpolygon(d,xmovepolygon(hilite,x,y));
	end;
end;

begin
	if t=nil then exit;
	with t^,body,folders^ do begin
		if first=nil then exit;
		cf:=first; while cf<>nil do begin xdrawdrawer_folder(cf); cf:=cf.next; end;
		xsetcliprectangle(d,body);
		if not xfolderisvisible(last,true) then xdrawline(d,left+10,bottom,right-10,bottom,xwhitecolor);
	end;
end;

procedure xdrawellipse(d:xdevice; e:xellipse; b,f:xcolor);
begin
	if xabortprinting(d) then exit;
	if b.pigment=xclear then begin inc(e.rect.left,xbump[d].x); inc(e.rect.top,xbump[d].y); end;
	xsetcolors(d,b,f);
	with e.rect do ellipse(xdcs[d],left div xfac,top div xfac,(right+xbump[d].x) div xfac,(bottom+xbump[d].y) div xfac);
end;

function  xdraweriscurrent(d:xdrawer; de:xinteger):xboolean;
begin
	result:=false; if d=nil then exit;
	result:=d.level=xindex.drawerindex[de].level;
	if not result then xcx:='Drawer modified by another user.';
end;

function  xdrawerisfiled(d:xdrawer):xboolean;
begin
	result:=false; if d=nil then exit;
	result:=d.did<>0;
	if not result then xcx:='Invalid filing operation.';
end;

function  xdrawerisfound(d:xdrawer; s:xstring):xboolean;
begin
	result:=false; if d=nil then exit;
	s:=xv(s);
	result:=(pos(s,xv(d.group))<>0) or (pos(s,xv(d.name))<>0) or (pos(s,xv(d.version))<>0);
end;

function  xdrawerisreadonly(d:xdrawer):xboolean;
begin
	result:=(d<>nil) and (xcabinetidentifierisreadonly(d.cid));
	if result then xcx:='Drawer is read only.';
end;

function  xdrawerisvisible(d:xdrawer; fully:xboolean):xboolean;
begin
	result:=false; if d=nil then exit;
	if d.parent=nil then exit;
	if fully then result:=xrectangleencloses(xlvcr(d.parent),d.head);
	if not fully then result:=xrectangleintersects(xlvcr(d.parent),d.head);
end;

procedure xdrawerror(d:xdevice);
begin
	xsetcliprectangle(d,xerr.rect);
	xdrawtext(d,xerr,xnilpoint,xerr.rect,xwhitecolor,xwhitecolor,xredcolor,false,false,false);
end;

procedure xdrawfields(d:xdevice; o:xpoint; var f:xfields);
	var cf:xinteger; ff:xfont;
begin
	for cf:=low(f) to high(f) do with f[cf] do begin
		if edge<>xca.edge then continue;
		ff:=xmf(xcourierface,180,xplainstyle,align);
		xeasytextwithellipsis(d,xsr(xpositionrectangle(rect,rect.left+o.x,o.y),xtextmargin,0,-xtextmargin,0),ff,xblackcolor,value);
	end;
end;

procedure xdrawfocus(d:xdevice; s:xshape; r:xrect; op:xpoint);
	var t:xshape;
begin
	if s=nil then exit;
	xdrawfocusrectangle(d,xgr(r,op));
	if s.styp=xgroupshape then exit;
	if (s.styp in [xpictureshape,xrectangleshape,xtextshape]) and (xrectangleequals(s.rect,r)) then exit;
	t:=xcopyshape(s);
	xglobalizeshape(t,op);
	xfocusgraphics(d,true);
	xdrawshape(d,t);
	xfocusgraphics(d,false);
	xdestroyshape(t);
end;

procedure xdrawfocusrectangle(d:xdevice; r:xrect);
begin
	xpushcaret;
	with r do begin left:=left div xfac; top:=top div xfac; right:=right div xfac; bottom:=bottom div xfac; end;
	lptodp(xdcs[d],r,2);
	inc(r.right);
	inc(r.bottom);
	setbkcolor(xdcs[d],xcolors[xwhite,xnormal]);
	settextcolor(xdcs[d],xcolors[xblack,xnormal]);
	setmapmode(xdcs[d],mm_text);
	drawfocusrect(xdcs[d],r);
	setmapmode(xdcs[d],mm_anisotropic);
	setwindowextex(xdcs[d],xwtpi,xwtpi,nil);
	setviewportextex(xdcs[d],xppi,xppi,nil);
	xpopcaret;
end;

procedure xdrawfocusrectangles(d:xdevice; r,b:xrect; op:xpoint);
begin
	xdrawfocusrectangle(d,xgr(b,op));
	if xrectangleequals(r,b) then exit;
	xfocusgraphics(d,true);
	xdrawrectangle(d,xgr(r,op),xblackcolor,xclearcolor);
	xfocusgraphics(d,false);
end;

procedure xdrawfolder(d:xdevice; f:xfolder);

var cp:xpage;

procedure xdrawfolder_edge(p:xpage);
	var r:xrect;
begin
	with p^,r do begin
		if not xpageisvisible(p,true) then exit;
		r:=xgr(head,parent.origin);
		xsetcliprectangle(d,r);
		xdrawrectangle(d,r,xblackcolor,xwhitecolor);
		xsetcliprectangle(d,xir(r,10));
		xdrawfields(d,topleft,fields);
		if p.sel then xinvertrectangle(d,xir(r,30));
	end;
end;

procedure xdrawfolder_erasebottom;
begin
	with f^,body,pages^ do begin
		if not xpageisvisible(first,true) then xdrawline(d,left,top,right,top,xgraycolor);
		cp:=xgetlastvisiblepage(pages,true); if cp=nil then exit;
		with xgr(cp.head,origin) do xdrawline(d,left,bottom,right,bottom,xgraycolor);
	end;
end;

procedure xdrawfolder_erasetop;
begin
	with f^,body,pages^ do begin
		if not xpageisvisible(last,true) then xdrawline(d,left,bottom,right,bottom,xgraycolor);
		cp:=xgetfirstvisiblepage(pages,true); if cp=nil then exit;
		with xgr(cp.head,origin) do xdrawline(d,left,top,right,top,xgraycolor);
	end;
end;

begin
	if f=nil then exit;
	with f^,body,pages^ do begin
		if first=nil then exit;
		cp:=first;
		while cp<>nil do begin xdrawfolder_edge(cp); cp:=cp.next; end;
		xsetcliprectangle(d,f.body);
		if xca.edge=xtopedge then xdrawfolder_erasebottom else xdrawfolder_erasetop;
	end;
end;

procedure xdrawitem(d:xdevice; i:xitem);

procedure xdrawitem_choice;
begin
	with i^,rect do begin
		xsetcliprectangle(d,rect);
		xdrawrectangle(d,xsr(rect,+30,0,-30,0),xwhitecolor,xwhitecolor);
		xdrawtext(d,title,xnilpoint,rect,xclearcolor,xclearcolor,xblackcolor,false,false,false);
		if sel then xinvertrectangle(d,xsr(rect,+30,0,-30,0));
	end;
end;

procedure xdrawitem_command;
	var p:xcolor;
begin
	with i^,rect do begin
		xsetcliprectangle(d,rect);
		xdrawrectangle(d,xsr(rect,+30,0,-30,0),xwhitecolor,xwhitecolor);
		if check then xdrawdiamond(d,xmr(left+60,top+60,left+120,top+120),xblackcolor,xwhitecolor);
		xdrawtext(d,title,xnilpoint,rect,xclearcolor,xclearcolor,xblackcolor,false,false,false);
		if xgetvalue(accel)<>x00 then xdrawtext(d,accel,xnilpoint,rect,xclearcolor,xclearcolor,xblackcolor,false,false,false);
		//xdrawtext(d,title,xnilpoint,rect,xclearcolor,xclearcolor,xblackcolor,false,false,false);
		if sel then xinvertrectangle(d,xsr(rect,+30,0,-30,0));
		if not (xmenu(parent).mtyp in [xbordermenu,xfillmenu,xpenmenu]) then exit;
		if @handler<>@xhandlepigment then exit;
		if sel then p:=xwhitecolor else p:=xblackcolor;
		if parms[2]=xclear then p:=xclearcolor;
		xdrawdiamond(d,xmr(right-240,top+30,right-120,top+150),p,xmc(parms[2],xnormal));
	end;
end;

procedure xdrawitem_separator;
	var t:xtwit;
begin
	with i^,rect do begin
		xsetcliprectangle(d,rect);
		xdrawrectangle(d,xsr(rect,+30,0,-30,0),xwhitecolor,xwhitecolor);
		t:=(xheight(rect)-10) div 2;
		xdrawline(d,left+10,top+t,right-10,top+t,xgraycolor);
	end;
end;

begin
	if i=nil then exit;
	case i.ityp of
		xchoiceitem:	xdrawitem_choice;
		xcmditem:			xdrawitem_command;
		xsepitem: 		xdrawitem_separator;
	end;
end;

procedure xdrawitems(d:xdevice; m:xmenu);
	var ci:xitem;
begin
	if m=nil then exit;
	with m^ do begin
    if items.first=nil then exit;
		xsetcliprectangle(d,xsr(body,0,0,+xshadowwidth,+xshadowwidth));
		xdrawrectangle(d,body,xblackcolor,xwhitecolor);
		xdrawshadow(d,body,xshadowwidth);
	  ci:=items.first; while ci<>nil do begin xdrawitem(d,ci); ci:=ci.next; end;
	end;
end;
{
procedure xdrawitems(d:xdevice; i:xitems);
	var ci:xitem;
begin
	if i=nil then exit;
	ci:=i.first; while ci<>nil do begin xdrawitem(d,ci); ci:=ci.next; end;
end;
}
procedure xdrawline(d:xdevice; l,t,r,b:xtwit; c:xcolor);
begin
	if xabortprinting(d) then exit;
	xsetcolors(d,c,c);
	if l=r then inc(b,10);
	if t=b then inc(r,10);
	movetoex(xdcs[d],l div xfac,t div xfac,nil);
	lineto(xdcs[d],r div xfac,b div xfac);
end;

procedure xdrawlogo(d:xdevice; n:xrect; bc,fc:xcolor; border,selected:xboolean);
	var h,w,x,y:xtwit; p:xpolygon; r:xrect;
begin
	xsetcliprectangle(d,n);
	if selected then begin bc:=xblackcolor; fc:=xwhitecolor; end;
	if border then xdrawrectangle(d,n,bc,bc);
	if border then r:=xir(n,30) else r:=n;
	if selected then r:=xir(r,10);
	x:=r.left; y:=r.top; w:=xwidth(r)-10; h:=xheight(r)-10;
	p:=xmakepolygon; xappendpolygonvertices(p,[x,y,x+w,y,x,y+h]);
	xdrawpolygon(d,p,fc,fc,true);
	p:=xmakepolygon; xappendpolygonvertices(p,[x+w div 2,y+h,x+w,y,x+w,y+h]);
	xdrawpolygon(d,p,fc,fc,true);
end;

procedure xdrawmachine(d:xdevice);
begin
	xdrawbar(d);
	xdrawareas(d);
	if xcv=xblockview		then begin xdrawblock(d,xcb); exit; end;
	if xcv=xcabinetview	then begin xdrawcabinet(d,xcc); exit; end;
	if xcv=xdrawerview 	then begin xdrawdrawer(d,xcd); exit; end;
	if xcv=xfolderview 	then begin xdrawfolder(d,xcf); exit; end;
	if xcv=xpageview 		then begin xdrawpage(d,xcp); exit; end;
end;

procedure xdrawmenu(d:xdevice; m:xmenu);
begin
	if m=nil then exit;
	with m^ do begin
		xsetcliprectangle(d,m.head);
		xdrawtext(d,m.title,xnilpoint,head,xclearcolor,xclearcolor,xblackcolor,false,false,false);
    if items.opened then xinvertrectangle(d,xsr(m.head,0,+30,0,-10));
	end;
end;
{
procedure xdrawmenu(d:xdevice; m:xmenu);
begin
	if m=nil then exit;
	with m^ do begin
		xsetcliprectangle(d,m.head);
		xinvertrectangle(d,xsr(m.head,0,+30,0,-10));
		if items.opened then xblitbits(d,xscratch,xsr(body,0,0,+xshadowwidth,+xshadowwidth));
		if not items.opened then xblitbits(xscratch,d,xsr(body,0,0,+xshadowwidth,+xshadowwidth));
		if items.first=nil then exit;
		xsetcliprectangle(d,xsr(body,0,0,+xshadowwidth,+xshadowwidth));
		xdrawrectangle(d,body,xblackcolor,xwhitecolor);
		xdrawshadow(d,body,xshadowwidth);
		xdrawitems(d,items);
	end;
end;
}
procedure xdrawmessage(d:xdevice);
begin
	xsetcliprectangle(d,xmsg.rect);
	xdrawtext(d,xmsg,xnilpoint,xmsg.rect,xwhitecolor,xwhitecolor,xblackcolor,false,false,false);
end;

procedure xdrawpage(d:xdevice; p:xpage);

var t:xstring;

procedure xdrawpage_drawinggrid;
	var h,i,w,x,y:xtwit;
begin
	with p^ do begin
		if not xca.grid then exit;
		i:=xzpg; w:=xwidth(body); h:=xheight(body); x:=0; y:=0;
		while x<=w do begin xdrawline(d,x,0,x,h,xltbluecolor); inc(x,i); end;
		while y<=h do begin xdrawline(d,0,y,w,y,xltbluecolor); inc(y,i); end;
	end;
end;

procedure xdrawpage_functiongrid;
	var h,i,w:xtwit;
begin
	with p^ do begin
		if not xca.grid then exit;
		i:=round(360*p.mag); w:=xwidth(body); h:=xheight(body);
		xdrawline(d,0,i,w,i,xltbluecolor);
		xdrawline(d,0,h-i-10,w,h-i-10,xltbluecolor);
		xdrawline(d,i,0,i,h,xltbluecolor);
		xdrawline(d,w-i-10,0,w-i-10,h,xltbluecolor);
	end;
end;

procedure xdrawpage_handles(s:xshapes);
	var cs,ns:xshape;
begin
	if (not xisdrawingpage(xcp)) or (p.edit<>nil) then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if cs.styp=xgroupshape then xdrawpage_handles(cs.shapes);
		if not cs.sel then continue;
		if not xshapeisvisible(cs,false) then continue;
		xdrawshapehandles(d,cs);
	end;
end;

procedure xdrawpage_invisibles(s:xshapes);
	var cs,ns:xshape;
begin
	if xca.slice=xvslice then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if not xshapeisvisible(cs,false) then continue;
		if cs.styp=xgroupshape then xdrawpage_invisibles(cs.shapes);
		if not (cs.styp in [xpictureshape,xtextshape]) then continue;
		if not (cs.border.pigment in [xclear,xwhite]) then continue;
		if (cs.styp=xpictureshape) and (cs.slice<>xnslice) then continue;
		xdrawrectangle(d,cs.rect,xwhitecolor,xclearcolor); // for overlapping focus rects
		xdrawfocusrectangle(d,xlr(cs.rect,p.origin));
	end;
end;

procedure xdrawpage_shapes(s:xshapes);
	var cs,ns:xshape; o:xpigment;
begin
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if not xshapeisvisible(cs,false) then continue;
		if cs.styp=xgroupshape then begin xdrawpage_shapes(cs.shapes); continue; end;
		if cs=p.edit then begin xdrawrectangle(d,cs.rect,cs.border,xclearcolor); continue; end;
		o:=cs.border.pigment;
		if (xca.slice<>xvslice) and (cs.styp=xtextshape) and (cs.border.pigment=xwhite) then cs.border.pigment:=xclear;
		xdrawshape(d,cs);
		cs.border.pigment:=o;
	end;
end;

procedure xdrawpage_vertices(s:xshapes);
	var cs,ns:xshape;
begin
	if not xisdrawingpage(p) then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if not cs.sel then continue;
		if not xshapeisvisible(cs,false) then continue;
		xdrawshapevertices(d,cs);
	end;
end;

begin
	if p=nil then exit;
	with p^ do begin
		xsetcliprectangle(d,xgvpr(p));
		xsetmemoryorigin(origin);
		xdrawrectangle(d,body,xclearcolor,xwhitecolor);
		t:=xgetpagetype(p);
		if t='drawing' then xdrawpage_drawinggrid;
		xdrawpage_invisibles(shapes);
		xdrawpage_shapes(shapes);
		xdrawpage_handles(shapes);
		xdrawpage_vertices(shapes);
		if edit<>nil then xdrawshape(d,edit);
		if t='function' then xdrawpage_functiongrid;
		xdrawrectangle(d,body,xdkgraycolor,xclearcolor);
		xsetmemoryorigin(xnilpoint);
	end;
end;

procedure xdrawpicture(d:xdevice; p:xpicture; b:xcolor);
	var bcp,ccp:xpoint; cr:xrect; lb,pb:xpoint; sh,sw:xextended;
begin
	with p,dmap,header,rect do try
		if bits=nil then exit;
		if (xwidth(rect)-10<=0) or (xheight(rect)-10<=0) then exit;
		if (xwidth(croprect)-10<=0) or (xheight(croprect)-10<=0) then exit;
		sw:=(xwidth(rect)-10)/(xwidth(croprect)-10);
		sh:=(xheight(rect)-10)/(xheight(croprect)-10);

		bcp:=xgetcenterpoint(bitmaprect); ccp:=xgetcenterpoint(croprect);
		cr:=xmoverectangle(xpositionrectangle(rect,0,0),
			round((croprect.left-bitmaprect.left)*sw),
			round(((croprect.top-bitmaprect.top)+(bcp.y-ccp.y)*2)*sh));

		lb:=xmp(0,0); pb:=xmp(0,0);
		if d=xprinter then begin lb.x:=10+xbump[d].x; lb.y:=10+xbump[d].y; pb:=xmp(1,1); end;

    stretchdibits(xdcs[d],
			left div xfac,top div xfac,(xwidth(rect)-lb.x) div xfac,(xheight(rect)-lb.y) div xfac,
			cr.left div xtpp,cr.top div xtpp,xwidth(cr) div xtpp-pb.x,xheight(cr) div xtpp-pb.y,
			bits,tbitmapinfo(pointer(@header)^),dib_rgb_colors,srccopy);

//      if getasynckeystate(vk_shift)<0 then
//        xstatus(inttohex(xinteger(bits),8)+xcrlf+inttostr(xinteger(bits) mod 8));

	finally xdrawrectangle(d,rect,b,xclearcolor); end;
end;

procedure xdrawpolygon(d:xdevice; n:xpolygon; b,f:xcolor; closed:xboolean);
	var cv:xinteger; points:array[xvertex] of xpoint;
begin
	with n do begin
		if xabortprinting(d) then exit;
		if count<2 then exit;
		if xpointequals(vertices[1],vertices[count]) then closed:=true;
		xsetcolors(d,b,f);
		setpolyfillmode(xdcs[d],winding);
		for cv:=1 to count do begin
			points[cv].x:=vertices[cv].x div xfac;
			points[cv].y:=vertices[cv].y div xfac;
		end;
		if closed then polygon(xdcs[d],points[1],count);
		if not closed then polyline(xdcs[d],points[1],count);
		if (closed) and (count>2) then exit;
		if arrows[1] then xdrawarrow(d,vertices[1],xgetangle(vertices[2],vertices[1]),mag,b);
		if arrows[2] then xdrawarrow(d,vertices[count],xgetangle(vertices[count-1],vertices[count]),mag,b);
	end;
end;

procedure xdrawpopup(d:xdevice; p:xpopup);
  var ci:xitem;
begin
	if p=nil then exit;
	with p^ do begin
		if choices.first=nil then exit;
		xsetcliprectangle(d,xsr(rect,0,0,+xshadowwidth,+xshadowwidth));
		xdrawrectangle(d,rect,xblackcolor,xwhitecolor);
		xdrawshadow(d,rect,xshadowwidth);
	  ci:=choices.first; while ci<>nil do begin xdrawitem(d,ci); ci:=ci.next; end;
	end;
end;
{
procedure xdrawpopup(d:xdevice; p:xpopup);
begin
	if p=nil then exit;
	with p^ do begin
		if choices.opened then xblitbits(d,xscratch,xsr(rect,0,0,+xshadowwidth,+xshadowwidth));
		if not choices.opened then xblitbits(xscratch,d,xsr(rect,0,0,+xshadowwidth,+xshadowwidth));
		if choices.first=nil then exit;
		xsetcliprectangle(d,xsr(rect,0,0,+xshadowwidth,+xshadowwidth));
		xdrawrectangle(d,rect,xblackcolor,xwhitecolor);
		xdrawshadow(d,rect,xshadowwidth);
		xdrawitems(d,choices);
	end;
end;
}
procedure xdrawrectangle(d:xdevice; r:xrect; b,f:xcolor);
begin
	if xabortprinting(d) then exit;
	if b.pigment=xclear then begin inc(r.left,xbump[d].x); inc(r.top,xbump[d].y); end;
	xsetcolors(d,b,f);
	with r do rectangle(xdcs[d],left div xfac,top div xfac,(right+xbump[d].x) div xfac,(bottom+xbump[d].y) div xfac);
end;

procedure xdrawshadow(d:xdevice; r:xrect; w:xtwit);
	var cs:xinteger;
begin
	cs:=10;
	with r do while cs<=w do begin
		xdrawline(d,right+cs,top+30,right+cs,bottom+w,xblackcolor);
		xdrawline(d,left+30,bottom+cs,right+30,bottom+cs,xblackcolor);
		inc(cs,10);
	end;
end;

procedure xdrawshape(d:xdevice; s:xshape);

var p:xparent; o:xpoint; c,r:xrect;

procedure xdrawshape_picture;
begin
	with s^ do begin
		if slice<>xnslice then begin xdrawpicture(d,picture,border); exit; end;
		xdrawtext(d,text,o,r,border,xclearcolor,xblackcolor,false,xcs=s,false);
	end;
end;

begin
	if s=nil then exit;
	if s.hidden then exit;
	xgetshapeinformation(s,p,o,c,r); if d<>xprinter then r:=xintersectrectangles(r,c);
	if xtype(p)<>xblockrecord then o:=xnilpoint;
	with s^ do case styp of
		xarcshape:        xdrawarc(d,arc,border,fill,fill.pigment<>xclear);
		xcurveshape:      xdrawcurve(d,curve,border,fill,fill.pigment<>xclear);
		xellipseshape:    xdrawellipse(d,ellipse,border,fill);
		xgroupshape:      xdrawshapes(d,shapes);
		xpictureshape:		xdrawshape_picture;
		xpolygonshape:    xdrawpolygon(d,polygon,border,fill,fill.pigment<>xclear);
		xrectangleshape:  xdrawrectangle(d,rectangle,border,fill);
		xtextshape:       xdrawtext(d,text,o,r,border,fill,pen,sel and xisformpage(xgetpage(s)),xcs=s,(slice=xvslice) and (xiscode(s)));
	end;
end;

procedure xdrawshapehandles(d:xdevice; s:xshape);
begin
	if s=nil then exit;
	with s^,rect do begin
		if hidden then exit;
		xdrawrectangle(d,xmr(left-xhhs,top-xhhs,left+xhhs,top+xhhs),xblackcolor,xgraycolor);
		xdrawrectangle(d,xmr(right-xhhs,top-xhhs,right+xhhs,top+xhhs),xblackcolor,xgraycolor);
		xdrawrectangle(d,xmr(left-xhhs,bottom-xhhs,left+xhhs,bottom+xhhs),xblackcolor,xgraycolor);
		xdrawrectangle(d,xmr(right-xhhs,bottom-xhhs,right+xhhs,bottom+xhhs),xblackcolor,xgraycolor);
	end;
end;

procedure xdrawshapes(d:xdevice; s:xshapes);
	var cs:xshape;
begin
	if s=nil then exit;
	cs:=s.first; while cs<>nil do begin xdrawshape(d,cs); cs:=cs.next; end;
end;

procedure xdrawshapevertices(d:xdevice; s:xshape);

procedure xdrawshapevertices_arc;
begin
	xdrawvertex(d,xgetarcpoint(s.arc,1));
	xdrawvertex(d,xgetarcpoint(s.arc,2));
end;

procedure xdrawshapevertices_curve;
	var cv:xvertex;
begin
	for cv:=1 to s.curve.count do xdrawvertex(d,s.curve.vertices[cv]);
end;

procedure xdrawshapevertices_picture;
	var h,w:xtwit;
begin
	with s^,rect do begin
		if slice=xnslice then exit;
		w:=(xwidth(rect)-10) div 2; h:=(xheight(rect)-10) div 2;
		xdrawvertex(d,xmp(left,top+h));
		xdrawvertex(d,xmp(left+w,top));
		xdrawvertex(d,xmp(right,top+h));
		xdrawvertex(d,xmp(left+w,bottom));
	end;
end;

procedure xdrawshapevertices_polygon;
	var cv:xvertex;
begin
	for cv:=1 to s.polygon.count do xdrawvertex(d,s.polygon.vertices[cv]);
end;

begin
	if s=nil then exit;
	if s.hidden then exit;
	case s.styp of
		xarcshape:      xdrawshapevertices_arc;
		xcurveshape:    xdrawshapevertices_curve;
		xpictureshape:	xdrawshapevertices_picture;
		xpolygonshape:	xdrawshapevertices_polygon;
	end;
end;

procedure xdrawtext(d:xdevice; var t:xtext; origin:xpoint; clip:xrect; b,f,p:xcolor; invert,editinside,syntax:xboolean);

var fc,lc,ma,cr:xinteger; cliprect,cnrect,nrect,ocr,r,snr:xrect;
var rstats:xrowstats; tstats:xtextstats; tb,tf,tp:xcolor; x,y:xtwit;

procedure xdrawtext_selection; forward;

procedure xdrawtext_adjustcolors;
begin
	with t do begin
		tb:=b; tf:=f; tp:=p;
		if d=xprinter then exit;
		if invert then begin tp:=xwhitecolor; tf:=xblackcolor; end;
		if (invert) and (b.pigment=xblack) then tb:=xdkgraycolor;
		if (invert) and (b.pigment=xclear) then tb:=xblackcolor;
		if not editing then exit;
		tb:=b; tf:=xwhitecolor; tp:=xblackcolor;
	end;
end;

procedure xdrawtext_adjusty;
begin
	with t do case round(font.size/mag) of
		0090:	inc(y,round(10*mag)); // 8.0 lpi
		0120: inc(y,round(10*mag)); // 6.0 lpi
		0180: inc(y,round(20*mag)); // 4.0 lpi
		0240:	inc(y,round(10*mag)); // 3.0 lpi
		0360: inc(y,round(20*mag)); // 2.0 lpi
		0480: inc(y,round(30*mag)); // 1.5 lpi
		0720: inc(y,round(40*mag)); // 1.0 lpi
	end;
end;

procedure xdrawtext_blockselection;
	var r:xrect;
begin
	with t,tstats,rstats do begin
		if (d=xprinter) or (not editing) then exit;
		if (cr<na.row) or (cr>nc.row) then exit;
		if na.col=nc.col then exit;
		r:=snr;
		if cr=fvr then inc(r.top,ma);
		if cr<>fvr then inc(r.top,10);
		if cr=lvr then dec(r.bottom,ma);
		r.left:=xmax(nrect.left,xpositiontopoint(d,t,xmakeposition(na.col,cr)).x+origin.x);
		r.right:=xpositiontopoint(d,t,xmakeposition(nc.col,cr)).x+origin.x;
		r:=xintersectrectangles(r,snr);
		xinvertrectangle(d,r);
	end;
end;

procedure xdrawtext_highlightsyntax;
	const highlighttok=[xandtok,xbackwardstok,xcasetok,xcommenttok,
		xdivtok,xdotok,xelsetok,xendtok,xfortok,xfunctiontok,xglobaltok,
		xiftok,xintok,xlocaltok,xlooptok,xmodtok,
		xnottok,xortok,xrepeattok,xreturnstok,
		xtotok,xuntiltok,xwhentok,xwhiletok,xxortok];
	var p:xcolor; e,pos,s:xinteger; tok:xtoken; nx:xtwit;
begin
	with t,rstats,tok do begin
		if not syntax then exit;
		if (invert) and (not editing) then exit;
		if (d=xprinter) and (not xiscolordevice(d)) then exit;
		pos:=1;
		repeat
			finalize(tok); tok:=xgetnextlanguagetoken(rows[cr],pos,false);
			if (ttyp=xnotok) or (pos>length(rows[cr])) then break;
			if not (ttyp in highlighttok) then continue;
			if ttyp=xcommenttok then p:=xbluecolor else p:=xredcolor;
			settextcolor(xdcs[d],xcolors[p.pigment,p.mixture]);
			// +10 below because xpositiontopoint knocks 10 off for dahd
			if (not editing) or (fsc=0) or (fsc>pos) or (lsc<pos-length(str)) then begin
				nx:=xpositiontopoint(d,t,xmakeposition(pos-length(str),cr)).x+10;
				tabbedtextout(xdcs[d],nx div xfac,y div xfac,@str[1],length(str),1,tabsize,x div xfac);
				continue;
			end;
			s:=pos-length(str); e:=fsc;
			if s<fsc then begin
				nx:=xpositiontopoint(d,t,xmakeposition(s,cr)).x+10;
				tabbedtextout(xdcs[d],nx div xfac,y div xfac,@rows[cr][s],e-s,1,tabsize,x div xfac);
			end;
			s:=lsc+1; e:=pos;
			if s<=pos-1 then begin
				nx:=xpositiontopoint(d,t,xmakeposition(s,cr)).x+10;
				tabbedtextout(xdcs[d],nx div xfac,y div xfac,@rows[cr][s],e-s,1,tabsize,x div xfac);
			end;
		until xforever;
	end;
end;

procedure xdrawtext_line;
begin
	with t,tstats,nrect do begin
		rstats:=xgetrowstatistics(t,cr);
		y:=xgr(rect,origin).top+(cr-1)*rowheight;
		snr:=xintersectrectangles(xmr(left,y,right,y+rowheight),nrect);
		xdrawtext_adjusty;
		x:=xgr(rect,origin).left+xformatrow(d,t,cr,origin,clip,fc,lc);
		xsetfont(d,font,mag);
		settextcolor(xdcs[d],xcolors[tp.pigment,tp.mixture]);
		setbkcolor(xdcs[d],xcolors[tf.pigment,tf.mixture]);
		if fc<>0 then tabbedtextout(xdcs[d],x div xfac,y div xfac,@rows[cr][fc],lc-fc+1,1,tabsize,x div xfac);
		xdrawtext_highlightsyntax;
		if blocksel then xdrawtext_blockselection else xdrawtext_selection;
	end;
end;

procedure xdrawtext_selection;
	var r:xrect; x:xtwit;
begin
	with t,tstats,rstats do begin
		if (d=xprinter) or (not editing) then exit;
		if fsc=0 then exit;
		r:=snr;
		if cr<>fvr then inc(r.top,10);
		if fsc>1 then r.left:=xmax(nrect.left,xpositiontopoint(d,t,xmakeposition(fsc,cr)).x+origin.x);
		if lsc<>length(rows[cr]) then r.right:=xmin(nrect.right,xpositiontopoint(d,t,xmakeposition(lsc+1,cr)).x+origin.x);
		r:=xintersectrectangles(r,snr);
		xinvertrectangle(d,r);
	end;
end;

begin
	with t,tstats do begin
		if xabortprinting(d) then exit;
		tstats:=xgettextstatistics(t,origin,clip);
		xpushcaret;
		xdrawtext_adjustcolors;
		if margin then ma:=10 else ma:=0;
		if tb.pigment=xclear then r:=xir(rect,-10) else r:=rect;

		cnrect:=xgr(xintersectrectangles(r,xir(clip,-10)),origin);
		xdrawrectangle(d,cnrect,xclearcolor,tf);
		if (d=xprinter) or (not editing) then xdrawrectangle(d,cnrect,tb,xclearcolor);

		nrect:=xgr(xintersectrectangles(xir(rect,ma),clip),origin);
		ocr:=xgetcliprectangle(d); cliprect:=xintersectrectangles(nrect,ocr);
		if d=xprinter then begin cliprect:=nrect; ocr:=xprinting.clip; end;
		xsetcliprectangle(d,cliprect);

		xsetfont(d,font,mag);
		if fvr<>0 then for cr:=fvr to lvr do xdrawtext_line;
		if (d<>xprinter) and (editing) and (not editinside) then xdrawrectangle(d,cnrect,tb,xclearcolor);
		xsetcliprectangle(d,ocr);
		xpopcaret;
	end;
end;

procedure xdrawvertex(d:xdevice; p:xpoint);
begin
	with p do xdrawrectangle(d,xmr(x-xhhs,y-xhhs,x+xhhs,y+xhhs),xblackcolor,xwhitecolor);
end;

function  xdts(d:xdate):xstring;
begin
	result:=xformatdate(d,'mm/dd/yyyy');
end;

function  xduplicatedirectorycontents(tpath,fpath:xstring):xboolean;
	var r:xinteger; sr:tsearchrec;
begin
	result:=false;
	if not xdirectoryexists(tpath) then exit;
	if not xdirectoryexists(fpath) then exit;
	if length(fpath)<4 then exit; // safety check
	r:=findfirst(fpath+'*.*',faanyfile,sr);
	while r=0 do begin
		if (sr.name[1]<>'.') and ((sr.attr and fadirectory)<>0) then begin
			if not xnewdirectory(tpath+sr.name+'\') then exit;
			if not xduplicatedirectorycontents(tpath+sr.name+'\',fpath+sr.name+'\') then exit;
			r:=findnext(sr);
			continue;
		end;
		if (sr.name[1]<>'.') and (not xduplicatefile(tpath+sr.name,fpath+sr.name)) then exit;
		r:=findnext(sr);
	end;
	findclose(sr);
	result:=true;
end;

function  xduplicatedrawer(c:xcabinet; d,a:xdrawer):xdrawer;
	var de:xdrawerentry;
begin
	result:=nil; if (c=nil) or (d=nil) then exit;
	if (a<>nil) and (a.chain<>c.drawers) then a:=nil;
	if not xlockcabinet(c.cid) then exit;
	try
		if not xlockcabinet(d.cid) then exit;
		try
			if not xdirectoryexists(xgetdrawerdirectoryname(d.cid,d.did)) then begin xcx:='Drawer is not accessible.'; exit; end;
			if not xreaddrawerentry(c.cid,0,de) then exit;
			inc(de.lastdid);
			if not xwritedrawerentry(c.cid,0,de) then exit;
			de:=xmakedrawerentry(de.did,0,d.group,d.name,d.version);
			if not xappenddrawerentry(c.cid,de) then exit;
			if not xnewdirectory(xgetdrawerdirectoryname(c.cid,de.did)) then exit;
			if not xduplicatedirectorycontents(xgetdrawerdirectoryname(c.cid,de.did),xgetdrawerdirectoryname(d.cid,d.did)) then exit;
			result:=xcreatedrawer(d.group,d.name,d.version);
			result.cid:=c.cid; result.did:=de.did;
			xinsertlinkafter(c.drawers,a,result);
			xadjustcabinet(c);
		finally xunlockcabinet(d.cid); end;
	finally xunlockcabinet(c.cid); end;
end;

function  xduplicatefile(tpath,fpath:xstring):xboolean;
begin
	result:=copyfile(xpchar(fpath),xpchar(tpath),true);
	xclearreadonlyflag(tpath);
	if not result then xioerror(getlasterror);
end;

function  xduplicatefolder(d:xdrawer; f,a:xfolder):xfolder;
	var fe:xfolderentry;
begin
	result:=nil; if (d=nil) or (f=nil) then exit;
	if (a<>nil) and (a.chain<>d.folders) then a:=nil;
	if not xlockcabinet(d.cid) then exit;
	try
		if not xlockcabinet(f.cid) then exit;
		try
			if not xdirectoryexists(xgetfolderdirectoryname(f.cid,f.did,f.fid)) then begin xcx:='Folder is not accessible.'; exit; end;
			if not xreadfolderentry(d.cid,d.did,0,fe) then exit;
			inc(fe.lastfid);
			if not xwritefolderentry(d.cid,d.did,0,fe) then exit;
			fe:=xmakefolderentry(fe.fid,0,f.name,f.version);
			if not xappendfolderentry(d.cid,d.did,fe) then exit;
			if not xnewdirectory(xgetfolderdirectoryname(d.cid,d.did,fe.fid)) then exit;
			if not xduplicatedirectorycontents(xgetfolderdirectoryname(d.cid,d.did,fe.fid),xgetfolderdirectoryname(f.cid,f.did,f.fid)) then exit;
			result:=xcreatefolder(f.name,f.version);
			result.cid:=d.cid; result.did:=d.did; result.fid:=fe.fid;
			xinsertlinkafter(d.folders,a,result);
			xadjustdrawer(d);
		finally xunlockcabinet(f.cid); end;
	finally xunlockcabinet(d.cid); end;
end;

function  xduplicatepage(f:xfolder; p,a:xpage):xpage;
	var np:xpage; pe:xpageentry;
begin
	result:=nil; np:=nil; if (f=nil) or (p=nil) then exit;
	if (a<>nil) and (a.chain<>f.pages) then a:=nil;
	if not xlockcabinet(f.cid) then exit;
	try
		if not xlockcabinet(p.cid) then exit;
		try
			if not xfileexists(xgetpagefilename(p.cid,p.did,p.fid,p.pid)) then begin xcx:='Page is not accessible.'; exit; end;
			if not xreadpage(p) then exit;
			if not xreadpageentry(f.cid,f.did,f.fid,0,pe) then exit;
			inc(pe.lastpid);
			if not xwritepageentry(f.cid,f.did,f.fid,0,pe) then exit;
			np:=xcopypage(p,false);
			xindexpage(np); xupdatepage(np); xindexpage(np);
			pe:=xmakepageentry(pe.pid,0,np.fields);
			if not xappendpageentry(f.cid,f.did,f.fid,pe) then exit;
			with np^ do begin cid:=f.cid; did:=f.did; fid:=f.fid; pid:=pe.pid; level:=0; end;
			if not xwritepage(np) then exit;
			result:=np;
			xinsertlinkafter(f.pages,a,result);
			xadjustfolder(f);
		finally xunlockcabinet(p.cid);
			xclosepage(np); if result=nil then xdestroypage(np); xclosepage(p);
		end;
	finally xunlockcabinet(f.cid); end;
end;

{e}

procedure xeasytext(d:xdevice; r:xrect; f:xfont; p:xcolor; i:xstring);
	var t:xtext;
begin
	t:=xmt(r,f,false,false,false,i);
	xdrawtext(d,t,xnilpoint,r,xclearcolor,xclearcolor,p,false,false,false);
	xfinalizetext(t);
end;

procedure xeasytextwithellipsis(d:xdevice; r:xrect; f:xfont; p:xcolor; i:xstring);
	var t:xtext;
begin
	t:=xmt(r,f,false,false,false,i); xmaketextfitwithellipsis(t);
	xdrawtext(d,t,xnilpoint,r,xclearcolor,xclearcolor,p,false,false,false);
	xfinalizetext(t);
end;

function  xediting:xboolean;
begin
	result:=(xca.page<>nil) and (xca.page.edit<>nil);
end;

procedure xendedit(s:xshape);
begin
	if s=nil then exit;
	with s^,text do begin
		editing:=false;
		xhidecaret;
		xindentcode(s);
		xsetslice(s,s.slice,xgetvalue(text));
		xdestroyshapes(xca.redo.texts,false);
		xdestroyshapes(xca.undo.texts,false);
		xdestroyvalues(xlexicon.suggestions,false);
	end;
end;

function  xendofbuffer(s:xinteger):xboolean;
begin
	with xbuffer do begin
		result:=false;
		if (s=0) 	and (pos<=count) then exit;
		if (s<>0) and (pos+s-1<=count) then exit;
		result:=true;
		pos:=count+1;
	end;
end;

procedure xendpageedit(p:xpage);
begin
	if (p=nil) or (p.edit=nil) then exit;
	xendedit(p.edit);
	xselectshape(p.edit,true);
	xadjustpage(p);
	p.edit:=nil;
end;

procedure xendprinterpage;
begin
	if xprinting.error or xprinting.canceled then exit;
	xprinting.error:=endpage(xdcs[xprinter])<=0;
end;

procedure xendprinting;
begin
	with xprinting do begin
		inprogress:=false;
		if (not error) and (not canceled) then error:=enddoc(xdcs[xprinter])<=0;
		freemem(devmode); devmode:=nil;
		if xdcs[xprinter]=0 then exit;
		deletedc(xdcs[xprinter]);
		xdcs[xprinter]:=0;
	end;
end;

procedure xendtransaction;
begin
	xunlockcabinets;
	xflushevents;
	xrefreshmenus;
	xslapmachine;
	xshowcaret(xcs);
	xenque(xmakeevent(xcursorevent));
end;

procedure xenque(e:xevent);
begin
	with xqueue do begin
		if (closed) or (count=high(events)) then exit;
		inc(count); events[count]:=e;
		closed:=e.etyp=xshutdownevent;
	end;
end;

procedure xenter(c:xinteger);
begin
	with xca^,local do begin
		xpushregister(stack,c);               			// push pcount
		xpushregister(stack,stack.sf);  						// push	sf
		xpushregister(stack,xinteger(ip));  				// push	ip
		xpushobject(stack,xnovar,xnodata,nil);      // push	return
		stack.sf:=stack.sp-3;                       // set 	sf
	end;
end;

procedure xerror(e:xstring);
begin
	xsetvalue(xerr,e);
	xslaperror;
	xblink;
	xshowcursor(xarrowcursor);
	xflushevents;
	while not (xdeque.etyp in xinputevents) do;
	xflushevents;
	xsetvalue(xmsg,'');
	xslapbar;
end;

procedure xexecutepage(p:xpage; c:xinteger; leavereturn:xboolean);
	var s:xshape;
begin
	with xca^ do begin
		if p=nil then exit;
		if not p.shapes.opened and not xopenpage(p) then begin xrunerror(xcx); exit; end;
		s:=xfindcode(p.shapes); if s=nil then begin xrunerror('T''ain''t no code on page.'); exit; end;
		xenter(c);
		xexecuteshape(s,xvslice,xparsefunction); if xca.abort then exit;
		xexit;
		if not leavereturn then xpopn(xca.local.stack,1);
	end;
end;

procedure xexecuteinternal(i:xinternfunc; c:xinteger; leavereturn:xboolean);
begin
	if @i=nil then exit;
	xenter(c);
	i; if xca.abort then exit;
	xexit;
	if not leavereturn then xpopn(xca.local.stack,1);
end;

procedure xexecuteshape(s:xshape; v:xslice; p:xparseproc);


procedure xexecuteshape_checkparameters(i:xinstruction);
begin
	finalize(i.debug); i.debug:=xca.debug; // needs to be above xcheckparameters
	xcheckparameters(i.pcount,i.pcount);
end;

function  xexecuteshape_exception:xstring;
	var ea:xpointer;
begin
	ea:=exceptaddr;
	result:='Memory access violation'+' at address '+inttohex(xinteger(ea),8)+'.';
end;

procedure xexecuteshape_external(i:xinstruction);
begin
	finalize(xca.debug); xca.debug:=i.debug; // needs to be above xexecutepage
	xexecutepage(i.page,i.pcount,true);
end;

procedure xexecuteshape_internal(i:xinstruction);
begin
	xexecuteinternal(i.intern,i.pcount,true);
end;

procedure xexecuteshape_jump(i:xinstruction);
begin
	xca.ip:=i.ip;
end;

procedure xexecuteshape_jumpfalse(i:xinstruction);
	var b:xboolean;
begin
	with xca^,local,stack^ do begin
		b:=xpopboolean(stack); if abort then exit;
		if not i.pop then xpushboolean(stack,b);
		if b then exit;
		xca.ip:=i.ip;
	end;
end;

procedure xexecuteshape_jumptrue(i:xinstruction);
	var b:xboolean;
begin
	with xca^,local,stack^ do begin
		b:=xpopboolean(stack); if abort then exit;
		if not i.pop then xpushboolean(stack,b);
		if not b then exit;
		xca.ip:=i.ip;
	end;
end;

procedure xexecuteshape_pop(i:xinstruction);
begin
	xpopn(xca.local.stack,i.pcount);
end;

procedure xexecuteshape_pushconstant(i:xinstruction);
begin
	with i^,xca.local do case dtyp of
		xnodata:			xpushobject(stack,xnovar,xnodata,nil);
		xbooleandata:	xpushboolean(stack,data);
		xdatedata:		xpushdate(stack,data);
		xnumberdata:	xpushnumber(stack,data);
		xpagedata:		xpushobject(stack,xdynamicvar,xpagedata,xpointer(xinteger(data)));
		xstringdata:	xpushstring(stack,data);
		xsymboldata:	xpushobject(stack,xrefvar,xsymboldata,xpointer(xinteger(data)));
		xtimedata: 		xpushtime(stack,data);
	end;
end;

procedure xexecuteshape_pushreference(i:xinstruction);
	var v:xvar;
begin
	if i.stack=nil then exit;
	with xca.local,stack^ do begin
		if sp=high(vars) then begin xrunerror('Stack overflow.'); exit; end;
		inc(sp);
		vars[sp].vtyp:=xrefvar;
		v:=i.stack.vars[i.stack.sf+i.offset].ref;
		if v<>nil then vars[sp].dtyp:=v.dtyp else vars[sp].dtyp:=xnodata;
		vars[sp].ref:=v;
	end;
end;

begin
	with xca^,source do begin
		if s=nil then exit;
		if not s.instrs.opened and not xcompileshape(s,v,p) then begin xrunerror(xcx); exit; end;
		try ip:=s.instrs.first;
			while ip<>nil do begin
				if abort then exit;
				if xuseraborted then begin xrunerror('Command cancelled.'); exit; end;
				case ip.ityp of
					xcheckparametersinstr:  xexecuteshape_checkparameters(ip);
					xexternalinstr:					xexecuteshape_external(ip);
					xinternalinstr:					xexecuteshape_internal(ip);
					xjumpinstr:							xexecuteshape_jump(ip);
					xjumpfalseinstr:				xexecuteshape_jumpfalse(ip);
					xjumptrueinstr:					xexecuteshape_jumptrue(ip);
					xmarkinstr:							;
					xpopinstr:							xexecuteshape_pop(ip);
					xpushconstantinstr:			xexecuteshape_pushconstant(ip);
					xpushreferenceinstr:		xexecuteshape_pushreference(ip);
				end;
				if abort then exit;
				ip:=ip.next;
			end;
		except
			on ematherror do xrunerror('Result of arithmetic expression out of range.');
			else xrunerror(xexecuteshape_exception);
		end;
	end;
end;

procedure xexit;
	var d:xdatatyp; r:xobject; v:xvartyp;
begin
	with xca^,local,stack^ do begin
		xpopn(stack,stack.sp-(stack.sf+3)); 				// pop 	vars
		v:=vars[sp].ref.vtyp;                       // pop 	return
		d:=vars[sp].ref.dtyp;
		r:=xpopobject(stack);
		ip:=xinstruction(xpopregister(stack));      // pop 	ip
		stack.sf:=xpopregister(stack);              // pop 	sf
		xpopn(stack,xpopregister(stack));           // pop 	params
		xpushobject(stack,v,d,r);      							// push return
	end;
end;

function  xexpecttoken(t:xtoktyp):xboolean;
begin
	result:=true; if xtok.ttyp=t then exit;
	result:=false;
	xcompileerror('Expected '''+xtokentypetostring(t)+''' found '''+xtokentostring(xtok)+'''.');
end;

procedure xextendselection(s:xshape; p:xpoint);
begin
	if s=nil then exit;
	with s^,text do begin
		caretpos:=xpointtoposition(text,p);
		caretwas:=caretpos;
		s.lastop:=xnoshapeop;
	end;
end;

{f}

procedure xfetchaddenda;
begin
	with xlexicon do begin
		xfetchascii(addenda);
		addenda:=xcrlf+addenda;
	end;
end;

function  xfetcharc:xarc;
begin
	with result do begin
		result:=xmakearc(xnilrect,0,0);
		rect:=xfetchrectangle;
		angles[1]:=xfetchextended;
		angles[2]:=xfetchextended;
		arrows[1]:=xfetchboolean;
		arrows[2]:=xfetchboolean;
	end;
end;

procedure xfetchascii(var s:xstring);
begin
	setlength(s,xbuffer.count); move(xbuffer.bytes[1],xpchar(s)^,xbuffer.count);
end;

function  xfetchblock(n:xstring):xblock;
	var d,s:xstring; dc,sc:xinteger;
begin
	result:=xcreateblock(n);
	xfetchascii(s);
	setlength(d,length(s)); dc:=0;
	for sc:=1 to length(s) do if s[sc]<>xlf then begin inc(dc); d[dc]:=s[sc]; end;
	setlength(d,dc);
	xsetslice(result.edit,xvslice,d);
end;

function  xfetchboolean:xboolean;
begin
	with xbuffer do begin
		result:=false;
		if xendofbuffer(sizeof(result)) then exit;
		move(bytes[pos],result,sizeof(result));
		inc(pos,sizeof(result));
	end;
end;

procedure xfetchbytes(b:xpointer; c:xinteger);
begin
	with xbuffer do begin
		if xendofbuffer(c) then exit;
		move(bytes[pos],b^,c);
		inc(pos,c);
	end;
end;

function  xfetchcolor:xcolor;
begin
	with xbuffer do begin
		result:=xclearcolor;
		if xendofbuffer(sizeof(result)) then exit;
		move(bytes[pos],result,sizeof(result));
		inc(pos,sizeof(result));
		result.pigment:=xpigment(xlimit(ord(result.pigment),ord(low(xpigment)),ord(high(xpigment))));
		result.mixture:=xmixture(xlimit(ord(result.mixture),ord(low(xmixture)),ord(high(xmixture))));
	end;
end;

function  xfetchconfiguration:xboolean;

type
	toktyp=(notok,defaulttok,cabinettok,centertok,linetok,lstok,
		nocentertok,noposttok,noreversetok,numtok,printertok,returntok,reversetok,rstok,
		posttok,scannertok,strtok);
	tokset=set of toktyp;

	token=record ttyp:toktyp; num:xnumber; str:xstring; end;
	toktypary=array[toktyp] of xstring;

const
	tokens:toktypary=('','default','cabinet',xyescenterfeedstr,xlf,'{',
		xnocenterfeedstr,xnopostscriptstr,xnoreversestr,'','printer',xcr,xyesreversestr,'}',
		xyespostscriptstr,'scanner','');

var abort:xboolean; errtoks:toktypary; nc,p:xinteger; s:xstring; tok:token;

procedure xfetchconfiguration_default; forward;
procedure xfetchconfiguration_cabinet; forward;
function  xfetchconfiguration_expect(t:tokset):xboolean; forward;
procedure xfetchconfiguration_gnt; forward;
procedure xfetchconfiguration_printer; forward;
procedure xfetchconfiguration_runerror(e:xstring); forward;
procedure xfetchconfiguration_scanner; forward;
function  xfetchconfiguration_tokentostring(t:token):xstring; forward;
function  xfetchconfiguration_tokentypetostring(t:toktyp):xstring; forward;

procedure xfetchconfiguration_default;
	var c1,c2,c3,name,printer,scanner:xstring;
begin
	with tok do begin
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([strtok]) then exit;
		name:=str;
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([strtok]) then exit;
		c1:=str;
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([strtok]) then exit;
		c2:=str;
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([strtok]) then exit;
		c3:=str;
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([strtok]) then exit;
		printer:=str;
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([strtok]) then exit;
		scanner:=str;
		xfetchconfiguration_gnt;
		xappendlink(xconfig.doodads,xcreatedefaultdoodad(name,c1,c2,c3,printer,scanner));
	end;
end;

procedure xfetchconfiguration_cabinet;
	var cid,name:xstring;
begin
	with tok do begin
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([strtok]) then exit;
		name:=str;
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([strtok]) then exit;
		cid:=str;
		xfetchconfiguration_gnt;
		xappendlink(xconfig.doodads,xcreatecabinetdoodad(name,cid));
	end;
end;

function  xfetchconfiguration_expect(t:tokset):xboolean;
	var ct:toktyp; first:xboolean; s:xstring;
begin
	result:=true; if tok.ttyp in t then exit;
	result:=false; if abort then exit;
	first:=true; s:='';
	for ct:=low(toktyp) to high(toktyp) do begin
		if not (ct in t) then continue;
		if first then s:='Expected '''+xfetchconfiguration_tokentypetostring(ct)+'''';
		if not first then s:=s+' or '''+xfetchconfiguration_tokentypetostring(ct)+'''';
		first:=false;
	end;
	s:=s+' found '''+xfetchconfiguration_tokentostring(tok)+''' on line '+xits(nc)+' of configuration file.';
	xfetchconfiguration_runerror(s);
end;

procedure xfetchconfiguration_gnt;

const leaders=[xet,xlf,xsp,xtb];
const returns=[xcr];
const delims=['-',xcr,xsq]+leaders+returns;
var fc,lc,len:xinteger;

procedure xfetchconfiguration_gnt_dot;
begin
	if (p>len) or (not (s[p] in xdigits)) then exit;
	dec(p); tok.ttyp:=numtok; tok.num:=xgetnextnumbertoken(s,p,false,tok.str);
end;

function  xfetchconfiguration_gnt_gettype(t:xstring):toktyp;
	var ct:toktyp;
begin
	result:=notok; t:=ansilowercase(t); if t='' then exit;
	for ct:=low(toktyp) to high(toktyp) do begin
		if t=tokens[ct] then begin result:=ct; exit; end;
	end;
	if result=notok then result:=strtok;
end;

procedure xfetchconfiguration_gnt_returns;
begin
	tok.str:=s[p]; tok.ttyp:=xfetchconfiguration_gnt_gettype(s[p]); inc(p);
end;

begin
	with tok do begin
		ttyp:=notok; str:=''; len:=length(s);
		if p>len then exit;
		while (p<=len) and (s[p] in leaders) do inc(p);
		if s[p]='.' 				then begin xfetchconfiguration_gnt_dot; exit; end;
		if s[p]=xsq 				then begin ttyp:=strtok; str:=xqts(xgetnextstringtoken(s,p)); exit; end;
		if s[p]='{' 				then begin xgetnextcommenttoken(s,p); xfetchconfiguration_gnt; exit; end;
		if s[p] in xdigits	then begin ttyp:=numtok; num:=xgetnextnumbertoken(s,p,false,str);	exit; end;
		if s[p] in returns	then begin xfetchconfiguration_gnt_returns; exit; end;
		fc:=p; lc:=fc;
		while (lc<=len) and (not (s[lc] in delims)) do inc(lc);
		str:=copy(s,fc,lc-fc);
		p:=lc;
		ttyp:=xfetchconfiguration_gnt_gettype(str);
	end;
end;

procedure xfetchconfiguration_printer;
	var center,postscript,reverse:xboolean; device,name:xstring; rotate:xinteger; maxwidth,xoffset,yoffset:xinteger;
begin
	with tok do begin
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([strtok]) then exit;
		name:=str;
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([strtok]) then exit;
		device:=str;
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([noposttok,posttok]) then exit;
		postscript:=ttyp=posttok;
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([nocentertok,centertok]) then exit;
		center:=ttyp=centertok;
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([noreversetok,reversetok]) then exit;
		reverse:=ttyp=reversetok;
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([numtok]) then exit;
		rotate:=xsti(str);
		if (rotate<>0) and (rotate<>90) and (rotate<>270) then begin xfetchconfiguration_runerror('Rotate must be 0, 90, or 270 on line '+xits(nc)+' of configuration file.'); exit; end;
		xfetchconfiguration_gnt;
		if tok.ttyp in [linetok,returntok] then begin
			xappendlink(xconfig.doodads,xcreateprinterdoodad(name,device,postscript,center,reverse,rotate,0,0,0));
			exit;
		end;
		if not xfetchconfiguration_expect([numtok]) then exit;
		maxwidth:=xitt(num);
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([numtok]) then exit;
		xoffset:=xitt(num);
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([numtok]) then exit;
		yoffset:=xitt(num);
		xfetchconfiguration_gnt;
		xappendlink(xconfig.doodads,xcreateprinterdoodad(name,device,postscript,center,reverse,rotate,maxwidth,xoffset,yoffset));
	end;
end;

procedure xfetchconfiguration_runerror(e:xstring);
begin
	if abort then exit;
	abort:=true; xcx:=e;
end;

procedure xfetchconfiguration_scanner;
	var device,name:xstring;
begin
	with tok do begin
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([strtok]) then exit;
		name:=str;
		xfetchconfiguration_gnt; if not xfetchconfiguration_expect([strtok]) then exit;
		device:=str;
		xfetchconfiguration_gnt;
		xappendlink(xconfig.doodads,xcreatescannerdoodad(name,device));
	end;
end;

function  xfetchconfiguration_tokentostring(t:token):xstring;
begin
	with t do begin
		if ttyp=notok			then begin result:='end of file'; exit; end;
		if ttyp=linetok		then begin result:='end of line'; exit; end;
		if ttyp=numtok 		then begin result:=str; exit; end;
		if ttyp=returntok	then begin result:='end of line'; exit; end;
		if ttyp=strtok 		then begin result:=str; exit; end;
		result:=tokens[ttyp];
	end;
end;

function   xfetchconfiguration_tokentypetostring(t:toktyp):xstring;
begin
	if t=notok 			then begin result:='end of file'; exit; end;
	if t=linetok 		then begin result:='end of line'; exit; end;
	if t=numtok 		then begin result:='number'; exit; end;
	if t=returntok	then begin result:='end of line'; exit; end;
	if t=strtok 		then begin result:='string'; exit; end;
	result:=tokens[t];
end;

begin
	with xconfig do begin
		result:=true; abort:=false;
		xfetchascii(s);
		errtoks:=tokens;
		errtoks[notok]:='end of file';
		errtoks[returntok]:='end of line';
		errtoks[strtok]:='string';
		nc:=1; p:=1;
		xfetchconfiguration_gnt;
		with tok do while ttyp<>notok do begin
			if abort then break;
			if ttyp=returntok then begin inc(nc); xfetchconfiguration_gnt; continue; end;
			if not xfetchconfiguration_expect([defaulttok,cabinettok,printertok,scannertok]) then break;
			if ttyp=defaulttok then begin xfetchconfiguration_default; continue; end;
			if ttyp=cabinettok then begin xfetchconfiguration_cabinet; continue; end;
			if ttyp=printertok then begin xfetchconfiguration_printer; continue; end;
			if ttyp=scannertok then begin xfetchconfiguration_scanner; continue; end;
		end;
		result:=not abort;
	end;
end;

function  xfetchcurve:xcurve;
begin
	xpolygon(result):=xfetchpolygon;
end;

function  xfetchellipse:xellipse;
begin
	with xbuffer do begin
		result:=xnilellipse;
		if xendofbuffer(sizeof(result)) then exit;
		move(bytes[pos],result,sizeof(result));
		inc(pos,sizeof(result));
	end;
end;

function  xfetchextended:xextended;
begin
	with xbuffer do begin
		result:=0;
		if xendofbuffer(sizeof(result)) then exit;
		move(bytes[pos],result,sizeof(result));
		inc(pos,sizeof(result));
	end;
end;

function  xfetchfont:xfont;
begin
	with xbuffer do begin
		result:=xnilfont;
		if xendofbuffer(sizeof(result)) then exit;
		move(bytes[pos],result,sizeof(result));
		inc(pos,sizeof(result));
		result.face:=xface(xlimit(ord(result.face),ord(low(xface)),ord(high(xface))));
		result.size:=xsize(xlimit(ord(result.size),ord(low(xsize)),ord(high(xsize))));
		result.style:=xstyle(xlimit(ord(result.style),ord(low(xstyle)),ord(high(xstyle))));
		result.align:=xalign(xlimit(ord(result.align),ord(low(xalign)),ord(high(xalign))));
	end;
end;

function  xfetchinteger:xinteger;
begin
	with xbuffer do begin
		result:=0;
		if xendofbuffer(sizeof(result)) then exit;
		move(bytes[pos],result,sizeof(result));
		inc(pos,sizeof(result));
	end;
end;

function  xfetchjpeg(var b:xbitmap):xboolean;

type
	xsamples=^xsampleary;
	xhuffman=^xhuffmanrec;

	xcompinforec=record
		lastdc,hsamp,vsamp:xinteger;
		dqt:xsamples;
		huffdc,huffac:xhuffman;
	end;

	xcomponent=array[0..7,0..7] of xbyte;
	xcomponentgroup=record y,u,v:xcomponent; end;

	xhuffmanrec=record
		valueptrs,mincodes,maxcodes:array[1..16] of xinteger;
		values:array[0..256] of xinteger;
	end;

	xmcu=array[1..2,1..2] of xcomponentgroup;

	xsampleary=array[0..63] of xinteger;

const
	normalzag:array[0..63] of xbyte=(
		00, 01, 08, 16, 09, 02, 03, 10,
		17, 24, 32, 25, 18, 11, 04, 05,
		12, 19, 26, 33, 40, 48, 41, 34,
		27, 20, 13, 06, 07, 14, 21, 28,
		35, 42, 49, 56, 57, 50, 43, 36,
		29, 22, 15, 23, 30, 37, 44, 51,
		58, 59, 52, 45, 38, 31, 39, 46,
		53, 60, 61, 54, 47, 55, 62, 63);

	scale=1000;
	
var
	dct:record c,ct:array[0..7,0..7] of xinteger; end;
	dqts:array[0..3] of xsampleary;
	info:record width,height,cbit,mcount,minterval,ccount:xinteger; grayscale:xboolean; comps:array[1..3] of xcompinforec; end;
	huffman:record acs,dcs:array[0..1] of xhuffmanrec; end;
	output:record bitmap:xbitmap; bits:xbytes; end;

function  xfetchjpeg_extendsign(x,s:xinteger):xinteger; forward;
function  xfetchjpeg_getbits(c:xinteger; var bits:xinteger):xboolean; forward;
function  xfetchjpeg_getbyte:xbyte; forward;
function  xfetchjpeg_getbyte2:xinteger; forward;
function  xfetchjpeg_getcomponent(i:xinteger; var output:xcomponent):xboolean; forward;
function  xfetchjpeg_getdata:xboolean; forward;
function  xfetchjpeg_gethuffmanvalue(t:xhuffman; var val:xinteger):xboolean; forward;
function  xfetchjpeg_getmcu(var m:xmcu):xboolean; forward;
function  xfetchjpeg_getstring(c:xinteger):xstring; forward;
function  xfetchjpeg_handlerestartinterval:xboolean; forward;
procedure xfetchjpeg_initialize; forward;
procedure xfetchjpeg_initializeoutput; forward;
procedure xfetchjpeg_mergecomponentgroup(const c:xcomponentgroup; row,col:xinteger); forward;
function  xfetchjpeg_parsedht:xboolean; forward;
function  xfetchjpeg_parsedri:xboolean; forward;
function  xfetchjpeg_parsedqt:xboolean; forward;
function  xfetchjpeg_parsesof:xboolean; forward;
function  xfetchjpeg_parsesoi:xboolean; forward;
function  xfetchjpeg_parsesos:xboolean; forward;
procedure xfetchjpeg_skipsegment; forward;
procedure xfetchjpeg_undct(const input:xsampleary; var output:xcomponent); forward;

function  xfetchjpeg_extendsign(x,s:xinteger):xinteger;
begin
	if x<1 shl (s-1) then result:=x+(-1 shl s)+1 else result:=x;
end;

function  xfetchjpeg_getbits(c:xinteger; var bits:xinteger):xboolean;
	const m:array[0..7] of xbyte=($01,$02,$04,$08,$10,$20,$40,$80);
	var cb:xinteger;
begin
	with xbuffer,info do begin
		result:=false; bits:=0;
		for cb:=1 to c do begin
			if pos>count then exit;
			bits:=(bits shl 1) or ((bytes[pos] and m[cbit]) shr cbit);
			dec(cbit); if cbit>=0 then continue;
			inc(pos); cbit:=7;
			while (pos<=count) and (bytes[pos] in [$00,$ff]) and (bytes[pos-1]=$ff) do inc(pos);
		end;
		result:=true;
	end;
end;

function  xfetchjpeg_getbyte:xbyte;
begin
	with xbuffer do begin
		result:=0; if pos>count then exit;
		result:=bytes[pos];
		inc(pos);
	end;
end;

function  xfetchjpeg_getbyte2:xinteger;
begin
	with xbuffer do begin
		result:=0; if pos+1>count then exit;
		result:=(bytes[pos] shl 8) or (bytes[pos+1]);
		inc(pos,2);
	end;
end;

function  xfetchjpeg_getcomponent(i:xinteger; var output:xcomponent):xboolean;
	var b,c,cb,dc,h,m:xinteger; input:xsampleary;
begin
	with xbuffer,info,comps[i] do begin
		result:=false;
		fillchar(input,sizeof(input),x00); fillchar(output,sizeof(output),x00);
		if not xfetchjpeg_gethuffmanvalue(huffdc,h) then exit;
		if not xfetchjpeg_getbits(h,b) then exit;
		dc:=xfetchjpeg_extendsign(b,h)+lastdc;
		input[0]:=dc*dqt[0];
		comps[i].lastdc:=dc;
		cb:=1;
		while cb<64 do begin
			if not xfetchjpeg_gethuffmanvalue(huffac,h) then exit;
			c:=(h and $f0) shr 4; m:=(h and $0f);
			if (c=$0) and (m=$0) then begin cb:=64; continue; end;
			if (c=$f) and (m=$0) then begin inc(cb,16); continue; end;
			inc(cb,c); if cb>high(input) then begin xcx:='File is corrupt.'; exit; end;
			if not xfetchjpeg_getbits(m,b) then exit;
			input[normalzag[cb]]:=xfetchjpeg_extendsign(b,m)*dqt[cb];
			inc(cb);
		end;
		xfetchjpeg_undct(input,output);
		result:=true;
	end;
end;

function  xfetchjpeg_getdata:xboolean;
	var cc,ccc,ccr,cr,hmcus,vmcus:xinteger; m:xmcu;
begin
	with xbuffer,info,comps[1] do begin
		result:=false;
		// works on 2x2 y subsampling with 1x1 cb and cr samples - y8x8 y8x8 y8x8 y8x8 cb8x8 cr8x8
		// works on 1x1 y subsampling with 1x1 cb and cr samples - y8x8 cb8x8 cr8x8
		hmcus:=ceil(width/(hsamp*8));
		vmcus:=ceil(height/(vsamp*8));
		for cr:=1 to vmcus do begin
			for cc:=1 to hmcus do begin
				if not xfetchjpeg_handlerestartinterval then exit;
				if not xfetchjpeg_getmcu(m) then exit;
				for ccr:=1 to vsamp do begin
					for ccc:=1 to hsamp do begin
						xfetchjpeg_mergecomponentgroup(m[ccr,ccc],((cr-1)*vsamp+ccr-1)+1,((cc-1)*hsamp+ccc-1)+1);
					end;
				end;
			end;
		end;
		result:=true;
	end;
end;

function  xfetchjpeg_gethuffmanvalue(t:xhuffman; var val:xinteger):xboolean;
	var b,cn,code:xinteger;
begin
	with xbuffer,t^ do begin
		result:=false; cn:=1; if not xfetchjpeg_getbits(1,code) then exit;
		while code>maxcodes[cn] do begin
			if not xfetchjpeg_getbits(1,b) then exit;
			code:=(code shl 1) or b;
			inc(cn); if cn>high(maxcodes) then begin xcx:='File is corrupt.'; exit; end;
		end;
		val:=t.values[valueptrs[cn]+(code-mincodes[cn])];
		result:=true;
	end;
end;

function  xfetchjpeg_getmcu(var m:xmcu):xboolean;
	var bc,br,cc,cr,lc,lr:xinteger; u,v:xcomponent;
begin
	with info,comps[1] do begin
		result:=false; fillchar(m,sizeof(m),x00);
		for cr:=1 to vsamp do for cc:=1 to hsamp do if not xfetchjpeg_getcomponent(1,m[cr,cc].y) then exit;
		if grayscale then begin result:=true; exit; end;
		if not xfetchjpeg_getcomponent(2,u) then exit;
		if not xfetchjpeg_getcomponent(3,v) then exit;
		if vsamp=1 then begin m[1,1].u:=u; m[1,1].v:=v; result:=true; exit; end;
		for cr:=low(u) to high(u) do begin
			br:=cr div 4+1; if br>vsamp then break;
			if cr<4 then lr:=0 else lr:=4; lr:=(cr-lr)*2;
			for cc:=low(u[cr]) to high(u[cr]) do begin
				bc:=cc div 4+1; if bc>hsamp then break;
				if cc<4 then lc:=0 else lc:=4; lc:=(cc-lc)*2;
				m[br,bc].u[lr+0,lc+0]:=u[cr,cc];
				m[br,bc].u[lr+0,lc+1]:=u[cr,cc];
				m[br,bc].u[lr+1,lc+0]:=u[cr,cc];
				m[br,bc].u[lr+1,lc+1]:=u[cr,cc];

				m[br,bc].v[lr+0,lc+0]:=v[cr,cc];
				m[br,bc].v[lr+0,lc+1]:=v[cr,cc];
				m[br,bc].v[lr+1,lc+0]:=v[cr,cc];
				m[br,bc].v[lr+1,lc+1]:=v[cr,cc];
			end;
		end;
		result:=true;
	end;
end;

function  xfetchjpeg_getstring(c:xinteger):xstring;
	var cb:xinteger;
begin
	with xbuffer do begin
		result:=''; if pos+c-1>count then exit;
		for cb:=1 to c do begin result:=result+chr(bytes[pos]); inc(pos); end;
	end;
end;

function  xfetchjpeg_handlerestartinterval:xboolean;
	var cc:xinteger;
begin
	with xbuffer,info do begin
		result:=false; if minterval=0 then begin result:=true; exit; end;
		if mcount<>minterval then begin result:=true; inc(mcount); exit; end;
		if cbit<>7 then begin inc(pos); cbit:=7; end;
		while (pos<=count) and (bytes[pos] in [$00,$ff]) and (bytes[pos-1]=$ff) do inc(pos);
		if xfetchjpeg_getbyte<>$ff then begin xcx:='Restart interval not found.'; exit; end;
		if not (xfetchjpeg_getbyte in [$d0..$d7]) then begin xcx:='Restart interval not found.'; exit; end;
		mcount:=1; for cc:=1 to ccount do comps[cc].lastdc:=0;
		result:=true;
	end
end;

procedure xfetchjpeg_initialize;
	var i,j:xinteger;
begin
	fillchar(dct,sizeof(dct),x00);
	fillchar(dqts,sizeof(dqts),x00);
	fillchar(info,sizeof(info),x00); info.cbit:=7;
	fillchar(huffman,sizeof(huffman),x00);
	fillchar(output,sizeof(output),x00);
	with dct do begin
		for j:=low(c) to high(c) do begin
			c[0,j]:=round((1.0/sqrt(high(c)+1))*scale); ct[j,0]:=c[0,j];
		end;
		for i:=1 to high(c) do begin
			for j:=low(c) to high(c) do begin
				c[i,j]:=round((sqrt(2.0/(high(c)+1))*cos((2*j+1)*i*pi/(2.0*(high(c)+1))))*scale);
				ct[j,i]:=c[i,j];
			end;
		end;
	end;
end;

procedure xfetchjpeg_initializeoutput;
	var hs,s:xinteger;
begin
	if output.bitmap<>nil then exit;
	hs:=sizeof(tbitmapinfo)-sizeof(trgbquad);
	s:=hs+xaligntoboundary(info.width*3,4)*info.height;
	getmem(output.bitmap,s); fillchar(output.bitmap^,s,x00);
	with output,tbitmapinfo(bitmap^),bmiheader do begin
		bisize:=hs;
		biwidth:=info.width;
		biheight:=-info.height;
		biplanes:=1;
		bibitcount:=24;
		bits:=xpointer(xpchar(bitmap)+hs);
		fillchar(bits^,s-hs,x00);
	end;
end;

procedure xfetchjpeg_mergecomponentgroup(const c:xcomponentgroup; row,col:xinteger);
	var color:xrgb; cc,cr,cw,rw,t,y,u,v:xinteger;
begin
	with output,info,color do begin
		cw:=3; rw:=xaligntoboundary(width*cw,4);
		for cr:=0 to 7 do begin
			if (row-1)*8+cr+1>height then break;
			for cc:=0 to 7 do begin
				if (col-1)*8+cc+1>width then break;
				color:=xyuvtorgb(xmakeyuv(c.y[cr,cc],c.u[cr,cc],c.v[cr,cc]));
				xrgb(xpointer(@bits[((((row-1)*8+cr)*rw)+(((col-1)*8+cc)*cw))+1])^):=color;
			end;
		end;
	end;
end;

function  xfetchjpeg_parsedht:xboolean;
	var b,i,t:xbyte; bits:array[1..16] of xbyte; cb,cc,cnt,len:xinteger; huff:xhuffman;
	var code,hc,hs,si:xinteger; huffcodes,huffsizes:array[0..256] of xinteger;
begin
	with xbuffer do begin
		result:=false;
		// suck it
		len:=xfetchjpeg_getbyte2-2; // -2 for length
		while len>0 do begin
			b:=xfetchjpeg_getbyte; dec(len);
			t:=(b and $f0) shr 4; if (t<0) or (t>1) then begin xcx:='Invalid huffman table class.'; exit; end;
			i:=b and $0f; if (i<0) or (i>1) then begin xcx:='Invalid huffman table identifier.'; exit; end;
			if t=0 then huff:=@huffman.dcs[i] else huff:=@huffman.acs[i];
			cnt:=0; for cb:=1 to 16 do begin bits[cb]:=xfetchjpeg_getbyte; inc(cnt,bits[cb]); end;
			dec(len,16);
			if cnt-1>high(huff.values) then begin xcx:='Too many huffman values.'; exit; end;
			for cc:=0 to cnt-1 do huff.values[cc]:=xfetchjpeg_getbyte;
			dec(len,cnt);
			// generate codes
			fillchar(huffcodes,sizeof(huffcodes),x00);
			fillchar(huffsizes,sizeof(huffsizes),x00);
			hs:=0;
			for cc:=low(bits) to high(bits) do begin
				for cb:=1 to bits[cc] do begin huffsizes[hs]:=cc; inc(hs); end;
			end;
			hc:=0; code:=0; si:=huffsizes[0];
			while hc<=hs-1 do begin
				while huffsizes[hc]=si do begin huffcodes[hc]:=code; inc(hc); inc(code); end;
				code:=code shl 1; inc(si);
			end;
			// fill in valptrs,mins,maxs for actual decoding
			hc:=0;
			for cb:=low(bits) to high(bits) do begin
				if bits[cb]=0 then begin huff.maxcodes[cb]:=-1; continue; end;
				huff.valueptrs[cb]:=hc;
				huff.mincodes[cb]:=huffcodes[hc];
				inc(hc,bits[cb]);
				huff.maxcodes[cb]:=huffcodes[hc-1];
			end;
		end;
		result:=true;
	end;
end;

function  xfetchjpeg_parsedri:xboolean;
begin
	result:=false;
	xfetchjpeg_getbyte2; // len
	info.minterval:=xfetchjpeg_getbyte2;
	result:=true;
end;

function  xfetchjpeg_parsedqt:xboolean;
	var b,cd,i,len:xinteger;
begin
	with xbuffer do begin
		result:=false;
		len:=xfetchjpeg_getbyte2-2; // -2 to skip length
		while len>0 do begin
			b:=xfetchjpeg_getbyte; if (b and $f0)<>0 then begin xcx:='16-bit quantization tables not supported.'; exit; end;
			dec(len);
			i:=b and $0f; if (i<low(dqts)) or (i>high(dqts)) then begin xcx:='Invalid quantization table number.'; exit; end;
			for cd:=low(dqts[i]) to high(dqts[i]) do dqts[i][cd]:=xfetchjpeg_getbyte;
			dec(len,high(dqts[i])-low(dqts[i])+1);
		end;
		result:=true;
	end;
end;

function  xfetchjpeg_parsesof:xboolean;
	var cc,dqt,hsamp,i,s,vsamp:xinteger;
begin
	with xbuffer,info do begin
		result:=false;
		xfetchjpeg_getbyte2; // len
		if xfetchjpeg_getbyte<>8 then begin xcx:='Sample precisions not equal to 8 bits are not supported.'; exit; end;
		height:=xfetchjpeg_getbyte2;
		width:=xfetchjpeg_getbyte2;
		ccount:=xfetchjpeg_getbyte; if (ccount<low(comps)) or (ccount>high(comps)) then begin xcx:='Too many components.'; exit; end;
		grayscale:=ccount=1;
		for cc:=1 to ccount do begin
			i:=xfetchjpeg_getbyte;
			if (i<low(comps)) or (i>high(comps)) then begin xcx:='Component number out of range.'; exit; end;
			s:=xfetchjpeg_getbyte;
			hsamp:=(s and $f0) shr 4; vsamp:=(s and $0f);
			if (i=1) and (not (hsamp in [1,2])) and (not (vsamp in [1,2])) then begin xcx:='Sampling factors not supported.'; exit; end;
			if (not grayscale) and (i=2) and (hsamp<>1) and (vsamp<>1) then begin xcx:='Sampling factors not supported.'; exit; end;
			if (not grayscale) and (i=3) and (hsamp<>1) and (vsamp<>1) then begin xcx:='Sampling factors not supported.'; exit; end;
			comps[i].hsamp:=hsamp; comps[i].vsamp:=vsamp;
			dqt:=xfetchjpeg_getbyte;
			if (dqt<low(dqts)) or (dqt>high(dqts)) then begin xcx:='Component quantization table out of range.'; exit; end;
			comps[i].dqt:=@dqts[dqt];
		end;
		result:=true;
	end;
end;

function  xfetchjpeg_parsesoi:xboolean;
begin
	result:=true;
end;

function  xfetchjpeg_parsesos:xboolean;
	var ac,ci,ct,dc:xbyte; cc,tc:xinteger;
begin
	with xbuffer,info do begin
		result:=false;
		xfetchjpeg_getbyte2; // len
		tc:=xfetchjpeg_getbyte; if (tc<1) or (tc>3) then begin xcx:='Incorrect number of compnnents in scan.'; exit; end;
		for cc:=1 to tc do begin
			ci:=xfetchjpeg_getbyte; if (ci<low(comps)) or (ci>high(comps)) then begin xcx:='Invalid component identifier.'; exit; end;
			ct:=xfetchjpeg_getbyte;
			dc:=(ct and $f0) shr 4; if (dc<0) or (dc>1) then begin xcx:='Invalid dc decoding table.'; exit; end;
			ac:=(ct and $0f); if (ac<0) or (dc>1) then begin xcx:='Invalid ac decoding table.'; exit; end;
			comps[ci].huffdc:=@huffman.dcs[dc];
			comps[ci].huffac:=@huffman.acs[ac];
		end;
		if xfetchjpeg_getbyte<>00 then begin xcx:='Start of spectral selection field not 0.'; exit; end;
		if xfetchjpeg_getbyte<>63 then begin xcx:='End of spectral selection field not 63.'; exit; end;
		if xfetchjpeg_getbyte<>00 then begin xcx:='High and low bits of spectral selection not 0.'; exit; end;
		xfetchjpeg_initializeoutput;
		if not xfetchjpeg_getdata then exit;
		if cbit<>7 then inc(xbuffer.pos); // get back on byte boundary
		result:=true;
	end;
end;

procedure xfetchjpeg_skipsegment;
begin
	inc(xbuffer.pos,xfetchjpeg_getbyte2-2);
end;

procedure xfetchjpeg_undct(const input:xsampleary; var output:xcomponent);
	type twodsampleary=array[0..7,0..7] of xinteger;
	var i,j,k,t:xinteger; temp:xinteger; temps:array[0..7,0..7] of xinteger;
begin
	with dct do begin fillchar(temps,sizeof(temps),x00);
		for i:=low(temps) to high(temps) do begin
			for j:=low(temps) to high(temps) do begin
				for k:=low(temps) to high(temps) do begin
					temps[i,j]:=temps[i,j]+twodsampleary(input)[i,k]*c[k,j];
				end;
			end;
		end;
		for i:=low(temps) to high(temps) do begin
			for j:=low(temps) to high(temps) do begin
				temp:=0;
				for k:=low(temps) to high(temps) do begin
					temp:=temp+ct[i,k]*temps[k,j]; // should be div 1000 but condensed below
				end;
				t:=temp div (scale*scale)+128; // 1000000 because above loop should div
				if t<0 then output[i,j]:=0 else if t>255 then output[i,j]:=255 else output[i,j]:=t;
			end;
		end;
	end;
end;

begin
	try
		result:=false; b:=nil;
		xfetchjpeg_initialize;
		while xbuffer.pos<xbuffer.count do begin
			if xfetchjpeg_getbyte<>$ff then begin xcx:='Marker not found.'; exit; end;
			case xfetchjpeg_getbyte of
				$c0:	if not xfetchjpeg_parsesof then exit;	// sof
				$c4:	if not xfetchjpeg_parsedht then exit;	// dht
				$d8:	if not xfetchjpeg_parsesoi then exit;	// soi
				$d9:  ;																			// eos
				$da:	if not xfetchjpeg_parsesos then exit;	// sos
				$db:  if not xfetchjpeg_parsedqt then exit;	// dqt
				$dd:  if not xfetchjpeg_parsedri then exit;	// dri
				else	xfetchjpeg_skipsegment;
			end;
		end;
		result:=true;
	finally if (not result) and (output.bitmap<>nil) then freemem(output.bitmap) else b:=output.bitmap; end;
end;

procedure xfetchlexicon;
	var b:xstring; cc:xinteger; pc:xchar; s:xinteger;
begin
	with xlexicon do begin
		xfetchascii(b);
		for pc:='a' to 'z' do begin finalize(words[pc]); words[pc]:=xcrlf; end;
		cc:=0; s:=1; if b<>'' then pc:=b[1];
		repeat
			inc(cc); if cc>length(b) then break;
			if b[cc]<>xlf then continue;
			inc(cc);
			if (cc<=length(b)) and (b[cc]=pc) then continue;
			words[pc]:=words[pc]+copy(b,s,cc-s);
			s:=cc;
			pc:=b[cc];
		until xforever;
	end;
end;

function  xfetchpage(p:xpage):xboolean;
begin
	result:=false; if p=nil then exit;
	p.level:=xfetchinteger;
	p.body:=xfetchrectangle;
	p.scale:=xfetchextended;
	p.lastsid:=xfetchinteger;
	xdestroyshapes(p.shapes,false);
	xfetchshapes(p.shapes);
	result:=true;
end;

function  xfetchpicture:xpicture;
begin
	with result,omap,header do begin
		result:=xmakepicture;
		rect:=xfetchrectangle;
		croprect:=xfetchrectangle;
		xfetchbytes(@header,sizeof(header));
		count:=xfetchinteger;
		getmem(bits,count);
		xfetchbytes(bits,count);
		color:=xfetchcolor;
		brightness:=xfetchinteger;
		bitmaprect:=croprect;
		xadjustpicture(result,true);
	end;
end;

function  xfetchpoint:xpoint;
begin
	with xbuffer do begin
		result:=xnilpoint;
		if xendofbuffer(sizeof(result)) then exit;
		move(bytes[pos],result,sizeof(result));
		inc(pos,sizeof(result));
	end;
end;

function  xfetchpolygon:xpolygon;
	var cv:xvertex;
begin
	with result do begin
		result:=xmakepolygon;
		rect:=xfetchrectangle;
		count:=xlimit(xfetchinteger,low(xvertex),high(xvertex));
		for cv:=1 to count do vertices[cv]:=xfetchpoint;
		arrows[1]:=xfetchboolean;
		arrows[2]:=xfetchboolean;
	end;
end;

function  xfetchrectangle:xrect;
begin
	with xbuffer do begin
		result:=xnilrect;
		if xendofbuffer(sizeof(result)) then exit;
		move(bytes[pos],result,sizeof(result));
		inc(pos,sizeof(result));
	end;
end;

function  xfetchshapes(s:xshapes):xboolean;

var cs,id:xinteger; shape:xshape; t:xshapetyp;

procedure xfetchshapes_arc;
begin
	with shape^ do begin
		border:=xfetchcolor;
		fill:=xfetchcolor;
		arc:=xfetcharc;
	end;
end;

procedure xfetchshapes_curve;
begin
	with shape^ do begin
		border:=xfetchcolor;
		fill:=xfetchcolor;
		curve:=xfetchcurve;
	end;
end;

procedure xfetchshapes_ellipse;
begin
	with shape^ do begin
		border:=xfetchcolor;
		fill:=xfetchcolor;
		ellipse:=xfetchellipse;
	end;
end;

procedure xfetchshapes_group;
begin
	xfetchshapes(shape.shapes);
end;

procedure xfetchshapes_picture;
begin
	with shape^ do begin
		border:=xfetchcolor;
		fill:=xfetchcolor;
		slices[xnslice].str:=xfetchstring;
		picture:=xfetchpicture;
	end;
end;

procedure xfetchshapes_polygon;
begin
	with shape^ do begin
		border:=xfetchcolor;
		fill:=xfetchcolor;
		polygon:=xfetchpolygon;
	end;
end;

procedure xfetchshapes_rectangle;
begin
	with shape^ do begin
		border:=xfetchcolor;
		fill:=xfetchcolor;
		rectangle:=xfetchrectangle;
	end;
end;

procedure xfetchshapes_text;
	var cs:xslice;
begin
	with shape^ do begin
		border:=xfetchcolor;
		fill:=xfetchcolor;
		pen:=xfetchcolor;
		for cs:=succ(low(xslice)) to high(xslice) do slices[cs].str:=xfetchstring;
		dtyp:=xdatatyp(xfetchinteger);
		xfinalizetext(text); text:=xfetchtext;
		xsetvalue(text,slices[xvslice].str);
		text.wrap:=not xiscode(shape);
		calculated:=true;
	end;
end;

begin
	result:=false; if s=nil then exit;
	for cs:=1 to xfetchinteger do begin
		if xendofbuffer(0) then exit;
		id:=xfetchinteger;
		t:=xshapetyp(xfetchinteger);
		shape:=xcreateshape(t);
		shape.sid:=id;
		case shape.styp of
			xarcshape:        xfetchshapes_arc;
			xcurveshape:      xfetchshapes_curve;
			xellipseshape:    xfetchshapes_ellipse;
			xgroupshape:      xfetchshapes_group;
			xpictureshape:    xfetchshapes_picture;
			xpolygonshape:    xfetchshapes_polygon;
			xrectangleshape:	xfetchshapes_rectangle;
			xtextshape:       xfetchshapes_text;
		end;
		xadjustshape(shape);
		xappendlink(s,shape);
	end;
	result:=true;
end;

function  xfetchsort(var s:xstring):xboolean;
begin
	result:=true;
	xfetchascii(s);
end;

function  xfetchstring:xstring;
	var len:xinteger;
begin
	with xbuffer do begin
		result:='';
		if xendofbuffer(sizeof(len)) then exit;
		move(bytes[pos],len,sizeof(len));
		inc(pos,sizeof(len));
		if xendofbuffer(len) then exit;
		setlength(result,len);
		move(bytes[pos],result[1],len);
		inc(pos,len);
	end;
end;

function  xfetchtext:xtext;
begin
	result:=xmt(xnilrect,xnilfont,false,false,false,'');
	with result do begin
		rect:=xfetchrectangle;
		font:=xfetchfont;
		margin:=xfetchboolean;
		wrap:=xfetchboolean;
	end;
	xadjusttext(result);
end;

function  xfileexists(path:xstring):xboolean;
begin
	result:=fileexists(path);
end;

function  xfilepage(f:xfolder; p,a:xpage):xboolean;
	var pe:xpageentry;
begin
	result:=false; if (f=nil) or (p=nil) then exit;
	if not xpageisloose(p) then exit;
	if (a<>nil) and (a.chain<>f.pages) then a:=nil;
	if not xlockcabinet(f.cid) then exit;
	try
		if not xreadpageentry(f.cid,f.did,f.fid,0,pe) then exit;
		inc(pe.lastpid);
		if not xwritepageentry(f.cid,f.did,f.fid,0,pe) then exit;
		xindexpage(p); xupdatepage(p); xindexpage(p);
		pe:=xmakepageentry(pe.pid,0,p.fields);
		if not xappendpageentry(f.cid,f.did,f.fid,pe) then exit;
		p.cid:=f.cid; p.did:=f.did; p.fid:=f.fid; p.pid:=pe.pid; p.level:=0;
		if not xwritepage(p) then exit;
		result:=true;
		xinsertlinkafter(f.pages,a,p);
		xadjustfolder(f);
	finally xunlockcabinet(f.cid); end;
end;

function  xfilesize(var f:xfile):xinteger;
begin
	result:=filesize(f);
end;

function  xfillleft(s:xstring; c:xchar; d:xinteger):xstring;
begin
	while length(s)<d do insert(c,s,1);
	result:=s;
end;

function  xfillright(s:xstring; c:xchar; d:xinteger):xstring;
begin
	while length(s)<d do s:=s+c;
	result:=s;
end;

procedure xfillslices(p:xpage; d:xdir);

procedure xfillslices_setslice(cs:xshape; n,o:xstring; var v:xstring);
	var c:xboolean; p:xinteger; r:xstring; t,t2,t3:xtoken;
begin
	if (n<>xv(xgetslice(cs,xnslice))) or (cs.slice<>xcslice) then begin
		xsetslice(cs,cs.slice,o); exit;
	end;
	r:=''; p:=1; c:=false;
	repeat
		finalize(t); t:=xgetnextlanguagetoken(v,p,true); if t.ttyp=xnotok then break;
		r:=r+t.str;
		if t.ttyp<>xlbtok then continue;
		finalize(t2); t2:=xgetnextlanguagetoken(v,p,false);
		if t2.ttyp<>xnumtok then begin r:=r+t2.str; continue; end;
		finalize(t3); t3:=xgetnextlanguagetoken(v,p,false);
		if t3.ttyp<>xrbtok then begin r:=r+t2.str+t3.str; continue; end;
		r:=r+xnts(t2.num+1)+']'; c:=true;
	until xforever;
	if c then begin v:=r; xsetslice(cs,cs.slice,r); exit; end;
	xsetslice(cs,cs.slice,v);
end;

procedure xfillslices_down;
	var cs:xshape; ns:xstop; n,o,v:xstring; x:xinteger;
begin
	ns:=xgetfirstselectedstop(p.verts); if ns=nil then exit;
	cs:=ns.shape; x:=cs.rect.left;
	n:=xv(xgetslice(cs,xnslice)); v:=xgetslice(cs,cs.slice); o:=v;
	ns:=ns.next;
	while ns<>nil do begin cs:=ns.shape; ns:=ns.next;
		if not cs.sel then continue;
		if cs.rect.left=x then begin xfillslices_setslice(cs,n,o,v); continue; end;
		x:=cs.rect.left;
		n:=xv(xgetslice(cs,xnslice));
		v:=xgetslice(cs,cs.slice);
		o:=v;
	end;
end;

procedure xfillslices_right;
	var cs:xshape; ns:xstop; n,o,v:xstring; y:xinteger;
begin
	ns:=xgetfirstselectedstop(p.horzs); if ns=nil then exit;
	cs:=ns.shape; y:=cs.rect.top;
	n:=xv(xgetslice(cs,xnslice)); v:=xgetslice(cs,cs.slice); o:=v;
	ns:=ns.next;
	while ns<>nil do begin cs:=ns.shape; ns:=ns.next;
		if not cs.sel then continue;
		if cs.rect.top=y then begin xfillslices_setslice(cs,n,o,v); continue; end;
		y:=cs.rect.top;
		n:=xv(xgetslice(cs,xnslice));
		v:=xgetslice(cs,cs.slice);
		o:=v;
	end;
end;

begin
	if p=nil then exit;
	case d of
		xdown:	xfillslices_down;
		xright:	xfillslices_right;
	end;
end;

procedure xfinalizeareas;
begin
	xdestroyareas(true);
end;

procedure xfinalizebrushes;
	var m:xmixture; p:xpigment;
begin
	for p:=low(xpigment) to high(xpigment) do begin
		for m:=low(xmixture) to high(xmixture) do begin
			deleteobject(xbrushes[p,m]);
		end;
	end;
end;

procedure xfinalizebuffers;
begin
	with xbuffer do begin freemem(bytes); size:=0; end;
	with xindex do 	begin freemem(entries); size:=0; end;
end;

procedure xfinalizecarets;
begin
end;

procedure xfinalizeclipboards;
begin
	xdestroyvalues(xclip.values,true);
	xdestroyshapes(xclip.shapes,true);
	xdestroypages(xclip.pages,true);
	xdestroyfolders(xclip.folders,true);
	xdestroydrawers(xclip.drawers,true);
end;

procedure xfinalizecolors;
begin
end;

procedure xfinalizecommandline;
	var cp:xinteger;
begin
	with xcmdline do begin
		for cp:=low(commands) to high(commands) do finalize(commands[cp]);
	end;
end;

procedure xfinalizeconfiguration;
begin
	xdestroydoodads(xconfig.doodads,true);
	finalize(xconfig);
end;

procedure xfinalizecursors;
begin
	destroycursor(xcursors.shapes[xhandcursor]);
end;

procedure xfinalizedevicecontexts;
begin
	deleteobject(selectobject(xdcs[xscratch],xoldbitmaps[xscratch]));
	deleteobject(selectobject(xdcs[xmemory],xoldbitmaps[xmemory]));
	deletedc(xdcs[xscratch]);
	deletedc(xdcs[xmemory]);
end;

procedure xfinalizefocus;
begin
	deleteobject(xfocus.border);
	deleteobject(xfocus.fill);
end;

procedure xfinalizefont(f:xfont);
begin
	if xfonts[f.face,f.size,f.style]=0 then exit;
	deleteobject(xfonts[f.face,f.size,f.style]);
	xfonts[f.face,f.size,f.style]:=0;
end;

procedure xfinalizefonts;
	var f:xface; s:xsizeinpixels; v:xstyle;
begin
	for f:=low(xface) to high(xface) do begin
		for s:=low(xsizeinpixels) to high(xsizeinpixels) do begin
			for v:=low(xstyle) to high(xstyle) do begin
				xfinalizefont(xmf(f,s,v,xnoalign));
			end;
		end;
	end;
end;

procedure xfinalizelexicon;
begin
	xdestroyvalues(xlexicon.suggestions,true);
	finalize(xlexicon);
end;

procedure xfinalizelocks;
begin
	xunlockcabinets;
	xdestroylocks(true);
end;

procedure xfinalizememorymanager;
begin
	with xmanager do begin
		setmemorymanager(old);
		if getasynckeystate(vk_shift)>=0 then exit;
		xshowcursor(xarrowcursor);
		messagebox(xwindow,xpchar(xmcm(count,'drop','drops')),'Drip Drip Drip',mb_iconinformation);
	end;
end;

procedure xfinalizemenus;
begin
	xdestroymenus(true);
end;

procedure xfinalizemouse;
begin
end;

procedure xfinalizepalettes;
	var cd:xdevice;
begin
	for cd:=low(xdevice) to high(xdevice) do deleteobject(selectobject(xdcs[cd],xoldpalettes[cd]));
end;

procedure xfinalizepens;
	var m:xmixture; p:xpigment;
begin
	for p:=low(xpigment) to high(xpigment) do begin
		for m:=low(xmixture) to high(xmixture) do begin
			deleteobject(xpens[p,m]);
		end;
	end;
end;

procedure xfinalizepicture(var p:xpicture);
begin
	with p do begin
		if omap.bits<>nil then begin freemem(omap.bits); omap.bits:=nil; omap.count:=0; end;
		if dmap.bits<>nil then begin freemem(dmap.bits); dmap.bits:=nil; dmap.count:=0; end;
	end;
end;

procedure xfinalizescreen;
begin
	xfinalizetext(xerr);
	xfinalizetext(xmsg);
end;

procedure xfinalizestrings;
begin
	finalize(xsearch);
	finalize(xtok);
	finalize(xcx);
end;

procedure xfinalizetemplates;
begin
	xdestroypage(xtemplates.func);
	xdestroypage(xtemplates.form);
	xdestroypage(xtemplates.drawing);
end;

procedure xfinalizetext(var t:xtext);
	var cr:xinteger;
begin
	with t do begin
		if rows=nil then exit;
		for cr:=1 to count do finalize(rows[cr]);
		freemem(rows); count:=0; size:=0;
	end;
end;

procedure xfinalizetimers;
	var cc:xtimer;
begin
	for cc:=low(xtimer) to high(xtimer) do killtimer(xwindow,ord(cc));
end;

procedure xfinalizewindows;
begin
end;

function  xfindcode(s:xshapes):xshape;
	var cs,ns:xshape;
begin
	result:=nil; if s=nil then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if result<>nil then exit;
		if cs.styp=xgroupshape then result:=xfindcode(cs.shapes);
		if xiscode(cs) then result:=cs;
	end;
end;

function  xfinddoodad(t:xdoodadtyp; n:xstring):xdoodad;
	var cd,nd:xdoodad;
begin
	result:=nil; if xconfig.doodads=nil then exit;
	n:=xv(n);
	nd:=xconfig.doodads.last;
	while nd<>nil do begin cd:=nd; nd:=nd.prev;
		if (cd.dtyp<>t) or (xv(cd.name)<>n) then continue;
		result:=cd;
		exit;
	end;
end;

function  xfinddoodadbycid(t:xdoodadtyp; cid:xstring):xdoodad;
	var cd,nd:xdoodad;
begin
	result:=nil; if xconfig.doodads=nil then exit;
	cid:=xv(cid);
	nd:=xconfig.doodads.last;
	while nd<>nil do begin cd:=nd; nd:=nd.prev;
		if (cd.dtyp<>t) or (xv(cd.cid)<>cid) then continue;
		result:=cd;
		exit;
	end;
end;

function  xfinddoodadbydevice(t:xdoodadtyp; d:xstring):xdoodad;
	var cd,nd:xdoodad;
begin
	result:=nil; if xconfig.doodads=nil then exit;
	d:=xv(d);
	nd:=xconfig.doodads.last;
	while nd<>nil do begin cd:=nd; nd:=nd.prev;
		if (cd.dtyp<>t) or (xv(cd.device)<>d) then continue;
		result:=cd;
		exit;
	end;
end;

function  xfinddrawer(d:xdrawers; g,n,v:xstring):xdrawer;
begin
	result:=nil; if d=nil then exit;
	g:=xv(g); n:=xv(n); v:=xv(v);
	result:=d.first; while (result<>nil) and ((xv(result.group)<>g) or (xv(result.name)<>n) or (xv(result.version)<>v)) do result:=result.next;
end;

function  xfinddrawerbyid(d:xdrawers; id:xinteger):xdrawer;
begin
	result:=nil; if d=nil then exit;
	result:=d.first; while (result<>nil) and (result.did<>id) do result:=result.next;
end;

function  xfinddrawerbypoint(d:xdrawers; p:xpoint):xdrawer;
begin
	result:=nil; if d=nil then exit;
	result:=d.last; while (result<>nil) and (not xpir(result.head,p)) do result:=result.prev;
end;

function  xfinddrawerentry(did:xinteger; var d:xinteger):xboolean;
	var cd:xinteger;
begin
	result:=false;
	with xindex do for cd:=1 to count-1 do begin
		if drawerindex[cd].did=did then begin d:=cd; result:=true; exit; end;
	end;
	xcx:='Drawer is not accessible.';
end;

function  xfinddrawerwithcurrentversion(d:xdrawers; g,n:xstring):xdrawer;
	var cd,nd:xdrawer;
begin
	result:=nil; if d=nil then exit;
	nd:=d.first; g:=xv(g); n:=xv(n);
	while nd<>nil do begin cd:=nd; nd:=nd.next;
		if (xv(cd.group)<>g) or (xv(cd.name)<>n) then continue;
		if result=nil then begin result:=cd; continue; end;
		if xcsas(cd.version,result.version)>0 then result:=cd;
	end;
end;

function  xfindfield(const f:xfields; n:xstring):xinteger;
	var cf:xinteger;
begin
	result:=0; n:=xv(n);
	for cf:=low(f) to high(f) do if xv(f[cf].name)=n then begin result:=cf; exit; end;
end;

function  xfindfolder(f:xfolders; n,v:xstring):xfolder;
begin
	result:=nil; if f=nil then exit;
	n:=xv(n); v:=xv(v);
	result:=f.first; while (result<>nil) and ((xv(result.name)<>n) or (xv(result.version)<>v)) do result:=result.next;
end;

function  xfindfolderbyid(f:xfolders; id:xinteger):xfolder;
begin
	result:=nil; if f=nil then exit;
	result:=f.first; while (result<>nil) and (result.fid<>id) do result:=result.next;
end;

function  xfindfolderbypoint(f:xfolders; p:xpoint):xfolder;
begin
	result:=nil; if f=nil then exit;
	result:=f.last; while (result<>nil) and (not xpir(result.head,p)) do result:=result.prev;
end;

function  xfindfolderentry(fid:xinteger; var f:xinteger):xboolean;
	var cf:xinteger;
begin
	result:=false;
	with xindex do for cf:=1 to count-1 do begin
		if folderindex[cf].fid=fid then begin f:=cf; result:=true; exit; end;
	end;
	xcx:='Folder is not accessible.';
end;

function  xfindfolderwithcurrentversion(f:xfolders; n:xstring):xfolder;
	var cf,nf:xfolder;
begin
	result:=nil; if f=nil then exit;
	nf:=f.first; n:=xv(n);
	while nf<>nil do begin cf:=nf; nf:=nf.next;
		if xv(cf.name)<>n then continue;
		if result=nil then begin result:=cf; continue; end;
		if xcsas(cf.version,result.version)>0 then result:=cf;
	end;
end;

function  xfinditembycommandkey(a:xchar):xitem;
	var cm:xmenu; ci,ni:xitem;
begin
	result:=nil; a:=xv(a)[1];
	cm:=xmenus.first;
	while cm<>nil do begin
		xopenmenu(cm);
		ni:=cm.items.first;
		while ni<>nil do begin ci:=ni; ni:=ni.next;
			if ci.ityp<>xcmditem then continue;
			if xv(xgetvalue(ci.accel))<>a then continue;
			result:=ci;
			xremovelink(result); xclosemenu(cm);
			exit;
		end;
		xclosemenu(cm);
		cm:=cm.next;
	end;
end;

function  xfinditembypoint(i:xitems; p:xpoint):xitem;
begin
	result:=nil; if i=nil then exit;
	result:=i.last; while (result<>nil) and (not xpir(result.rect,p)) do result:=result.prev;
end;

function  xfindlock(cid:xstring):xlock;
begin
	result:=nil; if xlocks=nil then exit; cid:=xv(cid);
	result:=xlocks.first; while (result<>nil) and (result.cid<>cid) do result:=result.next;
end;

function  xfindmenubypoint(p:xpoint):xmenu;
begin
	result:=nil; if xmenus=nil then exit;
	result:=xmenus.last; while (result<>nil) and (not xpir(result.head,p)) do result:=result.prev;
end;

function  xfindpage(p:xpages; f,n:xstring):xpage;
	var cp,np:xpage; i:xinteger;
begin
	result:=nil; if p=nil then exit;
	n:=xv(n);
	np:=p.first;
	while np<>nil do begin cp:=np; np:=np.next;
		i:=xfindfield(cp.fields,f); if i=0 then continue;
		if xv(cp.fields[i].value)<>n then continue;
		result:=cp;
		exit;
	end;
end;

function  xfindpagebyid(p:xpages; id:xinteger):xpage;
begin
	result:=nil; if p=nil then exit;
	result:=p.first; while (result<>nil) and (result.pid<>id) do result:=result.next;
end;

function  xfindpagebypoint(p:xpages; q:xpoint):xpage;
begin
	result:=nil; if p=nil then exit;
	result:=p.last; while (result<>nil) and (not xpir(result.head,q)) do result:=result.prev;
end;

function  xfindpageentry(pid:xinteger; var p:xinteger):xboolean;
	var cp:xinteger;
begin
	result:=false;
	with xindex do for cp:=1 to count-1 do begin
		if pageindex[cp].pid=pid then begin p:=cp; result:=true; exit; end;
	end;
	xcx:='Page is not accessible.';
end;

function  xfindshape(s:xshapes; n:xstring):xshape;
	var cs,ns:xshape;
begin
	result:=nil; if s=nil then exit;
	ns:=s.first; n:=xv(n);
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if result<>nil then exit;
		if cs.styp=xgroupshape then result:=xfindshape(cs.shapes,n);
		if not (cs.styp in [xpictureshape,xtextshape]) then continue;
		if xv(xgetslice(cs,xnslice))=n then result:=cs;
	end;
end;

function  xfindshapebyid(s:xshapes; id:xinteger):xshape;
	var cs,ns:xshape;
begin
	result:=nil; if s=nil then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if result<>nil then exit;
		if cs.styp=xgroupshape then result:=xfindshapebyid(cs.shapes,id);
		if cs.styp<>xtextshape then continue;
		if cs.sid=id then result:=cs;
	end;
end;

function  xfindshapebypoint(s:xshapes; p:xpoint):xshape;
begin
	result:=nil; if s=nil then exit;
	result:=s.last; while (result<>nil) and (not xpointinshape(result,p)) do result:=result.prev;
end;

function  xfindshapeonedgebyname(s:xshapes; n:xstring):xshape;
	var cs,ns:xshape;
begin
	result:=nil; if s=nil then exit;
	ns:=s.first; n:=xv(n);
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if result<>nil then exit;
		if xgetedge(cs)=xnoedge then continue;
		if cs.styp=xgroupshape then result:=xfindshapeonedgebyname(cs.shapes,n);
		if cs.styp<>xtextshape then continue;
		if xv(xgetslice(cs,xnslice))=n then result:=cs;
	end;
end;

function  xfindstopbynameandsubscript(s:xstops; n:xstring; subscript:xboolean; r:xinteger):xstop;
	var cr:xinteger; cs,ns:xstop;
begin
	result:=nil; if s=nil then exit;
	ns:=s.first; cr:=0; n:=xv(n);
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if xshapeisonedge(cs.shape) then continue;
		if n<>xv(xgetslice(cs.shape,xnslice)) then continue;
		inc(cr); result:=cs;
		if (not subscript) or (cr=r) then exit;
	end;
	result:=nil;
end;

function  xfindstopbyshape(s:xstops; h:xshape):xstop;
begin
	result:=nil; if s=nil then exit;
	result:=s.first; while (result<>nil) and (result.shape<>h) do result:=result.next;
end;

function  xfindstopshapebypoint(s:xstops; p:xpoint):xshape;
	var cs:xstop;
begin
	result:=nil; if s=nil then exit;
	cs:=s.last; while (cs<>nil) and (not xpointinshape(cs.shape,p)) do cs:=cs.prev;
	if cs<>nil then result:=cs.shape;
end;

function  xfindsymbol(c:array of xsymbols; t:xsymtyp; s:xscope; n:xstring):xsymbol;
	var cc:xinteger; cs,ns:xsymbol;
begin
	result:=nil; s:=xv(s); n:=xv(n);
	for cc:=0 to high(c) do begin
		ns:=c[cc].last;
		while ns<>nil do begin cs:=ns; ns:=ns.prev;
			if cs.styp<>t then continue;
			if cs.scope<>s then continue;
			if cs.name<>n then continue;
			result:=cs;
			exit;
		end;
	end;
end;

function  xfliparc(a:xarc; d:xdir):xarc;
	var fa:xdegree;
begin
	if d=xhorz then fa:=180 else fa:=0;
	result:=a;
	result.angles[1]:=xnormalizeangle(fa-a.angles[2]);
	result.angles[2]:=xnormalizeangle(fa-a.angles[1]);
end;

function  xflipcurve(c:xcurve; d:xdir):xcurve;
begin
	result:=xcurve(xflippolygon(xpolygon(c),d));
end;

function  xflippicture(p:xpicture; d:xdir):xpicture;

var bcp,ccp:xpoint; dc:hdc; hb,ob:hbitmap; tb:xpointer;

procedure xflippicture_horizontal;
	var cr,cw,ec,rw,sc:xinteger; e,s:^xrgb; t:xrgb;
begin
	with result,omap,header do begin
		cw:=3; rw:=xaligntoboundary(biwidth*cw,4);
		for cr:=1 to biheight do begin
			sc:=1; ec:=biwidth;
			while sc<ec do begin
				s:=@bits[(((cr-1)*rw)+((sc-1)*cw))+1];
				e:=@bits[(((cr-1)*rw)+((ec-1)*cw))+1];
				t:=s^; s^:=e^; e^:=t;
				inc(sc); dec(ec);
			end;
		end;
		croprect:=xmoverectangle(croprect,2*(bcp.x-ccp.x),0);
	end;
end;

procedure xflippicture_vertical;
	var cw,er,rw,sr:xinteger; t:pointer;
begin
	with result,omap,header do begin
		sr:=1; er:=biheight; cw:=3; rw:=xaligntoboundary(biwidth*cw,4);
		getmem(t,rw);
		while sr<er do begin
			move(bits[(sr-1)*rw+1],t^,rw);
			move(bits[(er-1)*rw+1],bits[(sr-1)*rw+1],rw);
			move(t^,bits[(er-1)*rw+1],rw);
			inc(sr); dec(er);
		end;
		freemem(t);
		croprect:=xmoverectangle(croprect,0,2*(bcp.y-ccp.y));
	end;
end;

begin
	result:=p;
	with result do begin
		if omap.bits=nil then exit;
		bcp:=xgetcenterpoint(bitmaprect); ccp:=xgetcenterpoint(croprect);
		if d=xhorz then xflippicture_horizontal else xflippicture_vertical;
		xadjustpicture(result,true);
	end;
end;

function  xflippolygon(n:xpolygon; d:xdir):xpolygon;
	var cv:xvertex;
begin
	result:=n;
	with result,rect do case d of
		xhorz:	for cv:=1 to count do with vertices[cv] do x:=right-(x-left);
		xvert:  for cv:=1 to count do with vertices[cv] do y:=bottom-(y-top);
	end;
	xadjustpolygon(n);
end;

procedure xflipshape(s:xshape; d:xdir);

procedure xflipshape_group;
	var cs:xshape; gcp,scp:xpoint;
begin
	gcp:=xgetcenterpoint(s.rect);
	cs:=s.shapes.first;
	while cs<>nil do begin
		scp:=xgetcenterpoint(cs.rect);
		case d of
			xhorz:  xmoveshape(cs,2*(gcp.x-scp.x),0);
			xvert:	xmoveshape(cs,0,2*(gcp.y-scp.y));
		end;
		xflipshape(cs,d);
		cs:=cs.next;
	end;
end;

begin
	if s=nil then exit;
	with s^ do case styp of
		xarcshape:			arc:=xfliparc(arc,d);
		xcurveshape:		curve:=xflipcurve(curve,d);
		xgroupshape:		xflipshape_group;
		xpictureshape:	picture:=xflippicture(picture,d);
		xpolygonshape:	polygon:=xflippolygon(polygon,d);
	end;
	xadjustshape(s);
end;

procedure xflushevents;
	var m:tmsg;
begin
	while peekmessage(m,xwindow,0,0,pm_remove) do begin
		if m.message=wm_paint then validaterect(xwindow,nil);
	end;
	xqueue.count:=0;
end;

procedure xfocusgraphics(d:xdevice; focus:xboolean);
begin
	setrop2(xdcs[d],r2_copypen); xfocus.active:=false;
	if not focus then exit;
	setrop2(xdcs[d],r2_notxorpen); xfocus.active:=true;;
end;

function  xfocusshape(s:xshape; p:xpoint):xshape;
begin
	result:=s; if s.styp<>xgroupshape then exit;
	result:=s.shapes.last;
	while result<>nil do begin
		if xpointinshape(result,p) then begin result:=xfocusshape(result,p); exit; end;
		result:=result.prev;
	end;
end;

function  xfolderiscurrent(f:xfolder; fe:xinteger):xboolean;
begin
	result:=false; if f=nil then exit;
	result:=f.level=xindex.folderindex[fe].level;
	if not result then xcx:='Folder modified by another user.';
end;

function  xfolderisfiled(f:xfolder):xboolean;
begin
	result:=false; if f=nil then exit;
	result:=f.fid<>0;
	if not result then xcx:='Invalid filing operation.';
end;

function  xfolderisfound(f:xfolder; s:xstring):xboolean;
begin
	result:=false; if f=nil then exit;
	s:=xv(s);
	result:=(pos(s,xv(f.name))<>0) or (pos(s,xv(f.version))<>0);
end;

function  xfolderisreadonly(f:xfolder):xboolean;
begin
	result:=(f<>nil) and (xcabinetidentifierisreadonly(f.cid));
	if result then xcx:='Folder is read only.';
end;

function  xfolderisvisible(f:xfolder; fully:xboolean):xboolean;
begin
	result:=false; if f=nil then exit;
	if f.parent=nil then exit;
	if fully then result:=xrectangleencloses(xlvdr(f.parent),f.head);
	if not fully then result:=xrectangleintersects(xlvdr(f.parent),f.head);
end;

function  xformatboolean(b:xboolean; f:xstring):xstring;
	var p:xinteger;
begin
	result:=''; if f='' then exit;
	p:=pos('|',f); if p=0 then exit;
	if b then result:=copy(f,1,p-1) else result:=copy(f,p+1,length(f)-p);
	result:=xremoveleading(result,[xsp]); result:=xremovetrailing(result,[xsp]);
end;

function  xformatdate(d:xdate; f:xstring):xstring;
begin
	result:='Invalid Date'; if d=0 then exit;
	result:=formatdatetime(f,d);
end;

function  xformatnumber(n:xnumber; f:xstring):xstring;
	var cc:xinteger;
begin
	for cc:=1 to length(f) do begin
		if f[cc]='9' then f[cc]:='0';
		if (f[cc]='Z') or (f[cc]='z') then f[cc]:='#';
	end;
	result:=formatfloat(f,n);
end;

function  xformatrow(d:xdevice; var t:xtext; r:xinteger; origin:xpoint; clip:xrect; var fc,lc:xinteger):xtwit;

var e:xtwit; le,re:tabc; sz,ts:xinteger; tr:xrect; tstats:xtextstats;

function  xformatrow_both:xtwit;
	var cc,sc:xinteger;
begin
	with t,tr do begin
		result:=left-le.abca;
		if rows[r][lc+1]=xcr then exit;
		sc:=0; for cc:=fc to lc do if rows[r][cc]=xsp then inc(sc);
		if sc<>0 then settextjustification(xdcs[d],e div xfac,sc);
	end;
end;

function  xformatrow_huge:xtwit;
	var nrect:xrect;
begin
	with t,tstats do begin
		result:=0;
		nrect:=xintersectrectangles(rect,clip);
		fc:=(nrect.left-rect.left) div colwidth+1;
		if (fc<1) or (fc>length(rows[r])) then begin fc:=0; lc:=0; exit; end;
		lc:=xmin(fc+(xwidth(nrect) div colwidth+1),length(rows[r])-1);
		result:=tr.left+(fc-1)*colwidth;
	end;
end;

procedure xformatrow_printing;
	var psz,ssz:xinteger;
begin
	with t do begin
		if (font.align in [xbothalign,xspreadalign]) or (length(rows[r])<=1) then exit;
		xsetfont(xmemory,font,mag);
		settextjustification(xdcs[xmemory],0,0); settextcharacterextra(xdcs[xmemory],0);
		ssz:=gettabbedtextextent(xdcs[xmemory],@rows[r][1],length(rows[r])-1,1,tabsize);
		psz:=gettabbedtextextent(xdcs[d],@rows[r][1],length(rows[r])-1,1,ts);
		settextcharacterextra(xdcs[d],floor((loword(ssz)*xfac-loword(psz)*xfac)/(lc-fc+1)) div xfac);
	end;
end;

function  xformatrow_spread:xtwit;
	var et:xtwit;
begin
	with t,tr do begin
		if lc-fc>0 then et:=((e div (lc-fc)) div xtpp)*xtpp else et:=0;
		settextcharacterextra(xdcs[d],et div xfac);
		result:=left-le.abca+((e-(et*(lc-fc))) div 2);
	end;
end;

begin
	with t,tr do begin
		result:=0; fc:=0; lc:=0; if (r<1) or (r>count) then exit;
		tstats:=xgettextstatistics(t,origin,clip);
		tr:=xpositionrectangle(rect,0,0);
		inc(left,xzoommargin(t)); dec(right,xzoommargin(t));
		xsetfont(d,font,mag);
		settextjustification(xdcs[d],0,0); settextcharacterextra(xdcs[d],0);
		fc:=xmin(1,length(rows[r])-1); lc:=length(rows[r])-1;
		if d=xprinter then xformatrow_printing;
		if xishuge(t) then begin result:=xformatrow_huge; exit; end;
		if xissimple(t) then begin result:=tr.left; exit; end;
		getcharwidth(xdcs[d],ord(xsp),ord(xsp),ts);
		sz:=gettabbedtextextent(xdcs[d],@rows[r][1],length(rows[r])-1,1,ts);
		if length(rows[r])>1 then getcharabcwidths(xdcs[d],ord(rows[r][fc]),ord(rows[r][fc]),le) else le.abca:=0;
		if length(rows[r])>1 then getcharabcwidths(xdcs[d],ord(rows[r][lc]),ord(rows[r][lc]),re) else re.abcc:=0;
		le.abca:=le.abca*xfac; re.abcc:=re.abcc*xfac;
		e:=(right-left)-(loword(sz)*xfac-le.abca-re.abcc);
		case font.align of
			xbothalign:		result:=xformatrow_both;
			xcenteralign:	result:=left-le.abca+(e div 2);
			xleftalign: 	result:=left-le.abca;
			xrightalign:	result:=left-le.abca+e;
			xspreadalign:	result:=xformatrow_spread;
		end;
	end;
end;

procedure xformatshape(s:xshape);
	var d:xdate; f,v:xstring; n:xnumber; i:xtime;
begin
	if s=nil then exit;
	with s^ do begin
		dtyp:=xformattodatatype(s);
		f:=xgetslice(s,xfslice); v:=xgetslice(s,xvslice);
		if v='' then exit;
		case dtyp of  // don't call xsetslice — it will recurse
			xbooleandata:	slices[xvslice].str:=xformatboolean(xstb(v),f);
			xdatedata:		if not xstdwe(v,d) 	then slices[xvslice].str:=xformatdate(d,f);
			xnumberdata:	if not xstncwe(v,n)	then slices[xvslice].str:=xformatnumber(n,f);
			xtimedata:		if not xsttwe(v,i) 	then slices[xvslice].str:=xformattime(i,f);
		end;
	end;
end;

function  xformattime(t:xtime; f:xstring):xstring;
	var h:xstring; p:xinteger;
begin
	result:='Invalid Time'; if t=9999 then exit;
	p:=pos('am',xv(f)); if p=0 then p:=pos('pm',xv(f));
	if p<>0 then begin
		h:=copy(f,p,2);
		delete(f,p,2);
		f:=f+xadjustcase('am',h)+'/'+xadjustcase('pm',h);
	end;
	result:=formatdatetime(f,t);
end;

function  xformattodatatype(s:xshape):xdatatyp;
	var f:xstring;
begin
	result:=xnodata; if s=nil then exit;
	f:=xv(xgetslice(s,xfslice));
	result:=xstringdata;
	if f='' then exit;
	if (pos('|',f)<>0) and (xisbooleanformat(f)) then begin result:=xbooleandata; exit; end;
	if (f[1] in ['m']) and (xisdateformat(f)) then begin result:=xdatedata; exit; end;
	if (f[1] in ['$','Z','z','9','.']) and (xisnumberformat(f)) then begin result:=xnumberdata; exit; end;
	if (f[1] in ['h']) and (xistimeformat(f)) then begin result:=xtimedata; exit; end;
end;

function  xfreememory(p:xpointer):xinteger;
begin
	dec(xmanager.count); result:=xmanager.old.freemem(p);
end;

{g}

procedure xgeneratesuggestions(w:xstring);

const max=12;
var c:xcharset; cc:xchar; cnt,n:xinteger; phonex,t:xstring; sq:xchar;

procedure xgeneratesuggestions_fromwords(const s:xstring);
	var p:xinteger; cp,cw:xstring;
begin
	with xlexicon do begin
		p:=1;
		repeat
			cw:=xgetnextgenerictoken(s,p,false,[xcr,xlf,xsp]);
			cp:=xgetnextgenerictoken(s,p,false,[xcr,xlf,xsp]);
			if (cw='') or (cp='') then break;
			if cp<>phonex then continue;
			if cnt=max then exit;
			inc(cnt); if sq<>x00 then cw:=cw+sq+'s';
			xappendlink(suggestions,xcreatevalue(xadjustcase(cw,w)));
		until xforever;
	end;
end;

begin
	with xlexicon do begin
		xdestroyvalues(suggestions,false);
		if w='' then exit; t:=ansilowercase(w);
		case t[1] of
			'a':  c:=['a','e','i','o','u','y'];
			'c':  c:=['c','k','q','s'];
			'e':  c:=['a','e','i','o','u','y'];
			'f':  c:=['f','p'];
			'g':  c:=['g','j','k','n'];
			'i':  c:=['a','e','i','o','u','y'];
			'j':  c:=['g','j'];
			'k':  c:=['c','g','k','n','q'];
			'm':  c:=['m','n'];
			'n':  c:=['g','k','m','n','p'];
			'o':  c:=['a','e','h','i','o','u','w','y'];
			'p':  c:=['n','p','s','t'];
			'q':  c:=['c','k','q'];
			's':  c:=['c','p','s'];
			't':  c:=['p','t'];
			'u':  c:=['a','e','i','o','u','y'];
			'w':  c:=['o','w'];
			'y':  c:=['a','e','i','o','u','y'];
			else  c:=[t[1]];
		end;
		sq:=x00; n:=length(t);
		if (n>2) and (t[n]='s') and (t[n-1] in xsqs) then begin sq:=t[n-1]; delete(t,n-1,2); end;
		cnt:=0; phonex:=xphonex(t);
		xgeneratesuggestions_fromwords(addenda);
		for cc:='a' to 'z' do begin
			if cnt=max then exit;
			if not (cc in c) then continue;
			xgeneratesuggestions_fromwords(words[cc]);
		end;
	end;
end;

function  xgetaddendafilename:xstring;
begin
	result:=xlexicon.cid+xname+'\'+'addenda';
end;

function  xgetanchorhandle(h:xhandle):xhandle;
begin
	case h of
		xtopleft:     result:=xbottomright;
		xtopright:    result:=xbottomleft;
		xbottomright:	result:=xtopleft;
		xbottomleft:  result:=xtopright;
	end;
end;

function  xgetangle(a,b:xpoint):xdegree;
	var d:xextended;
begin
	result:=0; d:=xgetdistance(a,b); if d=0 then exit;
	result:=radtodeg(arccos((b.x-a.x)/d));
	if b.y>a.y then result:=360-result;
end;

function  xgetarcpoint(a:xarc; v:xvertex):xpoint;
	var a1,b1:xextended; cp:xpoint; t:xdegree;
begin
  set8087cw($1332); // control word on some AMD processors changes when certain print functions are called, messing up floating point operations
	with a,result do begin
		cp:=xgetcenterpoint(rect);
		a1:=(xwidth(rect)-10)/2; b1:=(xheight(rect)-10)/2;
		if b1=0 then begin result:=cp; exit; end;
		t:=arctan((a1/b1)*tan(degtorad(angles[v])));
		x:=round((a1*cos(t))); y:=round((b1*sin(t)));
		case xangletoquadrant(angles[v]) of
			xtopleft,xbottomleft:		x:=-x;
			xtopright,xbottomright:	y:=-y;
		end;
		x:=cp.x+x; y:=cp.y+y;
	end;
end;

function  xgetareacount:xinteger;
	var ca:xarea;
begin
	result:=0; if xareas=nil then exit;
	ca:=xareas.first; while ca<>nil do begin inc(result); ca:=ca.next; end;
end;

function  xgetblockstatus(b:xblock):xstring;
begin
	result:=''; if b=nil then exit;
	result:=xits(b.edit.text.caretpos.row)+':'+xits(b.edit.text.caretpos.col);
end;

function  xgetboundingrectangle(s:xshapes; selected:xboolean):xrect;
	var cs,ns:xshape; r:xrect;
begin
	result:=xnilrect; if s=nil then exit;
	r:=xmr(xmaxx,xmaxy,xminx,xminy); result:=r;
	ns:=s.first;
	with result do while ns<>nil do begin cs:=ns; ns:=ns.next;
		if selected and not cs.sel then continue;
		if xrectangleequals(cs.rect,xnilrect) then continue;
		left:=xmin(left,cs.rect.left);
		top:=xmin(top,cs.rect.top);
		right:=xmax(right,cs.rect.right);
		bottom:=xmax(bottom,cs.rect.bottom);
	end;
	if xrectangleequals(result,r) then result:=xnilrect;
end;

function  xgetcabinetstatus(c:xcabinet):xstring;
	var s:xinteger;
begin
	result:=''; if c=nil then exit;
	s:=xgetselecteddrawercount(c.drawers);
	if s>0 then result:=xmcm(s,'drawer selected','drawers selected');
	if s<1 then result:=xmcm(xgetdrawercount(c.drawers),'drawer','drawers');
end;

function  xgetcenterinrectangle(p:xpage; r:xrect):xrect;
begin
	result:=xnilrect; if p=nil then exit;
	result:=xlvpr(p);
	if (xwidth(r)<=xwidth(result)) and (xheight(r)<=xheight(result)) then exit;
	result:=p.body;
end;

function  xgetcenterpoint(r:xrect):xpoint;
begin
	result.x:=(r.left+r.right) div 2;
	result.y:=(r.top+r.bottom) div 2;
end;

function  xgetcharactercount(s:xshape; lfs:xboolean):xinteger;
	var cr,e:xinteger;
begin
	result:=0; if s=nil then exit; if lfs then e:=1 else e:=0;
	with s^,text do for cr:=1 to count do begin
		if xissimple(text) then xcleanrow(text,cr);
		inc(result,length(rows[cr])+e);
	end;
	dec(result,1+e); // don't count last cr
	xadjustcaret(s);
end;

function  xgetcliprectangle(d:xdevice):xrect;
begin
	getclipbox(xdcs[d],result);
	with result do begin
		left:=round(left*xfac);
		top:=round(top*xfac);
		right:=round(right*xfac)-10;
		bottom:=round(bottom*xfac)-10;
	end;
end;

function  xgetclock(c:xclock):xinteger;
begin
	result:=xclocks[c].value;
end;

function  xgetclockstring(c:xclock):xstring;
	var h,m,s,d,v:xinteger;
begin
	v:=xclocks[c].value;
	h:=v div 3600000;
	m:=(v mod 3600000) div 60000;
	s:=((v mod 3600000) mod 60000) div 1000;
	d:=((v mod 3600000) mod 60000) mod 1000;
	result:=xits(h)+':'+xfillleft(xits(m),'0',2)+':'+xfillleft(xits(s),'0',2)+'.'+xfillleft(xits(d),'0',3);
end;

function  xgetcomputername:xstring;
	var i:xdword;
begin
	i:=max_computername_length+1; setlength(result,i);
	if getcomputername(xpchar(result),i) then setlength(result,i) else result:='';
end;

function  xgetconfigurationfilename:xstring;
begin
	result:=xconfig.cid+xname+'\'+'configuration';
end;

function  xgetcurrentcharacter(s:xshape):xinteger;
begin
	result:=0; if s=nil then exit;
	result:=s.text.caretpos.col;
end;

function  xgetcurrentline(s:xshape):xinteger;
begin
	result:=0; if s=nil then exit;
	result:=s.text.caretpos.row;
end;

function  xgetdebuginformation:xdebug;
	var p:xpage;
begin
	fillchar(result,sizeof(result),x00);
	if (xca=nil) or (xca.source.shape=nil) then exit;
	with xca^,source,result do begin
		p:=xgetpage(shape); if p=nil then exit;
		cid:=p.cid; did:=p.did; fid:=p.fid; pid:=p.pid; sid:=shape.sid;
		pos:=shape.slices[source.slice].pos;
		slice:=source.slice;
	end;
end;

function  xgetdeepdrawercount(d:xdrawers):xinteger;
	var cd:xdrawer;
begin
	result:=0; if d=nil then exit;
	cd:=d.first; while cd<>nil do begin if cd.deep then inc(result); cd:=cd.next; end;
end;

function  xgetdeepdrawersubscript(d:xdrawers; a:xdrawer):xinteger;
	var cd:xdrawer;
begin
	result:=0; if d=nil then exit;
	cd:=d.first; inc(result);
	while (cd<>nil) and (cd<>a) do begin
		if cd.deep then inc(result);
		cd:=cd.next;
	end;
end;

function  xgetdeepfoldercount(f:xfolders):xinteger;
	var cf:xfolder;
begin
	result:=0; if f=nil then exit;
	cf:=f.first; while cf<>nil do begin if cf.deep then inc(result); cf:=cf.next; end;
end;

function  xgetdeepfoldersubscript(f:xfolders; a:xfolder):xinteger;
	var cf:xfolder;
begin
	result:=0; if f=nil then exit;
	cf:=f.first; inc(result);
	while (cf<>nil) and (cf<>a) do begin
		if cf.deep then inc(result);
		cf:=cf.next;
	end;
end;

function  xgetdeeppagecount(p:xpages):xinteger;
	var cp:xpage;
begin
	result:=0; if p=nil then exit;
	cp:=p.first; while cp<>nil do begin if cp.deep then inc(result); cp:=cp.next; end;
end;

function  xgetdeeppagesubscript(p:xpages; a:xpage):xinteger;
	var cp:xpage;
begin
	result:=0; if p=nil then exit;
	cp:=p.first; inc(result);
	while (cp<>nil) and (cp<>a) do begin
		if cp.deep then inc(result);
		cp:=cp.next;
	end;
end;

function  xgetdefaultprinter(var n,p:xstring):xboolean; // 2000/XP new
  var d:^tdevnames; pd:tprintdlg;
begin
  fillchar(pd,sizeof(pd),x00);
  pd.lstructsize:=sizeof(pd);
  pd.flags:=pd_returndefault;
  printdlg(pd);
  d:=globallock(pd.hdevnames);
  n:=xpchar(xinteger(d)+d.wdeviceoffset); // devnames contains offsets to pchars
  p:=xpchar(xinteger(d)+d.woutputoffset);
  globalunlock(pd.hdevnames);
  globalfree(pd.hdevnames);
  globalfree(pd.hdevmode);
end;
{
function  xgetdefaultprinter(var n,p:xstring):xboolean;
	var c,r:xinteger; pi:^tprinterinfo2;
begin
	result:=false; n:=''; p:='';
	enumprinters(printer_enum_default,nil,2,nil,0,c,r);
	try getmem(pi,c); fillchar(pi^,c,x00);
		if not enumprinters(printer_enum_default,nil,2,pi,c,c,r) then exit;
		result:=true;
		n:=pi.pprintername; p:=pi.pportname;
	finally freemem(pi); end;
end;
}
procedure xgetdefaultprinterconfiguration(pn,pp:xstring; var postscript,center,reverse:xboolean; var rotate:xinteger);
	var s:xstring;
begin
	// get postscript
	setlength(s,255); fillchar(pchar(s)^,length(s),x00);
	setlength(s,getprofilestring('printerports',xpchar(pn),'default',pchar(s),length(s)));
	postscript:=pos('pscript',xv(s))<>0;
	// get centerfeed, reverse
	center:=false; reverse:=true;
	// get rotate
	rotate:=devicecapabilities(xpchar(pn),xpchar(pp),dc_orientation,nil,nil);
	if (rotate<>0) and (rotate<>90) and (rotate<>270) then rotate:=0;
end;

function  xgetdirectorysize(path:xstring):xinteger;
	var r:xinteger; sr:tsearchrec;
begin
	result:=0; if not xdirectoryexists(path) then exit;
	r:=findfirst(path+'*.*',faanyfile,sr);
	while r=0 do begin
		if (sr.name[1]<>'.') and ((sr.attr and fadirectory)<>0) then inc(result,xgetdirectorysize(path+sr.name+'\'));
		if sr.name[1]<>'.' then inc(result,xgetfilesize(path+sr.name));
		r:=findnext(sr);
	end;
	findclose(sr);
end;

function  xgetdistance(a,b:xpoint):xextended;
	var x,y:xextended;
begin
	x:=a.x; y:=a.y; // don't reduce
	result:=sqrt(sqr(x-b.x)+sqr(y-b.y));
end;

function  xgetdrawer(o:xobject):xdrawer;
	var r:xrecord;
begin
	result:=nil; if o=nil then exit;
	r:=xrecord(o); while (r<>nil) and (xtype(r)<>xdrawerrecord) do r:=r.parent; result:=xdrawer(r);
end;

function  xgetdrawercount(d:xdrawers):xinteger;
	var cd:xdrawer;
begin
	result:=0; if d=nil then exit;
	cd:=d.first; while cd<>nil do begin inc(result); cd:=cd.next; end;
end;

function  xgetdrawerdirectoryname(cid:xstring; did:xinteger):xstring;
begin
	result:=cid+xname+'\'+xidts(did)+'\';
end;

function  xgetdrawerindexname(cid:xstring):xstring;
begin
	result:=cid+xname+'\index';
end;

function  xgetdrawersize(d:xdrawer):xinteger;
begin
	result:=0; if d=nil then exit;
	result:=xgetdirectorysize(xgetdrawerdirectoryname(d.cid,d.did));
end;

function  xgetdrawerstatus(d:xdrawer):xstring;
	var s:xinteger;
begin
	result:=''; if d=nil then exit;
	s:=xgetselectedfoldercount(d.folders);
	if s>0 then result:=xmcm(s,'folder selected','folders selected');
	if s<1 then result:=xmcm(xgetfoldercount(d.folders),'folder','folders');
end;

function  xgetedge(s:xshape):xedge;
	var p:xpage;
begin
	result:=xnoedge; if s=nil then exit;
	p:=xgetpage(s); if p=nil then exit;
	if  (s.rect.top>=round(p.body.top))
	and (s.rect.bottom<=round(p.body.top+(180*s.mag))) then result:=xtopedge;
	if  (s.rect.top>=round(p.body.bottom-(180*s.mag)))
	and (s.rect.bottom<=round(p.body.bottom)) then result:=xbottomedge;
end;

function  xgetfilesize(path:xstring):xinteger;
	var fcb:file;
begin
	xassignfile(fcb,path);
	xreset(fcb,1);
	result:=xfilesize(fcb);
	xclosefile(fcb);
	if xioresult<>0 then result:=0;
end;

function  xgetfirstdeepdrawer(d:xdrawers):xdrawer;
begin
	result:=nil; if d=nil then exit;
	result:=d.first; while (result<>nil) and (not result.deep) do result:=result.next;
end;

function  xgetfirstdeepfolder(f:xfolders):xfolder;
begin
	result:=nil; if f=nil then exit;
	result:=f.first; while (result<>nil) and (not result.deep) do result:=result.next;
end;

function  xgetfirstdeeppage(p:xpages):xpage;
begin
	result:=nil; if p=nil then exit;
	result:=p.first; while (result<>nil) and (not result.deep) do result:=result.next;
end;

function  xgetfirstselecteddrawer(d:xdrawers):xdrawer;
begin
	result:=nil; if d=nil then exit;
	result:=d.first; while (result<>nil) and (not result.sel) do result:=result.next;
end;

function  xgetfirstselectedfolder(f:xfolders):xfolder;
begin
	result:=nil; if f=nil then exit;
	result:=f.first; while (result<>nil) and (not result.sel) do result:=result.next;
end;

function  xgetfirstselectedpage(p:xpages):xpage;
begin
	result:=nil; if p=nil then exit;
	result:=p.first; while (result<>nil) and (not result.sel) do result:=result.next;
end;

function  xgetfirstselectedshape(s:xshapes):xshape;
begin
	result:=nil; if s=nil then exit;
	result:=s.first; while (result<>nil) and (not result.sel) do result:=result.next;
end;

function  xgetfirstselectedshapeonstops(s:xstops):xshape;
	var cs:xstop;
begin
	result:=nil; if s=nil then exit;
	cs:=s.first; while (cs<>nil) and (not cs.shape.sel) do cs:=cs.next;
	if cs<>nil then result:=cs.shape;
end;

function  xgetfirstselectedstop(s:xstops):xstop;
begin
	result:=nil; if s=nil then exit;
	result:=s.first; while (result<>nil) and (not result.shape.sel) do result:=result.next;
end;

function  xgetfirstvisibledrawer(d:xdrawers; fully:xboolean):xdrawer;
begin
	result:=nil; if d=nil then exit;
	result:=d.first; while (result<>nil) and (not xdrawerisvisible(result,fully)) do result:=result.next;
end;

function  xgetfirstvisiblefolder(f:xfolders; fully:xboolean):xfolder;
begin
	result:=nil; if f=nil then exit;
	result:=f.first; while (result<>nil) and (not xfolderisvisible(result,fully)) do result:=result.next;
end;

function  xgetfirstvisiblepage(p:xpages; fully:xboolean):xpage;
begin
	result:=nil; if p=nil then exit;
	result:=p.first; while (result<>nil) and (not xpageisvisible(result,fully)) do result:=result.next;
end;

function  xgetfolder(s:xshape):xfolder;
	var r:xrecord;
begin
	result:=nil; if s=nil then exit;
	r:=xrecord(s); while (r<>nil) and (xtype(r)<>xfolderrecord) do r:=r.parent; result:=xfolder(r);
end;

function  xgetfoldercount(f:xfolders):xinteger;
	var cf:xfolder;
begin
	result:=0; if f=nil then exit;
	cf:=f.first; while cf<>nil do begin inc(result); cf:=cf.next; end;
end;

function  xgetfolderdirectoryname(cid:xstring; did,fid:xinteger):xstring;
begin
	result:=cid+xname+'\'+xidts(did)+'\'+xidts(fid)+'\';
end;

function  xgetfolderindexname(cid:xstring; did:xinteger):xstring;
begin
	result:=cid+xname+'\'+xidts(did)+'\index';
end;

function  xgetfoldersize(f:xfolder):xinteger;
begin
	result:=0; if f=nil then exit;
	result:=xgetdirectorysize(xgetfolderdirectoryname(f.cid,f.did,f.fid));
end;

function  xgetfolderstatus(f:xfolder):xstring;
	var s:xinteger;
begin
	result:=''; if f=nil then exit;
	s:=xgetselectedpagecount(f.pages);
	if s>0 then result:=xmcm(s,'page selected','pages selected');
	if s<1 then result:=xmcm(xgetpagecount(f.pages),'page','pages');
end;

function  xgetfoldersubscript(f:xfolders; a:xfolder):xinteger;
	var cf:xfolder;
begin
	result:=0; if f=nil then exit;
	cf:=f.first; inc(result); while (cf<>nil) and (cf<>a) do begin inc(result); cf:=cf.next; end;
end;

function  xgetitemcount(i:xitems):xinteger;
	var ci:xitem;
begin
	result:=0; if i=nil then exit;
	ci:=i.first; while ci<>nil do begin inc(result); ci:=ci.next; end;
end;

function  xgetlargestcolumn(s:xshape; sr,er:xinteger):xinteger;
	var cr:xinteger;
begin
	result:=0; if s=nil then exit;
	with s^,text do begin
		if (sr<1) or (sr>count) or (er<1) or (er>count) then exit;
		for cr:=sr to er do result:=xmax(result,length(rows[cr])-1);
	end;
end;

function  xgetlastselecteddrawer(d:xdrawers):xdrawer;
begin
	result:=nil; if d=nil then exit;
	result:=d.last; while (result<>nil) and (not result.sel) do result:=result.prev;
end;

function  xgetlastselectedfolder(f:xfolders):xfolder;
begin
	result:=nil; if f=nil then exit;
	result:=f.last; while (result<>nil) and (not result.sel) do result:=result.prev;
end;

function  xgetlastselectedpage(p:xpages):xpage;
begin
	result:=nil; if p=nil then exit;
	result:=p.last; while (result<>nil) and (not result.sel) do result:=result.prev;
end;

function  xgetlastvisiblepage(p:xpages; fully:xboolean):xpage;
begin
	result:=nil; if p=nil then exit;
	result:=p.last; while (result<>nil) and (not xpageisvisible(result,fully)) do result:=result.prev;
end;

function  xgetlexiconfilename:xstring;
begin
	result:=xlexicon.cid+xname+'\'+'lexicon';
end;

function  xgetloadedpagesize(p:xpage):xinteger;
begin
	result:=0; if p=nil then exit;
	xindexpage(p); xupdatepage(p); xindexpage(p);
	p:=xcopypage(p,true);
	try
		xnormalizepage(p,1/p.mag,60,xvslice);
		xresetbuffer;
		xstorepage(p);
		result:=xbuffer.count;
	finally xdestroypage(p); end;
end;

function  xgetlogicalxpixels(d:xdevice):xinteger;
begin
	result:=getdevicecaps(xdcs[d],logpixelsx);
end;

function  xgetlogicalypixels(d:xdevice):xinteger;
begin
	result:=getdevicecaps(xdcs[d],logpixelsy);
end;

function  xgetmark:xinteger;
begin
	inc(xca.mark); result:=xca.mark;
end;

function  xgetmaximumcroprectangle(var p:xpicture):xrect;
	var g:xtwit; sh,sw:xextended;
begin
	with p,rect do begin
		result:=xnilrect;
		if (xwidth(rect)-10<=0) or (xheight(rect)-10<=0) then exit;
		if (xwidth(croprect)-10<=0) or (xheight(croprect)-10<=0) then exit;
		sw:=(xwidth(rect)-10)/((xwidth(croprect)-10)*mag);
		sh:=(xheight(rect)-10)/((xheight(croprect)-10)*mag);
		result:=xpositionrectangle(xzoomrectangle(xsizerectangleproportionately(bitmaprect,sw,sh,xbottomright),mag),left,top);
		g:=round(60*mag);
		result:=xmoverectangle(result,trunc(((bitmaprect.left-croprect.left)*mag)*sw),trunc(((bitmaprect.top-croprect.top)*mag)*sh));
		with result do begin right:=g*trunc(right/g); bottom:=g*trunc(bottom/g); end;
	end;
end;

function  xgetmaximumitemwidth(i:xitems; m:xinteger):xinteger;
	var ci:xitem;
begin
	result:=m; if i=nil then exit;
	ci:=i.first;
	while ci<>nil do begin
		case ci.ityp of
			xchoiceitem:	result:=xmax(result,xgettextwidth(ci.title)+180*2);
			xcmditem:     result:=xmax(result,xgettextwidth(ci.title)+180*4);
		end;
		ci:=ci.next;
	end;
end;

function  xgetmemory(s:xinteger):xpointer;
begin
	inc(xmanager.count); result:=xmanager.old.getmem(s);
end;

function  xgetmousepoint:xpoint;
begin
	getcursorpos(result);
	dptolp(xdcs[xdisplay],result,1);
	result.x:=result.x*xfac; result.y:=result.y*xfac;
end;

function  xgetnextcommenttoken(const s:xstring; var p:xinteger):xstring;
	var c,fc,lc,len:xinteger;
begin
	len:=length(s); fc:=p; lc:=fc+1; c:=1;
	while (lc<=len) and (c<>0) and (not (s[lc] in [xcr,xet,xlf])) do begin
		if s[lc]='{' then inc(c); if s[lc]='}' then dec(c);
		inc(lc);
	end;
	result:=copy(s,fc,lc-fc);
	p:=lc;
end;

function  xgetnextdeepdrawer(d:xdrawer):xdrawer;
begin
	result:=nil; if d=nil then exit;
	result:=d.next; while (result<>nil) and (not result.deep) do result:=result.next;
end;

function  xgetnextdeepfolder(f:xfolder):xfolder;
begin
	result:=nil; if f=nil then exit;
	result:=f.next; while (result<>nil) and (not result.deep) do result:=result.next;
end;

function  xgetnextdeeppage(p:xpage):xpage;
begin
	result:=nil; if p=nil then exit;
	result:=p.next; while (result<>nil) and (not result.deep) do result:=result.next;
end;

function  xgetnextgenerictoken(const s:xstring; var p:xinteger; wantdelims:xboolean; const delims:xcharset):xstring;
	var b,len:xinteger;
begin
	len:=length(s); if p<=0 then p:=1;
	if not wantdelims then while (p<=len) and (s[p] in delims) do inc(p);
	if (p<=len) and (s[p] in delims) then begin result:=s[p]; inc(p); exit; end;
	b:=p;
	while (p<=len) and (not (s[p] in delims)) do inc(p);
	result:=copy(s,b,p-b);
end;

function  xgetnextlanguagetoken(const s:xstring; var p:xinteger; wantleaders:xboolean):xtoken;

const leaders=[xcr,xet,xlf,xsp,xtb];
const returns=['&',':','<','>','=','+','-','*','/','^','[',']','(',')','{','}',',','.'];
const delims=[xsq]+leaders+returns;
var fc,lc,len:xinteger;

procedure xgetnextlanguagetoken_number(dot:xboolean); forward;

procedure xgetnextlanguagetoken_dot;
begin
	result.ttyp:=xdottok; result.str:='.'; inc(p);
	if (p>len) or (not (s[p] in xdigits)) then exit;
	dec(p); xgetnextlanguagetoken_number(true);
end;

procedure xgetnextlanguagetoken_colon;
begin
	result.ttyp:=xcolontok; result.str:=':'; inc(p);
	if (p>len) or (s[p]<>'=') then exit;
	result.ttyp:=xcetok; result.str:=':='; inc(p);
end;

procedure xgetnextlanguagetoken_comment;
begin
	result.ttyp:=xcommenttok; result.str:=xgetnextcommenttoken(s,p);
end;

function  xgetnextlanguagetoken_gettype(t:xstring):xtoktyp;
	var ct:xtoktyp;
begin
	result:=xnotok; t:=ansilowercase(t);
	for ct:=low(xtoktyp) to high(xtoktyp) do begin
		if t=xtokens[ct] then begin result:=ct; exit; end;
	end;
end;

procedure xgetnextlanguagetoken_greater;
begin
	result.ttyp:=xgttok; result.str:='>'; inc(p);
	if (p>len) or (s[p]<>'=') then exit;
	result.ttyp:=xgetok; result.str:='>='; inc(p);
end;

procedure xgetnextlanguagetoken_leader;
begin
	result.str:=s[p]; result.ttyp:=xgetnextlanguagetoken_gettype(s[p]); inc(p);
end;

procedure xgetnextlanguagetoken_less;
begin
	result.ttyp:=xlttok; result.str:='<'; inc(p);
	if (p>len) or ((s[p]<>'=') and (s[p]<>'>')) then exit;
	if s[p]='=' then result.ttyp:=xletok else result.ttyp:=xnetok;
	result.str:='<'+s[p]; inc(p);
end;

procedure xgetnextlanguagetoken_number(dot:xboolean);
begin
	result.ttyp:=xnumtok; result.num:=xgetnextnumbertoken(s,p,dot,result.str);
end;

procedure xgetnextlanguagetoken_returns;
begin
	result.str:=s[p]; result.ttyp:=xgetnextlanguagetoken_gettype(s[p]); inc(p);
end;

procedure xgetnextlanguagetoken_string;
begin
	result.ttyp:=xstrtok; result.str:=xgetnextstringtoken(s,p);
end;

begin
	with result do begin
		finalize(result); result:=xniltoken;
		len:=length(s); if p<=0 then p:=1;
		if p>len then exit;
		if (wantleaders) and (s[p] in leaders) then begin xgetnextlanguagetoken_leader; exit; end;
		while (p<=len) and (s[p] in leaders) do inc(p);
		if p>len then exit;
		if s[p]='.' 							then begin xgetnextlanguagetoken_dot; 		exit; end;
		if s[p]=':' 							then begin xgetnextlanguagetoken_colon; 	exit; end;
		if s[p]='<' 							then begin xgetnextlanguagetoken_less; 		exit; end;
		if s[p]='>' 							then begin xgetnextlanguagetoken_greater;	exit; end;
		if s[p]=xsq 							then begin xgetnextlanguagetoken_string; 	exit; end;
		if s[p]='{' 							then begin xgetnextlanguagetoken_comment;	exit; end;
		if s[p] in xdigits				then begin xgetnextlanguagetoken_number(false);	exit; end;
		if s[p] in returns 				then begin xgetnextlanguagetoken_returns;	exit; end;
		fc:=p; lc:=fc;
		while (lc<=len) and (not (s[lc] in delims)) do inc(lc);
		str:=copy(s,fc,lc-fc);
		p:=lc;
		if str='' then exit;
		ttyp:=xgetnextlanguagetoken_gettype(str); if ttyp=xnotok then ttyp:=xidenttok;
		bool:=ttyp=xtruetok;
	end;
end;

function  xgetnextnumbertoken(const s:xstring; var p:xinteger; dot:xboolean; var r:xstring):xnumber;
	var fc,lc,len:xinteger; fd:xboolean;
begin
	fc:=p; lc:=fc+1; len:=length(s); fd:=not dot;
	repeat
		if lc>len then break;
		if (s[lc]='.') and (not fd) then begin dec(lc); break; end;
		if (s[lc]='.') then begin fd:=false; inc(lc); continue; end;
		if not (s[lc] in xdigits) then begin dec(lc); break; end;
		inc(lc);
	until xforever;
	r:=copy(s,fc,lc-fc+1); result:=xstn(r);
	p:=lc+1;
end;

function  xgetnextstringtoken(const s:xstring; var p:xinteger):xstring;
	var fc,lc,len:xinteger;
begin
	fc:=p; lc:=fc+1; len:=length(s);
	repeat
		if lc>len then break;
		if s[lc]=xcr then begin dec(lc); break; end;
		if (lc=len) and (s[lc]=xsq) then break;
		if (lc<len) and (s[lc]=xsq) and (s[lc+1]<>xsq) then break;
		if (lc<len) and (s[lc]=xsq) and (s[lc+1]=xsq) then inc(lc);
		inc(lc);
	until xforever;
	result:=copy(s,fc,lc-fc+1);
	p:=lc+1;
end;

procedure xgetnexttoken;
begin
	with xca^,source,shape.slices[slice] do begin
		finalize(xtok); xtok:=xniltoken;
		if abort then exit;
		repeat
			finalize(xtok); xtok:=xgetnextlanguagetoken(str,pos,false);
		until xtok.ttyp<>xcommenttok;
	end;
end;

function  xgetnextword(const s:xstring; var p:xinteger):xstring;
	const delims=xchars-xdigits-xletters-xsqs;
begin
	while (p>1) and (p<=length(s)) and (not (s[p-1] in delims)) do inc(p);
	repeat
		result:=xgetnextgenerictoken(s,p,false,delims);
		if result='' then exit;
		while (length(result)<>0) and (result[1] in xsqs) do delete(result,1,1);
		while (length(result)<>0) and (result[length(result)] in xsqs) do begin delete(result,length(result),1); dec(p); end;
  until result<>'';
end;

function  xgetpage(o:xobject):xpage;
	var r:xrecord;
begin
	result:=nil; if o=nil then exit;
	r:=xrecord(o); while (r<>nil) and (xtype(r)<>xpagerecord) do r:=r.parent; result:=xpage(r);
end;

function  xgetpagecount(p:xpages):xinteger;
	var cp:xpage;
begin
	result:=0; if p=nil then exit;
	cp:=p.first; while cp<>nil do begin inc(result); cp:=cp.next; end;
end;

function  xgetpagefilename(cid:xstring; did,fid,pid:xinteger):xstring;
begin
	result:=cid+xname+'\'+xidts(did)+'\'+xidts(fid)+'\'+xidts(pid);
end;

function  xgetpageindexname(cid:xstring; did,fid:xinteger):xstring;
begin
	result:=cid+xname+'\'+xidts(did)+'\'+xidts(fid)+'\index';
end;

function  xgetpagesize(p:xpage):xinteger;
begin
	result:=0; if p=nil then exit;
	result:=xgetfilesize(xgetpagefilename(p.cid,p.did,p.fid,p.pid));
end;

function  xgetpagestatus(p:xpage):xstring;
begin
	result:=''; if p=nil then exit;
	if p.parent<>nil then result:='Page '+xits(xgetpagesubscript(p.parent.pages,p))+' of '+xits(xgetpagecount(p.parent.pages));
	if xisformpage(p) then exit;
	if xisfunctionpage(p) then begin result:='Line '+xformatnumber(xgetcurrentline(xcs),'99')+' Column '+xformatnumber(xgetcurrentcharacter(xcs),'99'); exit; end;
	if xgetselectedshapecount(p.shapes)=1 then begin result:=xgetshapemessage(xgetfirstselectedshape(p.shapes)); exit; end;
end;

function  xgetpagesubscript(p:xpages; a:xpage):xinteger;
	var cp:xpage;
begin
	result:=0; if p=nil then exit;
	cp:=p.first; inc(result); while (cp<>nil) and (cp<>a) do begin inc(result); cp:=cp.next; end;
end;

function  xgetpagetype(p:xpage):xstring;
begin
	result:='drawing'; if p=nil then exit;
	if xisformpage(p) then begin result:='form'; exit; end;
	if xisfunctionpage(p) then begin result:='function'; exit; end;
end;

function  xgetphysicalheight(d:xdevice):xinteger;
begin
	result:=getdevicecaps(xdcs[d],physicalheight);
end;

function  xgetphysicalwidth(d:xdevice):xinteger;
begin
	result:=getdevicecaps(xdcs[d],physicalwidth);
end;

function  xgetphysicalxoffset(d:xdevice):xinteger;
begin
	result:=getdevicecaps(xdcs[d],physicaloffsetx);
end;

function  xgetphysicalyoffset(d:xdevice):xinteger;
begin
	result:=getdevicecaps(xdcs[d],physicaloffsety);
end;

function  xgetpreviousgenerictoken(const s:xstring; var p:xinteger; wantdelims:xboolean; const delims:xcharset):xstring;
	var e:xinteger;
begin
	if p>length(s) then p:=length(s);
	if not wantdelims then while (p>=0) and (s[p] in delims) do dec(p);
	if (p>=0) and (s[p] in delims) then begin result:=s[p]; dec(p); exit; end;
	e:=p;
	while (p>=0) and (not (s[p] in delims)) do dec(p);
	result:=copy(s,p+1,e-p);
end;

function  xgetrandomnumber(min,max:xinteger):xinteger;
begin
	result:=min+random(max-min+1);
end;

function  xgetrectanglemovemessage(o,n:xrect):xstring;
	var dp:xpoint; dx,dy:xextended;
begin
	dp:=xcalculatedelta(xmp(o.left,o.top),xmp(n.left,n.top),1,1);
	dx:=xtti(trunc((dp.x*xcp.scale)/xca.mag));
	dy:=xtti(trunc((dp.y*xcp.scale)/xca.mag));
	result:=xformatnumber(dx,'zzz9.9999')+'dx  '+xformatnumber(dy,'zzz9.9999')+'dy';
end;

function  xgetrectanglesizemessage(r:xrect):xstring;
	var h,w:xextended;
begin
	w:=xtti(trunc(((xwidth(r)-10)*xcp.scale)/xca.mag));
	h:=xtti(trunc(((xheight(r)-10)*xcp.scale)/xca.mag));
	result:=xformatnumber(w,'zzz9.9999')+'w  '+xformatnumber(h,'zzz9.9999')+'h';
end;

function  xgetrowchunk(var t:xtext):xinteger;
begin
	if xisoneline(t) then begin result:=1; exit; end;
	if t.large then result:=1000 else result:=10;
end;

function  xgetrowstatistics(var t:xtext; r:xinteger):xrowstats;

var e,s,tp:xposition;

procedure xgetrowstatistics_blockselection;
begin
	with t,result do begin
		if s.col=e.col then exit;
		fsc:=xmin(s.col,e.col);
		if fsc>=length(rows[r]) then begin fsc:=0; exit; end;
		fsc:=xlimit(fsc,1,length(rows[r])-1);
		lsc:=xlimit(xmax(s.col,e.col)-1,1,length(rows[r])-1);
	end;
end;

begin
	result:=xnilrowstats;
	with t,result do begin
		if (r<1) or (r>count) then exit;
		if not xistextselection(t) then exit;
		s:=anchor; e:=caretpos; if s.row>e.row then begin s:=caretpos; e:=anchor; end;
		if (s.row=e.row) and (s.col>e.col) then begin tp:=s; s:=e; e:=tp; end;
		if (r<s.row) or (r>e.row) then exit;
		if blocksel then begin xgetrowstatistics_blockselection; exit; end;
		if (r=e.row) and (e.col=1) then exit;
		if r=s.row then fsc:=xlimit(s.col,1,length(rows[r])) else fsc:=1;
		if r=e.row then lsc:=xlimit(e.col-1,1,length(rows[r])-1) else lsc:=length(rows[r]);
		if fsc>lsc then begin fsc:=0; lsc:=0; end;
	end;
end;

function  xgetselectedcharacters(s:xshape):xstring;
	var cr,len,pos:xinteger; rstats:xrowstats; tstats:xtextstats;
begin
	result:=''; if s=nil then exit;
	with s^,text,tstats do begin
		if not xisselection(s) or blocksel then exit;
		tstats:=xgettextstatistics(text,xnilpoint,xnilrect);
		pos:=1; result:='';
		for cr:=fsr to lsr do with rstats do begin
			rstats:=xgetrowstatistics(text,cr); if (fsc=0) or (lsc=0) then continue;
			len:=lsc-fsc+1;
			while pos+len>length(result) do setlength(result,length(result)+1000);
			move(rows[cr][fsc],result[pos],len); inc(pos,len);
		end;
		setlength(result,pos-1);
	end;
end;

function  xgetselecteddrawercount(d:xdrawers):xinteger;
	var cd:xdrawer;
begin
	result:=0; if d=nil then exit;
	cd:=d.first; while cd<>nil do begin if cd.sel then inc(result); cd:=cd.next; end;
end;

function  xgetselectedfoldercount(f:xfolders):xinteger;
	var cf:xfolder;
begin
	result:=0; if f=nil then exit;
	cf:=f.first; while cf<>nil do begin if cf.sel then inc(result); cf:=cf.next; end;
end;

function  xgetselectedpagecount(p:xpages):xinteger;
	var cp:xpage;
begin
	result:=0; if p=nil then exit;
	cp:=p.first; while cp<>nil do begin if cp.sel then inc(result); cp:=cp.next; end;
end;

function  xgetselectedshapecount(s:xshapes):xinteger;
	var cs:xshape;
begin
	result:=0; if s=nil then exit;
	cs:=s.first; while cs<>nil do begin if cs.sel then inc(result); cs:=cs.next; end;
end;

function  xgetselectedstopcount(s:xstops):xinteger;
	var cs:xstop;
begin
	result:=0; if s=nil then exit;
	cs:=s.first; while cs<>nil do begin if cs.shape.sel then inc(result); cs:=cs.next; end;
end;

function  xgetshapecount(s:xshapes):xinteger;
	var cs:xshape;
begin
	result:=0; if s=nil then exit;
	cs:=s.first; while cs<>nil do begin inc(result); cs:=cs.next; end;
end;

procedure xgetshapeinformation(s:xshape; var p:xparent; var o:xpoint; var c,r:xrect);
begin
	o:=xnilpoint; c:=xscreen.rect; r:=c;
	p:=xgetpage(s); if p=nil then p:=s.parent;
	if xtype(p)=xblockrecord then with xblock(p)^ do begin
		o:=origin; c:=xlr(clip,origin); r:=body;
	end;
	if xtype(p)=xpagerecord then with xpage(p)^ do begin
		o:=origin; c:=xlvpr(p); r:=body;
	end;
end;

function  xgetshapemessage(s:xshape):xstring;
begin
	result:=''; if s=nil then exit;
	if s.styp=xarcshape then with s.arc do begin
		result:=result+xsp+xformatnumber(angles[1],'990')+'°  '+xformatnumber(angles[2],'990')+'°';
		exit;
	end;
	if (s.styp=xpolygonshape) and (s.polygon.count=2) then with s.polygon do begin
		result:=xformatnumber(xtti(round((xgetdistance(vertices[1],vertices[2])*xcp.scale)/xca.mag)),'zzz9.9999');
		result:=result+xsp+xsp+xformatnumber(xgetangle(vertices[1],vertices[2]),'zz0')+'°';
		exit;
	end;
	result:=xgetshapesizemessage(s);
end;

function  xgetshapemovemessage(os,ns:xshape):xstring;
	var dp:xpoint; dx,dy:xextended;
begin
	result:='';
	if (os=nil) or (ns=nil) then exit;
	result:=xgetrectanglemovemessage(os.rect,ns.rect);
end;

function  xgetshapeproperty(s:xshape; p,sp:xprop; var applied:xboolean):xinteger;

procedure xgetshapeproperty_arrow;
	var a,b:xboolean;
begin
	if not (s.styp in [xarcshape,xcurveshape,xpolygonshape]) then exit;
	applied:=true;
	with s^ do case styp of
		xarcshape:			begin a:=arc.arrows[1]; b:=arc.arrows[2]; end;
		xcurveshape:		begin a:=curve.arrows[1]; b:=curve.arrows[2]; end;
		xpolygonshape:	begin a:=polygon.arrows[1]; b:=polygon.arrows[2]; end;
	end;
	result:=1;
	if a then result:=2;
	if b then result:=3;
	if a and b then result:=4;
end;

procedure xgetshapeproperty_color(c:xcolor);
begin
	applied:=true;
	with c do case sp of
		xmixtureprop: result:=ord(mixture);
		xpigmentprop:	result:=ord(pigment);
	end;
end;

procedure xgetshapeproperty_font;
begin
	if s.styp<>xtextshape then exit;
	applied:=true;
	with s.text do case sp of
		xalignprop: result:=ord(font.align);
		xfaceprop:  result:=ord(font.face);
		xsizeprop:  result:=round(font.size/mag);
		xstyleprop:	result:=ord(font.style);
	end;
end;

begin
	result:=0; applied:=false; if s=nil then exit;
	if s.styp=xgroupshape then begin result:=xgetshapesproperty(s.shapes,p,sp,false,applied); exit; end;
	with s^ do begin
		case p of
			xarrowprop:		xgetshapeproperty_arrow;
			xborderprop:	xgetshapeproperty_color(s.border);
			xfillprop:		xgetshapeproperty_color(s.fill);
			xfontprop:		xgetshapeproperty_font;
			xpenprop:			if s.styp=xtextshape then xgetshapeproperty_color(s.pen);
		end;
	end;
end;

function  xgetshapesproperty(s:xshapes; p,sp:xprop; selected:xboolean; var applied:xboolean):xinteger;
	var a,f:xboolean; cs,ns:xshape; t:xinteger;
begin
	result:=0; applied:=false; if s=nil then exit;
	ns:=s.first; f:=true;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if selected and not cs.sel then continue;
		t:=xgetshapeproperty(cs,p,sp,a); if not a then continue;
		applied:=true;
		if f then result:=t; f:=false;
		if result<>t then begin result:=0; exit; end;
	end;
end;

function  xgetshapesizemessage(s:xshape):xstring;
	var w,h:xextended;
begin
	result:='';
	if s=nil then exit;
	result:=xgetrectanglesizemessage(s.rect);
end;

function  xgetshiftgrid(a,b:xinteger):xpoint;
begin
	with result do begin
		x:=a; y:=b;
		if getasynckeystate(vk_shift)<0 then begin x:=xshiftscrollgrid; y:=xshiftscrollgrid; end;
	end;
end;

function  xgetshiftratio(a,b:xinteger):xinteger;
begin
	result:=1;
	if b=0 then exit;
	if getasynckeystate(vk_shift)<0 then result:=round(a/b);
	if result<1 then result:=1;
end;

function  xgetslice(s:xshape; i:xslice):xstring;
begin
	result:=''; if s=nil then exit;
	result:=s.slices[i].str;
end;

function  xgetsortfilename(cid:xstring; did,fid:xinteger):xstring;
begin
	result:=cid+xname+'\'+xidts(did)+'\'+xidts(fid)+'\'+'sort';
end;

function  xgettangentangle(a:xarc; v:xvertex):xdegree;
	var ap,cp,sp:xpoint; a1,b1,m:xextended;
begin
	a1:=(xwidth(a.rect)-10)/2; b1:=(xheight(a.rect)-10)/2;
	cp:=xgetcenterpoint(a.rect);
	ap:=xgetarcpoint(a,v);
	if ap.y=cp.y then begin
		case xangletoquadrant(a.angles[v]) of
			xtopleft,xbottomleft:		result:=90;
			xtopright,xbottomright:	result:=270;
		end;
		exit;
	end;
	m:=((ap.x-cp.x)*sqr(b1))/((cp.y-ap.y)*sqr(a1));
	case xangletoquadrant(a.angles[v]) of
		xtopleft,xtopright:				sp.x:=ap.x-xtpi; // arbitrary point
		xbottomleft,xbottomright:	sp.x:=ap.x+xtpi;
	end;
	sp.y:=round(m*sp.x+(ap.y-m*ap.x));
	result:=xgetangle(sp,ap);
end;

function  xgettextstatistics(var t:xtext; origin:xpoint; clip:xrect):xtextstats;
	var nrect:xrect; i:xinteger;
begin
	result:=xniltextstats;
	with t,result do begin
		na:=anchor; nc:=caretpos; if na.row>nc.row then begin na:=caretpos; nc:=anchor; end;
		if (na.row=nc.row) and (na.col>nc.col) then begin i:=na.col; na.col:=nc.col; nc.col:=i; end;
		if (blocksel) and (na.col>nc.col) then begin i:=na.col; na.col:=nc.col; nc.col:=i; end;
		fsr:=na.row; if nc.col<>1 then lsr:=nc.row else lsr:=nc.row-1;
		if not xistextselection(t) then begin fsr:=0; lsr:=0; end;
		nrect:=xintersectrectangles(rect,clip);
		fvr:=(nrect.top-rect.top) div rowheight+1;
		if (fvr<1) or (fvr>count) then fvr:=0;
		if fvr<>0 then lvr:=xmin(fvr+ceil((xheight(nrect))/rowheight)+1,count);
	end;
end;

function  xgettextwidth(var t:xtext):xtwit;
	var v:xstring;
begin
	with t do begin
		v:=xgetvalue(t);
		xsetfont(xmemory,t.font,t.mag);
		settextjustification(xdcs[xmemory],0,0);
		settextcharacterextra(xdcs[xmemory],0);
		result:=loword(gettabbedtextextent(xdcs[xmemory],xpchar(v),length(v),1,tabsize))*xfac;
	end;
end;

function  xgetticks:xtick;
begin
	result:=gettickcount;
	if result<0 then result:=xmaxinteger+result+1;
end;

function  xgetupperbound(c:xstops; n:xstring):xinteger;
	var cs:xshape; ns:xstop;
begin
	result:=0; if c=nil then exit;
	ns:=c.first; n:=xv(n);
	while ns<>nil do begin cs:=ns.shape; ns:=ns.next;
		if xshapeisonedge(cs) then continue;
		if n<>xv(xgetslice(cs,xnslice)) then continue;
		inc(result);
	end;
end;

function  xgetvalue(var t:xtext):xstring;
	var cr,pos:xinteger;
begin
	with t do begin
		pos:=1; result:='';
		for cr:=1 to count do begin
			if xissimple(t) then xcleanrow(t,cr);
			while pos+length(rows[cr])>length(result) do setlength(result,length(result)+1000);
			move(rows[cr][1],result[pos],length(rows[cr]));
			inc(pos,length(rows[cr]));
		end;
		setlength(result,pos-1-1); // don't return last cr
	end;
end;

function  xgetvaluecount(v:xvalues):xinteger;
	var cv:xvalue;
begin
	result:=0; if v=nil then exit;
	cv:=v.first; while cv<>nil do begin inc(result); cv:=cv.next; end;
end;

function  xgetversionstring:xstring;
begin
	result:='Version '+xprogramversionstring+' '+xfileversionstring;
end;

function  xgetvertexcount(s:xshape):xinteger;
begin
	result:=0; if s=nil then exit;
	case s.styp of
		xarcshape:			result:=2;
		xcurveshape:		result:=s.curve.count;
		xpolygonshape:	result:=s.polygon.count;
	end;
end;

procedure	xglobalizeshape(s:xshape; op:xpoint);
begin
	if s=nil then exit;
	xmoveshape(s,op.x,op.y);
end;

function  xgp(p,o:xpoint):xpoint;
begin
	result.x:=p.x+o.x; result.y:=p.y+o.y;
end;

function  xgr(r:xrect; o:xpoint):xrect;
begin
	result.left:=r.left+o.x;
	result.top:=r.top+o.y;
	result.right:=r.right+o.x;
	result.bottom:=r.bottom+o.y;
end;

procedure xgrowbuffer;
begin
	with xbuffer do begin inc(size,32000); reallocmem(bytes,size); end;
end;

procedure xgrowindex;
begin
	with xindex do begin inc(size,32000); reallocmem(entries,size); end;
end;

procedure xgrowrows(var t:xtext);
	var c:xinteger;
begin
	with t do begin
		c:=xgetrowchunk(t);
		c:=c-(size mod c); // mod thing so that size aligns to boundary
		inc(size,c);
		reallocmem(rows,size*sizeof(xrow));
		fillchar(rows[size-c+1],c*sizeof(xrow),x00);
	end;
end;

function  xgvbr(b:xblock):xrect;
begin
	result:=xnilrect; if b=nil then exit;
	result:=xintersectrectangles(xgr(b.body,b.origin),b.clip);
end;

function  xgvcr(c:xcabinet):xrect;
begin
	result:=xnilrect; if c=nil then exit;
	with c^,drawers^ do begin
		if first=nil then exit;
		result:=body;
		result.right:=xmin(xgr(lastdrawer.head,origin).right,result.right);
	end;
end;

function  xgvdr(d:xdrawer):xrect;
begin
	result:=xnilrect; if d=nil then exit;
	with d^,folders^ do begin
		if first=nil then exit;
		result:=body;
		result.bottom:=xmin(xgr(lastfolder.head,origin).bottom,result.bottom);
	end;
end;

function  xgvfr(f:xfolder):xrect;
begin
	result:=xnilrect; if f=nil then exit;
	with f^,pages^ do begin
		if first=nil then exit;
		result:=body;
		result.bottom:=xmin(xgr(lastpage.head,origin).bottom,result.bottom);
	end;
end;

function  xgvpr(p:xpage):xrect;
begin
	result:=xnilrect; if p=nil then exit;
	result:=xintersectrectangles(xgr(p.body,p.origin),xca.clip);
end;

function  xgvsr(s:xshape):xrect;
	var i:xinteger; o:xpoint; p:xparent; c,r:xrect;
begin
	result:=xnilrect; if s=nil then exit;
	result:=s.rect; if s.parent=nil then exit;
	xgetshapeinformation(s,p,o,c,r);
	if xtype(p)=xpagerecord then i:=10 else i:=0;
	result:=xintersectrectangles(xgr(s.rect,o),xir(xgr(r,o),i));
	result:=xintersectrectangles(result,xca.clip);
end;

{h}

procedure xhandleactivate;
begin
	xflushevents;
	xslapmachine;
	xcloseconfiguration;
	if not xopenconfiguration then xerror(xcx);
end;

procedure xhandleaddword;
	var w,x:xstring;
begin
	if not xdialog('Add word?',xgetselectedcharacters(xcs),true,false,false,w) then exit;
	if not xdialog('Sounds like?',w,true,false,true,x) then exit;
	try xbegintransaction;
		xmessage('Adding word...');
		if not xaddword(w,x) then begin xerror(xcx); exit; end;
		xmessage(''''+w+''' added');
	finally xendtransaction; end;
end;

procedure xhandlealign(a:xalign);

procedure xhandlealign_editing;
begin
	xsaveshapestate(xcs,xnoshapeop);
	xchangealignment(xcs,a);
	xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlealign_pageview;
begin
	if not xisdrawingpage(xcp) then begin xblink; exit; end;
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	xchangealignments(xcp.shapes,a,true);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting				then begin xhandlealign_editing; exit; end;
	if xcv=xpageview	then begin xhandlealign_pageview; exit; end;
	xblink;
end;

procedure xhandlearrow(a,b:xboolean);
begin
	if xediting then begin xblink; exit; end;
	if xcv<>xpageview	then begin xblink; exit; end;
	if not xisdrawingpage(xcp) then begin xblink; exit; end;
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	xchangearrows(xcp.shapes,a,b,true);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlearrowkey;

procedure xhandlearrowkey_blockview;
begin
	xobscurecursor;
	xmovecaret(xcs,xce.dir,xce.command,xce.shift,true);
	xscrolltoblockcaret(xcb);
	xslapblock(xcb);
	xshowcaret(xcs);
	xmessage(xgetblockstatus(xcb));
end;

procedure xhandlearrowkey_cabinetview;
begin
	xnavigatecabinet(xcc,xce.dir);
	xslapcabinet(xcc);
	xmessage(xgetcabinetstatus(xcc));
end;

procedure xhandlearrowkey_drawerview;
begin
	xnavigatedrawer(xcd,xce.dir);
	xslapdrawer(xcd);
	xmessage(xgetdrawerstatus(xcd));
end;

procedure xhandlearrowkey_editing;
begin
	xobscurecursor;
	xmovecaret(xcs,xce.dir,xce.command,xce.shift,true);
	if xscrolltocaret(xcp) then xslappage(xcp) else xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlearrowkey_folderview;
begin
	xnavigatefolder(xcf,xce.dir);
	xslapfolder(xcf);
	xmessage(xgetfolderstatus(xcf));
end;

procedure xhandlearrowkey_pageview;

procedure xhandlearrowkey_pageview_command;
	const next:array[xslice] of xslice=(xnoslice,xuslice,xnslice,xcslice,xvslice,xfslice);
	const	prev:array[xslice] of xslice=(xnoslice,xnslice,xvslice,xfslice,xcslice,xuslice);
	var s:xslice;
begin
	if not xisdrawingpage(xcp) then exit;
	if not (xce.dir in [xdown,xup]) then exit;
	if xce.dir=xdown then s:=next[xcp.slice] else s:=prev[xcp.slice];
	xhandleslice(s);
end;

begin
	if xisfunctionpage(xcp) then exit;
	if xce.command then begin xhandlearrowkey_pageview_command; exit; end;
	if xediting	then xendpageedit(xcp);
	xnavigatepage(xcp,xce.dir);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
	xenque(xmakeevent(xcursorevent));
end;

begin
	if (xediting) and (xce.dir in [xleft,xright]) then begin xhandlearrowkey_editing; exit; end;
	if (xediting) and (not xisoneline(xcs.text)) and (not xce.command) then begin xhandlearrowkey_editing; exit; end;
	if xcv=xpageview		then begin xhandlearrowkey_pageview; exit; end;
	if xcv=xfolderview	then begin xhandlearrowkey_folderview; exit; end;
	if xcv=xdrawerview	then begin xhandlearrowkey_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandlearrowkey_cabinetview; exit; end;
	if xcv=xblockview		then begin xhandlearrowkey_blockview; exit; end;
end;

procedure xhandlebackup;

procedure xhandlebackup_drawerview;

var a,b,c:xinteger; cf,nf,f:xfolder; d:xdrawer; dc:xstring; t:xcabinet;

function  xhandlebackup_drawerview_getdrawer:xdrawer;
begin
	result:=xfinddrawer(t.drawers,xcd.group,xcd.name,xcd.version);
	if result<>nil then exit;
	result:=xnewdrawer(t,xcd.group,xcd.name,xcd.version,nil);
end;

begin
	b:=xgetselectedfoldercount(xcd.folders); if b=0 then begin xerror('Backup what?'); exit; end;
	if not xdialog('Destination cabinet?','',true,false,true,dc) then exit;
	try xbegintransaction; d:=nil; t:=nil;
		xmessage('Backing up...');
		if xcabinetnametocid(dc)=xcc.cid then begin xerror('Source and destination cabinets cannot be the same.'); exit; end;
		t:=xopencabinet(dc); if t=nil then begin xerror(xcx); exit; end;
		d:=xhandlebackup_drawerview_getdrawer;
		if not xopendrawer(d) then begin xerror(xcx); exit; end;
		nf:=xcd.folders.first; a:=0; c:=0;
		while nf<>nil do begin cf:=nf; nf:=nf.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			if not cf.sel then continue;
			inc(a); xmessage('Backing up folder '+xits(a)+' of '+xits(b)+'...');
			f:=xfindfolder(d.folders,cf.name,cf.version);
			if (f<>nil) and (not xdeletefolder(f)) then begin xerror(xcx); exit; end;
			if xduplicatefolder(d,cf,nil)=nil then begin xerror(xcx); exit; end;
			inc(c);
		end;
		xmessage(xmcm(c,'folder backed up','folders backed up'));
	finally xdestroydrawer(d); xdestroycabinet(t); xendtransaction; end;
end;

begin
	if xcv=xdrawerview	then begin xhandlebackup_drawerview; exit; end;
	xblink;
end;

procedure xhandlebackspacekey;

procedure xhandlebackspacekey_blockview;
begin
	xobscurecursor;
	xsaveshapestate(xcs,xbackspaceshapeop);
	if not xbackspacecharacters(xcs,xce.command) then begin xblink; exit; end;
	xscrolltoblockcaret(xcb);
	xslapblock(xcb);
	xshowcaret(xcs);
	xmessage(xgetblockstatus(xcb));
end;

procedure xhandlebackspacekey_editing;
begin
	xobscurecursor;
	xsaveshapestate(xcs,xbackspaceshapeop);
	if not xbackspacecharacters(xcs,xce.command) then begin xblink; exit; end;
	if xscrolltocaret(xcp) then xslappage(xcp) else xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting					then begin xhandlebackspacekey_editing; exit; end;
	if xcv=xpageview		then begin xhandledeletekey; exit; end;
	if xcv=xfolderview	then begin xhandledelete; exit; end;
	if xcv=xdrawerview	then begin xhandledelete; exit; end;
	if xcv=xcabinetview	then begin xhandledelete; exit; end;
	if xcv=xblockview		then begin xhandlebackspacekey_blockview; exit; end;
end;

procedure xhandlebrightness(d:xdir);
	var c:xinteger; i:xstring; s:xshape;
begin
	if xcv<>xpageview	then begin xblink; exit; end;
	if not xisdrawingpage(xcp) then begin xblink; exit; end;
	if xediting then begin xblink; exit; end;
	c:=xgetselectedshapecount(xcp.shapes);
	if c=0 then begin xblink; exit; end;
	xsavepagestate;
	xchangebrightnesses(xcp.shapes,d,true);
	xslappage(xcp);
	s:=xgetfirstselectedshape(xcp.shapes);
	if (c<>1) or (s.styp<>xpictureshape) then begin xmessage(xgetpagestatus(xcp)); exit; end;
	if s.picture.brightness>=0 then i:='+' else i:='';
	xmessage(i+xits(s.picture.brightness));
end;

procedure xhandlecharacterkey;

procedure xhandlecharacterkey_blockview;
begin
	xobscurecursor;
	xsaveshapestate(xcs,xinsertshapeop);
	xinsertcharacters(xcs,xce.ascii);
	xscrolltoblockcaret(xcb);
	xslapblock(xcb);
	xshowcaret(xcs);
	xmessage(xgetblockstatus(xcb));
end;

procedure xhandlecharacterkey_editing;
begin
	xobscurecursor;
	xsaveshapestate(xcs,xinsertshapeop);
	xinsertcharacters(xcs,xce.ascii);
	if xscrolltocaret(xcp) then xslappage(xcp) else xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlecharacterkey_pageview;
	var s:xshape;
begin
	s:=xgetfirstselectedshapeonstops(xcp.horzs);
	if s=nil then begin xblink; exit; end;
	xselectcharacters(s);
	xbeginpageedit(xcp,s);
	xinsertcharacters(s,xce.ascii);
	xscrolltocaret(xcp);
	xslappage(xcp);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting 	 		then begin xhandlecharacterkey_editing; exit; end;
	if xcv=xpageview	then begin xhandlecharacterkey_pageview; exit; end;
	if xcv=xblockview	then begin xhandlecharacterkey_blockview; exit; end;
end;

procedure xhandleclick;

procedure xhandleclick_blockview;
begin
	if not xinblock then exit;
	xtrackblock;
end;

procedure xhandleclick_cabinetview;
begin
	if not xincabinet then begin
		xselectdrawers(xcc.drawers,false);
		xslapcabinet(xcc);
		xmessage(xgetcabinetstatus(xcc));
		exit;
	end;
	if not xce.shift then xselectdrawers(xcc.drawers,false);
	xtrackcabinet;
end;

procedure xhandleclick_drawerview;
begin
	if not xindrawer then begin
		xselectfolders(xcd.folders,false);
		xslapdrawer(xcd);
		xmessage(xgetdrawerstatus(xcd));
		exit;
	end;
	if not xce.shift then xselectfolders(xcd.folders,false);
	xtrackdrawer;
end;

procedure xhandleclick_folderview;
begin
	if not xinfolder then begin
		xselectpages(xcf.pages,false);
		xslapfolder(xcf);
		xmessage(xgetfolderstatus(xcf));
		exit;
	end;
	if not xce.shift then xselectpages(xcf.pages,false);
	xtrackfolder;
end;

procedure xhandleclick_menubar;

procedure xhandleclick_menubar_logo;
begin
	if xtracklogo then xmessage(xgetversionstring);
end;

procedure xhandleclick_menubar_menu;
	var i:xitem;
begin
	i:=xtrackmenu;
	xrunitem(i);
	xdestroyitem(i);
end;

begin
	if xinlogo	then begin xhandleclick_menubar_logo; exit; end;
	if xinmenu	then begin xhandleclick_menubar_menu; exit; end;
end;

procedure xhandleclick_pageview;

procedure xhandleclick_pageview_blank;
begin
	xresetduplicate(xcp);
	if not xce.shift then begin xselectshapes(xcp.shapes,false); xslappage(xcp); end;
	xmessage(xgetpagestatus(xcp));
	if not xdrag(xce.gp,10) then exit;
	xselectenclosedshapes(xcp.shapes,xtrackrubberband);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandleclick_pageview_formsmode;

procedure xhandleclick_pageview_formsmode_limbo;
begin
	if not xce.shift then xselectstops(xcp.horzs,false);
	xmessage(xgetpagestatus(xcp));
	xtracklimbos;
end;

procedure xhandleclick_pageview_formsmode_lonelylimbo;

procedure xhandleclick_pageview_formsmode_lonelylimbo_popup;
	var m:xpopup; p:xinteger; t,u,v:xstring;
begin
	xslappage(xcp);
	m:=xcreatepopup; u:=xremovecharacters(xgetslice(xce.shape,xuslice),[xcr]); p:=1;
	repeat
		t:=xgetnextgenerictoken(u,p,false,['|']); if (t='') and (p>length(u)) then break;
		t:=xremoveleading(xremovetrailing(t,[xsp]),[xsp]);
		xcreatechoice(m,t);
	until xforever;
	if xtrackpopup(m,v) then begin xsavepagestate; xsetslice(xce.shape,xvslice,v); end;
	xdestroypopup(m);
	xslappage(xcp);
end;

begin
	if xispopable(xce.shape) then begin xhandleclick_pageview_formsmode_lonelylimbo_popup; exit; end;
	xbeginpageedit(xcp,xce.shape);
	xtrackselection;
end;

begin
	if xediting 			then xendpageedit(xcp);
	if xinlonelylimbo	then begin xhandleclick_pageview_formsmode_lonelylimbo; exit; end;
	if xinlimbo				then begin xhandleclick_pageview_formsmode_limbo; exit; end;
	xselectstops(xcp.horzs,false);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandleclick_pageview_handle;
	var dw,dh:xtwit;
begin
	xmessage(xgetshapesizemessage(xce.shape));
	xresetduplicate(xcp);
	if not xdrag(xce.gp,xzsg) then exit;
	xsavepagestate;
	xtrackhandle(dw,dh);
	xsizeshapes(xcp.shapes,dw,dh,xce.handle,true);
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandleclick_pageview_shape;

var fs:xshape; s:xshape;

procedure xhandleclick_pageview_shape_drag;
	var dm:xpoint;
begin
	xsavepagestate;
	dm:=xtrackshape;
	xmoveshapes(xcp.shapes,dm.x,dm.y,true);
	if xcp.dup.inprogress then begin inc(xcp.dup.offset.x,dm.x); inc(xcp.dup.offset.y,dm.y); end;
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	s:=xce.shape;
	if xce.shift then begin
		xresetduplicate(xcp);
		xselectshape(s,not s.sel);
		xslappage(xcp);
		xmessage(xgetpagestatus(xcp));
		exit;
	end;
	s.was:=s.sel;
	if not s.sel then begin
		xresetduplicate(xcp);
		xselectshapes(xcp.shapes,false);
		xselectshape(s,true);
		xslappage(xcp);
	end;
	xmessage(xgetpagestatus(xcp));
	if xdrag(xce.gp,xzsg) then begin xhandleclick_pageview_shape_drag; exit; end;
	fs:=xfocusshape(s,xce.lp);
	if (not s.was) or (not xiseditshape(fs)) then exit;
	xbeginpageedit(xcp,fs);
	xsetcaret(xcs,xce.lp);
	xslappage(xcp);
	xtrackselection;
end;

procedure xhandleclick_pageview_text;
begin
	xtrackselection;
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandleclick_pageview_vertex;
	var g:xtwit;
begin
	if xce.shape.styp=xarcshape then g:=10 else g:=xzsg;
	if not xdrag(xce.gp,g) then exit;
	xsavepagestate;
	xresetduplicate(xcp);
	xchangevertex(xce.shape,xce.vertex,xtrackvertex);
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xintext							then begin xhandleclick_pageview_text; exit; end;
	if xinpage and xisfunctionpage(xcp)	then begin xhandleclick_pageview_text; exit; end;
	if xisfunctionpage(xcp) then exit;
	if xisformpage(xcp)			then begin xhandleclick_pageview_formsmode; exit; end;
	if xediting 						then xendpageedit(xcp);
	if xinvertex						then begin xhandleclick_pageview_vertex; exit; end;
	if xinhandle						then begin xhandleclick_pageview_handle; exit; end;
	if xinshape							then begin xhandleclick_pageview_shape; exit; end;
	xhandleclick_pageview_blank;
end;

procedure xhandleclick_tab;

procedure xhandleclick_tab_switcharea;
begin
	if (xcv=xpageview) and (not xsavepage(xcp)) then begin xerror(xcx); exit; end;
	xswitcharea(xce.area);
	xslapmachine;
	xshowcaret(xcs);
	xmessage('');
end;

begin
	if xce.area<>xca 		then begin xhandleclick_tab_switcharea; exit; end;
	if xcv=xpageview		then begin xhandleclose; exit; end;
	if xcv=xfolderview	then begin xhandleescapekey; exit; end;
	if xcv=xdrawerview	then begin xhandleescapekey; exit; end;
	if xcv=xcabinetview	then begin xhandleescapekey; exit; end;
end;

begin
	if xinmenubar				then begin xhandleclick_menubar; exit; end;
	if xintab						then begin xhandleclick_tab; exit; end;
	if xcv=xpageview		then begin xhandleclick_pageview; exit; end;
	if xcv=xfolderview	then begin xhandleclick_folderview; exit; end;
	if xcv=xdrawerview	then begin xhandleclick_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandleclick_cabinetview; exit; end;
	if xcv=xblockview 	then begin xhandleclick_blockview; exit; end;
	xmessage('');
end;

procedure xhandleclose;

procedure xhandleclose_blockview;
begin
	if xuserwantstosave(xcb) then exit;
	try xbegintransaction;
		xmessage('Closing...');
		xhidecaret;
		xviewarea;
		xmessage('');
	finally xendtransaction; end;
end;

procedure xhandleclose_cabinetview;
begin
	try xbegintransaction;
		xmessage('Closing...');
		xcloseprograms;
		xviewarea;
		xmessage('');
	finally xendtransaction; end;
end;

procedure xhandleclose_drawerview;
begin
	try xbegintransaction;
		xmessage('Closing...');
		xviewcabinet(xcd.parent,nil);
		xmessage(xgetcabinetstatus(xcc));
	finally xendtransaction; end;
end;

procedure xhandleclose_folderview;
begin
	try xbegintransaction;
		xmessage('Closing...');
		xviewdrawer(xcf.parent,nil);
		xmessage(xgetdrawerstatus(xcd));
	finally xendtransaction; end;
end;

procedure xhandleclose_pageview;
begin
	try xbegintransaction;
		xmessage('Closing...');
		if not xsavepage(xcp) then begin xerror(xcx); exit; end;
		if xediting then xendpageedit(xcp);
		xviewfolder(xcp.parent,nil);
		xmessage(xgetfolderstatus(xcf));
	finally xendtransaction; end;
end;

begin
	if xcv=xpageview		then begin xhandleclose_pageview; exit; end;
	if xcv=xfolderview	then begin xhandleclose_folderview; exit; end;
	if xcv=xdrawerview	then begin xhandleclose_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandleclose_cabinetview; exit; end;
	if xcv=xblockview		then begin xhandleclose_blockview; exit; end;
	xblink;
end;

procedure xhandlecommandkey;

var i:xitem;

procedure xhandlecommandkey_secretf;
	var s:xshape; t:xstring;
begin
	if xcp=nil then exit;
	s:=xfindshapeonedgebyname(xcp.shapes,'type'); if s=nil then exit;
	t:=xv(xgetslice(s,xvslice)); if t='function' then exit;
	if t='form' then xsetslice(s,xvslice,'drawing') else xsetslice(s,xvslice,'form');
	xendpageedit(xcp);
	xadjustcurrentpageformode;
	xcp.modified:=true;
	xmessage(xgetpagestatus(xcp));
	xslapmachine;
	xshowcaret(xcs);
end;

begin
	// begin secret programmer functions
	if (xce.shift) and (xce.ascii='E') then begin xerror('The last error was '''+xcx+''''); exit; end;
	if (xce.shift) and (xce.ascii='F') then begin xhandlecommandkey_secretf; exit; end;
	if (xce.shift) and (xce.ascii='M') then begin showwindow(xwindow,sw_minimize); exit; end;
	if (xce.shift) and (xce.ascii='Q') then begin postmessage(xwindow,wm_destroy,0,0); exit; end;
	//if (xce.shift) and (xce.ascii='W') then begin xwriteinversecolormap; exit; end;
	// end secret programmer functions
	// begin secret user functions
	if xce.ascii='=' then begin xhandlebrightness(xnodir); exit; end;
	if xce.ascii='<' then begin xhandlebrightness(xdown); exit; end;
	if xce.ascii='>' then begin xhandlebrightness(xup); exit; end;
	// end secret user functions
	i:=xfinditembycommandkey(xce.ascii);
	xrunitem(i);
	xdestroyitem(i);
end;

procedure xhandlecompile;
	var ca,oa:xarea;
begin
	if not (xcv in [xcabinetview,xdrawerview,xfolderview,xpageview]) then begin xblink; exit; end;
	if (xcv=xpageview) and (not xsavepage(xcp)) then begin xerror(xcx); exit; end;
	try xbegintransaction;
		xmessage('Compiling...');
		finalize(xsearch.debug); xsearch.debug:=xnildebug;
		xsearch.error:='';
		oa:=xca;
		ca:=xareas.first;
		while ca<>nil do begin
			xswitcharea(ca);
			xcloseprograms;
			xopenprograms;
			ca:=ca.next;
		end;
		xswitcharea(oa);
		xmessage('Compiled');
	finally xendtransaction; end;
end;

procedure xhandlecompute;
	var source,default:xstring; s:xshape;
begin
	default:='';
	s:=xcreatedefaulttext('','');
	repeat
		if not xdialog('Compute?',default,true,false,false,source) then break;
		default:=source;
		xdestroyinstructions(s.instrs,false); xsetslice(s,xcslice,source);
		s.calculated:=false; s.parent:=xcp;
		if not xupdateshape(s) then begin xwarning(xcx); continue; end;
		default:=xgetslice(s,xvslice);
	until xforever;
	xdestroyshape(s);
	xslapbar;
	xshowcaret(xcs);
end;

procedure xhandlecopy;

procedure xhandlecopy_blockview;
begin
	if not xcopyselectedcharacters(xcs) then begin xblink; exit; end;
	xmessage(xgetblockstatus(xcb));
end;

procedure xhandlecopy_cabinetview;
	var a,b,c:xinteger; cd,nd:xdrawer;
begin
	b:=xgetselecteddrawercount(xcc.drawers); if b=0 then begin xerror('Copy what?'); exit; end;
	try xbegintransaction;
		xmessage('Copying...');
		xdestroydrawers(xclip.drawers,false);
		nd:=xcc.drawers.first; a:=0; c:=0;
		while nd<>nil do begin cd:=nd; nd:=nd.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			if not cd.sel then continue;
			inc(a); xmessage('Copying drawer '+xits(a)+' of '+xits(b)+'...');
			xclosedrawer(cd);
			xappendlink(xclip.drawers,xcopydrawer(cd,true));
			inc(c);
		end;
		xmessage(xmcm(c,'drawer copied','drawers copied'));
	finally xendtransaction; end;
end;

procedure xhandlecopy_drawerview;
	var a,b,c:xinteger; cf,nf:xfolder;
begin
	b:=xgetselectedfoldercount(xcd.folders); if b=0 then begin xerror('Copy what?'); exit; end;
	try xbegintransaction;
		xmessage('Copying...');
		xdestroyfolders(xclip.folders,false);
		nf:=xcd.folders.first; a:=0; c:=0;
		while nf<>nil do begin cf:=nf; nf:=nf.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			if not cf.sel then continue;
			inc(a); xmessage('Copying folder '+xits(a)+' of '+xits(b)+'...');
			xclosefolder(cf);
			xappendlink(xclip.folders,xcopyfolder(cf,true));
			inc(c);
		end;
		xmessage(xmcm(c,'folder copied','folders copied'));
	finally xendtransaction; end;
end;

procedure xhandlecopy_editing;
begin
	if not xcopyselectedcharacters(xcs) then begin xblink; exit; end;
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlecopy_folderview;
	var a,b,c:xinteger; cp,np:xpage;
begin
	b:=xgetselectedpagecount(xcf.pages); if b=0 then begin xerror('Copy what?'); exit; end;
	try xbegintransaction;
		xmessage('Copying...');
		xdestroypages(xclip.pages,false);
		np:=xcf.pages.first; a:=0; c:=0;
		while np<>nil do begin cp:=np; np:=np.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			if not cp.sel then continue;
			inc(a); xmessage('Copying page '+xits(a)+' of '+xits(b)+'...');
			if not xopenpage(cp) then continue;
			xappendlink(xclip.pages,xcopypage(cp,false));
			xclosepage(cp);
			inc(c);
		end;
		xmessage(xmcm(c,'page copied','pages copied'));
	finally xendtransaction; end;
end;

procedure xhandlecopy_pageview;

var cs:xshape;

procedure xhandlecopy_pageview_formsmode;
	var cs:xstop;
begin
	if xgetselectedstopcount(xcp.horzs)=0 then begin xblink; exit; end;
	xdestroyvalues(xclip.values,false);
	cs:=xcp.horzs.first;
	while cs<>nil do begin if cs.shape.sel then xappendlink(xclip.values,xcreatevalue(xgetslice(cs.shape,cs.shape.slice))); cs:=cs.next; end;
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xisfunctionpage(xcp) then exit;
	if xisformpage(xcp) then begin xhandlecopy_pageview_formsmode; exit; end;
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xdestroyshapes(xclip.shapes,false);
	cs:=xcp.shapes.first; while cs<>nil do begin if cs.sel then xappendlink(xclip.shapes,xcopyshape(cs)); cs:=cs.next; end;
	xzoomshapes(xclip.shapes,1/xcp.mag);
	xsliceshapes(xclip.shapes,xvslice);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting 				then begin xhandlecopy_editing; exit; end;
	if xcv=xpageview		then begin xhandlecopy_pageview; exit; end;
	if xcv=xfolderview	then begin xhandlecopy_folderview; exit; end;
	if xcv=xdrawerview	then begin xhandlecopy_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandlecopy_cabinetview; exit; end;
	if xcv=xblockview		then begin xhandlecopy_blockview; exit; end;
	xblink;
end;

procedure xhandlecorrect(v:xvalue);

procedure xhandlecorrect_blockview;
begin
	xsaveshapestate(xcs,xnoshapeop);
	if not xreplacecharacters(xcs,v.value) then begin xblink; exit; end;
	xscrolltoblockcaret(xcb);
	xslapblock(xcb);
	xshowcaret(xcs);
	xmessage(xgetblockstatus(xcb));
end;

procedure xhandlecorrect_editing;
begin
	xsaveshapestate(xcs,xnoshapeop);
	if not xreplacecharacters(xcs,v.value) then begin xblink; exit; end;
	if xscrolltocaret(xcp) then xslappage(xcp) else xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting 			then begin xhandlecorrect_editing; exit; end;
	if xcv=xblockview then begin xhandlecorrect_blockview; exit; end;
	xblink;
end;

procedure xhandlecursor;
begin
	if xintext then begin xshowcursor(xibeamcursor); exit; end;
	if xinpage and xisfunctionpage(xcp)	then begin xshowcursor(xibeamcursor); exit; end;
	if xinlonelylimbo and not xispopable(xce.shape) then begin xshowcursor(xibeamcursor); exit; end;
	if xinblock then begin xshowcursor(xibeamcursor); exit; end;
	xshowcursor(xarrowcursor);
end;

procedure xhandlecut;

procedure xhandlecut_blockview;
begin
	if not xcopyselectedcharacters(xcs) then begin xblink; exit; end;
	xsaveshapestate(xcs,xnoshapeop);
	xdeleteselectedcharacters(xcs,true);
	xscrolltoblockcaret(xcb);
	xslapblock(xcb);
	xshowcaret(xcs);
	xmessage(xgetblockstatus(xcb));
end;

procedure xhandlecut_editing;
begin
	xsaveshapestate(xcs,xnoshapeop);
	if not xcopyselectedcharacters(xcs) then begin xblink; exit; end;
	xdeleteselectedcharacters(xcs,true);
	if xscrolltocaret(xcp) then xslappage(xcp) else xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlecut_folderview;
	var a,b,c:xinteger; cp,np,pp:xpage;
begin
	b:=xgetselectedpagecount(xcf.pages); if b=0 then begin xerror('Cut what?'); exit; end;
	if xfolderisreadonly(xcf) then begin xerror(xcx); exit; end;
	try xbegintransaction;
		xmessage('Cutting...');
		pp:=xgetfirstselectedpage(xcf.pages).prev;
		if pp=nil then pp:=xcf.pages.first;
		xscrolltopage(pp);
		xdestroypages(xclip.pages,false);
		np:=xcf.pages.first; a:=0; c:=0;
		while np<>nil do begin cp:=np; np:=np.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			if not cp.sel then continue;
			inc(a); xmessage('Cutting page '+xits(a)+' of '+xits(b)+'...');
			if not xunfilepage(cp) then begin xerror(xcx); exit; end;
			xappendlink(xclip.pages,cp);
			inc(c);
		end;
		xmessage(xmcm(c,'page cut','pages cut'));
	finally xendtransaction; end;
end;

procedure xhandlecut_pageview;

var cs,ns:xshape;

procedure xhandlecut_pageview_formsmode;
	var cs:xshape; ns:xstop;
begin
	if xgetselectedstopcount(xcp.horzs)=0 then begin xblink; exit; end;
	xsavepagestate;
	xdestroyvalues(xclip.values,false);
	ns:=xcp.horzs.first;
	while ns<>nil do begin cs:=ns.shape; ns:=ns.next;
		if not cs.sel then continue;
		xappendlink(xclip.values,xcreatevalue(xgetslice(cs,cs.slice)));
		xsetslice(cs,cs.slice,'');
	end;
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xisfunctionpage(xcp) then exit;
	if xisformpage(xcp) then begin xhandlecut_pageview_formsmode; exit; end;
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	xdestroyshapes(xclip.shapes,false);
	ns:=xcp.shapes.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next; if cs.sel then xappendlink(xclip.shapes,xremovelink(cs)); end;
	xzoomshapes(xclip.shapes,1/xcp.mag);
	xsliceshapes(xclip.shapes,xvslice);
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting 				then begin xhandlecut_editing; exit; end;
	if xcv=xpageview		then begin xhandlecut_pageview; exit; end;
	if xcv=xfolderview	then begin xhandlecut_folderview; exit; end;
	if xcv=xblockview		then begin xhandlecut_blockview; exit; end;
	xblink;
end;

procedure xhandledeactivate;
begin
end;

procedure xhandledelete;

procedure xhandledelete_cabinetview;
	var a,b,c:xinteger; cd,nd,pd:xdrawer;
begin
	b:=xgetselecteddrawercount(xcc.drawers); if b=0 then begin xerror('Delete what?'); exit; end;
	if xcabinetisreadonly(xcc) then begin xerror(xcx); exit; end;
	if not xuserissure(true) then exit;
	try xbegintransaction;
		xmessage('Deleting...');
		pd:=xgetfirstselecteddrawer(xcc.drawers).prev;
		if pd=nil then pd:=xcc.drawers.first;
		xscrolltodrawer(pd);
		nd:=xcc.drawers.first; a:=0; c:=0;
		while nd<>nil do begin cd:=nd; nd:=nd.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			if not cd.sel then continue;
			inc(a); xmessage('Deleting drawer '+xits(a)+' of '+xits(b)+'...');
			if xdeletedrawer(cd) then inc(c);
		end;
		xmessage(xmcm(c,'drawer deleted','drawers deleted'));
	finally xendtransaction; end;
end;

procedure xhandledelete_drawerview;
	var a,b,c:xinteger; cf,nf,pf:xfolder;
begin
	b:=xgetselectedfoldercount(xcd.folders); if b=0 then begin xerror('Delete what?'); exit; end;
	if xdrawerisreadonly(xcd) then begin xerror(xcx); exit; end;
	if not xuserissure(true) then exit;
	try xbegintransaction;
		xmessage('Deleting...');
		pf:=xgetfirstselectedfolder(xcd.folders).prev;
		if pf=nil then pf:=xcd.folders.first;
		xscrolltofolder(pf);
		nf:=xcd.folders.first; a:=0; c:=0;
		while nf<>nil do begin cf:=nf; nf:=nf.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			if not cf.sel then continue;
			inc(a); xmessage('Deleting folder '+xits(a)+' of '+xits(b)+'...');
			if xdeletefolder(cf) then inc(c);
		end;
		xmessage(xmcm(c,'folder deleted','folders deleted'));
	finally xendtransaction; end;
end;

procedure xhandledelete_folderview;
	var a,b,c:xinteger; cp,np,pp:xpage;
begin
	b:=xgetselectedpagecount(xcf.pages); if b=0 then begin xerror('Delete what?'); exit; end;
	if xfolderisreadonly(xcf) then begin xerror(xcx); exit; end;
	if not xuserissure(true) then exit;
	try xbegintransaction;
		xmessage('Deleting...');
		pp:=xgetfirstselectedpage(xcf.pages).prev;
		if pp=nil then pp:=xcf.pages.first;
		xscrolltopage(pp);
		np:=xcf.pages.first; a:=0; c:=0;
		while np<>nil do begin cp:=np; np:=np.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			if not cp.sel then continue;
			inc(a); xmessage('Deleting page '+xits(a)+' of '+xits(b)+'...');
			if xdeletepage(cp) then inc(c);
		end;
		xmessage(xmcm(c,'page deleted','pages deleted'));
	finally xendtransaction; end;
end;

begin
	if xcv=xfolderview	then begin xhandledelete_folderview; exit; end;
	if xcv=xdrawerview	then begin xhandledelete_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandledelete_cabinetview; exit; end;
	xblink;
end;

procedure xhandledeletekey;

procedure xhandledeletekey_blockview;
begin
	xobscurecursor;
	xsaveshapestate(xcs,xdeleteshapeop);
	if not xdeletecharacters(xcs,xce.command) then begin xblink; exit; end;
	xscrolltoblockcaret(xcb);
	xslapblock(xcb);
	xshowcaret(xcs);
	xmessage(xgetblockstatus(xcb));
end;

procedure xhandledeletekey_editing;
begin
	xobscurecursor;
	xsaveshapestate(xcs,xdeleteshapeop);
	if not xdeletecharacters(xcs,xce.command) then begin xblink; exit; end;
	if xscrolltocaret(xcp) then xslappage(xcp) else xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandledeletekey_pageview;

var cs,ns:xshape;

procedure xhandledeletekey_pageview_formsmode;
	var cs:xstop;
begin
	if xgetselectedstopcount(xcp.horzs)=0 then begin xblink; exit; end;
	xsavepagestate;
	cs:=xcp.horzs.first;
	while cs<>nil do begin if cs.shape.sel then xsetslice(cs.shape,cs.shape.slice,''); cs:=cs.next; end;
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xisfunctionpage(xcp) then exit;
	if xisformpage(xcp) then begin xhandledeletekey_pageview_formsmode; exit; end;
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	ns:=xcp.shapes.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next; if cs.sel then xdestroyshape(cs); end;
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting					then begin xhandledeletekey_editing; exit; end;
	if xcv=xpageview		then begin xhandledeletekey_pageview; exit; end;
	if xcv=xfolderview	then begin xhandledelete; exit; end;
	if xcv=xdrawerview	then begin xhandledelete; exit; end;
	if xcv=xcabinetview	then begin xhandledelete; exit; end;
	if xcv=xblockview		then begin xhandledeletekey_blockview; exit; end;
end;

procedure xhandledeleteword;
	var w:xstring;
begin
	if not xdialog('Delete word?',xgetselectedcharacters(xcs),true,false,true,w) then exit;
	try xbegintransaction;
		xmessage('Deleting word...');
		if not xdeleteword(w) then begin xerror(xcx); exit; end;
		xmessage(''''+w+''' deleted');
	finally xendtransaction; end;
end;

procedure xhandledent(d:xdir);
	var op:xshapeop;
begin
	if xcv<>xblockview then begin xblink; exit; end;
	xobscurecursor;
	if d=xin then op:=xindentshapeop else op:=xoutdentshapeop;
	xsaveshapestate(xcs,op);
	xdentcharacters(xcs,d);
	xslapblock(xcb);
	xshowcaret(xcs);
	xmessage(xgetblockstatus(xcb));
end;

procedure xhandledevices;

var devicecount:xinteger; devices,s:xstring;

procedure xhandledevices_add(var s:xstring; t:xstring; c:xinteger; n,e:xstring);
begin
	s:=s+'{ '+xv(t)+xsp+xstq(xfillleft(xits(c),'0',2))+xsp+xstq(xv(n))+xsp+e;
	if e<>'' then s:=s+xsp;
	s:=s+'}'+xcr;
end;

function  xhandledevices_cabinets:xstring;

var ccnt:xinteger;

procedure xhandledevices_cabinets_local;
	var cc:xchar;
begin
	for cc:='a' to 'z' do begin
		if not (getdrivetype(xpchar(cc+':\')) in [drive_cdrom,drive_fixed,drive_remote,drive_removable]) then continue;
		inc(ccnt); xhandledevices_add(result,'cabinet',ccnt,cc,'');
		inc(devicecount);
	end;
end;

procedure xhandledevices_cabinets_network(p:pnetresource);
	var b:pnetresource; e:thandle; n,r,w:xdword;
begin
	if wnetopenenum(resource_globalnet,resourcetype_disk,resourceusage_container,p,e)<>no_error then exit;
	try
		repeat
			n:=sizeof(b^); getmem(b,n); fillchar(b^,sizeof(b^),x00);
			try
				w:=1; r:=wnetenumresource(e,w,b,n);
				if r=error_more_data then begin reallocmem(b,n); w:=1; r:=wnetenumresource(e,w,b,n); end;
				if r<>no_error then exit;
				if (b.dwusage and resourceusage_container)<>0 then begin xhandledevices_cabinets_network(b); continue; end;
				if (b.dwtype and resourcetype_disk)=0 then continue;
				inc(ccnt); xhandledevices_add(result,'cabinet',ccnt,b.lpremotename,'');
				inc(devicecount);
			finally freemem(b); end;
		until xforever;
	finally wnetcloseenum(e); end;
end;

begin
	result:=''; ccnt:=0;
	xhandledevices_cabinets_local;
	xhandledevices_cabinets_network(nil);
end;

function  xhandledevices_defaults:xstring;

procedure xhandledevices_defaults_network(p:pnetresource; v:xinteger);
	var b:pnetresource; e:thandle; n,r,w:xdword;
begin
	inc(v);
	if wnetopenenum(resource_globalnet,resourcetype_disk,resourceusage_container,p,e)<>no_error then exit;
	try
		repeat
			n:=sizeof(b^); getmem(b,n); fillchar(b^,sizeof(b^),x00);
			try
				w:=1; r:=wnetenumresource(e,w,b,n);
				if r=error_more_data then begin reallocmem(b,n); w:=1; r:=wnetenumresource(e,w,b,n); end;
				if r<>no_error then exit;
				if (v<3) and ((b.dwusage and resourceusage_container)<>0) then begin xhandledevices_defaults_network(b,v); continue; end;
				result:=result+'{ default '+xstq(xv(copy(b.lpremotename,3,xmaxinteger)))+' ''cabinet'' ''cabinet'' ''cabinet'' ''printer'' ''scanner'' }'+xcr;
				inc(devicecount);
			finally freemem(b); end;
		until xforever;
	finally wnetcloseenum(e); end;
end;

begin
	result:='';
	xhandledevices_defaults_network(nil,0);
end;

function  xhandledevices_printers:xstring;
	type pia=array[1..100000] of tprinterinfo2; ppia=^pia;
	const	pary:array[boolean] of xstring=(xnopostscriptstr,xyespostscriptstr);
	const	cary:array[boolean] of xstring=(xnocenterfeedstr,xyescenterfeedstr);
	const	rary:array[boolean] of xstring=(xnoreversestr,xyesreversestr);
	var center,postscript,reverse:xboolean; cp,rotate:xinteger; n,r:xdword; pi:ppia;
begin
	enumprinters(printer_enum_local,nil,2,nil,0,n,r);
	try getmem(pi,n); fillchar(pi^,n,x00); result:='';
		if not enumprinters(printer_enum_local,nil,2,pi,n,n,r) then exit;
		for cp:=1 to r do begin
			xgetdefaultprinterconfiguration(pi[cp].pprintername,pi[cp].pportname,postscript,center,reverse,rotate);
			xhandledevices_add(result,'printer',cp,pi[cp].pprintername,pary[postscript]+xsp+cary[center]+xsp+rary[reverse]+xsp+xits(rotate));
			inc(devicecount);
		end;
	finally freemem(pi); end;
end;

function  xhandledevices_scanners:xstring;
	var aid,sid:tw_identity; dsm:dsmentryproc; lib:hmodule; cs,rc:xinteger;
begin
	result:=''; lib:=loadlibrary(xtwaindllstr); if lib=0 then exit;
	try
		dsm:=getprocaddress(lib,xdsmentrystr); if @dsm=nil then exit;
		with aid,version do begin
			id:=0; majornum:=0; minornum:=0; language:=twlg_usa; country:=twcy_usa;
			info:=xprogramversionstring;
			protocolmajor:=twon_protocolmajor; protocolminor:=twon_protocolminor;
			supportedgroups:=dg_control or dg_image;
			manufacturer:='Perspective Technologies';
			productfamily:='Perspective'; productname:='Perspective';
		end;
		if dsm(@aid,nil,dg_control,dat_parent,msg_opendsm,xwindow)<>twrc_success then exit;
		try
			rc:=dsm(@aid,nil,dg_control,dat_identity,msg_getfirst,sid); cs:=0;
			while rc=twrc_success do begin
				inc(cs); xhandledevices_add(result,'scanner',cs,sid.productname,'');
				rc:=dsm(@aid,nil,dg_control,dat_identity,msg_getnext,sid);
				inc(devicecount);
			end;
		finally dsm(@aid,nil,dg_control,dat_parent,msg_closedsm,xwindow); end;
	finally freemodule(lib); end;
end;

begin
	if xcv<>xblockview then begin xblink; exit; end;
	try xbegintransaction; devicecount:=0;
		xmessage('Searching for cabinets...');
		devices:='{ cabinet name path }'+xcr;
		s:=xhandledevices_cabinets; if s<>'' then devices:=devices+xcr+s;
		xmessage('Searching for printers...');
		devices:=devices+xcr+'{ printer name device postscript centerfeed reverse rotate maxwidth xoffset yoffset }'+xcr;
		s:=xhandledevices_printers; if s<>'' then devices:=devices+xcr+s;
		xmessage('Searching for scanners...');
		devices:=devices+xcr+'{ scanner name device }'+xcr;
		s:=xhandledevices_scanners; if s<>'' then devices:=devices+xcr+s;
		xmessage('Searching for defaults...');
		devices:=devices+xcr+'{ default computer cabinet cabinet cabinet printer scanner }'+xcr;
		s:=xhandledevices_defaults; if s<>'' then devices:=devices+xcr+s;
		xsaveshapestate(xcs,xnoshapeop);
		xinsertcharacters(xcs,devices);
		xscrolltoblockcaret(xcb);
		xmessage(xmcm(devicecount,'device pasted','devices pasted'));
	finally xendtransaction; end;
end;

procedure xhandledoubleclick;

procedure xhandledoubleclick_blockview;
begin
	xselectword(xcs);
	xslapblock(xcb);
	xshowcaret(xcs);
	xmessage(xgetblockstatus(xcb));
end;

procedure xhandledoubleclick_pageview;

procedure xhandledoubleclick_pageview_editing;
begin
	xselectword(xcs);
	xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandledoubleclick_pageview_shape;
begin
	if not xce.shape.sel then exit;
	if not (xce.shape.styp in [xcurveshape,xpolygonshape]) then exit;
	if not xpointonshape(xce.shape,xce.lp) then exit;
	if xgetvertexcount(xce.shape)=high(xvertex) then begin xblink; exit; end;
	xsavepagestate;
	xresetduplicate(xcp);
	xinsertshapevertex(xce.shape,xsnappoint(xce.lp,xzsg),xce.lp);
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandledoubleclick_pageview_vertex;
begin
	case xce.shape.styp of
		xcurveshape:		if xgetvertexcount(xce.shape)=3 then begin xblink; exit; end;
		xpolygonshape:	if xgetvertexcount(xce.shape)=2 then begin xblink; exit; end;
		else						exit;
	end;
	xsavepagestate;
	xresetduplicate(xcp);
	xremoveshapevertex(xce.shape,xce.vertex);
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xintext		then begin xhandledoubleclick_pageview_editing; exit; end;
	if xinvertex	then begin xhandledoubleclick_pageview_vertex; exit; end;
	if xinshape		then begin xhandledoubleclick_pageview_shape; exit; end;
end;

begin
	if xinmenubar		then exit;
	if xintab				then exit;
	if xinpage			then begin xhandledoubleclick_pageview; exit; end;
	if xinfolder		then begin xhandleopen; exit; end;
	if xindrawer		then begin xhandleopen; exit; end;
	if xincabinet		then begin xhandleopen; exit; end;
	if xinblock		  then begin xhandledoubleclick_blockview; exit; end;
  if xinarea      then begin xhandleopen; exit; end;
end;

procedure xhandleduplicate;

procedure xhandleduplicate_cabinetview;
	var a,b,c:xinteger; ad,cd,nd,d:xdrawer;
begin
	b:=xgetselecteddrawercount(xcc.drawers); if b=0 then begin xerror('Duplicate what?'); exit; end;
	if xcabinetisreadonly(xcc) then begin xerror(xcx); exit; end;
	try xbegintransaction;
		xmessage('Duplicating...');
		ad:=xgetlastselecteddrawer(xcc.drawers);
		nd:=xcc.drawers.last; a:=0; c:=0;
		while nd<>nil do begin cd:=nd; nd:=nd.prev;
			if xuseraborted then begin xerror(xcx); exit; end;
			if not cd.sel then continue;
			inc(a); xmessage('Duplicating drawer '+xits(a)+' of '+xits(b)+'...');
			d:=xduplicatedrawer(xcc,cd,ad);
			if d=nil then begin xerror(xcx); exit; end;
			cd.sel:=false; d.sel:=true;
			inc(c);
		end;
		xscrolltodrawer(xgetlastselecteddrawer(xcc.drawers));
		xmessage(xmcm(c,'drawer duplicated','drawers duplicated'));
	finally xendtransaction; end;
end;

procedure xhandleduplicate_drawerview;
	var a,b,c:xinteger; af,cf,nf,f:xfolder;
begin
	b:=xgetselectedfoldercount(xcd.folders); if b=0 then begin xerror('Duplicate what?'); exit; end;
	if xdrawerisreadonly(xcd) then begin xerror(xcx); exit; end;
	try xbegintransaction;
		xmessage('Duplicating...');
		af:=xgetlastselectedfolder(xcd.folders);
		nf:=xcd.folders.last; a:=0; c:=0;
		while nf<>nil do begin cf:=nf; nf:=nf.prev;
			if xuseraborted then begin xerror(xcx); exit; end;
			if not cf.sel then continue;
			inc(a); xmessage('Duplicating folder '+xits(a)+' of '+xits(b)+'...');
			f:=xduplicatefolder(xcd,cf,af);
			if f=nil then begin xerror(xcx); exit; end;
			cf.sel:=false; f.sel:=true;
			inc(c);
		end;
		xscrolltofolder(xgetlastselectedfolder(xcd.folders));
		xmessage(xmcm(c,'folder duplicated','folders duplicated'));
	finally xendtransaction; end;
end;

procedure xhandleduplicate_folderview;
	var a,b,c:xinteger; ap,cp,np,p:xpage;
begin
	b:=xgetselectedpagecount(xcf.pages); if b=0 then begin xerror('Duplicate what?'); exit; end;
	if xfolderisreadonly(xcf) then begin xerror(xcx); exit; end;
	try xbegintransaction;
		xmessage('Duplicating...');
		ap:=xgetlastselectedpage(xcf.pages);
		np:=xcf.pages.last; a:=0; c:=0;
		while np<>nil do begin cp:=np; np:=np.prev;
			if xuseraborted then begin xerror(xcx); exit; end;
			if not cp.sel then continue;
			inc(a); xmessage('Duplicating page '+xits(a)+' of '+xits(b)+'...');
			p:=xduplicatepage(xcf,cp,ap);
			if p=nil then begin xerror(xcx); exit; end;
			cp.sel:=false; p.sel:=true;
			inc(c);
		end;
		xscrolltopage(xgetlastselectedpage(xcf.pages));
		xmessage(xmcm(c,'page duplicated','pages duplicated'));
	finally xendtransaction; end;
end;

procedure xhandleduplicate_pageview;
	var a,cs,ds,ns:xshape; sr:xrect;
begin
	if not xisdrawingpage(xcp) then begin xblink; exit; end;
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	sr:=xgetboundingrectangle(xcp.shapes,true);
	sr:=xmoverectangle(sr,xcp.dup.offset.x,xcp.dup.offset.y);
	if not xrectangleintersects(xir(xcp.body,10),sr) then xresetduplicate(xcp);
	xcp.dup.inprogress:=true;
	a:=xcp.shapes.last; ns:=xcp.shapes.last;
	while ns<>nil do begin cs:=ns; ns:=ns.prev;
		if not cs.sel then continue;
		ds:=xcopyshape(cs);
		xinsertlinkafter(xcp.shapes,a,ds);
		inc(xcp.lastsid); ds.sid:=xcp.lastsid;
		xselectshape(cs,false); xselectshape(ds,true);
		xmoveshape(ds,xcp.dup.offset.x,xcp.dup.offset.y);
	end;
	if xgetselectedshapecount(xcp.shapes)=1 then xscrolltoshape(xgetfirstselectedshape(xcp.shapes));
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting	and not xisfunctionpage(xcp) then xendpageedit(xcp);
	if xcv=xpageview		then begin xhandleduplicate_pageview; exit; end;
	if xcv=xfolderview	then begin xhandleduplicate_folderview; exit; end;
	if xcv=xdrawerview	then begin xhandleduplicate_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandleduplicate_cabinetview; exit; end;
	xblink;
end;

procedure xhandleedge(e:xedge);
begin
	if xcv<>xfolderview then begin xblink; exit; end;
	xca.edge:=e;
	xslapfolder(xcf);
	xmessage(xgetfolderstatus(xcf));
end;

procedure xhandleedges;
begin
	if (xediting) and (xgetedge(xcs)<>xnoedge) then xendpageedit(xcp);
	if xcv<>xpageview then begin xblink; exit; end;
	xca.edges:=not xca.edges; xca.saved.edges:=xca.edges;
	xhideedges(xcp,xca.edges);
	xadjustpage(xcp);
	xslappage(xcp);
end;

procedure xhandleescapekey;

procedure xhandleescapekey_cabinetview;
begin
	if xgetselecteddrawercount(xcc.drawers)=0 then begin xblink; exit; end;
	xselectdrawers(xcc.drawers,false);
	xslapcabinet(xcc);
	xmessage(xgetcabinetstatus(xcc));
end;

procedure xhandleescapekey_editing;
begin
	xendpageedit(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting	and not xisfunctionpage(xcp) then begin xhandleescapekey_editing; exit; end;
	if xcv=xpageview		then begin xhandleclose; exit; end;
	if xcv=xfolderview	then begin xhandleclose; exit; end;
	if xcv=xdrawerview	then begin xhandleclose; exit; end;
	if xcv=xcabinetview	then begin xhandleescapekey_cabinetview; exit; end;
	xblink;
end;

procedure xhandleface(f:xface);

procedure xhandleface_editing;
begin
	xsaveshapestate(xcs,xnoshapeop);
	xchangeface(xcs,f);
	xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandleface_pageview;
begin
	if not xisdrawingpage(xcp) then begin xblink; exit; end;
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	xchangefaces(xcp.shapes,f,true);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting				then begin xhandleface_editing; exit; end;
	if xcv=xpageview	then begin xhandleface_pageview; exit; end;
	xblink;
end;

procedure xhandlefill(d:xdir);
begin
	if xediting then begin xblink; exit; end;
	if xcv<>xpageview	then begin xblink; exit; end;
	if xgetselectedstopcount(xcp.horzs)<2 then begin xblink; exit; end;
	xsavepagestate;
	xfillslices(xcp,d);
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlefind;
begin
	if xcv=xareaview then begin xblink; exit; end;
	if not xdialog('Find what?',xsearch.value,false,false,true,xsearch.value) then exit;
	if xsearch.value='' then begin xblink; exit; end;
	xsearch.styp:=xwordsearch;
	if xcv=xpageview		then begin xhelpfindshape(true); exit; end;
	if xcv=xfolderview	then begin xhelpfindpage(true); exit; end;
	if xcv=xdrawerview	then begin xhelpfindfolder(true); exit; end;
	if xcv=xcabinetview	then begin xhelpfinddrawer(true); exit; end;
	if xcv=xblockview		then begin xhelpfindtext; exit; end;
end;

procedure xhandlefinddeep;

procedure xhandlefinddeep_cabinetview;
begin
	if xgetselecteddrawercount(xcc.drawers)=0 then begin xerror('Find where?'); exit; end;
	if not xdialog('Find what?',xsearch.value,false,false,false,xsearch.value) then exit;
	if not xbooleandialog('Really, really deep?','no',true,xsearch.entirepages) then exit;
	xsearch.styp:=xdeepsearch;
	xsearch.start:=xcabinetview;
	xsetdrawerdeepflags(xcc.drawers);
	xhelpfinddeep(true);
end;

procedure xhandlefinddeep_drawerview;
begin
	if xgetselectedfoldercount(xcd.folders)=0 then begin xerror('Find where?'); exit; end;
	if not xdialog('Find what?',xsearch.value,false,false,false,xsearch.value) then exit;
	if not xbooleandialog('Really, really deep?','no',true,xsearch.entirepages) then exit;
	xsearch.styp:=xdeepsearch;
	xsearch.start:=xdrawerview;
	xsetfolderdeepflags(xcd.folders);
	xhelpfinddeep(true);
end;

procedure xhandlefinddeep_folderview;
begin
	if xgetselectedpagecount(xcf.pages)=0 then begin xerror('Find where?'); exit; end;
	if not xdialog('Find what?',xsearch.value,false,false,true,xsearch.value) then exit;
	xsearch.styp:=xdeepsearch;
	xsearch.start:=xfolderview;
	xsearch.entirepages:=true;
	xsetpagedeepflags(xcf.pages);
	xhelpfinddeep(true);
end;

begin
	if xcv=xfolderview 	then begin xhandlefinddeep_folderview; exit; end;
	if xcv=xdrawerview 	then begin xhandlefinddeep_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandlefinddeep_cabinetview; exit; end;
	xblink;
end;

procedure xhandlefinderror;

function  xhandlefinderror_searchcabinet:xboolean; forward;
function  xhandlefinderror_searchdrawer(c:xcabinet):xboolean; forward;
function  xhandlefinderror_searchfolder(d:xdrawer):xboolean; forward;
function  xhandlefinderror_searchpage(f:xfolder):xboolean; forward;

function  xhandlefinderror_searchcabinet:xboolean;
	var c:xcabinet;
begin
	with xsearch.debug do begin
		result:=false;
		if (xcc<>nil) and (xcc.cid=cid) then begin result:=xhandlefinderror_searchdrawer(xcc); exit; end;
		c:=xopencabinet(xcidtocabinetname(cid)); if c=nil then begin xerror(xcx); exit; end;
		result:=xhandlefinderror_searchdrawer(c); if not result then begin xclosecabinet(c); exit; end;
		result:=true
	end;
end;

function  xhandlefinderror_searchdrawer(c:xcabinet):xboolean;
	var d:xdrawer;
begin
	with xsearch.debug do begin
		result:=false;
		if (xcd<>nil) and (xcd.cid=cid) and (xcd.did=did) then begin result:=xhandlefinderror_searchfolder(xcd); exit; end;
		d:=xfinddrawerbyid(c.drawers,did); if d=nil then begin xerror('Drawer not found.'); exit; end;
		if not xopendrawer(d) then begin xerror(xcx); exit; end;
		result:=xhandlefinderror_searchfolder(d); if not result then begin xclosedrawer(d); exit; end;
		result:=true
	end;
end;

function  xhandlefinderror_searchfolder(d:xdrawer):xboolean;
	var f:xfolder;
begin
	with xsearch.debug do begin
		result:=false;
		if (xcf<>nil) and (xcf.cid=cid) and (xcf.did=did) and (xcf.fid=fid) then begin result:=xhandlefinderror_searchpage(xcf); exit; end;
		f:=xfindfolderbyid(d.folders,fid); if f=nil then begin xerror('Folder not found.'); exit; end;
		if not xopenfolder(f) then begin xerror(xcx); exit; end;
		result:=xhandlefinderror_searchpage(f); if not result then begin xclosefolder(f); exit; end;
		result:=true;
	end;
end;

function  xhandlefinderror_searchpage(f:xfolder):xboolean;
	var p:xpage; s:xshape;
begin
	with xsearch,debug do begin
		result:=false;
		p:=xcp;
		if (xcp=nil) or (xcp.cid<>cid) or (xcp.did<>did) or (xcp.fid<>fid) or (xcp.pid<>pid) then begin
			p:=xfindpagebyid(f.pages,pid); if p=nil then begin xerror('Page not found.'); exit; end;
			if not xopenpage(p) then begin xerror(xcx); exit; end;
		end;
		result:=true;
		s:=xfindshapebyid(p.shapes,sid);
		xca.slice:=slice; xslicepage(p,slice);
		xviewpage(p,s,pos,pos);
		if s=nil then begin xmessage('Not found'); xblink; exit; end;
		xslapmachine;
		xwarning(error);
	end;
end;

begin
	xsearch.styp:=xnosearch;
	with xsearch.debug do if (cid='') or (did=0) or (fid=0) or (pid=0) or (sid=0) then begin xblink; exit; end;
	try xbegintransaction;
		xhandlefinderror_searchcabinet;
	finally xendtransaction; end;
end;

procedure xhandlefindmisspellings;
begin
	xsearch.styp:=xspellsearch;
	if xcv=xpageview then begin xhelpfindmisspellings(true); exit; end;
	if xcv=xblockview then begin xhelpfindblockmisspellings; exit; end;
end;

procedure xhandleflip(d:xdir);
	var cs:xshape;
begin
	if xcv<>xpageview	then begin xblink; exit; end;
	if not xisdrawingpage(xcp) then begin xblink; exit; end;
	if xediting then xendpageedit(xcp);
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	xresetduplicate(xcp);
	cs:=xcp.shapes.first; while cs<>nil do begin if cs.sel then xflipshape(cs,d); cs:=cs.next; end;
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlegrid;
begin
	if xcv<>xpageview then begin xblink; exit; end;
	xca.grid:=not xca.grid; xca.saved.grid:=xca.grid;
	xhidegrid(xcp,xca.grid);
	xslappage(xcp);
end;

procedure xhandlegroup;
	var cs,ns:xshape; gs:xshape;
begin
	if xcv<>xpageview	then begin xblink; exit; end;
	if not xisdrawingpage(xcp) then begin xblink; exit; end;
	if xediting then xendpageedit(xcp);
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	xresetduplicate(xcp);
	gs:=xcreategroup;
	ns:=xcp.shapes.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if not cs.sel then continue;
		xappendlink(gs.shapes,xremovelink(cs));
		xselectshape(cs,false);
	end;
	xappendlink(xcp.shapes,gs);
	inc(xcp.lastsid); gs.sid:=xcp.lastsid;
	xadjustshape(gs);
	xselectshape(gs,true);
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlemixture(p:xprop; m:xmixture);
begin
	if xcv<>xpageview	then begin xblink; exit; end;
	if not xisdrawingpage(xcp) then begin xblink; exit; end;
	if xediting then xendpageedit(xcp);
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	xchangemixtures(xcp.shapes,p,m,true);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlemodify;
	var v:xstring; s:xshape;
begin
	if xgetselectedstopcount(xcp.horzs)=0 then begin xblink; exit; end;
	s:=xgetfirstselectedstop(xcp.horzs).shape;
	try xbegintransaction;
		xsaveedit(xcs);
		if not xdialog(xslices[s.slice]+'?',xgetslice(s,s.slice),false,true,true,v) then exit;
		xsavepagestate;
		xsetslice(s,s.slice,v);
		xmessage(xslices[s.slice]+' modified');
	finally xendtransaction; end;
end;

procedure xhandlemove(q:xquadrant);
begin
	if xcv<>xpageview	then begin xblink; exit; end;
	xmovepage(xcp,q);
	xslappage(xcp);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlenew(t:xpage);

procedure xhandlenew_cabinetview;
	var d:xdrawer; g,n,v:xstring;
begin
	if xcabinetisreadonly(xcc) then begin xerror(xcx); exit; end;
	if not xdialog('Group?','',true,true,false,g) then exit;
	if not xdialog('Name?','',true,true,false,n) then exit;
	if not xdialog('Version?','',true,true,true,v) then exit;
	try xbegintransaction;
		xmessage('Creating...');
		d:=xnewdrawer(xcc,g,n,v,xgetlastselecteddrawer(xcc.drawers));
		if d=nil then begin xerror(xcx); exit; end;
		xselectdrawers(xcc.drawers,false);
		d.sel:=true;
		xscrolltodrawer(d);
		xmessage('Drawer created');
	finally xendtransaction; end;
end;

procedure xhandlenew_drawerview;
	var f:xfolder; n,v:xstring;
begin
	if xdrawerisreadonly(xcd) then begin xerror(xcx); exit; end;
	if not xdialog('Name?','',true,true,false,n) then exit;
	if not xdialog('Version?','',true,true,true,v) then exit;
	try xbegintransaction;
		xmessage('Creating...');
		f:=xnewfolder(xcd,n,v,xgetlastselectedfolder(xcd.folders));
		if f=nil then begin xerror(xcx); exit; end;
		xselectfolders(xcd.folders,false);
		f.sel:=true;
		xscrolltofolder(f);
		xmessage('Folder created');
	finally xendtransaction; end;
end;

procedure xhandlenew_folderview;
	var p:xpage;
begin
	if xfolderisreadonly(xcf) then begin xerror(xcx); exit; end;
	try xbegintransaction;
		xmessage('Creating...');
		p:=xcreatepagefromtemplate(t); if p=nil then begin xerror(xcx); exit; end;
		if (t.parent<>nil) and (not xrunevent(t.parent.name,xnewpageeventname,1,[p])) then exit;
		if not xfilepage(xcf,p,xgetlastselectedpage(xcf.pages)) then begin xdestroypage(p); xerror(xcx); exit; end;
		xclosepage(p);
		xselectpages(xcf.pages,false);
		p.sel:=true;
		xscrolltopage(p);
		xmessage('Page created');
	finally xendtransaction; end;
end;

begin
	if xcv=xfolderview	then begin xhandlenew_folderview; exit; end;
	if xcv=xdrawerview	then begin xhandlenew_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandlenew_cabinetview; exit; end;
	xblink;
end;

procedure xhandlenewshape(t:xshapetyp);

var s:xshape;

function  xhandlenewshape_createcurve:xshape;
	var r:xrect;
begin
	r:=xmr(0,0,360,360);
	with r do result:=xcreatecurve(r,[left,top,left+180,bottom,right,top],xblackcolor,xclearcolor);
end;

function  xhandlenewshape_createpicture:xshape;
	const b:array[boolean] of xcolor=((pigment:xclear;	mixture:xnormal),(pigment:xblack;	mixture:xnormal));
	var p:xpicture; pw,w:xinteger;
begin
	result:=nil; if not xhelpnewshapepicture(p) then exit;
	result:=xcreatepicture(p,b[p.omap.bits=nil],xclearcolor);
	with result.picture,rect do try
		w:=round(xwidth(xzoomrectangle(xcp.body,1/xcp.mag))); pw:=xwidth(rect); if pw<=w then exit;
		right:=left+w;
		bottom:=top+(w*xheight(rect) div pw);
	finally
		bottomright:=xsnappoint(bottomright,xpicturesnap);
		xadjustpicture(result.picture,true);
		xadjustshape(result);
	end;
end;

function  xhandlenewshape_createpolygon:xshape;
	var r:xrect;
begin
	r:=xmr(0,0,360,360);
	with r do result:=xcreatepolygon(r,[left,bottom,right,top],xblackcolor,xclearcolor);
end;

function  xhandlenewshape_createtext:xshape;
begin
	result:=xcreatetext(xmr(0,0,360,360),xmf(xarialface,180,xplainstyle,xleftalign),true,true,xblackcolor,xclearcolor,xblackcolor,false,'','');
	xsetslice(result,xuslice,'yes');
end;

begin
	if xcv<>xpageview then begin xblink; exit; end;
	if not xisdrawingpage(xcp) then begin xblink; exit; end;
	case t of
		xarcshape:				s:=xcreatearc(xmr(0,0,360,360),180,90,xblackcolor,xclearcolor);
		xcurveshape:  		s:=xhandlenewshape_createcurve;
		xellipseshape:  	s:=xcreateellipse(xmr(0,0,360,360),xblackcolor,xclearcolor);
		xpictureshape:		s:=xhandlenewshape_createpicture;
		xpolygonshape:  	s:=xhandlenewshape_createpolygon;
		xrectangleshape:	s:=xcreaterectangle(xmr(0,0,360,360),xblackcolor,xclearcolor);
		xtextshape:				s:=xhandlenewshape_createtext;
		else							s:=nil;
	end;
	if s=nil then exit;
	if xediting then xendpageedit(xcp);
	xsavepagestate;
	xresetduplicate(xcp);
	xselectshapes(xcp.shapes,false);
	xappendlink(xcp.shapes,s);
	inc(xcp.lastsid); s.sid:=xcp.lastsid;
	xsliceshape(s,xca.slice);
	xselectshape(s,true);
	xzoomshape(s,xcp.mag);
	xcentershape(s,xgetcenterinrectangle(xcp,s.rect));
	xsnapshape(s,trunc(360*xcp.mag));
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlenext;
begin
	if xsearch.styp=xdeepsearch	then begin xhelpfinddeep(false); exit; end;
	if (xcv=xpageview) 	and (xsearch.styp=xspellsearch)	then begin xhelpfindmisspellings(false); exit; end;
	if xcv=xpageview		then begin xhelpfindshape(false); exit; end;
	if xcv=xfolderview	then begin xhelpfindpage(false); exit; end;
	if xcv=xdrawerview	then begin xhelpfindfolder(false); exit; end;
	if xcv=xcabinetview	then begin xhelpfinddrawer(false); exit; end;
	if (xcv=xblockview) and (xsearch.styp=xspellsearch)	then begin xhelpfindblockmisspellings; exit; end;
	if xcv=xblockview		then begin xhelpfindtext; exit; end;
	xblink;
end;

procedure xhandleopen;

procedure xhandleopen_areaview;
begin
	xhelpopenareaview;
end;

procedure xhandleopen_cabinetview;
	var d:xdrawer;
begin
	d:=xgetfirstselecteddrawer(xcc.drawers);
	if d=nil then begin xerror('Open what?'); exit; end;
	try xbegintransaction;
		xmessage('Opening...');
		if not xopendrawer(d) then begin xerror(xcx); exit; end;
		xsortchain(d.folders,xdefaultsort,'',true);
		xviewdrawer(d,nil);
		xmessage(xgetdrawerstatus(xcd));
	finally xendtransaction; end;
end;

procedure xhandleopen_drawerview;
	var f:xfolder; s:xstring;
begin
	f:=xgetfirstselectedfolder(xcd.folders);
	if f=nil then begin xerror('Open what?'); exit; end;
	try xbegintransaction;
		xmessage('Opening...');
		if not xopenfolder(f) then begin xerror(xcx); exit; end;
		if xopensort(f,s) then xsortchain(f.pages,xusersort,s,true);
		xviewfolder(f,nil);
		xmessage(xgetfolderstatus(xcf));
	finally xendtransaction; end;
end;

procedure xhandleopen_folderview;
	var p:xpage;
begin
	p:=xgetfirstselectedpage(xcf.pages);
	if p=nil then begin xerror('Open what?'); exit; end;
	try xbegintransaction;
		xmessage('Opening...');
		if not xopenpage(p) then begin xerror(xcx); exit; end;
		xviewpage(p,nil,0,0);
		xmessage(xgetpagestatus(xcp));
	finally xendtransaction; end;
end;

begin
	if xcv=xareaview		then begin xhandleopen_areaview; exit; end;
	if xcv=xfolderview	then begin xhandleopen_folderview; exit; end;
	if xcv=xdrawerview	then begin xhandleopen_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandleopen_cabinetview; exit; end;
	xblink;
end;

procedure xhandlepaint;
begin
	xslapmachine;
end;

procedure xhandlepaste;

procedure xhandlepaste_blockview;
begin
	if xclip.values.first<>nil then xsaveshapestate(xcs,xnoshapeop);
	if not xpastecharacters(xcs) then begin xblink; exit; end;
	xscrolltoblockcaret(xcb);
	xslapblock(xcb);
	xshowcaret(xcs);
	xmessage(xgetblockstatus(xcb));
end;

procedure xhandlepaste_cabinetview;
	var a,b,c:xinteger; ad,cd,nd:xdrawer;
begin
	b:=xgetdrawercount(xclip.drawers); if b=0 then begin xblink; exit; end;
	if xcabinetisreadonly(xcc) then begin xerror(xcx); exit; end;
	try xbegintransaction;
		xmessage('Pasting...');
		ad:=xgetlastselecteddrawer(xcc.drawers);
		xselectdrawers(xcc.drawers,false);
		nd:=xclip.drawers.first; a:=0; c:=0;
		while nd<>nil do begin cd:=nd; nd:=nd.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			inc(a); xmessage('Pasting drawer '+xits(a)+' of '+xits(b)+'...');
			cd:=xduplicatedrawer(xcc,cd,ad);
			if cd=nil then begin xerror(xcx); exit; end;
			cd.sel:=true;
			ad:=cd;
			inc(c);
		end;
		xscrolltodrawer(xgetlastselecteddrawer(xcc.drawers));
		xmessage(xmcm(c,'drawer pasted','drawers pasted'));
	finally xendtransaction; end;
end;

procedure xhandlepaste_drawerview;
	var a,b,c:xinteger; af,cf,nf:xfolder;
begin
	b:=xgetfoldercount(xclip.folders); if b=0 then begin xblink; exit; end;
	if xdrawerisreadonly(xcd) then begin xerror(xcx); exit; end;
	try xbegintransaction;
		xmessage('Pasting...');
		af:=xgetlastselectedfolder(xcd.folders);
		xselectfolders(xcd.folders,false);
		nf:=xclip.folders.first; a:=0; c:=0;
		while nf<>nil do begin cf:=nf; nf:=nf.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			inc(a); xmessage('Pasting folder '+xits(a)+' of '+xits(b)+'...');
			cf:=xduplicatefolder(xcd,cf,af);
			if cf=nil then begin xerror(xcx); exit; end;
			cf.sel:=true;
			af:=cf;
			inc(c);
		end;
		xscrolltofolder(xgetlastselectedfolder(xcd.folders));
		xmessage(xmcm(c,'folder pasted','folders pasted'));
	finally xendtransaction; end;
end;

procedure xhandlepaste_editing;
begin
	if xclip.values.first<>nil then xsaveshapestate(xcs,xnoshapeop);
	if not xpastecharacters(xcs) then begin xblink; exit; end;
	if xscrolltocaret(xcp) then xslappage(xcp) else xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlepaste_folderview;
	var a,b,c:xinteger; ap,cp,np:xpage;
begin
	b:=xgetpagecount(xclip.pages); if b=0 then begin xblink; exit; end;
	if xfolderisreadonly(xcf) then begin xerror(xcx); exit; end;
	try xbegintransaction;
		xmessage('Pasting...');
		ap:=xgetlastselectedpage(xcf.pages);
		xselectpages(xcf.pages,false);
		np:=xclip.pages.first; a:=0; c:=0;
		while np<>nil do begin cp:=np; np:=np.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			inc(a); xmessage('Pasting page '+xits(a)+' of '+xits(b)+'...');
			cp:=xcopypage(cp,false);
			if not xfilepage(xcf,cp,ap) then begin xdestroypage(cp); xerror(xcx); exit; end;
			xclosepage(cp);
			cp.sel:=true;
			ap:=cp;
			inc(c);
		end;
		xscrolltopage(xgetlastselectedpage(xcf.pages));
		xmessage(xmcm(c,'page pasted','pages pasted'));
	finally xendtransaction; end;
end;

procedure xhandlepaste_pageview;

var cs:xshape; op:xpoint; sr:xrect;

procedure xhandlepaste_pageview_formsmode;
	var cv:xvalue; cs:xshape; ns:xstop;
begin
	if xgetselectedstopcount(xcp.horzs)=0 then begin xblink; exit; end;
	if xgetvaluecount(xclip.values)=0 then begin xblink; exit; end;
	xsavepagestate;
	cv:=xclip.values.first; ns:=xcp.horzs.first;
	while (ns<>nil) and (cv<>nil) do begin cs:=ns.shape; ns:=ns.next;
		if not cs.sel then continue;
		xsetslice(cs,cs.slice,cv.value);
		cv:=cv.next;
	end;
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xisfunctionpage(xcp) then exit;
	if xisformpage(xcp) then begin xhandlepaste_pageview_formsmode; exit; end;
	if xgetshapecount(xclip.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	xresetduplicate(xcp);
	xselectshapes(xcp.shapes,false);
	cs:=xclip.shapes.first;
	with xcp^,shapes^ do while cs<>nil do begin
		xappendlink(shapes,xcopyshape(cs));
		inc(xcp.lastsid); lastshape.sid:=xcp.lastsid;
		xzoomshape(lastshape,mag);
		xsliceshape(lastshape,slice);
		xselectshape(cs,true);
		cs:=cs.next;
	end;
	sr:=xgetboundingrectangle(xcp.shapes,true);
	if not xrectangleintersects(xir(xcp.body,10),sr) then begin
		op:=xsnappoint(xgetcenterpoint(xlvpr(xcp)),xzsg);
		op:=xcalculatedelta(xmp(sr.left,sr.top),op,10,10);
		xmoveshapes(xcp.shapes,op.x,op.y,true);
	end;
	xscrolltoshape(xgetfirstselectedshape(xcp.shapes));
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting 				then begin xhandlepaste_editing; exit; end;
	if xcv=xpageview		then begin xhandlepaste_pageview; exit; end;
	if xcv=xfolderview	then begin xhandlepaste_folderview; exit; end;
	if xcv=xdrawerview	then begin xhandlepaste_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandlepaste_cabinetview; exit; end;
	if xcv=xblockview		then begin xhandlepaste_blockview; exit; end;
	xblink;
end;

procedure xhandlepigment(p:xprop; c:xpigment);
begin
	if xcv<>xpageview	then begin xblink; exit; end;
	if not xisdrawingpage(xcp) then begin xblink; exit; end;
	if xediting then xendpageedit(xcp);
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	xchangepigments(xcp.shapes,p,c,true);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandleposition(d:xdir);
	var np:xpage;
begin
	if xcv<>xpageview	then begin xblink; exit; end;
	np:=xcp;
	case d of
		xhome:			if np=xcf.pages.first then np:=nil else np:=xcf.pages.first;
		xend:				if np=xcf.pages.last then np:=nil else np:=xcf.pages.last;
		xpagedown:	if np<>nil then np:=np.next else np:=xcf.pages.first;
		xpageup:		if np<>nil then np:=np.prev else np:=xcf.pages.last;
		else        np:=nil;
	end;
	if np=nil then begin xblink; exit; end;
	try xbegintransaction;
		xmessage('Opening...');
		if not xsavepage(xcp) then begin xerror(xcx); exit; end;
		if xediting then xendpageedit(xcp);
		if not xopenpage(np) then xmorphpage(np);
		xviewpage(np,nil,0,0);
		xmessage(xgetpagestatus(xcp));
	finally xendtransaction; end;
end;

procedure xhandlepositionkey;

procedure xhandlepositionkey_blockview;
begin
	with xcb^,edit^,text do begin
		xobscurecursor;
		if xce.dir=xpagedown 	then xmoveblockorigin(xcb,0,-(rpb-1)*rowheight);
		if xce.dir=xpageup 		then xmoveblockorigin(xcb,0,+(rpb-1)*rowheight);
		if not (xce.dir in [xpagedown,xpageup]) then begin
			xmovecaret(xcs,xce.dir,xce.command,xce.shift,true);
			xscrolltoblockcaret(xcb);
		end;
		xslapblock(xcb);
		xshowcaret(xcs);
		xmessage(xgetblockstatus(xcb));
	end;
end;

procedure xhandlepositionkey_cabinetview;
begin
	xpositioncabinet(xcc,xce.dir);
	xslapcabinet(xcc);
	xmessage(xgetcabinetstatus(xcc));
end;

procedure xhandlepositionkey_drawerview;
begin
	xpositiondrawer(xcd,xce.dir);
	xslapdrawer(xcd);
	xmessage(xgetdrawerstatus(xcd));
end;

procedure xhandlepositionkey_editing;
begin
	xobscurecursor;
	xmovecaret(xcs,xce.dir,xce.command,xce.shift,true);
	if xscrolltocaret(xcp) then xslappage(xcp) else xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlepositionkey_folderview;
begin
	xpositionfolder(xcf,xce.dir);
	xslapfolder(xcf);
	xmessage(xgetfolderstatus(xcf));
end;

begin
	if xediting and not (xce.dir in [xpagedown,xpageup]) then begin xhandlepositionkey_editing; exit; end;
	if xcv=xpageview		then begin xhandleposition(xce.dir); exit; end;
	if xcv=xfolderview	then begin xhandlepositionkey_folderview; exit; end;
	if xcv=xdrawerview	then begin xhandlepositionkey_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandlepositionkey_cabinetview; exit; end;
	if xcv=xblockview		then begin xhandlepositionkey_blockview; exit; end;
end;

procedure xhandleprint;

var p:xdoodad; pn,pp:xstring;

procedure xhandleprint_blockview;
	var copies:xinteger; s:xstring; sel:xboolean;
begin
	sel:=false;
	if (xisselection(xcs)) and (not xbooleandialog('Selection?','no',false,sel)) then exit;
	if not xdialog('Copies?','1',true,false,false,s) then exit;
	if (xstiwe(s,copies)) or (copies<xmincopies) or (copies>xmaxcopies) then begin xerror('Copies must be between '+xits(xmincopies)+' and '+xits(xmaxcopies)+'.'); exit; end;
	xslapbar;
	xhelpprintblock(p,copies,true,sel);
end;

procedure xhandleprint_folderview;
	var copies:xinteger; s:xstring;
begin
	if xgetselectedpagecount(xcf.pages)=0 then begin xerror('Print what?'); exit; end;
	if not xdialog('Copies?','1',true,false,false,s) then exit;
	if (xstiwe(s,copies)) or (copies<xmincopies) or (copies>xmaxcopies) then begin xerror('Copies must be between '+xits(xmincopies)+' and '+xits(xmaxcopies)+'.'); exit; end;
	xslapbar;
	xhelpprintpages(p,copies,true,true);
end;

procedure xhandleprint_pageview;
	var copies:xinteger; s:xstring;
begin
	if not xsavepage(xcp) then begin xerror(xcx); exit; end;
	if not xdialog('Copies?','1',true,false,false,s) then exit;
	if (xstiwe(s,copies)) or (copies<xmincopies) or (copies>xmaxcopies) then begin xerror('Copies must be between '+xits(xmincopies)+' and '+xits(xmaxcopies)+'.'); exit; end;
	xslapbar;
	xhelpprintpage(p,copies,true);
end;

begin
	p:=xfinddoodad(xdefaultdoodad,xgetcomputername);
	if p<>nil then p:=xfinddoodad(xprinterdoodad,p.printer);
	if p=nil then begin xgetdefaultprinter(pn,pp); p:=xfinddoodadbydevice(xprinterdoodad,pn); end;
	if p=nil then p:=xfinddoodad(xprinterdoodad,xdefaultprintername);
	if p=nil then begin xerror('No default printer.'); exit; end;
	if xcv=xpageview 		then begin xhandleprint_pageview; exit; end;
	if xcv=xfolderview 	then begin xhandleprint_folderview; exit; end;
	if xcv=xblockview 	then begin xhandleprint_blockview; exit; end;
	xblink;
end;

procedure xhandleprintspecial;

function  xhandleprintspecial_printerdialog(var p:xdoodad):xboolean; forward;

procedure xhandleprintspecial_blockview;
	var auto:xboolean; copies:xinteger; p:xdoodad; s:xstring; sel:xboolean;
begin
	sel:=false;
	if (xisselection(xcs)) and (not xbooleandialog('Selection?','no',false,sel)) then exit;
	if not xdialog('Copies?','1',true,false,false,s) then exit;
	if (xstiwe(s,copies)) or (copies<xmincopies) or (copies>xmaxcopies) then begin xerror('Copies must be between '+xits(xmincopies)+' and '+xits(xmaxcopies)+'.'); exit; end;
	if not xbooleandialog('Autofeed?','yes',false,auto) then exit;
	if not xhandleprintspecial_printerdialog(p) then exit;
	xslapbar;
	xhelpprintblock(p,copies,auto,sel);
end;

procedure xhandleprintspecial_folderview;
	var auto,collate:xboolean; copies:xinteger; edges:xboolean; p:xdoodad; s,title:xstring;
begin
	if xgetselectedpagecount(xcf.pages)=0 then begin xerror('Print what?'); exit; end;
	if not xbooleandialog('Edges?','no',false,edges) then exit;
	if edges and not xdialog('Title?',xconcatinatenames([xcf.name,xcf.version]),true,false,false,title) then exit;
	if not xdialog('Copies?','1',true,false,false,s) then exit;
	if (xstiwe(s,copies)) or (copies<xmincopies) or (copies>xmaxcopies) then begin xerror('Copies must be between '+xits(xmincopies)+' and '+xits(xmaxcopies)+'.'); exit; end;
	collate:=true;
	if (not edges) and (copies>1) and (xgetselectedpagecount(xcf.pages)>1) and (not xbooleandialog('Collate?','yes',false,collate)) then exit;
	if not xbooleandialog('Autofeed?','yes',false,auto) then exit;
	if not xhandleprintspecial_printerdialog(p) then exit;
	xslapbar;
	if edges then xhelpprintedges(p,copies,auto,title) else xhelpprintpages(p,copies,auto,collate);
end;

procedure xhandleprintspecial_pageview;
	var auto:xboolean; copies:xinteger; p:xdoodad; s:xstring;
begin
	if not xsavepage(xcp) then begin xerror(xcx); exit; end;
	if not xdialog('Copies?','1',true,false,false,s) then exit;
	if (xstiwe(s,copies)) or (copies<xmincopies) or (copies>xmaxcopies) then begin xerror('Copies must be between '+xits(xmincopies)+' and '+xits(xmaxcopies)+'.'); exit; end;
	if not xbooleandialog('Autofeed?','yes',false,auto) then exit;
	if not xhandleprintspecial_printerdialog(p) then exit;
	xslapbar;
	xhelpprintpage(p,copies,auto);
end;

function  xhandleprintspecial_printerdialog(var p:xdoodad):xboolean;
	var d,pn,pp,s:xstring;
begin
	result:=false;
	p:=xfinddoodad(xdefaultdoodad,xgetcomputername);
	if p<>nil then p:=xfinddoodad(xprinterdoodad,p.printer);
	if p=nil then begin xgetdefaultprinter(pn,pp); p:=xfinddoodadbydevice(xprinterdoodad,pn); end;
	if p<>nil then d:=p.name else d:=xdefaultprintername;
	if not xdialog('Printer?',d,true,false,false,s) then exit;
	p:=xfinddoodad(xprinterdoodad,s);
	if p=nil then begin xerror(''''+s+''' is not a valid printer.'); exit; end;
	result:=true;
end;

begin
	if xcv=xpageview 		then begin xhandleprintspecial_pageview; exit; end;
	if xcv=xfolderview 	then begin xhandleprintspecial_folderview; exit; end;
	if xcv=xblockview 	then begin xhandleprintspecial_blockview; exit; end;
	xblink;
end;

procedure xhandleprogram(o:xobject);
	var s:xsymbol; shift:xboolean;
begin
	s:=o; if o=nil then begin xerror('Invalid function or template.'); exit; end;
	xsaveedit(xcs);
	if (xcv=xpageview) and (not xsavepage(xcp)) then begin xerror(xcx); exit; end;
	if xca.local.stack.sp<>0 then begin xerror('Internal Error 101.'); exit; end;
	if xtype(o)=xpagerecord then begin xhandlenew(o); exit; end;
	if xtype(o)<>xsymbolrecord then begin xerror('Type mismatch.'); exit; end;
	if not (s.styp in [xexternsym,xinternsym]) then begin xerror(''''+s.name+''' is not a function.'); exit; end;
	try xbegintransaction;
		shift:=getasynckeystate(vk_shift)<0;
		if shift then begin xresetclock(35); xstartclock(35); end;
		if s.styp=xexternsym then	xexecutepage(s.page,0,false);
		if s.styp=xinternsym then xexecuteinternal(s.intern,0,false);
		xstopclock(35);
		if xca.abort then begin xresetmachine; xerror(xcx); end;
		if shift then xmessage(xgetclockstring(35));
	finally xendtransaction end;
end;

procedure xhandlequit;
begin
	if (xcv=xblockview) and (xuserwantstosave(xcb)) then exit;
	xenque(xmakeevent(xshutdownevent));
	postmessage(xwindow,wm_destroy,0,0);
end;

procedure xhandleredo;
begin
	xhelpdo(false);
end;

procedure xhandlerename;

procedure xhandlerename_cabinetview;
	var d:xdrawer; g,n,v:xstring;
begin
	d:=xgetfirstselecteddrawer(xcc.drawers);
	if d=nil then begin xerror('Rename what?'); exit; end;
	if xcabinetisreadonly(xcc) then begin xerror(xcx); exit; end;
	if not xdialog('New group?',d.group,true,true,false,g) then exit;
	if not xdialog('New name?',d.name,true,true,false,n) then exit;
	if not xdialog('New version?',d.version,true,true,true,v) then exit;
	try xbegintransaction;
		xmessage('Renaming...');
		if not xrenamedrawer(d,g,n,v) then begin xerror(xcx); exit; end;
		xselectdrawers(xcc.drawers,false);
		d.sel:=true;
		xscrolltodrawer(d);
		xmessage('Drawer renamed');
	finally xendtransaction; end;
end;

procedure xhandlerename_drawerview;
	var f:xfolder; n,v:xstring;
begin
	f:=xgetfirstselectedfolder(xcd.folders);
	if f=nil then begin xerror('Rename what?'); exit; end;
	if xdrawerisreadonly(xcd) then begin xerror(xcx); exit; end;
	if not xdialog('New name?',f.name,true,true,false,n) then exit;
	if not xdialog('New version?',f.version,true,true,true,v) then exit;
	try xbegintransaction;
		xmessage('Renaming...');
		if not xrenamefolder(f,n,v) then begin xerror(xcx); exit; end;
		xselectfolders(xcd.folders,false);
		f.sel:=true;
		xscrolltofolder(f);
		xmessage('Folder renamed');
	finally xendtransaction; end;
end;

begin
	if xcv=xdrawerview	then begin xhandlerename_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandlerename_cabinetview; exit; end;
	xblink;
end;

procedure xhandlerenumber;

var a,b,c,n:xinteger; cp,np:xpage; ns:xstring;

procedure xhandlerenumber_shapes(s:xshapes);
	var cs,ns:xshape;
begin
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if cs.styp=xgroupshape then begin xhandlerenumber_shapes(cs.shapes); continue; end;
		if cs.styp<>xtextshape then continue;
		if xv(xgetslice(cs,xnslice))<>'number' then continue;
		xsetslice(cs,xvslice,xits(n));
	end;
end;

begin
	if xcv<>xfolderview then begin xblink; exit; end;
	if xfolderisreadonly(xcf) then begin xerror(xcx); exit; end;
	b:=xgetpagecount(xcf.pages);
	if not xdialog('Starting number?','1',true,false,false,ns) then exit;
	if xstiwe(ns,n) then begin xerror(''''+ns+''' is not a valid starting page number.'); exit; end;
	dec(n);
	try xbegintransaction;
		xmessage('Renumbering...');
		np:=xcf.pages.first;  a:=0; c:=0;
		while np<>nil do begin cp:=np; np:=np.next;
			if xuseraborted then begin xerror('Command cancelled.'); exit; end;
			inc(a); xmessage('Renumbering page '+xits(a)+' of '+xits(b)+'...');
			if not xopenpage(cp) then continue;
			inc(n); xhandlerenumber_shapes(cp.shapes); cp.modified:=true;
			if xsavepage(cp) then inc(c);
			xclosepage(cp);
		end;
		xmessage(xmcm(c,'page renumbered','pages renumbered'));
	finally xendtransaction; end;
end;

procedure xhandleresize;
	const max=40320; min=1440;
	var ch,w,h:xtwit; cs:xshape; r:xrect; wn,hn:xnumber; ws,hs:xstring;
begin
	if xcv<>xpageview	then begin xblink; exit; end;
	with xcp^ do begin r:=xzoomrectangle(body,1/mag); w:=xwidth(r)-10; h:=xheight(r)-10; end;
	if not xdialog('New width?',xnts(xtti(w)),true,false,false,ws) then exit;
	if (xstncwe(ws,wn)) or (wn<xtti(min)) or (wn>xtti(max)) then begin xerror('Page width must be between '+xnts(xtti(min))+' and '+xnts(xtti(max))+'.'); exit; end;
	w:=xitt(round(wn*2)/2);
	if not xdialog('New height?',xnts(xtti(h)),true,false,true,hs) then exit;
	if (xstncwe(hs,hn)) or (hn<xtti(min)) or (hn>xtti(max)) then begin xerror('Page height must be between '+xnts(xtti(min))+' and '+xnts(xtti(max))+'.'); exit; end;
	h:=xitt(round(hn*2)/2);
	if xediting then xendpageedit(xcp);
	xsavepagestate;
	cs:=xcp.shapes.first; ch:=xheight(xcp.body);
	while cs<>nil do begin
		if (cs.styp=xtextshape) and (xgetedge(cs)=xbottomedge) then xmoveshape(cs,0,round(h*xcp.mag)-ch+10);
		cs:=cs.next;
	end;
	xcp.body:=xzoomrectangle(xmr(0,0,w,h),xcp.mag);
	xadjustpage(xcp);
	xmovepage(xcp,xtopleft);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlereturnkey;

procedure xhandlereturnkey_blockview;
begin
	xobscurecursor;
	xsaveshapestate(xcs,xinsertshapeop);
	xinsertcharacters(xcs,xcr);
	xscrolltoblockcaret(xcb);
	xslapblock(xcb);
	xshowcaret(xcs);
	xmessage(xgetblockstatus(xcb));
end;

procedure xhandlereturnkey_editing;
begin
	xobscurecursor;
	xsaveshapestate(xcs,xinsertshapeop);
	xinsertcharacters(xcs,xcr);
	if xscrolltocaret(xcp) then xslappage(xcp) else xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlereturnkey_pageview;
	var s:xshape;
begin
	if not xce.command then begin xhandlearrowkey; exit; end;
	s:=xgetfirstselectedshapeonstops(xcp.horzs);
	if s=nil then begin xblink; exit; end;
	xbeginpageedit(xcp,s);
	xsetselection(s,length(xgetslice(s,s.slice))+1,length(xgetslice(s,s.slice))+1);
	xscrolltocaret(xcp);
	xslappage(xcp);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting and not xisoneline(xcs.text)	then begin xhandlereturnkey_editing; exit; end;
	if xediting					then xendpageedit(xcp);
	if xcv=xpageview		then begin xhandlereturnkey_pageview; exit; end;
	if xcv=xfolderview	then begin xhandleopen; exit; end;
	if xcv=xdrawerview	then begin xhandleopen; exit; end;
	if xcv=xcabinetview	then begin xhandleopen; exit; end;
	if xcv=xblockview		then begin xhandlereturnkey_blockview; exit; end;
	xblink;
end;

procedure xhandlereverse;

procedure xhandlereverse_blockview;
	var er,sr:xinteger; s:xtextstats; selection:xboolean;
begin
	with xcs^,text,s do begin
		s:=xgettextstatistics(text,xnilpoint,xnilrect);
		selection:=false;
		if (xisselection(xcs)) and (not xbooleandialog('Selection?','no',false,selection)) then exit;
		sr:=1; er:=count; if selection then begin sr:=fsr; er:=lsr; end;
		try xbegintransaction;
			xmessage('Reversing...');
			xsaveshapestate(xcs,xnoshapeop);
			xreverserows(xcs,sr,er);
			if not selection then xsetselectionbycolumnandrow(xcs,1,1,1,1);
			xscrolltoblockcaret(xcb);
			xmessage(xmcm(er-sr+1,'line reversed','lines reversed'));
		finally xendtransaction; end;
	end;
end;

procedure xhandlereverse_cabinetview;
begin
	try xbegintransaction;
		xmessage('Reversing...');
		xreversechain(xcc.drawers);
		xadjustcabinet(xcc);
		xselectdrawers(xcc.drawers,false);
		xscrolltodrawer(xcc.drawers.first);
		xmessage(xmcm(xgetdrawercount(xcc.drawers),'drawer reversed','drawers reversed'));
	finally xendtransaction; end;
end;

procedure xhandlereverse_drawerview;
begin
	try xbegintransaction;
		xmessage('Reversing...');
		xreversechain(xcd.folders);
		xadjustdrawer(xcd);
		xselectfolders(xcd.folders,false);
		xscrolltofolder(xcd.folders.first);
		xmessage(xmcm(xgetfoldercount(xcd.folders),'folder reversed','folders reversed'));
	finally xendtransaction; end;
end;

procedure xhandlereverse_folderview;
begin
	try xbegintransaction;
		xmessage('Reversing...');
		xreversechain(xcf.pages);
		xadjustfolder(xcf);
		xselectpages(xcf.pages,false);
		xscrolltopage(xcf.pages.first);
		xmessage(xmcm(xgetpagecount(xcf.pages),'page reversed','pages reversed'));
	finally xendtransaction; end;
end;

begin
	if xcv=xfolderview	then begin xhandlereverse_folderview; exit; end;
	if xcv=xdrawerview	then begin xhandlereverse_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandlereverse_cabinetview; exit; end;
	if xcv=xblockview		then begin xhandlereverse_blockview; exit; end;
	xblink;
end;

procedure xhandlerightclick;
begin
	if xinmenubar	then exit;
	if xintab			then exit;
	if xinpage		then begin xscrollpage(xcp); exit; end;
	if xinfolder	then begin xscrollfolder(xcf); exit; end;
	if xindrawer	then begin xscrolldrawer(xcd); exit; end;
	if xincabinet	then begin xscrollcabinet(xcc); exit; end;
	if xinblock		then begin xscrollblock(xcb); exit; end;
end;

procedure xhandlerotate;
	var cs:xshape;
begin
	if xcv<>xpageview	then begin xblink; exit; end;
	if not xisdrawingpage(xcp) then begin xblink; exit; end;
	if xediting then xendpageedit(xcp);
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	xresetduplicate(xcp);
	cs:=xcp.shapes.first; while cs<>nil do begin if cs.sel then xrotateshape(cs); cs:=cs.next; end;
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlesave;

procedure xhandlesave_blockview;
begin
	if xblockisreadonly(xcb) then begin xerror(xcx); exit; end;
	try xbegintransaction;
		xmessage('Saving...');
		if not xsaveblock(xcb) then begin xerror(xcx); exit; end;
		if (xblockiscurrentconfiguration(xcb)) and (not xopenconfiguration) then xerror(xcx);
		xmessage('File saved');
	finally xendtransaction; end;
end;

procedure xhandlesave_pageview;
begin
	if xpageisreadonly(xcp) then begin xerror(xcx); exit; end;
	try xbegintransaction;
		xmessage('Saving...');
		if not xsavepage(xcp) then begin xerror(xcx); exit; end;
		xmessage('Page saved');
	finally xendtransaction; end;
end;

begin
	if xcv=xpageview	then begin xhandlesave_pageview; exit; end;
	if xcv=xblockview	then begin xhandlesave_blockview; exit; end;
	xblink;
end;

procedure xhandlescale;
	const max=1000.0; min=0.0001; var sn:xnumber; ss:xstring;
begin
	if xcv<>xpageview	then begin xblink; exit; end;
	if not xdialog('New scale?',xnts(xcp.scale),true,false,true,ss) then exit;
	if (xstncwe(ss,sn)) or (sn<min) or (sn>max) then begin xerror('Scale must be between '+xnts(min)+' and '+xnts(max)+'.'); exit; end;
	if xediting then xendpageedit(xcp);
	xsavepagestate;
	xcp.scale:=sn;
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandleselectall;

procedure xhandleselectall_blockview;
begin
	xselectcharacters(xcs);
	xslapblock(xcb);
	xshowcaret(xcs);
	xmessage(xgetblockstatus(xcb));
end;

procedure xhandleselectall_cabinetview;
begin
	xselectdrawers(xcc.drawers,true);
	xslapcabinet(xcc);
	xmessage(xgetcabinetstatus(xcc));
end;

procedure xhandleselectall_drawerview;
begin
	xselectfolders(xcd.folders,true);
	xslapdrawer(xcd);
	xmessage(xgetdrawerstatus(xcd));
end;

procedure xhandleselectall_editing;
begin
	xselectcharacters(xcs);
	xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandleselectall_folderview;
begin
	xselectpages(xcf.pages,true);
	xslapfolder(xcf);
	xmessage(xgetfolderstatus(xcf));
end;

procedure xhandleselectall_pageview;
	var cs:xshape;
begin
	if xisformpage(xcp) then begin xselectstops(xcp.horzs,true); xslappage(xcp); xmessage(xgetpagestatus(xcp)); exit; end;
	cs:=xcp.shapes.first;
	while cs<>nil do begin
		if xgetedge(cs)=xnoedge then xselectshape(cs,true) else xselectshape(cs,false);
		cs:=cs.next;
	end;
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting 				then begin xhandleselectall_editing; exit; end;
	if xcv=xpageview		then begin xhandleselectall_pageview; exit; end;
	if xcv=xfolderview	then begin xhandleselectall_folderview; exit; end;
	if xcv=xdrawerview	then begin xhandleselectall_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandleselectall_cabinetview; exit; end;
	if xcv=xblockview		then begin xhandleselectall_blockview; exit; end;
	xblink;
end;

procedure xhandlesend(d:xdir);

procedure xhandlesend_back;
	var cs,fs,ns:xshape;
begin
	with xcp^,shapes^ do begin
		fs:=first; ns:=last;
		while ns<>nil do begin cs:=ns; ns:=ns.prev;
			if cs.sel then begin xinsertlinkbefore(shapes,first,xremovelink(cs)); end;
			if cs=fs then break;
		end;
	end;
end;

procedure xhandlesend_front;
	var cs,ns,ls:xshape;
begin
	with xcp^,shapes^ do begin
		ls:=last; ns:=first;
		while ns<>nil do begin cs:=ns; ns:=ns.next;
			if cs.sel then begin xinsertlinkafter(shapes,last,xremovelink(cs)); end;
			if cs=ls then break;
		end;
	end;
end;

begin
	if xcv<>xpageview	then begin xblink; exit; end;
	if not xisdrawingpage(xcp) then begin xblink; exit; end;
	if xediting	then xendpageedit(xcp);
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	xresetduplicate(xcp);
	if d=xback then xhandlesend_back else xhandlesend_front;
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandleshiftkey;
begin
	if (xediting) or (xcv=xblockview) then exit;
	xhandlecursor;
end;

procedure xhandleshutdown;
	var ca:xarea;
begin
	xhidecursor;
	xmessage('Finalizing...');
	if xediting then xendpageedit(xcp);
	if xcv=xpageview then xsavepage(xcp);
	ca:=xareas.last;
	while ca<>nil do begin
		xswitcharea(ca);
		xcloseprograms;
		xviewarea;
		xclosemachine;
		ca:=ca.prev;
	end;
	xcloseconfiguration;
end;

procedure xhandlesize(s:xsize);

procedure xhandlesize_editing;
begin
	xsaveshapestate(xcs,xnoshapeop);
	xchangesize(xcs,s);
	xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlesize_pageview;
begin
	if not xisdrawingpage(xcp) then begin xblink; exit; end;
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	xchangesizes(xcp.shapes,s,true);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting				then begin xhandlesize_editing; exit; end;
	if xcv=xpageview	then begin xhandlesize_pageview; exit; end;
	xblink;
end;

procedure xhandlesleep;
	var e:xevent; op:xpoint; thread:xhndl;
begin
	if xcv=xpageview then xsavepage(xcp);
	xpushcursor;
	xpushcaret;
	xsetcliprectangle(xdisplay,xscreen.rect);
	xdrawrectangle(xdisplay,xscreen.rect,xblackcolor,xblackcolor);
	xpause(1000); xflushevents;
	xsleeping:=true;
	beginthread(nil,256,xsleep,nil,0,thread);
	op:=xgetmousepoint;
	repeat
		e:=xdeque;
		if e.etyp in xinputevents then break;
		if e.etyp<>xcursorevent then continue;
		if xmousehasmoved(op,xgetmousepoint,200,200) then break;
	until xforever;
	xsleeping:=false;
	xenque(xmakeevent(xpaintevent));
	xpopcaret;
	xpopcursor;
end;

procedure xhandleslice(s:xslice);
begin
	if xcv<>xpageview then begin xblink; exit; end;
	xsaveedit(xcs);
	xca.slice:=s; xca.saved.slice:=xca.slice;
	xslicepage(xcp,s);
	if not xiseditshape(xcs) then xendpageedit(xcp);
	xadjustpage(xcp);
	xslappage(xcp);
	xshowcaret(xcs);
	xmessage(xslices[s]+' slice');
end;

procedure xhandlesnap(s:xtwit);
begin
	if xcv<>xpageview	then begin xblink; exit; end;
	xca.snap:=s;
	xcp.snap:=s;
end;

procedure xhandlesort(s:xsorttyp; f:xstring);

procedure xhandlesort_blockview;
	var ec,ecm,er,sc,sr:xinteger; s:xstring; selection:xboolean; tstats:xtextstats;
begin
	with xcs^,text,tstats do begin
		tstats:=xgettextstatistics(text,xnilpoint,xnilrect);
		selection:=false;
		if (xisselection(xcs)) and (not xbooleandialog('Selected lines?','no',false,selection)) then exit;
		ecm:=xgetlargestcolumn(xcs,1,count);
		sc:=1; ec:=ecm; if blocksel then begin sc:=na.col; ec:=nc.col-1; end;
		sr:=1; er:=count; if selection then begin sr:=fsr; er:=lsr; sc:=1; ec:=xgetlargestcolumn(xcs,fsr,lsr); end;
		if not xdialog('Starting column?',xits(sc),true,false,false,s) then exit;
		if xstiwe(s,sc) then begin xerror('Invalid starting column.'); exit; end;
		if not xdialog('Ending column?',xits(ec),true,false,true,s) then exit;
		if xstiwe(s,ec) then begin xerror('Invalid ending column.'); exit; end;
		sc:=xlimit(sc,1,ecm); ec:=xlimit(ec,sc,ecm);
		try xbegintransaction;
			xmessage('Sorting...');
			xsaveshapestate(xcs,xnoshapeop);
			xsortrows(xcs,sr,er,sc,ec);
			if not selection then xsetselectionbycolumnandrow(xcs,1,1,1,1);
			xscrolltoblockcaret(xcb);
			xmessage(xmcm(er-sr+1,'line sorted','lines sorted'));
		finally xendtransaction; end;
	end;
end;

procedure xhandlesort_cabinetview;
begin
	try xbegintransaction;
		xmessage('Sorting...');
		xsortchain(xcc.drawers,s,'',true);
		xselectdrawers(xcc.drawers,false);
		xscrolltodrawer(xcc.drawers.first);
		xmessage(xmcm(xgetdrawercount(xcc.drawers),'drawer sorted','drawers sorted'));
	finally xendtransaction; end;
end;

procedure xhandlesort_drawerview;
begin
	try xbegintransaction;
		xmessage('Sorting...');
		xsortchain(xcd.folders,s,'',true);
		xselectfolders(xcd.folders,false);
		xscrolltofolder(xcd.folders.first);
		xmessage(xmcm(xgetfoldercount(xcd.folders),'folder sorted','folders sorted'));
	finally xendtransaction; end;
end;

procedure xhandlesort_folderview;
begin
	try xbegintransaction;
		xmessage('Sorting...');
		xsortchain(xcf.pages,xusersort,f,true);
		xaddnametosort(xcf,f);
		xselectpages(xcf.pages,false);
		xscrolltopage(xcf.pages.first);
		xmessage(xmcm(xgetpagecount(xcf.pages),'page sorted','pages sorted'));
	finally xendtransaction; end;
end;

begin
	if xcv=xfolderview	then begin xhandlesort_folderview; exit; end;
	if xcv=xdrawerview	then begin xhandlesort_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandlesort_cabinetview; exit; end;
	if xcv=xblockview		then begin xhandlesort_blockview; exit; end;
	xblink;
end;

procedure xhandlespace;

function  xhandlespace_mcm(n:xnumber; s,p:xstring):xstring; forward;

procedure xhandlespace_blockview;
begin
	try xbegintransaction;
		xmessage('Computing...');
		xmessage(xhandlespace_mcm(xgetcharactercount(xcs,true),'byte','bytes'));
	finally xendtransaction; end;
end;

procedure xhandlespace_cabinetview;
	var a,b,c:xinteger; cd,nd:xdrawer;
begin
	b:=xgetselecteddrawercount(xcc.drawers); if b=0 then begin xerror('Compute size of what?'); exit; end;
	try xbegintransaction;
		xmessage('Computing...');
		nd:=xcc.drawers.first; a:=0; c:=0;
		while nd<>nil do begin cd:=nd; nd:=nd.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			if not cd.sel then continue;
			inc(a); xmessage('Computing drawer '+xits(a)+' of '+xits(b)+'...');
			inc(c,xgetdrawersize(cd));
		end;
		xmessage(xhandlespace_mcm(c,'byte','bytes'));
	finally xendtransaction; end;
end;

procedure xhandlespace_drawerview;
	var a,b,c:xinteger; cf,nf:xfolder;
begin
	b:=xgetselectedfoldercount(xcd.folders); if b=0 then begin xerror('Compute size of what?'); exit; end;
	try xbegintransaction;
		xmessage('Computing...');
		nf:=xcd.folders.first; a:=0; c:=0;
		while nf<>nil do begin cf:=nf; nf:=nf.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			if not cf.sel then continue;
			inc(a); xmessage('Computing folder '+xits(a)+' of '+xits(b)+'...');
			inc(c,xgetfoldersize(cf));
		end;
		xmessage(xhandlespace_mcm(c,'byte','bytes'));
	finally xendtransaction; end;
end;

procedure xhandlespace_folderview;
	var a,b,c:xinteger; cp,np:xpage;
begin
	b:=xgetselectedpagecount(xcf.pages); if b=0 then begin xerror('Compute size of what?'); exit; end;
	try xbegintransaction;
		xmessage('Computing...');
		np:=xcf.pages.first; a:=0; c:=0;
		while np<>nil do begin cp:=np; np:=np.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			if not cp.sel then continue;
			inc(a); xmessage('Computing page '+xits(a)+' of '+xits(b)+'...');
			inc(c,xgetpagesize(cp));
		end;
		xmessage(xhandlespace_mcm(c,'byte','bytes'));
	finally xendtransaction; end;
end;

function  xhandlespace_mcm(n:xnumber; s,p:xstring):xstring;
begin
	if n=1 then result:=xformatnumber(n,'z,zz9')+xsp+s else result:=xformatnumber(n,'z,zz9')+xsp+p;
end;

procedure xhandlespace_pageview;
begin
	try xbegintransaction;
		xmessage('Computing...');
		xmessage(xhandlespace_mcm(xgetloadedpagesize(xcp),'byte','bytes'));
	finally xendtransaction; end;
end;

begin
	if xcv=xpageview		then begin xhandlespace_pageview; exit; end;
	if xcv=xfolderview	then begin xhandlespace_folderview; exit; end;
	if xcv=xdrawerview	then begin xhandlespace_drawerview; exit; end;
	if xcv=xcabinetview	then begin xhandlespace_cabinetview; exit; end;
	if xcv=xblockview		then begin xhandlespace_blockview; exit; end;
	xblink;
end;

procedure xhandlestartup;
	var c:xcabinet; d:xdoodad; ca,na:xarea; cc:xinteger;
begin
	xslapbar;
	try xbegintransaction;
		xmessage('Initializing...');
		if not xopenconfiguration then xerror(xcx);
		xmessage('Initializing...');
		na:=xareas.first; cc:=0; d:=xfinddoodad(xdefaultdoodad,xgetcomputername);
		while na<>nil do begin ca:=na; na:=na.next;
			xswitcharea(ca);
			xopenmachine;
			inc(cc); if (d=nil) or (d.cabinets[cc]='') then continue;
			c:=xopencabinet(d.cabinets[cc]);
			if c=nil then begin xerror(xcx); xmessage('Initializing...'); continue; end;
			xsortchain(c.drawers,xdefaultsort,'',true);
			xviewcabinet(c,nil);
			xopenprograms;
		end;
		xswitcharea(xareas.first);
		if xcv=xcabinetview then xmessage(xgetcabinetstatus(xcc)) else xmessage('');
	finally xendtransaction; end;
end;

procedure xhandlestyle(v:xstyle);

procedure xhandlestyle_editing;
begin
	xsaveshapestate(xcs,xnoshapeop);
	xchangestyle(xcs,v);
	xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlestyle_pageview;
begin
	if not xisdrawingpage(xcp) then begin xblink; exit; end;
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	xchangestyles(xcp.shapes,v,true);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting				then begin xhandlestyle_editing; exit; end;
	if xcv=xpageview	then begin xhandlestyle_pageview; exit; end;
	xblink;
end;

procedure xhandletabkey;

procedure xhandletabkey_blockview;
begin
	xobscurecursor;
	xsaveshapestate(xcs,xinsertshapeop);
	xinsertcharacters(xcs,xtb);
	xscrolltoblockcaret(xcb);
	xslapblock(xcb);
	xshowcaret(xcs);
	xmessage(xgetblockstatus(xcb));
end;

procedure xhandletabkey_command;
begin
	if (xcv=xpageview) and (not xsavepage(xcp)) then begin xerror(xcx); exit; end;
	xnavigatemachine(xce.dir);
	xslapmachine;
	xshowcaret(xcs);
	xmessage('');
end;

begin
	if xce.command 					then begin xhandletabkey_command; exit; end;
	if xisfunctionpage(xcp)	then exit;
	if xediting							then xendpageedit(xcp);
	if xcv=xpageview				then begin xhandlearrowkey; exit; end;
	if xcv=xfolderview			then begin xhandlearrowkey; exit; end;
	if xcv=xdrawerview			then begin xhandlearrowkey; exit; end;
	if xcv=xcabinetview			then begin xhandlearrowkey; exit; end;
	if xcv=xblockview				then begin xhandletabkey_blockview; exit; end;
end;

function  xhandletopoint(h:xhandle; r:xrect):xpoint;
begin
	with r,result do case h of
		xtopleft:     begin x:=left; 	y:=top; end;
		xtopright:    begin x:=right; y:=top; end;
		xbottomright:	begin x:=right;	y:=bottom; end;
		xbottomleft:  begin x:=left; 	y:=bottom; end;
	end;
end;

procedure xhandleundo;
begin
	xhelpdo(true);
end;

procedure xhandleungroup;
	var cs,cm,ns,nm:xshape;
begin
	if xediting then begin xblink; exit; end;
	if xcv<>xpageview	then begin xblink; exit; end;
	if not xisdrawingpage(xcp) then begin xblink; exit; end;
	if xgetselectedshapecount(xcp.shapes)=0 then begin xblink; exit; end;
	xsavepagestate;
	xresetduplicate(xcp);
	ns:=xcp.shapes.last;
	while ns<>nil do begin cs:=ns; ns:=ns.prev;
		if (not cs.sel) or (cs.styp<>xgroupshape) then continue;
		nm:=cs.shapes.last;
		while nm<>nil do begin cm:=nm; nm:=nm.prev;
			xinsertlinkafter(xcp.shapes,cs,xremovelink(cm));
			xselectshape(cm,true);
		end;
		xdestroyshape(cs);
	end;
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhandlezoom(d:xdir);
	var r:xrect; s:xshape;
begin
	if xcv<>xpageview	then begin xblink; exit; end;
	if (d=xout) and (xca.mag=0.5) then begin xblink; exit; end;
	if (d=xin)	and (xca.mag=4.0) then begin xblink; exit; end;
	if d=xin 	then begin xzoompage(xcp,2.0); xca.mag:=xca.mag*2.0; end;
	if d=xout then begin xzoompage(xcp,0.5); xca.mag:=xca.mag*0.5; end;
	r:=xnilrect;
	if xisformpage(xcp) then s:=xgetfirstselectedshapeonstops(xcp.horzs) else s:=xgetfirstselectedshape(xcp.shapes);
	if s<>nil then r:=s.rect;
	if xediting then r:=xselectionrectangle(xcs);
	xmovepage(xcp,xtopleft);
	if xediting then xscrolltocaret(xcp) else xscrolltorectangle(xcp,r);
	xadjustpage(xcp);
	xslappage(xcp);
	xshowcaret(xcs);
	xmessage(xits(trunc(xca.mag*100))+'%');
end;

function  xheight(r:xrect):xtwit;
begin
	result:=r.bottom-r.top+10;
end;

procedure xhelpdo(undo:xboolean);

procedure xhelpdo_blockview;
begin
	if not xrestoreshapestate(xcs,undo) then begin xblink; exit; end;
	xscrolltoblockcaret(xcb);
	xslapblock(xcb);
	xshowcaret(xcs);
	xmessage(xgetblockstatus(xcb));
end;

procedure xhelpdo_editing;
begin
	if not xrestoreshapestate(xcs,undo) then begin xblink; exit; end;
	if xscrolltocaret(xcp) then xslappage(xcp) else xslapshape(xcs);
	xshowcaret(xcs);
	xmessage(xgetpagestatus(xcp));
end;

procedure xhelpdo_pageview;
begin
	if not xrestorepagestate(undo) then begin xblink; exit; end;
	xadjustpage(xcp);
	xslappage(xcp);
	xmessage(xgetpagestatus(xcp));
end;

begin
	if xediting				then begin xhelpdo_editing; exit; end;
	if xcv=xpageview	then begin xhelpdo_pageview; exit; end;
	if xcv=xblockview	then begin xhelpdo_blockview; exit; end;
	xblink;
end;

procedure xhelpfindblockmisspellings;

var cc,cr,es,ss:xinteger; w:xstring;

function  xhelpfindblockmisspellings_openlexicon:xboolean;
begin
	if xlexicon.opened then begin result:=true; exit; end;
	xmessage('Loading lexicon...');
	result:=xopenlexicon;
end;

begin
	if xsearch.styp<>xspellsearch then begin xblink; exit; end;
	with xcs^,text do try xbegintransaction;
		if not xhelpfindblockmisspellings_openlexicon then begin xerror(xcx); exit; end;
		xmessage('Checking...');
		xdestroyvalues(xlexicon.suggestions,false);
		cc:=caretpos.col;
		for cr:=caretpos.row to count do begin
			if xuseraborted then begin xerror(xcx); exit; end;
			if rows[cr]='' then begin cc:=1; continue; end;
			repeat
				w:=xgetnextword(rows[cr],cc);
				if w='' then break;
				if xskipword(w) then continue;
				if xwordisold(w) then continue;
				xgeneratesuggestions(w);
				ss:=cc-length(w); es:=ss+length(w);
				xsetselectionbycolumnandrow(xcs,ss,cr,es,cr);
				xscrolltoblockrectangle(xcb,xselectionrectangle(xcs));
				xmessage('Misspelled');
				exit;
			until xforever;
			cc:=1;
		end;
		xblink; xmessage('Finished checking');
	finally xendtransaction; end;
end;

procedure xhelpfinddeep(first:xboolean);

// look into next deep thing
// look into selected thing
// look at/into next thing
// go up a level and look into either next thing or next deep thing

procedure xhelpfinddeep_message; forward;
function  xhelpfinddeep_searchcurrentindrawer(d:xdrawer):xboolean; forward;
function  xhelpfinddeep_searchcurrentinfolder(f:xfolder):xboolean; forward;
function  xhelpfinddeep_searchdrawer(d:xdrawer):xboolean; forward;
function  xhelpfinddeep_searchfolder(f:xfolder):xboolean; forward;
function  xhelpfinddeep_searchpage(p:xpage):xboolean; forward;
function  xhelpfinddeep_searchwhenstartedincabinet(c:xcabinet):xboolean; forward;
function  xhelpfinddeep_searchwhenstartedindrawer(d:xdrawer):xboolean; forward;
function  xhelpfinddeep_searchwhenstartedinfolder(f:xfolder):xboolean; forward;

procedure xhelpfinddeep_cabinetlevel(first:xboolean);
begin
	if xsearch.start=xcabinetview then begin
		if xhelpfinddeep_searchwhenstartedincabinet(xcc) then begin xmessage('Found'); exit; end;
		if xuseraborted then begin xerror(xcx); exit; end;
		xmessage('Not found');
		exit;
	end;
	xerror('Internal error 501.');
end;

procedure xhelpfinddeep_drawerlevel(first:xboolean);
begin
	if xsearch.start=xdrawerview then begin
		if xhelpfinddeep_searchwhenstartedindrawer(xcd) then begin xmessage('Found'); exit; end;
		if xuseraborted then begin xerror(xcx); exit; end;
		xmessage('Not found');
		exit;
	end;
	if first and xhelpfinddeep_searchcurrentindrawer(xcd) then begin xmessage('Found'); exit; end;
	if not first and xhelpfinddeep_searchdrawer(xcd) then begin xmessage('Found'); exit; end;
	xhelpfinddeep_cabinetlevel(false);
end;

procedure xhelpfinddeep_folderlevel(first:xboolean);
begin
	if xsearch.start=xfolderview then begin
		if xhelpfinddeep_searchwhenstartedinfolder(xcf) then begin xmessage('Found'); exit; end;
		if xuseraborted then begin xerror(xcx); exit; end;
		xmessage('Not found');
		exit;
	end;
	if first and xhelpfinddeep_searchcurrentinfolder(xcf) then begin xmessage('Found'); exit; end;
	if not first and xhelpfinddeep_searchfolder(xcf) then begin xmessage('Found'); exit; end;
	xhelpfinddeep_drawerlevel(false);
end;

procedure xhelpfinddeep_pagelevel;
begin
	if xsearch.entirepages and xhelpfinddeep_searchpage(xcp) then begin xmessage('Found'); exit; end;
	xhelpfinddeep_folderlevel(false);
end;

procedure xhelpfinddeep_message;
begin
	if first then begin xmessage('Searching...'); exit; end;
	case xsearch.start of
		xcabinetview:	xmessage('Searching drawer '+xits(xgetdeepdrawersubscript(xcc.drawers,xgetfirstselecteddrawer(xcc.drawers)))+' of '+xits(xgetdeepdrawercount(xcc.drawers))+'...');
		xdrawerview:  xmessage('Searching folder '+xits(xgetdeepfoldersubscript(xcd.folders,xgetfirstselectedfolder(xcd.folders)))+' of '+xits(xgetdeepfoldercount(xcd.folders))+'...');
		xfolderview:  xmessage('Searching page '+xits(xgetdeeppagesubscript(xcf.pages,xgetfirstselectedpage(xcf.pages)))+' of '+xits(xgetdeeppagecount(xcf.pages))+'...');
		xpageview:    xmessage('Searching page '+xits(xgetdeeppagesubscript(xcf.pages,xgetfirstselectedpage(xcf.pages)))+' of '+xits(xgetdeeppagecount(xcf.pages))+'...');
	end;
end;

function  xhelpfinddeep_searchcurrentindrawer(d:xdrawer):xboolean;
	var f:xfolder;
begin
	result:=false; if d=nil then exit;
	f:=xgetfirstselectedfolder(d.folders);
	if f=nil then f:=d.folders.first; if f=nil then exit;
	if not xopenfolder(f) then exit;
	if xhelpfinddeep_searchfolder(f) then begin result:=true; exit; end;
	xclosefolder(f);
	result:=xhelpfinddeep_searchdrawer(d);
end;

function  xhelpfinddeep_searchcurrentinfolder(f:xfolder):xboolean;
	var p:xpage;
begin
	result:=false; if f=nil then exit;
	if not xsearch.entirepages then begin result:=xhelpfinddeep_searchfolder(f); exit; end;
	p:=xgetfirstselectedpage(f.pages);
	if p=nil then p:=f.pages.first; if p=nil then exit;
	if not xopenpage(p) then exit;
	if xhelpfinddeep_searchpage(p) then begin result:=true; exit; end;
	xclosepage(p);
	result:=xhelpfinddeep_searchfolder(f);
end;

function  xhelpfinddeep_searchdrawer(d:xdrawer):xboolean;
	var a,b:xinteger; cf,nf:xfolder;
begin
	result:=false; if d=nil then exit;
	nf:=xgetfirstselectedfolder(d.folders);
	if nf=nil then nf:=d.folders.first else nf:=nf.next;
	a:=xgetfoldersubscript(d.folders,nf)-1; b:=xgetfoldercount(d.folders);
	while nf<>nil do begin cf:=nf; nf:=nf.next;
		if xuseraborted then exit;
		if xsearch.start=xdrawerview then begin
			inc(a); xmessage('Searching folder '+xits(a)+' of '+xits(b)+'...');
		end;
		if xfolderisfound(cf,xsearch.value) then begin
			xviewdrawer(d,cf);
			result:=true;
			exit;
		end;
		if not xopenfolder(cf) then continue;
		if xhelpfinddeep_searchfolder(cf) then begin result:=true; exit; end;
		xclosefolder(cf);
	end;
end;

function  xhelpfinddeep_searchfolder(f:xfolder):xboolean;
	var a,b:xinteger; cp,np:xpage;
begin
	result:=false; if f=nil then exit;
	np:=xgetfirstselectedpage(f.pages);
	if np=nil then np:=f.pages.first else np:=np.next;
	a:=xgetpagesubscript(f.pages,np)-1; b:=xgetpagecount(f.pages);
	while np<>nil do begin cp:=np; np:=np.next;
		if xuseraborted then exit;
		if xsearch.start=xfolderview then begin
			inc(a); xmessage('Searching page '+xits(a)+' of '+xits(b)+'...');
		end;
		if xpageisfound(cp,[xbottomedge,xtopedge],xsearch.value) then begin
			xviewfolder(f,cp);
			result:=true;
			exit;
		end;
		if not xsearch.entirepages then continue;
		if not xopenpage(cp) then continue;
		if xhelpfinddeep_searchpage(cp) then begin result:=true; exit; end;
		xclosepage(cp);
	end;
end;

function  xhelpfinddeep_searchpage(p:xpage):xboolean;
	var b:xinteger; cs:xshape; ns:xstop;
begin
	result:=false; if p=nil then exit;
	ns:=xgetfirstselectedstop(p.horzs);
	if ns=nil then ns:=p.horzs.first else ns:=ns.next;
	if p.edit<>nil then ns:=xfindstopbyshape(p.horzs,p.edit);
	while ns<>nil do begin cs:=ns.shape; ns:=ns.next;
		if xuseraborted then exit;
		if not xshapeisfound(cs,xca.slice,xsearch.value,cs<>p.edit,b) then continue;
		xviewpage(p,cs,b,b+length(xsearch.value));
		result:=true;
		break;
	end;
end;

function  xhelpfinddeep_searchwhenstartedincabinet(c:xcabinet):xboolean;
	var a,b:xinteger; cd,nd:xdrawer;
begin
	result:=false; if c=nil then exit;
	nd:=xgetfirstselecteddrawer(c.drawers);
	if (nd=nil) or (first) then nd:=xgetfirstdeepdrawer(c.drawers) else nd:=xgetnextdeepdrawer(nd);
	a:=xgetdeepdrawersubscript(c.drawers,nd)-1; b:=xgetdeepdrawercount(c.drawers);
	while nd<>nil do begin cd:=nd; nd:=xgetnextdeepdrawer(nd);
		if xuseraborted then exit;
		if xsearch.start=xcabinetview then begin
			inc(a); xmessage('Searching drawer '+xits(a)+' of '+xits(b)+'...');
		end;
		if not xopendrawer(cd) then continue;
		if xhelpfinddeep_searchdrawer(cd) then begin result:=true; exit; end;
		xclosedrawer(cd);
	end;
end;

function  xhelpfinddeep_searchwhenstartedindrawer(d:xdrawer):xboolean;
	var a,b:xinteger; cf,nf:xfolder;
begin
	result:=false; if d=nil then exit;
	nf:=xgetfirstselectedfolder(d.folders);
	if (nf=nil) or (first) then nf:=xgetfirstdeepfolder(d.folders) else nf:=xgetnextdeepfolder(nf);
	a:=xgetdeepfoldersubscript(d.folders,nf)-1; b:=xgetdeepfoldercount(d.folders);
	while nf<>nil do begin cf:=nf; nf:=xgetnextdeepfolder(nf);
		if xuseraborted then exit;
		if xsearch.start=xdrawerview then begin
			inc(a); xmessage('Searching folder '+xits(a)+' of '+xits(b)+'...');
		end;
		if not xopenfolder(cf) then continue;
		if xhelpfinddeep_searchfolder(cf) then begin result:=true; exit; end;
		xclosefolder(cf);
	end;
end;

function  xhelpfinddeep_searchwhenstartedinfolder(f:xfolder):xboolean;
	var a,b:xinteger; cp,np:xpage;
begin
	result:=false; if f=nil then exit;
	np:=xgetfirstselectedpage(f.pages);
	if (np=nil) or (first) then np:=xgetfirstdeeppage(f.pages) else np:=xgetnextdeeppage(np);
	a:=xgetdeeppagesubscript(f.pages,np)-1; b:=xgetdeeppagecount(f.pages);
	while np<>nil do begin cp:=np; np:=xgetnextdeeppage(np);
		if xuseraborted then exit;
		if xsearch.start=xfolderview then begin
			inc(a); xmessage('Searching page '+xits(a)+' of '+xits(b)+'...');
		end;
		if not xsearch.entirepages then continue;
		if not xopenpage(cp) then continue;
		if xhelpfinddeep_searchpage(cp) then begin result:=true; exit; end;
		xclosepage(cp);
	end;
end;

begin
	if xsearch.styp<>xdeepsearch then begin xblink; exit; end;
	if xsearch.start>xcv then begin xblink; exit; end;
	try xbegintransaction;
		xhelpfinddeep_message;
		xsaveedit(xcs);
		if xcv=xpageview 		then begin xhelpfinddeep_pagelevel; exit; end;
		if xcv=xfolderview 	then begin xhelpfinddeep_folderlevel(true); exit; end;
		if xcv=xdrawerview 	then begin xhelpfinddeep_drawerlevel(true); exit; end;
		if xcv=xcabinetview	then begin xhelpfinddeep_cabinetlevel(true); exit; end;
		xblink;
	finally xendtransaction; end;
end;

procedure xhelpfinddrawer(first:xboolean);
	var cd:xdrawer;
begin
	if xsearch.styp<>xwordsearch then begin xblink; exit; end;
	try xbegintransaction;
		xmessage('Searching...');
		cd:=xgetfirstselecteddrawer(xcc.drawers);
		if (cd=nil) or (first) then cd:=xcc.drawers.first else cd:=cd.next;
		while cd<>nil do begin
			if xuseraborted then begin xerror(xcx); exit; end;
			if xdrawerisfound(cd,xsearch.value) then break;
			cd:=cd.next;
		end;
		if cd=nil then begin xblink; xmessage('Not found'); exit; end;
		xselectdrawers(xcc.drawers,false);
		cd.sel:=true;
		xscrolltodrawer(cd);
		xmessage('Found');
	finally xendtransaction; end;
end;

procedure xhelpfindfolder(first:xboolean);
	var cf:xfolder;
begin
	if xsearch.styp<>xwordsearch then begin xblink; exit; end;
	try xbegintransaction;
		xmessage('Searching...');
		cf:=xgetfirstselectedfolder(xcd.folders);
		if (cf=nil) or (first) then cf:=xcd.folders.first else cf:=cf.next;
		while cf<>nil do begin
			if xuseraborted then begin xerror(xcx); exit; end;
			if xfolderisfound(cf,xsearch.value) then break;
			cf:=cf.next;
		end;
		if cf=nil then begin xblink; xmessage('Not found'); exit; end;
		xselectfolders(xcd.folders,false);
		cf.sel:=true;
		xscrolltofolder(cf);
		xmessage('Found');
	finally xendtransaction; end;
end;

procedure xhelpfindmisspellings(first:xboolean);

var	b:xinteger; cp,np:xpage;

function  xhandlefindmisspellings_found(p:xpage):xboolean;
	var c:xinteger; cs:xshape; ns:xstop; s,w:xstring;
begin
	result:=false;
	ns:=xgetfirstselectedstop(p.horzs);
	if (ns=nil) or (first) then ns:=p.horzs.first else ns:=ns.next;
	if (p=xcp) and (xediting) then ns:=xfindstopbyshape(p.horzs,xcs);
	while ns<>nil do begin cs:=ns.shape; ns:=ns.next;
		if (cs=xcs) and (not first) then c:=xptac(xcs.text,xcs.text.caretpos) else c:=1;
		s:=xgetslice(cs,xca.slice);
		repeat
			w:=xgetnextword(s,c);
			if w='' then break;
			if xskipword(w) then continue;
			if xwordisold(w) then continue;
			result:=true;
			xviewpage(p,cs,c-length(w),c);
			xgeneratesuggestions(w);
			exit;
		until xforever;
	end;
end;

function  xhelpfindmisspellings_openlexicon:xboolean;
begin
	if xlexicon.opened then begin result:=true; exit; end;
	xmessage('Loading lexicon...');
	result:=xopenlexicon;
end;

begin
	if xsearch.styp<>xspellsearch then begin xblink; exit; end;
	try xbegintransaction;
		if not xhelpfindmisspellings_openlexicon then begin xerror(xcx); exit; end;
		xmessage('Checking...');
		xdestroyvalues(xlexicon.suggestions,false);
		if first then xsearch.page:=xcp;
		xsaveedit(xcs);
		if xhandlefindmisspellings_found(xcp) then begin xmessage('Misspelled'); exit; end;
		if (xcp=xsearch.page) and (xcp<>xcf.pages.last) then xblink;
		if (xcp=xsearch.page) and (xcp<>xcf.pages.last) and (not xyes('Finished checking this page. Check following pages?','yes',true)) then exit;
		xsearch.page:=nil;
		if not xsavepage(xcp) then begin xerror(xcx); exit; end;
		np:=xcp.next; b:=xgetpagecount(xcf.pages);
		while np<>nil do begin cp:=np; np:=np.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			xmessage('Checking page '+xits(xgetpagesubscript(xcf.pages,cp))+' of '+xits(b)+'...');
			if not xopenpage(cp) then continue;
			if xhandlefindmisspellings_found(cp) then begin xmessage('Misspelled'); exit; end;
			xclosepage(cp);
		end;
		xblink; xmessage('Finished checking');
	finally xendtransaction; end;
end;

procedure xhelpfindpage(first:xboolean);
	var cp:xpage;
begin
	if xsearch.styp<>xwordsearch then begin xblink; exit; end;
	try xbegintransaction;
		xmessage('Searching...');
		cp:=xgetfirstselectedpage(xcf.pages);
		if (cp=nil) or (first) then cp:=xcf.pages.first else cp:=cp.next;
		while cp<>nil do begin
			if xuseraborted then begin xerror(xcx); exit; end;
			if xpageisfound(cp,[xca.edge],xsearch.value) then break;
			cp:=cp.next;
		end;
		if cp=nil then begin xblink; xmessage('Not found'); exit; end;
		xselectpages(xcf.pages,false);
		cp.sel:=true;
		xscrolltopage(cp);
		xmessage('Found');
	finally xendtransaction; end;
end;

procedure xhelpfindshape(first:xboolean);

var b:xinteger; cp,np:xpage;

function  xhelpfindshape_found(p:xpage):xboolean;
	var b:xinteger; cs:xshape; ns:xstop;
begin
	result:=false;
	ns:=xgetfirstselectedstop(p.horzs);
	if (ns=nil) or (first) then ns:=p.horzs.first else ns:=ns.next;
	if (p=xcp) and (xediting) then ns:=xfindstopbyshape(p.horzs,xcs);
	while ns<>nil do begin cs:=ns.shape; ns:=ns.next;
		if not xshapeisfound(cs,xca.slice,xsearch.value,(cs<>xcs) or (first),b) then continue;
		result:=true;
		xviewpage(p,cs,b,b+length(xsearch.value));
		break;
	end;
end;

begin
	if xsearch.styp<>xwordsearch then begin xblink; exit; end;
	try xbegintransaction;
		xmessage('Searching...');
		if first then xsearch.page:=xcp;
		xsaveedit(xcs);
		if xhelpfindshape_found(xcp) then begin xmessage('Found'); exit; end;
		if (xcp=xsearch.page) and (xcp<>xcf.pages.last) then xblink;
		if (xcp=xsearch.page) and (xcp<>xcf.pages.last) and (not xyes('Finished searching this page. Search following pages?','yes',true)) then exit;
		xsearch.page:=nil;
		if not xsavepage(xcp) then begin xerror(xcx); exit; end;
		np:=xcp.next; b:=xgetpagecount(xcf.pages);
		while np<>nil do begin cp:=np; np:=np.next;
			if xuseraborted then begin xerror(xcx); exit; end;
			xmessage('Searching page '+xits(xgetpagesubscript(xcf.pages,cp))+' of '+xits(b)+'...');
			if not xopenpage(cp) then continue;
			if xhelpfindshape_found(cp) then begin xmessage('Found'); exit; end;
			xclosepage(cp);
		end;
		xblink; xmessage('Not found');
	finally xendtransaction; end;
end;

procedure xhelpfindtext;
	var cc,cr,es,p,ss:xinteger; cs:xstring; v:xstring;
begin
	if xsearch.styp<>xwordsearch then begin xblink; exit; end;
	with xcs^,text do try xbegintransaction;
		xmessage('Searching...');
		v:=xv(xsearch.value);
		cc:=caretpos.col; p:=0;
		for cr:=caretpos.row to count do begin
			if xuseraborted then begin xerror(xcx); exit; end;
			if rows[cr]='' then begin cc:=1; continue; end;
			cs:=xv(copy(rows[cr],cc,length(rows[cr])-cc));
			p:=pos(v,cs); if p<>0 then break;
			cc:=1;
		end;
		if p=0 then begin xblink; xmessage('Not found'); exit; end;
		ss:=cc+p-1; es:=ss+length(xsearch.value);
		xsetselectionbycolumnandrow(xcs,ss,cr,es,cr);
		xscrolltoblockrectangle(xcb,xselectionrectangle(xcs));
		xmessage('Found');
	finally xendtransaction; end;
end;

function  xhelpnewshapepicture(var p:xpicture):xboolean;

var a,d:xstring; s:xdoodad;

procedure xhelpnewshapepicture_blank;
begin
	xslapbar;
	p:=xcopypicture(xblankpicture);
	result:=true;
end;

procedure xhelpnewshapepicture_file;
begin
	try xbegintransaction;
		xslapbar;
		xmessage('Reading picture...');
		if not xreadpicture(a,p) then begin xerror(xcx); exit; end;
		result:=true;
	finally xendtransaction; end;
end;

procedure xhelpnewshapepicture_scanner;
	var a,cd:xstring; n:xnumber;
begin
	with xscanning,rect do begin
		if color then cd:='yes' else cd:='no';
		if not xdialog('Left?',xnts(xtti(left)),true,false,false,a) then exit; if (xstncwe(a,n)) then begin xerror('Invalid left.'); exit; end;
		left:=xlimit(xitt(n),0,6120);
		if not xdialog('Right?',xnts(xtti(right)),true,false,false,a) then exit; if (xstncwe(a,n)) then begin xerror('Invalid right.'); exit; end;
		right:=xlimit(xitt(n),0,6120);
		if not xdialog('Top?',xnts(xtti(top)),true,false,false,a) then exit; if (xstncwe(a,n)) then begin xerror('Invalid top.'); exit; end;
		top:=xlimit(xitt(n),0,7920);
		if not xdialog('Bottom?',xnts(xtti(bottom)),true,false,true,a) then exit; if (xstncwe(a,n)) then begin xerror('Invalid bottom.'); exit; end;
		bottom:=xlimit(xitt(n),0,7920);
		rect:=xsnaprectangle(xnr(rect),xpicturesnap);
		try xbegintransaction;
			// messages generated by scanpicture
			if not xscanpicture(s,p) then begin xerror(xcx); exit; end;
			result:=true;
		finally xendtransaction; end;
	end;
end;

begin
	result:=false;
	if not xsavepage(xcp) then begin xerror(xcx); exit; end;
	s:=xfinddoodad(xdefaultdoodad,xgetcomputername);
	if s<>nil then s:=xfinddoodad(xscannerdoodad,s.scanner);
	if s<>nil then d:=s.name else d:=xdefaultscannername;
	if not xdialog('Source?',d,true,false,false,a) then exit;
	if xv(a)='blank' then begin xhelpnewshapepicture_blank; exit; end;
	s:=xfinddoodad(xscannerdoodad,a);
	if (s=nil) and (not xfileexists(a)) then begin xerror(''''+a+''' is not a valid source.'); exit; end;
	if s<>nil then xhelpnewshapepicture_scanner else xhelpnewshapepicture_file;
end;

procedure xhelpopenareaview;

var a:xstring; f:xboolean;

procedure xhelpopenareaview_cabinet;
	var c:xcabinet;
begin
	try xbegintransaction;
		xmessage('Opening...');
		c:=xopencabinet(a); if c=nil then begin xerror(xcx); exit; end;
		xsortchain(c.drawers,xdefaultsort,'',true);
		xviewcabinet(c,nil);
		xopenprograms;
		xmessage(xgetcabinetstatus(xcc));
	finally xendtransaction; end;
end;

procedure xhelpopenareaview_file;
	var b:xblock;
begin
	try xbegintransaction;
		xmessage('Opening...');
		b:=xopenblock(a); if b=nil then begin xerror(xcx); exit; end;
		xviewblock(b);
		xmessage(xgetblockstatus(xcb));
	finally xendtransaction; end;
end;

begin
	if not xdialog('Open what?','',true,false,false,a) then exit;
	f:=xfileexists(a);
	if (xfinddoodad(xcabinetdoodad,a)=nil) and (not xdirectoryexists(a)) and (not f) then begin xerror(''''+a+''' is not a valid source.'); exit; end;
	if f then xhelpopenareaview_file else xhelpopenareaview_cabinet;
end;

procedure xhelpprintblock(p:xdoodad; copies:xinteger; auto,selection:xboolean);

type
	sheet=^sheetrec; sheets=^sheetsrec; sheetsrec=xchainrec;
	sheetrec=record rtyp:xrecordtyp; parent:xpointer; chain:sheets; prev,next:sheet;
		number,startrow,endrow:xinteger;
	end;
	
const leftfont:xfont=(face:xcourierface; size:120; style:xplainstyle; align:xleftalign);
const rightfont:xfont=(face:xcourierface; size:120; style:xplainstyle; align:xrightalign);
var a,b,c,cc:xinteger; cs,ns:sheet; tstats:xtextstats; schain:sheets;

procedure xhelpprintblock_createsheets;
	const rpp=55; var cr,sc:xinteger; er,sr:xinteger; ns:sheet;
begin
	with xcs^,text,tstats do begin
		schain:=xcreatechain(nil);
		sr:=1; er:=count; if selection then begin sr:=fsr; er:=lsr; end;
		cr:=sr; sc:=0;
		repeat
			if cr>er then break;
			new(ns); fillchar(ns^,sizeof(ns^),x00);
			inc(sc); ns.number:=sc; ns.startrow:=cr; ns.endrow:=xmin(cr+rpp-1,er);
			xappendlink(schain,ns);
			inc(cr,rpp);
		until xforever;
	end;
end;

procedure xhelpprintblock_destroysheets;
	var cs,ns:sheet;
begin
	ns:=schain.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next; dispose(cs); end;
	xdestroychain(schain);
end;

procedure xhelpprintblock_drawsheet(s:sheet);
	var cr,ec,len,sc:xinteger; o:xpoint; rstats:xrowstats; tm:ttextmetric; tr:xrect;
begin
	with xcs^,text do begin
		tr:=xmr(0,0,6120,7920);
		xbeginprinterpage(tr,auto);
		tr:=xsr(tr,+360,+420,-360,-420);
		xsetcliprectangle(xprinter,tr);
		xeasytext(xprinter,xmr(tr.left,tr.top,tr.right,tr.top+leftfont.size),leftfont,xblackcolor,xcb.name);
		xeasytext(xprinter,xmr(tr.left,tr.top,tr.right,tr.top+rightfont.size),rightfont,xblackcolor,'Page '+xits(s.number));
		xsetfont(xprinter,leftfont,1.0);
		xsetfont(xmemory,leftfont,1.0); gettextmetrics(xdcs[xmemory],tm);
		o:=xmp(tr.left,tr.top+leftfont.size+240);
		for cr:=s.startrow to s.endrow do with rstats do begin
			rstats:=xgetrowstatistics(text,cr);
			sc:=1; ec:=length(rows[cr]); if selection then begin sc:=fsc; ec:=lsc; end;
			if ec=length(rows[cr]) then dec(ec);
			len:=xmin(ec-sc+1,xwidth(tr) div (tm.tmavecharwidth*xfac));
			len:=xmin(len,length(rows[cr])-sc+1);
			if len>0 then tabbedtextout(xdcs[xprinter],o.x div xfac,o.y div xfac,@rows[cr][sc],len,1,tm.tmavecharwidth,o.x div xfac);
			inc(o.y,leftfont.size);
		end;
		xendprinterpage;
	end;
end;

begin
	if p=nil then exit;
	with xcs^,text do try xbegintransaction;
		tstats:=xgettextstatistics(text,xnilpoint,xnilrect);
		xhelpprintblock_createsheets; if schain.first=nil then exit;
		b:=sheet(schain.last).number; c:=0;
		xmessage('Printing...');
		xbeginprinting(p);
		for cc:=1 to copies do begin a:=0;
			if p.reverse then ns:=schain.last else ns:=schain.first;
			while ns<>nil do begin cs:=ns; if p.reverse then ns:=ns.prev else ns:=ns.next;
				if xuseraborted then begin xcancelprinting; xerror(xcx); exit; end;
				inc(a); xmessage('Printing copy '+xits(cc)+' page '+xits(a)+' of '+xits(b)+'...');
				if xprinting.canceled then begin xerror('Printing canceled.'); exit; end;
				if xprinting.error then begin xerror('Printing canceled due to error.'); exit; end;
				xhelpprintblock_drawsheet(cs);
				inc(c);
			end;
		end;
		xmessage(xmcm(c,'page printed','pages printed'));
	finally xendprinting; xhelpprintblock_destroysheets; xendtransaction; end;
end;

procedure xhelpprintedges(p:xdoodad; copies:xinteger; auto:xboolean; title:xstring);

type
	line=^linerec; lines=^linesrec; linesrec=xchainrec;
	sheet=^sheetrec; sheets=^sheetsrec; sheetsrec=xchainrec;

	linerec=record rtyp:xrecordtyp; parent:sheet; chain:lines; prev,next:line;
		page:xpage;
	end;

	sheetrec=record rtyp:xrecordtyp; parent:xpointer; chain:sheets; prev,next:sheet;
		number:xinteger;
		lines:lines;
	end;

const sheetrect:xrect=(left:0; top:0; right:6120; bottom:7920);
var a,b,c,cc:xinteger; cs,ns:sheet; schain:sheets;

procedure xhelpprintedges_createsheets;
	const epp=32; var nc,sc:xinteger; cp,np:xpage; n:line; s:sheet;
begin
	schain:=xcreatechain(nil);
	np:=xcf.pages.first; nc:=epp; sc:=0;
	while np<>nil do begin cp:=np; np:=np.next;
		if not cp.sel then continue;
		inc(nc);
		if nc>epp then begin
			new(s); fillchar(s^,sizeof(s^),x00);
			inc(sc); s.number:=sc; s.lines:=xcreatechain(s);
			xappendlink(schain,s);
			nc:=1;
		end;
		new(n); fillchar(n^,sizeof(n^),x00); n.page:=cp;
		xappendlink(sheet(schain.last).lines,n);
	end;
end;

procedure xhelpprintedges_destroysheets;
	var cs,ns:sheet; cn,nn:line;
begin
	ns:=schain.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		nn:=cs.lines.first;
		while nn<>nil do begin cn:=nn; nn:=nn.next;
			dispose(cn);
		end;
		xdestroychain(cs.lines); dispose(cs);
	end;
	xdestroychain(schain);
end;

procedure xhelpprintedges_drawsheet(s:sheet);
	const font:xfont=(face:xcourierface; size:180; style:xplainstyle; align:xcenteralign);
	var cn:line; o:xpoint;
begin
	xbeginprinterpage(sheetrect,auto);
	xsetcliprectangle(xprinter,sheetrect);
	xeasytext(xprinter,xmr(0,540,sheetrect.right,720),font,xblackcolor,title);
	cn:=s.lines.first; o:=xmp(0,1080);
	while cn<>nil do begin
		xdrawfields(xprinter,o,cn.page.fields);
		inc(o.y,180);
		cn:=cn.next;
	end;
	xeasytext(xprinter,xmr(0,sheetrect.bottom-720,sheetrect.right,sheetrect.bottom-540),font,xblackcolor,xits(s.number));
	xendprinterpage;
end;

begin
	if p=nil then exit;
	try xbegintransaction; xhelpprintedges_createsheets; if schain.first=nil then exit;
		b:=sheet(schain.last).number; c:=0;
		xmessage('Printing...');
		xbeginprinting(p);
		for cc:=1 to copies do begin a:=0;
			if p.reverse then ns:=schain.last else ns:=schain.first;
			while ns<>nil do begin cs:=ns; if p.reverse then ns:=ns.prev else ns:=ns.next;
				if xuseraborted then begin xcancelprinting; xerror(xcx); exit; end;
				inc(a); xmessage('Printing copy '+xits(cc)+' page '+xits(a)+' of '+xits(b)+'...');
				if xprinting.canceled then begin xerror('Printing canceled.'); exit; end;
				if xprinting.error then begin xerror('Printing canceled due to error.'); exit; end;
				xhelpprintedges_drawsheet(cs);
				inc(c);
			end;
		end;
		xmessage(xmcm(c,'page printed','pages printed'));
	finally xendprinting; xhelpprintedges_destroysheets; xendtransaction; end;
end;

procedure xhelpprintpage(p:xdoodad; copies:xinteger; auto:xboolean);
	var cc:xinteger;
begin
	if p=nil then exit;
	try xbegintransaction;
		xmessage('Printing...');
		xbeginprinting(p);
		for cc:=1 to copies do begin
			if xuseraborted then begin xcancelprinting; xerror(xcx); exit; end;
			xmessage('Printing copy '+xits(cc)+' page 1 of 1...');
			if not xprintpage(xcp,auto) then begin xerror(xcx); exit; end;
		end;
		xmessage(xmcm(copies,'page printed','pages printed'));
	finally xendprinting; xendtransaction; end;
end;

procedure xhelpprintpages(p:xdoodad; copies:xinteger; auto,collate:xboolean);
	var cp,np:xpage; a,b,c,cc,i,ic,o,oc:xinteger;
begin
	if p=nil then exit;
	try xbegintransaction; b:=xgetselectedpagecount(xcf.pages); c:=0;
		xmessage('Printing...');
		xbeginprinting(p);
		o:=copies; i:=1; if not collate then begin o:=1; i:=copies; end;
		for oc:=1 to o do begin a:=0;
			if p.reverse then np:=xcf.pages.last else np:=xcf.pages.first;
			while np<>nil do begin cp:=np; if p.reverse then np:=np.prev else np:=np.next;
				if not cp.sel then continue;
				inc(a);
				for ic:=1 to i do begin
					if xuseraborted then begin xcancelprinting; xerror(xcx); exit; end;
					if collate then cc:=oc else cc:=ic;
					xmessage('Printing copy '+xits(cc)+' page '+xits(a)+' of '+xits(b)+'...');
					if not xopenpage(cp) then xmorphpage(cp) else xslicepage(cp,xca.slice);
					if not xprintpage(cp,auto) then begin xclosepage(cp); xerror(xcx); exit; end;
					xclosepage(cp);
					inc(c);
				end;
			end;
		end;
		xmessage(xmcm(c,'page printed','pages printed'));
	finally xendprinting; xendtransaction; end;
end;

procedure xhidecaret;
begin
	if xcarets.state then xdrawcaret;
	xcarets.current.hidden:=true;
end;

procedure xhidecursor;
begin
	while showcursor(false)>=0 do;
	xcursors.current:=xnocursor;
end;

procedure xhideedges(p:xpage; edges:xboolean);
	var cs:xshape;
begin
	if p=nil then exit;
	p.edges:=edges;
	cs:=p.shapes.first;
	while cs<>nil do begin
		if xgetedge(cs)<>xnoedge then xhideshape(cs,not edges);
		cs:=cs.next;
	end;
end;

procedure xhidegrid(p:xpage; grid:xboolean);
begin
	if p=nil then exit;
	p.grid:=grid;
end;

procedure xhideshape(s:xshape; hidden:xboolean);
begin
	if s=nil then exit;
	s.hidden:=hidden; if hidden then s.sel:=false; // don't call selectshape, too many loops
	if s.styp<>xgroupshape then exit;
	xhideshapes(s.shapes,hidden);
end;

procedure xhideshapes(s:xshapes; hidden:xboolean);
	var cs:xshape;
begin
	if s=nil then exit;
	cs:=s.first; while cs<>nil do begin xhideshape(cs,hidden); cs:=cs.next; end;
end;

{i}

function  xidts(id:xinteger):xstring;
begin
	result:=xfillleft(xits(id),'0',10);
end;

function  xinarea:xboolean;
begin
	result:=false; if xca=nil then exit;
	if xcv<>xareaview then exit;
	if not xpir(xca.body,xce.gp) then exit;
	result:=true;
end;

function  xinblock:xboolean;
begin
	result:=false; if xcb=nil then exit;
	if xcv<>xblockview then exit;
	xce.lp:=xlp(xce.gp,xcb.origin);
	if not xpir(xlr(xcb.clip,xcb.origin),xce.lp) then exit;
	result:=true;
end;

function  xincabinet:xboolean;
begin
	result:=false; if xcc=nil then exit;
	if xcv<>xcabinetview then exit;
	xce.lp:=xlp(xce.gp,xcc.origin);
	xce.drawer:=xfinddrawerbypoint(xcc.drawers,xce.lp);
	if not xpir(xgvcr(xcc),xce.gp) then exit;
	result:=true;
end;

function  xindentellipse(e:xellipse; i:xinteger):xellipse;
begin
	result:=e;
	result.rect:=xir(e.rect,i);
end;

procedure xindentcode(s:xshape);

const endertok=[xelsetok,xendtok,xuntiltok];
const startertok=[xdotok,xelsetok,xlooptok,xrepeattok];
var cr,ic,p:xinteger; docaret,first:xboolean; selection:xboolean; tok:xtoken;

procedure xindentcode_insertspaces;
begin
	with s^,text do begin
		if ic<0 then exit;
		insert(stringofchar(xsp,ic*2),rows[cr],1);
		inc(p,ic*2);
		if blocksel or not docaret then exit;
		if (selection) and (cr=caretpos.row) and (caretpos.col<>1) then inc(caretpos.col,ic*2);
		if (selection) and (cr=anchor.row) and (anchor.col<>1) then inc(anchor.col,ic*2);
		if (not selection) and (cr=caretpos.row) then inc(caretpos.col,ic*2);
		if (not selection) and (cr=anchor.row) then inc(anchor.col,ic*2);
	end;
end;

procedure xindentcode_removespaces;
begin
	with s^,text do begin
		while rows[cr][1]=xsp do begin
			delete(rows[cr],1,1);
			if blocksel then continue;
			if (selection) and (cr=caretpos.row) and (caretpos.col<>1) then dec(caretpos.col,1);
			if (selection) and (cr=anchor.row) and (anchor.col<>1) then dec(anchor.col,1);
			if (not selection) and (cr=caretpos.row) then dec(caretpos.col,1);
			if (not selection) and (cr=anchor.row) then dec(anchor.col,1);
		end;
	end;
end;

begin
	if s=nil then exit;
	if not xiscode(s) then exit;
	with s^,text,tok do begin
		selection:=xisselection(s); ic:=0;
		for cr:=1 to count do begin
			docaret:=(rows[cr][1]=xsp) or (caretpos.col=1);
			xindentcode_removespaces;
			p:=1; first:=true;
			repeat
				finalize(tok); tok:=xgetnextlanguagetoken(rows[cr],p,true);
				if ttyp in endertok then dec(ic);
				if first then begin xindentcode_insertspaces; first:=false; end;
				if ttyp in startertok then inc(ic);
				if ttyp=xnotok then break;
			until xforever;
		end;
		xsetslice(s,s.slice,xgetvalue(text));
		xadjustcaret(s); caretwas:=caretpos;
	end;
end;

procedure xindexpage(p:xpage);

var cf:xinteger;

procedure xindexpage_shapes(s:xshapes);
	var cs,ns:xshape; e:xedge;
begin
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if cs.styp=xgroupshape then xindexpage_shapes(cs.shapes);
		if cs.styp<>xtextshape then continue;
		e:=xgetedge(cs); if e=xnoedge then continue;
		if cf=high(p.fields) then break else inc(cf);
		with p.fields[cf] do begin
			rect:=xzoomrectangle(cs.rect,1/p.mag);
			if e=xtopedge then rect.bottom:=rect.top+180 else rect.top:=rect.bottom-180;
			edge:=e;
			dtyp:=cs.dtyp;
			align:=cs.text.font.align;
			name:=xgetslice(cs,xnslice);
			value:=xgetslice(cs,xvslice);
		end;
	end;
end;

begin
	if p=nil then exit;
	if not p.shapes.opened then exit;
	xsaveedit(p.edit);
	fillchar(p.fields,sizeof(p.fields),x00);
	cf:=0; xindexpage_shapes(p.shapes);
end;

function  xindrawer:xboolean;
begin
	result:=false; if xcd=nil then exit;
	if xcv<>xdrawerview then exit;
	xce.lp:=xlp(xce.gp,xcd.origin);
	xce.folder:=xfindfolderbypoint(xcd.folders,xce.lp);
	if not xpir(xgvdr(xcd),xce.gp) then exit;
	result:=true;
end;

function  xinfolder:xboolean;
begin
	result:=false; if xcf=nil then exit;
	if xcv<>xfolderview then exit;
	xce.lp:=xlp(xce.gp,xcf.origin);
	xce.page:=xfindpagebypoint(xcf.pages,xce.lp);
	if not xpir(xgvfr(xcf),xce.gp) then exit;
	result:=true;
end;

function  xinhandle:xboolean;
	var cs,ns:xshape;
begin
	result:=false; if xcp=nil then exit;
	if xcv<>xpageview then exit;
	if not xpir(xgvpr(xcp),xce.gp) then exit;
	xce.lp:=xlp(xce.gp,xcp.origin);
	ns:=xcp.shapes.last;
	while ns<>nil do begin cs:=ns; ns:=ns.prev;
		if not cs.sel then continue;
		if not xpointinhandle(cs,xce.lp,xce.handle) then continue;
		xce.shape:=cs;
		result:=true;
		exit;
	end;
end;

procedure xinitializeareas;
begin
	xareas:=xcreatechain(nil);
	xareas.opened:=true;
	xappendlink(xareas,xcreatearea);
	xappendlink(xareas,xcreatearea);
	xappendlink(xareas,xcreatearea);
	xca:=xareas.first;
	xadjustareas;
end;

procedure xinitializebrushes;
	var m:xmixture; p:xpigment;
begin
	for p:=low(xpigment) to high(xpigment) do begin
		for m:=low(xmixture) to high(xmixture) do begin
			if p=xclear then begin xbrushes[p,m]:=getstockobject(null_brush); continue; end;
			xbrushes[p,m]:=createsolidbrush(xcolors[p,m]);
		end;
	end;
end;

procedure xinitializebuffers;
begin
	with xbuffer do begin size:=32000; getmem(bytes,size); end;
	with xindex do 	begin size:=32000; getmem(entries,size); end;
end;

procedure xinitializecarets;
begin
	xcarets.current.hidden:=true;
end;

procedure xinitializeclipboards;
begin
	xclip.drawers:=xcreatechain(nil);
	xclip.folders:=xcreatechain(nil);
	xclip.pages:=xcreatechain(nil);
	xclip.shapes:=xcreatechain(nil);
	xclip.values:=xcreatechain(nil);
end;

procedure xinitializecolors;
begin
	xcolors[xclear,xlight]:=    palettergb(255,255,255);
	xcolors[xclear,xnormal]:=   palettergb(255,255,255);
	xcolors[xclear,xdark]:=     palettergb(255,255,255);
	xcolors[xwhite,xlight]:=    palettergb(255,255,255);
	xcolors[xwhite,xnormal]:=   palettergb(255,255,255);
	xcolors[xwhite,xdark]:=    	palettergb(255,255,255);
	xcolors[xgray,xlight]:=palettergb(240,240,240);
	if getasynckeystate(vk_shift)<0 then xcolors[xgray,xlight]:=palettergb(234,234,234);
	xcolors[xgray,xnormal]:=    palettergb(192,192,192);
	xcolors[xgray,xdark]:=    	palettergb(096,096,096);
	xcolors[xblack,xlight]:=    palettergb(000,000,000);
	xcolors[xblack,xnormal]:=   palettergb(000,000,000);
	xcolors[xblack,xdark]:=     palettergb(000,000,000);
	xcolors[xred,xlight]:=     	palettergb(255,192,192);
	xcolors[xred,xnormal]:=     palettergb(255,000,000);
	xcolors[xred,xdark]:=     	palettergb(204,000,000);
	xcolors[xorange,xlight]:=  	palettergb(255,192,128);
	xcolors[xorange,xnormal]:=	palettergb(255,128,000);
	xcolors[xorange,xdark]:=  	palettergb(153,102,051);
	xcolors[xyellow,xlight]:=  	palettergb(255,255,204);
	xcolors[xyellow,xnormal]:=  palettergb(255,255,000);
	xcolors[xyellow,xdark]:=  	palettergb(224,192,000);
	xcolors[xgreen,xlight]:=   	palettergb(160,255,160);
	xcolors[xgreen,xnormal]:=   palettergb(000,192,000);
	xcolors[xgreen,xdark]:=   	palettergb(000,128,000);
	xcolors[xblue,xlight]:=    	palettergb(192,224,255);
	xcolors[xblue,xnormal]:=    palettergb(000,000,255);
	xcolors[xblue,xdark]:=    	palettergb(000,000,160);
	xcolors[xpurple,xlight]:=  	palettergb(255,128,255);
	xcolors[xpurple,xnormal]:=  palettergb(192,000,192);
	xcolors[xpurple,xdark]:=		palettergb(128,000,128);
end;

procedure xinitializecommandline;
	var cp:xinteger;
begin
	with xcmdline do begin
		count:=xmin(paramcount,high(commands))+1;
		for cp:=0 to count do commands[cp+1]:=paramstr(cp);
	end;
end;

procedure xinitializeconfiguration;
begin
	initialize(xconfig);
	xconfig.cid:=extractfiledrive(xcmdline.commands[1])+'\';
	xconfig.doodads:=xcreatechain(nil);
end;

procedure xinitializecursors;
begin
	xcursors.shapes[xarrowcursor]:=loadcursor(0,idc_arrow);
	xcursors.shapes[xhandcursor]:=loadcursor(system.maininstance,'XHAND');
	xcursors.shapes[xibeamcursor]:=loadcursor(0,idc_ibeam);
end;

procedure xinitializedevicecontexts;
	var cd:xdevice; h,w:integer;
begin
	w:=getsystemmetrics(sm_cxscreen); h:=getsystemmetrics(sm_cyscreen);
	xscreen.rect:=xmr(0,0,w*xtpp-10,h*xtpp-10);
	xdcs[xdisplay]:=getdc(xwindow);
	xdcs[xmemory]:=createcompatibledc(xdcs[xdisplay]);
	xoldbitmaps[xmemory]:=selectobject(xdcs[xmemory],createcompatiblebitmap(xdcs[xdisplay],w,h));
	xdcs[xscratch]:=createcompatibledc(xdcs[xdisplay]);
	xoldbitmaps[xscratch]:=selectobject(xdcs[xscratch],createcompatiblebitmap(xdcs[xdisplay],w,h));
	xdcs[xprinter]:=0;
	for cd:=low(xdevice) to high(xdevice) do begin
		setmapmode(xdcs[cd],mm_anisotropic);
		setwindowextex(xdcs[cd],xwtpi,xwtpi,nil);
		setviewportextex(xdcs[cd],xppi,xppi,nil);
		setbkmode(xdcs[cd],transparent);
		xbump[cd].x:=round(xtpi/xppi);
		xbump[cd].y:=round(xtpi/xppi);
	end;
end;

procedure xinitializefocus;
begin
	xfocus.active:=false;
	xfocus.border:=createpen(ps_dot,1,xcolors[xblack,xnormal]);
	xfocus.fill:=getstockobject(null_brush);
end;

function  xinitializefont(f:xfont):hfont;
	const n:array[xface] of xpchar=('','Arial','Courier New','Times New Roman');
begin
	result:=0; f.size:=(((f.size div xtpp)*3) div 4)*xtpp div xfac; // don't reduce
	case f.style of
		xboldstyle:   result:=createfont(-f.size,0,0,0,fw_bold,0,0,0,ansi_charset,out_tt_only_precis,0,0,truetype_fonttype,n[f.face]);
		xitalicstyle:	result:=createfont(-f.size,0,0,0,0,1,0,0,ansi_charset,out_tt_only_precis,0,0,truetype_fonttype,n[f.face]);
		xplainstyle:  result:=createfont(-f.size,0,0,0,0,0,0,0,ansi_charset,out_tt_precis,0,0,truetype_fonttype,n[f.face]);
	end;
end;

procedure	xinitializefonts;
begin
	fillchar(xfonts,sizeof(xfonts),x00);
end;

procedure xinitializelexicon;
begin
	initialize(xlexicon);
	xlexicon.cid:=extractfiledrive(xcmdline.commands[1])+'\';
	xlexicon.suggestions:=xcreatechain(nil);
end;

procedure xinitializelocks;
begin
	xlocks:=xcreatechain(nil);
end;

procedure xinitializememorymanager;
begin
	with xmanager do begin
		new.getmem:=xgetmemory;
		new.freemem:=xfreememory;
		new.reallocmem:=xreallocmemory;
		getmemorymanager(old);
		setmemorymanager(new);
	end;
end;

procedure xinitializemenus;
begin
	xmenus:=xcreatechain(nil);
	xrefreshmenus;
end;

procedure xinitializemouse;
begin
	xleftbutton:=vk_lbutton; xrightbutton:=vk_rbutton;
	if not xboolean(getsystemmetrics(sm_swapbutton)) then exit;
	xleftbutton:=vk_rbutton; xrightbutton:=vk_lbutton;
end;

procedure xinitializepalettes;
	var cd:xdevice; ce:integer; pal:^tlogpalette;
begin
	getmem(pal,sizeof(tlogpalette)+((high(xpalette)-1)*sizeof(tpaletteentry)));
	with pal^ do begin
		palversion:=$0300;
		palnumentries:=high(xpalette)+1;
		for ce:=low(xpalette) to high(xpalette) do with xpalette[ce],palpalentry[ce] do begin
			pered:=r; pegreen:=g; peblue:=b; peflags:=0;
		end;
		for cd:=low(xdevice) to high(xdevice) do begin
			xpalettes[cd]:=createpalette(pal^);
			xoldpalettes[cd]:=selectpalette(xdcs[cd],xpalettes[cd],false);
			setstretchbltmode(xdcs[cd],halftone);
			unrealizeobject(xdcs[cd]); realizepalette(xdcs[cd]);
		end;
	end;
	freemem(pal);
end;

procedure xinitializepens;
	var m:xmixture; p:xpigment;
begin
	for p:=low(xpigment) to high(xpigment) do begin
		for m:=low(xmixture) to high(xmixture) do begin
			if p=xclear then begin xpens[p,m]:=getstockobject(null_pen); continue; end;
			xpens[p,m]:=createpen(ps_solid,1,xcolors[p,m]);
		end;
	end;
end;

procedure xinitializescreen;
begin
	with xscreen.rect do begin
		xscreen.head:=xmr(left,top,right,top+240);
		xscreen.body:=xmr(left,top+240,right,bottom);
		xlogo:=xmr(left+120,top+30,left+120+240,top+240-30);
		xmsg:=xmt(xmr(right-120-1800,top+30,right-120,top+240-30),xmf(xarialface,180,xplainstyle,xrightalign),false,false,false,'');
		xerr:=xmt(xmr(left+120+240+120,top+30,right-120,top+240-30),xmf(xarialface,180,xplainstyle,xleftalign),false,false,false,'');
	end;
end;

procedure xinitializestrings;
begin
	initialize(xcx);
	initialize(xtok);
	initialize(xsearch);
end;

procedure xinitializetemplates;

const font1:xfont=(face:xcourierface; size:180; style:xplainstyle; align:xleftalign);
const font2:xfont=(face:xcourierface; size:180; style:xplainstyle; align:xrightalign);
const font3:xfont=(face:xarialface; size:180; style:xplainstyle; align:xleftalign);
const bir:xrect=(left:1080; top:7740; right:5040; bottom:7920);
const bnr:xrect=(left:5040; top:7740; right:5760; bottom:7920);
const btr:xrect=(left:0360; top:7740; right:1080; bottom:7920);
var r:xrect; s:xshape;

function  _text(p:xpage; r:xrect; n:xfont; b,f:xcolor; c,o,a,u,v:xstring):xshape; forward;

procedure xinitializetemplates_drawing;
begin
	with xtemplates do begin
		drawing:=xcreatepage;
		drawing.shapes.opened:=true;
		// bottom type
		s:=_text(drawing,btr,font1,xblackcolor,xclearcolor,'','','type','no','drawing');
		// bottom identifier
		s:=_text(drawing,bir,font1,xblackcolor,xclearcolor,'','','identifier','no','drawingname');
		// bottom number
		s:=_text(drawing,bnr,font2,xblackcolor,xclearcolor,'','ZZZ9','number','no','');
	end;
end;

procedure xinitializetemplates_form;
begin
	with xtemplates do begin
		form:=xcreatepage;
		form.shapes.opened:=true;
		// bottom type
		s:=_text(form,btr,font1,xblackcolor,xclearcolor,'','','type','no','form');
		// bottom identifier
		s:=_text(form,bir,font1,xblackcolor,xclearcolor,'','','identifier','no','formname');
		// bottom number
		s:=_text(form,bnr,font2,xblackcolor,xclearcolor,'','ZZZ9','number','no','');
	end;
end;

procedure xinitializetemplates_function;
begin
	with xtemplates do begin
		func:=xcreatepage;
		func.shapes.opened:=true;
		// bottom type
		s:=_text(func,btr,font1,xblackcolor,xclearcolor,'','','type','no','function');
		// bottom identifier
		s:=_text(func,bir,font1,xblackcolor,xclearcolor,'gettoken(code,2,false,'' '',''('',chr(13))','','identifier','no','');
		// bottom number
		s:=_text(func,bnr,font2,xblackcolor,xclearcolor,'','ZZZ9','number','no','');
		// code
		r:=xmr(360,360,5760,7560);
		s:=_text(func,r,font1,xwhitecolor,xclearcolor,'','code','code','yes','function functionname do'+xcr+'end');
	end;
end;

function  _text(p:xpage; r:xrect; n:xfont; b,f:xcolor; c,o,a,u,v:xstring):xshape;
begin
	result:=xcreatetext(r,n,true,true,b,f,xblackcolor,false,o,v);
	xsetslice(result,xcslice,c);
	xsetslice(result,xnslice,a);
	xsetslice(result,xuslice,u);
	if p=nil then begin xdestroyshape(result); result:=nil; exit; end;
	xappendlink(p.shapes,result); inc(p.lastsid); result.sid:=p.lastsid;
end;

begin
	xinitializetemplates_drawing;
	xinitializetemplates_form;
	xinitializetemplates_function;
end;

procedure xinitializetimers;
begin
	settimer(xwindow,ord(xcarettimer),333,@xtimerprocedure);
end;

procedure xinitializewindows;
	var c:twndclassex; h,w:xinteger;
begin
	fillchar(c,sizeof(c),x00);
	c.cbsize:=sizeof(c);
	c.style:=cs_owndc+cs_dblclks+cs_bytealignwindow+cs_hredraw+cs_vredraw;
	c.lpfnwndproc:=@xwindowprocedure;
	c.hinstance:=system.maininstance;
	c.hicon:=loadicon(system.maininstance,'MAINICON');
	c.hbrbackground:=getstockobject(ltgray_brush);
	c.lpszclassname:=xname;
	if registerclassex(c)=0 then halt(255);
	w:=getsystemmetrics(sm_cxscreen); h:=getsystemmetrics(sm_cyscreen);
	createwindow(xname,xname,ws_popup,0,0,w,h,0,0,hinstance,nil);
	showwindow(xwindow,sw_shownormal);
end;

function  xinlimbo:xboolean;
begin
	result:=false; if xcp=nil then exit;
	if xcv<>xpageview then exit;
	if not xpir(xgvpr(xcp),xce.gp) then exit;
	xce.lp:=xlp(xce.gp,xcp.origin);
	xce.shape:=xfindstopshapebypoint(xcp.horzs,xce.lp);
	result:=xce.shape<>nil;
end;

function  xinlogo:xboolean;
begin
	xce.lp:=xce.gp;
	result:=xpir(xlogo,xce.gp);
end;

function  xinlonelylimbo:xboolean;
begin
	result:=false; if xcp=nil then exit;
	if xcv<>xpageview then exit;
	if not xpir(xgvpr(xcp),xce.gp) then exit;
	xce.lp:=xlp(xce.gp,xcp.origin);
	if not xisformpage(xcp) then exit;
	if xce.shift then exit;
	if xgetselectedstopcount(xcp.horzs)<>1 then exit;
	xce.shape:=xfindstopshapebypoint(xcp.horzs,xce.lp);
	if xce.shape=nil then exit;
	if not xce.shape.sel then exit;
	result:=true;
end;

function  xinmenu:xboolean;
begin
	xce.menu:=xfindmenubypoint(xce.gp);
	xce.lp:=xce.gp;
	result:=xce.menu<>nil;
end;

function  xinmenubar:xboolean;
begin
	xce.lp:=xce.gp;
	result:=xpir(xscreen.head,xce.gp);
end;

function  xinpage:xboolean;
begin
	result:=false; if xcp=nil then exit;
	if xcv<>xpageview then exit;
	if not xpir(xgvpr(xcp),xce.gp) then exit;
	xce.lp:=xlp(xce.gp,xcp.origin);
	xce.page:=xcp;
	result:=true;
end;

procedure xinsertcharacters(s:xshape; v:xstring);

var cc,cpos,sr:xinteger; t:xstring;

procedure xinsertcharacters_insertnewrows;
	var cc,rc:xinteger;
begin
	rc:=0; for cc:=1 to length(v) do if v[cc]=xcr then inc(rc);
	xinsertrowsafter(s.text,s.text.caretpos.row,rc);
end;

begin
	if (s=nil) or (v='') then exit;
	with s^,text,caretpos do begin
		xdeleteselectedcharacters(s,false);
		if not xissimple(text) then cpos:=xptac(text,caretpos);
		xinsertcharacters_insertnewrows;
		sr:=row; cc:=1; t:=''; v:=stringofchar(xsp,col-xmin(col,length(rows[row])))+v;
		col:=xlimit(col,1,length(rows[row]));
		repeat
			if (cc>length(v)) or (v[cc]=xcr) then begin insert(t,rows[row],col); inc(col,length(t)); end;
			if cc>length(v) then break;
			if v[cc]=xcr then begin
				rows[row+1]:=copy(rows[row],col,length(rows[row])-col+1);
				delete(rows[row],col,length(rows[row])-col+1);
				rows[row]:=rows[row]+xcr;
				inc(row); col:=1; t:=''; inc(cc);
				continue;
			end;
			t:=t+v[cc]; inc(cc);
		until xforever;
		xwraptext(text,sr,sr<>row,false);
		if not xissimple(text) then caretpos:=xactp(text,cpos+length(v));
		anchor:=caretpos; caretwas:=caretpos;
		if sr<>row then xindentcode(s);
	end;
end;

procedure xinsertcurvevertex(var c:xcurve; p,a:xpoint);
begin
	xinsertpolygonvertex(xpolygon(c),p,a);
end;

procedure xinsertlinkafter(c:xpointer; an,n:xlink);
	var ar,r:xrecord;
begin
	ar:=an; r:=n; if (c=nil) or (r=nil) then exit;
	if xrecord(c).rtyp<>xchainrecord then begin xerror('Internal Error 113.'); exit; end;
	with xchain(c)^ do begin
		r.parent:=xchain(c).parent; r.chain:=c;
		if (ar=nil) or (ar=last) then begin xappendlink(c,n); exit; end;
		ar.next.prev:=r;
		r.next:=ar.next;
		r.prev:=ar;
		ar.next:=r;
	end;
end;

procedure xinsertlinkbefore(c:xpointer; bn,n:xlink);
	var br,r:xrecord;
begin
	br:=bn; r:=n; if (c=nil) or (r=nil) then exit;
	if xrecord(c).rtyp<>xchainrecord then begin xerror('Internal Error 114.'); exit; end;
	with xchain(c)^ do begin
		r.parent:=xchain(c).parent; r.chain:=c;
		if last=nil then begin xappendlink(c,r); exit; end;
		if (br=nil) or (br=first) then begin
			r.prev:=nil;
			r.next:=first;
			firstrecord.prev:=r;
			first:=r;
			exit;
		end;
		br.prev.next:=r;
		r.next:=br;
		r.prev:=br.prev;
		br.prev:=r;
	end;
end;

procedure xinsertpolygonvertex(var n:xpolygon; p,a:xpoint);
	var cv:xvertex;
begin
	with n do begin
		if count=high(xvertex) then exit;
		for cv:=1 to count-1 do begin
			if not xpointonline(vertices[cv],vertices[cv+1],a) then continue;
			move(vertices[cv+1],vertices[cv+2],sizeof(xpoint)*(count-cv));
			inc(count);
			vertices[cv+1]:=p;
			xadjustpolygon(n);
			exit;
		end;
	end;
end;

procedure xinsertrowsafter(var t:xtext; ar,rc:xinteger);
	var cr:xinteger;
begin
	if rc=0 then exit;
	with t do begin
		inc(count,rc); while count>size do xgrowrows(t);
		for cr:=count-rc downto ar+1 do rows[cr+rc]:=rows[cr];
		finalize(rows[ar+1]);
	end;
end;

procedure xinsertshapevertex(s:xshape; np,ap:xpoint);
begin
	if s=nil then exit;
	with s^ do case styp of
		xcurveshape:		xinsertcurvevertex(curve,np,ap);
		xpolygonshape:	xinsertpolygonvertex(polygon,np,ap);
	end;
	xadjustshape(s);
end;

function  xinshape:xboolean;
begin
	result:=false; if xcp=nil then exit;
	if xcv<>xpageview then exit;
	xce.lp:=xlp(xce.gp,xcp.origin);
	xce.shape:=xfindshapebypoint(xcp.shapes,xce.lp);
	result:=xce.shape<>nil;
end;

function  xintab:xboolean;
	var a:xarea;
begin
	a:=xareas.first; while (a<>nil) and (not xpir(a.head,xce.gp)) do a:=a.next;
	xce.area:=a; result:=xce.area<>nil;
end;

procedure xinternalabsolutevalue;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(abs(xpeeknumber(1)));
end;

procedure xinternaladd;
	var a,b:xdatatyp;
begin
	if not xcheckparameters(2,2) then exit;
	a:=xpeektype(1); if xca.abort then exit;
	b:=xpeektype(2); if xca.abort then exit;
	if (xoperandsarenull(2)) and (a<>xstringdata) and (b<>xstringdata) then begin xreturnnull; exit; end;
	if (a=xdatedata) 		and (b in [xnodata,xnumberdata])	then begin xreturndate(xpeekdate(1)+xpeeknumber(2)); exit; end;
	if (a=xtimedata) 		and (b in [xnodata,xnumberdata])  then begin xreturntime(xpeektime(1)+(xpeeknumber(2)*1000/msecsperday)); exit; end;

	if (a=xnumberdata)	and (b in [xnodata,xnumberdata])  then begin xreturnnumber(xpeeknumber(1)+xpeeknumber(2)); exit; end;
	if (b=xnumberdata)  and (a in [xnodata,xnumberdata])  then begin xreturnnumber(xpeeknumber(1)+xpeeknumber(2)); exit; end;
	if (a=xstringdata)	and (b in [xnodata,xstringdata])  then begin xreturnstring(xpeekstring(1)+xpeekstring(2)); exit; end;
	if (b=xstringdata)  and (a in [xnodata,xstringdata])  then begin xreturnstring(xpeekstring(1)+xpeekstring(2)); exit; end;
	xrunerror('Type mismatch.');
end;

procedure xinternaladditem;
	var o:xobject;
begin
	if not xcheckparameters(4,4) then exit;
	if (xcm=nil) or (ord(xcm.mtyp)<>xpeekinteger(1)) then exit;
	if xcm.mtyp=xpagemenu then o:=xpeekpage(4) else o:=xpeeksymbol(4); if xca.abort then exit;
	xaddcommand(xcm,false,xpeekstring(2),xpeekcharacter(3),@xhandleprogram,[xinteger(o)]);
end;

procedure xinternaladdseparator;
begin
	if not xcheckparameters(1,1) then exit;
	if (xcm=nil) or (ord(xcm.mtyp)<>xpeekinteger(1)) then exit;
	xaddseparator(xcm);
end;

procedure xinternaland;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandsarenull(2) then begin xreturnnull; exit; end;
	xreturnboolean(xpeekboolean(1) and xpeekboolean(2));
end;

procedure xinternalarccosine;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(arccos(xpeeknumber(1)));
end;

procedure xinternalarcsine;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(arcsin(xpeeknumber(1)));
end;

procedure xinternalarctangent;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(arctan(xpeeknumber(1)));
end;

procedure xinternalassign;

var a,b:xvar; at,bt:xdatatyp;

procedure xinternalassign_object;
begin
	if a.obj<>nil then begin a.obj:=b.obj; xreturnobject(xrefvar,b.obj); exit; end;
	a.vtyp:=xdynamicvar; a.dtyp:=bt; a.obj:=b.obj; xreturnobject(xrefvar,b.obj);
end;

procedure xinternalassign_pictures;
	var x,y:^xpicture;
begin
	if a.obj<>nil then begin
		x:=@xshape(a.obj).picture; y:=@xshape(b.obj).picture;
		x.bitmaprect:=y.bitmaprect;
		x.croprect:=y.croprect;

		x.omap.header:=y.omap.header;
		x.omap.count:=y.omap.count;
		reallocmem(x.omap.bits,x.omap.count); move(y.omap.bits^,x.omap.bits^,x.omap.count);

		x.color:=y.color;
		x.brightness:=y.brightness;

		xadjustpicture(x^,true);
		xshape(a.obj).fill:=xshape(b.obj).fill;
		xreturnobject(xrefvar,b.obj);
		exit;
	end;
	a.vtyp:=xstaticvar; a.dtyp:=bt; a.obj:=xcopyshape(b.obj);
	xreturnobject(xrefvar,b.obj);
end;

procedure xinternalassign_shapes;
begin
	if a.obj<>nil then begin
		xsetslice(a.obj,xvslice,xgetslice(b.obj,xvslice));
		xreturnstringastype(bt,xgetslice(b.obj,xvslice));
		exit;
	end;
	a.vtyp:=xstaticvar; a.dtyp:=bt; a.obj:=xcopyshape(b.obj);
	xreturnstringastype(bt,xgetslice(b.obj,xvslice));
end;

function xinternalassign_typemismatch:xboolean;
begin
	result:=(at<>xnodata) and (bt<>xnodata) and (at<>bt);
	if result then xrunerror('Type mismatch');
end;

begin
	if not xcheckparameters(2,2) then exit;
	a:=xpeekvariable(1); if xca.abort then exit;
	b:=xpeekvariable(2); if xca.abort then exit;
	at:=a.dtyp; bt:=b.dtyp;
	if xinternalassign_typemismatch then exit;
	if (at in xsimpletypes) or (bt in xsimpletypes) then begin xinternalassign_shapes; exit; end;
	if (at=xpicturedata) or (bt=xpicturedata) then begin xinternalassign_pictures; exit; end;
	xinternalassign_object;
end;

procedure xinternalaverage;
	var c:xinteger; cs,s:xshape; name,val:xstring; ns:xstop; p:xpage; r,n:xnumber;
begin
	if not xcheckparameters(1,1) then exit;
	s:=xpeektext(1); if xca.abort then exit;
	p:=xgetpage(s); if p=nil then begin xrunerror('Type mismatch.'); exit; end;
	name:=xv(xgetslice(s,xnslice)); if name='' then begin xrunerror('Type mismatch.'); exit; end;
	ns:=p.names.first; c:=0; r:=0;
	while ns<>nil do begin cs:=ns.shape; ns:=ns.next;
		if xv(xgetslice(cs,xnslice))<>name then continue;
		if not cs.calculated then xupdateshape(cs);
		val:=xgetslice(cs,xvslice); if val='' then continue;
		if xstncwe(val,n) then begin xrunerror('Type mismatch.'); exit; end;
		inc(c); r:=r+n;
	end;
	if c>0 then xreturnnumber(r/c) else xreturnnull;
end;

procedure xinternalbeep;
begin
	if xcheckparameters(0,0) then xbeep;
end;

procedure xinternalblink;
begin
	if xcheckparameters(0,0) then xblink;
end;

procedure xinternalcharacter;
begin
	if xcheckparameters(1,1) then xreturnstring(chr(xpeekinteger(1)));
end;

procedure xinternalclosecabinet;
	var c:xcabinet;
begin
	if not xcheckparameters(1,1) then exit;
	c:=xpeekcabinet(1);
	if (c<>nil) and (c=xcc) then begin xreturnboolean(false); xcx:='Current cabinet cannot be closed.'; exit; end;
	xreturnboolean(xclosecabinet(c));
	xpokeobject(1,nil);
end;

procedure xinternalclosedrawer;
	var d:xdrawer;
begin
	if not xcheckparameters(1,1) then exit;
	d:=xpeekdrawer(1);
	if (d<>nil) and (d=xcd) then begin xreturnboolean(false); xcx:='Current drawer cannot be closed.'; exit; end;
	xreturnboolean(xclosedrawer(d));
end;

procedure xinternalclosefolder;
	var f:xfolder;
begin
	if not xcheckparameters(1,1) then exit;
	f:=xpeekfolder(1);
	if (f<>nil) and (f=xcf) then begin xreturnboolean(false); xcx:='Current folder cannot be closed.'; exit; end;
	xreturnboolean(xclosefolder(f));
end;

procedure xinternalclosepage;
	var p:xpage;
begin
	if not xcheckparameters(1,1) then exit;
	p:=xpeekpage(1);
	if (p<>nil) and (p=xcp) then begin xreturnboolean(false); xcx:='Current page cannot be closed.'; exit; end;
	xreturnboolean(xclosepage(xpeekpage(1)));
end;

procedure xinternalconverttoboolean;
begin
	if xcheckparameters(1,1) then xreturnboolean(xstb(xpeekasstring(1)));
end;

procedure xinternalconverttodate;
	var a:xdatatyp;
begin
	if not xcheckparameters(1,1) then exit;
	a:=xpeektype(1); if xca.abort then exit;
	if a=xdatedata 		then begin xreturndate(xpeekdate(1)); exit; end;
	if a=xnumberdata 	then begin xreturndate(xpeeknumber(1)); exit; end;
	if a=xstringdata 	then begin xreturndate(xstd(xpeekasstring(1))); exit; end;
	xreturndate(0);
end;

procedure xinternalconverttonumber;
	var a:xdatatyp; h,m,ms,s:word;
begin
	if not xcheckparameters(1,1) then exit;
	a:=xpeektype(1); if xca.abort then exit;
	if a=xbooleandata then begin xreturnnumber(ord(xpeekboolean(1))); exit; end;
	if a=xdatedata 		then begin xreturnnumber(xpeekdate(1)); exit; end;
	if a=xnumberdata 	then begin xreturnnumber(xpeeknumber(1)); exit; end;
	if a=xstringdata 	then begin xreturnnumber(xstnc(xpeekasstring(1))); exit; end;
	if a=xtimedata 		then begin
		decodetime(xpeektime(1),h,m,s,ms);
		xreturnnumber(h*3600+m*60+s);
		exit;
	end;
	xreturnnumber(0);
end;

procedure xinternalconverttostring;
begin
	if xcheckparameters(1,1) then xreturnstring(xpeekasstring(1));
end;

procedure xinternalconverttotime;
	var a:xdatatyp;
begin
	a:=xpeektype(1); if xca.abort then exit;
	if a=xnumberdata 	then begin xreturntime(xpeeknumber(1)*1000/msecsperday); exit; end;
	if a=xstringdata 	then begin xreturntime(xstt(xpeekasstring(1))); exit; end;
	if a=xtimedata 		then begin xreturntime(xpeektime(1)); exit; end;
	xreturntime(9999);
end;

procedure xinternalcopypage;
begin
	if xcheckparameters(1,1) then xreturnobject(xdynamicvar,xcopypage(xpeekpage(1),false));
end;

procedure xinternalcosine;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(cos(xpeeknumber(1)));
end;

procedure xinternalcount;
	var c:xinteger; cs,s:xshape; name:xstring; ns:xstop; p:xpage;
begin
	if not xcheckparameters(1,1) then exit;
	s:=xpeektext(1); if xca.abort then exit;
	p:=xgetpage(s); if p=nil then begin xreturnnumber(0); exit; end;
	name:=xv(xgetslice(s,xnslice)); if name='' then begin xreturnnumber(0); exit; end;
	ns:=p.names.first; c:=0;
	while ns<>nil do begin cs:=ns.shape; ns:=ns.next;
		if xv(xgetslice(cs,xnslice))<>name then continue;
		if not cs.calculated then xupdateshape(cs);
		if xgetslice(cs,xvslice)<>'' then inc(c);
	end;
	xreturnnumber(c);
end;

procedure xinternalcreatepage;
begin
	if xcheckparameters(1,1) then xreturnobject(xdynamicvar,xcreatepagefromtemplate(xpeekpage(1)));
end;

procedure xinternaldecrement;
begin
	if not xcheckparameters(1,2) then exit;
	if xpeekregister(0)=1 then xpokenumber(1,xpeeknumber(1)-1) else
	 xpokenumber(1,xpeeknumber(1)-xpeeknumber(2));
end;

procedure xinternaldelete;
	var s:xstring;
begin
	if not xcheckparameters(3,3) then exit;
	s:=xpeekstring(1); if xca.abort then exit;
	delete(s,xpeekinteger(2),xpeekinteger(3));
	xreturnstring(s);
end;

procedure xinternaldeletedrawer;
	var d:xdrawer;
begin
	if not xcheckparameters(1,1) then exit;
	d:=xpeekdrawer(1);
	if (d<>nil) and (d=xcd) then begin xreturnboolean(false); xcx:='Current drawer cannot be deleted.'; exit; end;
	xreturnboolean(xdeletedrawer(d));
	xpokeobject(1,nil);
end;

procedure xinternaldeletefile;
begin
	if xcheckparameters(1,1) then xreturnboolean(xdeletefile(xpeekstring(1)));
end;

procedure xinternaldeletefolder;
	var f:xfolder;
begin
	if not xcheckparameters(1,1) then exit;
	f:=xpeekfolder(1);
	if (f<>nil) and (f=xcf) then begin xreturnboolean(false); xcx:='Current folder cannot be deleted.'; exit; end;
	xreturnboolean(xdeletefolder(f));
	xpokeobject(1,nil);
end;

procedure xinternaldeletepage;
	var p:xpage;
begin
	if not xcheckparameters(1,1) then exit;
	p:=xpeekpage(1);
	if (p<>nil) and (p=xcp) then begin xreturnboolean(false); xcx:='Current page cannot be deleted.'; exit; end;
	xreturnboolean(xdeletepage(p));
	xpokeobject(1,nil);
end;

procedure xinternaldegreetoradian;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(degtorad(xpeeknumber(1)));
end;

procedure xinternaldestroypage;
begin
	if not xcheckparameters(1,1) then exit;
	xdestroypage(xpeekpage(1));
	xpokeobject(1,nil);
end;

procedure xinternaldialog;
	var a:xstring;
begin
	if not xcheckparameters(6,6) then exit;
	xreturnboolean(xdialog(xpeekstring(1),xpeekstring(2),xpeekboolean(3),xpeekboolean(4),xpeekboolean(5),a));
	xpokestring(6,a);
end;

procedure xinternaldrawmenubar;
begin
	if xcheckparameters(0,0) then xslapbar;
end;

procedure xinternaldrawworkarea;
begin
	if xcheckparameters(0,0) then xslapworkarea;
end;

procedure xinternalduplicatedrawer;
	var a:xdrawer;
begin
	if not xcheckparameters(2,3) then exit;
	if xpeekregister(0)=3 then a:=xpeekdrawer(3) else a:=nil;
	xreturnobject(xdynamicvar,xduplicatedrawer(xpeekcabinet(1),xpeekdrawer(2),a));
end;

procedure xinternalduplicatefolder;
	var a:xfolder;
begin
	if not xcheckparameters(2,3) then exit;
	if xpeekregister(0)=3 then a:=xpeekfolder(3) else a:=nil;
	xreturnobject(xdynamicvar,xduplicatefolder(xpeekdrawer(1),xpeekfolder(2),a));
end;

procedure xinternalduplicatepage;
	var a:xpage;
begin
	if not xcheckparameters(2,3) then exit;
	if xpeekregister(0)=3 then a:=xpeekpage(3) else a:=nil;
	xreturnobject(xdynamicvar,xduplicatepage(xpeekfolder(1),xpeekpage(2),a));
end;

procedure xinternalequal;
	var a,b:xdatatyp;
begin
	with xca^,local do begin
		if not xcheckparameters(2,2) then exit;
		if xoperandisnull(2) then begin xreturnboolean(xobjectisnull(xpeekobject(1))=xobjectisnull(xpeekobject(2))); exit; end;
		a:=xpeektype(1); if xca.abort then exit;
		b:=xpeektype(2); if xca.abort then exit;
		if (a=xbooleandata)	and (b=xbooleandata)	then begin xreturnboolean(xpeekboolean(1)=xpeekboolean(2)); exit; end;
		if (a=xcabinetdata)	and (b=xcabinetdata)	then begin xreturnboolean(xpeekcabinet(1)=xpeekcabinet(2)); exit; end;
		if (a=xdatedata) 		and (b=xdatedata)		  then begin xreturnboolean(xpeekdate(1)=xpeekdate(2)); exit; end;
		if (a=xdrawerdata)	and (b=xdrawerdata)		then begin xreturnboolean(xpeekdrawer(1)=xpeekdrawer(2)); exit; end;
		if (a=xfolderdata)	and (b=xfolderdata)		then begin xreturnboolean(xpeekfolder(1)=xpeekfolder(2)); exit; end;
		if (a=xnumberdata)	and (b=xnumberdata)	  then begin xreturnboolean(xpeeknumber(1)=xpeeknumber(2)); exit; end;
		if (a=xpagedata)		and (b=xpagedata)			then begin xreturnboolean(xpeekpage(1)=xpeekpage(2)); exit; end;
		if (a=xstringdata)	and (b=xstringdata)   then begin xreturnboolean(ansicomparetext(xpeekstring(1),xpeekstring(2))=0); exit; end;
		if (a=xtimedata) 		and (b=xtimedata)		  then begin xreturnboolean(xpeektime(1)=xpeektime(2)); exit; end;
		xrunerror('Type mismatch.');
	end;
end;

procedure xinternalerror;
	var cp:xinteger; s:xstring;
begin
	if not xcheckparameters(0,256) then exit;
	s:='';
	for cp:=1 to xpeekregister(0) do begin s:=s+xpeekasstring(cp); if xca.abort then exit; end;
	xerror(s);
end;

procedure xinternalfilepage;
	var a:xpage;
begin
	if not xcheckparameters(2,3) then exit;
	if xpeekregister(0)=3 then a:=xpeekpage(3) else a:=nil;
	xreturnboolean(xfilepage(xpeekfolder(1),xpeekpage(2),a));
end;

procedure xinternalfillleft;
begin
	if xcheckparameters(3,3) then xreturnstring(xfillleft(xpeekstring(1),xpeekcharacter(2),xpeekinteger(3)));
end;

procedure xinternalfillright;
begin
	if xcheckparameters(3,3) then xreturnstring(xfillright(xpeekstring(1),xpeekcharacter(2),xpeekinteger(3)));
end;

procedure xinternalfinddrawer;
	var c:xcabinet; d:xdrawer; pc:xinteger;
begin
	if not xcheckparameters(3,4) then exit;
	c:=xpeekcabinet(1); if xca.abort then exit;
	if c=nil then begin xreturnobject(xdynamicvar,nil); exit; end;
	pc:=xpeekregister(0); if xca.abort then exit;
	if pc=3 then d:=xfinddrawerwithcurrentversion(c.drawers,xpeekstring(2),xpeekstring(3));
	if pc=4 then d:=xfinddrawer(c.drawers,xpeekstring(2),xpeekstring(3),xpeekstring(4));
	xreturnobject(xdynamicvar,d);
end;

procedure xinternalfindfolder;
	var d:xdrawer; f:xfolder; pc:xinteger;
begin
	if not xcheckparameters(2,3) then exit;
	d:=xpeekdrawer(1); if xca.abort then exit;
	if d=nil then begin xreturnobject(xdynamicvar,nil); exit; end;
	pc:=xpeekregister(0); if xca.abort then exit;
	if pc=2 then f:=xfindfolderwithcurrentversion(d.folders,xpeekstring(2));
	if pc=3 then f:=xfindfolder(d.folders,xpeekstring(2),xpeekstring(3));
	xreturnobject(xdynamicvar,f);
end;

procedure xinternalfindpage;
	var f:xfolder;
begin
	if not xcheckparameters(3,3) then exit;
	f:=xpeekfolder(1); if xca.abort then exit;
	if f=nil then begin xreturnobject(xdynamicvar,nil); exit; end;
	xreturnobject(xdynamicvar,xfindpage(f.pages,xpeekstring(2),xpeekstring(3)));
end;

procedure xinternalfirstrecord;
	var b:xboolean; o:xobject;
begin
	if not xcheckparameters(2,2) then exit;
	o:=xpeekobject(1); if xca.abort then exit;
	b:=xpeekboolean(2); if xca.abort then exit;
	if o=nil then begin xreturnobject(xdynamicvar,nil); exit; end;
	case xtype(o) of
		xcabinetrecord:	if b then xreturnobject(xdynamicvar,xcabinet(o).drawers.last) else xreturnobject(xdynamicvar,xcabinet(o).drawers.first);
		xdrawerrecord:  if b then xreturnobject(xdynamicvar,xdrawer(o).folders.last) else xreturnobject(xdynamicvar,xdrawer(o).folders.first);
		xfolderrecord:  if b then xreturnobject(xdynamicvar,xfolder(o).pages.last) else xreturnobject(xdynamicvar,xfolder(o).pages.first);
		else						xrunerror('Type mismatch.');
	end;
end;
procedure xinternalformatboolean;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnstring(xformatboolean(xpeekboolean(1),xpeekstring(2)));
end;

procedure xinternalformatdate;
begin
	if not xcheckparameters(2,2) then exit;
 	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnstring(xformatdate(xpeekdate(1),xpeekstring(2)));
end;

procedure xinternalformatnumber;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnstring(xformatnumber(xpeeknumber(1),xpeekstring(2)));
end;

procedure xinternalformattime;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnstring(xformattime(xpeektime(1),xpeekstring(2)));
end;

procedure xinternalfraction;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(frac(xpeeknumber(1)));
end;

procedure xinternalgetcurrentcabinet;
begin
	if xcheckparameters(0,0) then xreturnobject(xdynamicvar,xcc);
end;

procedure xinternalgetcurrentdrawer;
begin
	if xcheckparameters(0,0) then xreturnobject(xdynamicvar,xcd);
end;

procedure xinternalgetcurrenterror;
begin
	if xcheckparameters(0,0) then xreturnstring(xcx);
end;

procedure xinternalgetcurrentfolder;
begin
	if xcheckparameters(0,0) then xreturnobject(xdynamicvar,xcf);
end;

procedure xinternalgetcurrentpage;
begin
	if xcheckparameters(0,0) then xreturnobject(xdynamicvar,xcp);
end;

procedure xinternalgetcurrentview;
begin
	if xcheckparameters(0,0) then xreturnnumber(ord(xcv));
end;

procedure xinternalgetdate;
begin
	if xcheckparameters(0,0) then xreturndate(date);
end;

procedure xinternalgetday;
	var d,m,y:xword;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	decodedate(xpeekdate(1),y,m,d);
	xreturnnumber(d);
end;

procedure xinternalgetdayofweek;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(dayofweek(xpeekdate(1)));
end;

procedure xinternalgetdrawercount;
	var c:xcabinet;
begin
	if not xcheckparameters(1,1) then exit;
	c:=xpeekcabinet(1); if xca.abort then exit;
	if c=nil then begin xreturnnumber(0); exit; end;
	xreturnnumber(xgetdrawercount(c.drawers));
end;

procedure xinternalgetfirstselecteddrawer;
	var c:xcabinet;
begin
	if not xcheckparameters(1,1) then exit;
	c:=xpeekcabinet(1); if xca.abort then exit;
	if c=nil then begin xreturnnumber(0); exit; end;
	xreturnobject(xdynamicvar,xgetfirstselecteddrawer(c.drawers));
end;

procedure xinternalgetfirstselectedfolder;
	var d:xdrawer;
begin
	if not xcheckparameters(1,1) then exit;
	d:=xpeekdrawer(1); if xca.abort then exit;
	if d=nil then begin xreturnnumber(0); exit; end;
	xreturnobject(xdynamicvar,xgetfirstselectedfolder(d.folders));
end;

procedure xinternalgetfirstselectedpage;
	var f:xfolder;
begin
	if not xcheckparameters(1,1) then exit;
	f:=xpeekfolder(1); if xca.abort then exit;
	if f=nil then begin xreturnnumber(0); exit; end;
	xreturnobject(xdynamicvar,xgetfirstselectedpage(f.pages));
end;

procedure xinternalgetfoldercount;
	var d:xdrawer;
begin
	if not xcheckparameters(1,1) then exit;
	d:=xpeekdrawer(1); if xca.abort then exit;
	if d=nil then begin xreturnnumber(0); exit; end;
	xreturnnumber(xgetfoldercount(d.folders));
end;

procedure xinternalgethours;
	var h,m,s,t:xword;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	decodetime(xpeektime(1),h,m,s,t);
	xreturnnumber(h);
end;

procedure xinternalgetlastselecteddrawer;
	var c:xcabinet;
begin
	if not xcheckparameters(1,1) then exit;
	c:=xpeekcabinet(1); if xca.abort then exit;
	if c=nil then begin xreturnnumber(0); exit; end;
	xreturnobject(xdynamicvar,xgetlastselecteddrawer(c.drawers));
end;

procedure xinternalgetlastselectedfolder;
	var d:xdrawer;
begin
	if not xcheckparameters(1,1) then exit;
	d:=xpeekdrawer(1); if xca.abort then exit;
	if d=nil then begin xreturnnumber(0); exit; end;
	xreturnobject(xdynamicvar,xgetlastselectedfolder(d.folders));
end;

procedure xinternalgetlastselectedpage;
	var f:xfolder;
begin
	if not xcheckparameters(1,1) then exit;
	f:=xpeekfolder(1); if xca.abort then exit;
	if f=nil then begin xreturnnumber(0); exit; end;
	xreturnobject(xdynamicvar,xgetlastselectedpage(f.pages));
end;

procedure xinternalgetminutes;
	var h,m,s,t:xword;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	decodetime(xpeektime(1),h,m,s,t);
	xreturnnumber(m);
end;

procedure xinternalgetmonth;
	var d,m,y:xword;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	decodedate(xpeekdate(1),y,m,d);
	xreturnnumber(m);
end;

procedure xinternalgetnexttoken;
	var cp,p:xinteger; d:xcharset;
begin
	if not xcheckparameters(4,256) then exit;
	d:=[];
	for cp:=4 to xpeekregister(0) do begin
		d:=d+[xpeekcharacter(cp)]; if xca.abort then exit;
	end;
	p:=xpeekinteger(2); if xca.abort then exit;
	xreturnstring(xgetnextgenerictoken(xpeekstring(1),p,xpeekboolean(3),d));
	xpokenumber(2,p);
end;

procedure xinternalgetpagecount;
	var f:xfolder;
begin
	if not xcheckparameters(1,1) then exit;
	f:=xpeekfolder(1); if xca.abort then exit;
	if f=nil then begin xreturnnumber(0); exit; end;
	xreturnnumber(xgetpagecount(f.pages));
end;

procedure xinternalgetprevioustoken;
	var cp,p:xinteger; d:xcharset;
begin
	if not xcheckparameters(4,256) then exit;
	d:=[];
	for cp:=4 to xpeekregister(0) do begin
		d:=d+[xpeekcharacter(cp)]; if xca.abort then exit;
	end;
	p:=xpeekinteger(2); if xca.abort then exit;
	xreturnstring(xgetpreviousgenerictoken(xpeekstring(1),p,xpeekboolean(3),d));
	xpokenumber(2,p);
end;

procedure xinternalgetseconds;
	var h,m,s,t:xword;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	decodetime(xpeektime(1),h,m,s,t);
	xreturnnumber(s);
end;

procedure xinternalgetselecteddrawercount;
	var c:xcabinet;
begin
	if not xcheckparameters(1,1) then exit;
	c:=xpeekcabinet(1); if xca.abort then exit;
	if c=nil then begin xreturnnumber(0); exit; end;
	xreturnnumber(xgetselecteddrawercount(c.drawers));
end;

procedure xinternalgetselectedfoldercount;
	var d:xdrawer;
begin
	if not xcheckparameters(1,1) then exit;
	d:=xpeekdrawer(1); if xca.abort then exit;
	if d=nil then begin xreturnnumber(0); exit; end;
	xreturnnumber(xgetselectedfoldercount(d.folders));
end;

procedure xinternalgetselectedpagecount;
	var f:xfolder;
begin
	if not xcheckparameters(1,1) then exit;
	f:=xpeekfolder(1); if xca.abort then exit;
	if f=nil then begin xreturnnumber(0); exit; end;
	xreturnnumber(xgetselectedpagecount(f.pages));
end;

procedure xinternalgetticks;
begin
	if xcheckparameters(0,0) then xreturnnumber(xgetticks/1000);
end;

procedure xinternalgettime;
begin
	if xcheckparameters(0,0) then xreturntime(time);
end;

procedure xinternalgettoken;
	var c,cp,p:xinteger; d:xcharset; t:xstring;
begin
	if not xcheckparameters(4,256) then exit;
	d:=[];
	for cp:=4 to xpeekregister(0) do begin
		d:=d+[xpeekcharacter(cp)]; if xca.abort then exit;
	end;
	c:=xpeekinteger(2); if xca.abort then exit;
	p:=1; while c>0 do begin t:=xgetnextgenerictoken(xpeekstring(1),p,xpeekboolean(3),d); dec(c); end;
	xreturnstring(t);
end;

procedure xinternalgetyear;
	var d,m,y:xword;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	decodedate(xpeekdate(1),y,m,d);
	xreturnnumber(y);
end;

procedure xinternalgreater;
	var a,b:xdatatyp;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandisnull(2) then begin xreturnboolean(xobjectisnull(xpeekobject(1))<xobjectisnull(xpeekobject(2))); exit; end;
	a:=xpeektype(1); if xca.abort then exit;
	b:=xpeektype(2); if xca.abort then exit;
	if (a=xbooleandata)	and (b=xbooleandata)	then begin xreturnboolean(xpeekboolean(1)>xpeekboolean(2)); exit; end;
	if (a=xdatedata) 		and (b=xdatedata)			then begin xreturnboolean(xpeekdate(1)>xpeekdate(2)); exit; end;
	if (a=xnumberdata)	and (b=xnumberdata) 	then begin xreturnboolean(xpeeknumber(1)>xpeeknumber(2)); exit; end;
	if (a=xstringdata) 	and (b=xstringdata) 	then begin xreturnboolean(ansicomparetext(xpeekstring(1),xpeekstring(2))>0); exit; end;
	if (a=xtimedata) 		and (b=xtimedata)			then begin xreturnboolean(xpeektime(1)>xpeektime(2)); exit; end;
	xrunerror('Type mismatch.');
end;

procedure xinternalgreaterequal;
	var a,b:xdatatyp;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandisnull(2) then begin xreturnboolean(xobjectisnull(xpeekobject(1))<=xobjectisnull(xpeekobject(2))); exit; end;
	a:=xpeektype(1); if xca.abort then exit;
	b:=xpeektype(2); if xca.abort then exit;
	if (a=xbooleandata)	and (b=xbooleandata)	then begin xreturnboolean(xpeekboolean(1)>=xpeekboolean(2)); exit; end;
	if (a=xdatedata) 		and (b=xdatedata)			then begin xreturnboolean(xpeekdate(1)>=xpeekdate(2)); exit; end;
	if (a=xnumberdata)	and (b=xnumberdata) 	then begin xreturnboolean(xpeeknumber(1)>=xpeeknumber(2)); exit; end;
	if (a=xstringdata) 	and (b=xstringdata) 	then begin xreturnboolean(ansicomparetext(xpeekstring(1),xpeekstring(2))>=0); exit; end;
	if (a=xtimedata) 		and (b=xtimedata)			then begin xreturnboolean(xpeektime(1)>=xpeektime(2)); exit; end;
	xrunerror('Type mismatch.');
end;

procedure xinternalincrement;
begin
	if not xcheckparameters(1,2) then exit;
	if xpeekregister(0)=1 then xpokenumber(1,xpeeknumber(1)+1) else
	 xpokenumber(1,xpeeknumber(1)+xpeeknumber(2));
end;

procedure xinternalindex;
	var i:xinteger; n:xstring; o:xstop; p:xpage; spreadsheet:xboolean; s,t:xshape;
begin
	t:=xpeeknamable(1); if xca.abort then exit;
	i:=xpeekinteger(2); if xca.abort then exit;
	spreadsheet:=xpeekboolean(3); if xca.abort then exit;
	if t=nil then begin xrunerror('Internal Error 111.'); exit; end;
	n:=xgetslice(t,xnslice); o:=nil; s:=nil; p:=xgetpage(t);
	if p=nil then begin xreturnnull; exit; end;
	if i=0 then s:=xfindshapeonedgebyname(p.shapes,n);
	if i<>0 then o:=xfindstopbynameandsubscript(p.names,n,true,i); if o<>nil then s:=o.shape;
	if (s=nil) and (not spreadsheet) then begin xreturnnull; exit; end;
	if s=nil then begin xrunerror('Field '''+n+'['+xits(i)+']'' not found on page.'); exit; end;
	if not s.calculated then xupdateshape(s);
	xreturnobject(xdynamicvar,s);
end;

procedure xinternalinsert;
	var s:xstring;
begin
	if not xcheckparameters(3,3) then exit;
	s:=xpeekstring(1); if xca.abort then exit;
	insert(xpeekstring(2),s,xpeekinteger(3));
	xreturnstring(s);
end;

procedure xinternalintegerdivide;
	var a,b:xnumber;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandsarenull(2) then begin xreturnnull; exit; end;
	a:=xpeeknumber(1); if xca.abort then exit;
	b:=xpeeknumber(2); if xca.abort then exit;
	if b=0 then begin xrunerror('Cannot divide by zero.'); exit; end;
	xreturnnumber(int(a/b));
end;

procedure xinternalleft;
begin
	if xcheckparameters(2,2) then xreturnstring(copy(xpeekstring(1),1,xpeekinteger(2)));
end;

procedure xinternallength;
begin
	if xcheckparameters(1,1) then xreturnnumber(length(xpeekstring(1)));
end;

procedure xinternalless;
	var a,b:xdatatyp;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandisnull(2) then begin xreturnboolean(xobjectisnull(xpeekobject(1))>xobjectisnull(xpeekobject(2))); exit; end;
	a:=xpeektype(1); if xca.abort then exit;
	b:=xpeektype(2); if xca.abort then exit;
	if (a=xbooleandata)	and (b=xbooleandata)	then begin xreturnboolean(xpeekboolean(1)<xpeekboolean(2)); exit; end;
	if (a=xdatedata) 		and (b=xdatedata)			then begin xreturnboolean(xpeekdate(1)<xpeekdate(2)); exit; end;
	if (a=xnumberdata)	and (b=xnumberdata)		then begin xreturnboolean(xpeeknumber(1)<xpeeknumber(2)); exit; end;
	if (a=xstringdata) 	and (b=xstringdata) 	then begin xreturnboolean(ansicomparetext(xpeekstring(1),xpeekstring(2))<0); exit; end;
	if (a=xtimedata) 		and (b=xtimedata)			then begin xreturnboolean(xpeektime(1)<xpeektime(2)); exit; end;
	xrunerror('Type mismatch.');
end;

procedure xinternallessequal;
	var a,b:xdatatyp;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandisnull(2) then begin xreturnboolean(xobjectisnull(xpeekobject(1))>=xobjectisnull(xpeekobject(2))); exit; end;
	a:=xpeektype(1); if xca.abort then exit;
	b:=xpeektype(2); if xca.abort then exit;
	if (a=xbooleandata)	and (b=xbooleandata)	then begin  xreturnboolean(xpeekboolean(1)<=xpeekboolean(2)); exit; end;
	if (a=xdatedata) 		and (b=xdatedata)			then begin xreturnboolean(xpeekdate(1)<=xpeekdate(2)); exit; end;
	if (a=xnumberdata)	and (b=xnumberdata)		then begin xreturnboolean(xpeeknumber(1)<=xpeeknumber(2)); exit; end;
	if (a=xstringdata) 	and (b=xstringdata) 	then begin xreturnboolean(ansicomparetext(xpeekstring(1),xpeekstring(2))<=0); exit; end;
	if (a=xtimedata) 		and (b=xtimedata)			then begin xreturnboolean(xpeektime(1)<=xpeektime(2)); exit; end;
	xrunerror('Type mismatch.');
end;

procedure xinternallock;
begin
	if xcheckparameters(1,1) then xreturnboolean(xlockcabinet(xcabinetnametocid(xpeekstring(1))));
end;

procedure xinternallogarithm;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandsarenull(2) then begin xreturnnull; exit; end;
	xreturnnumber(logn(xpeeknumber(2),xpeeknumber(1)));
end;

procedure xinternallowercase;
begin
	if xcheckparameters(1,1) then xreturnstring(ansilowercase(xpeekstring(1)));
end;

procedure xinternalmakecountmessage;
begin
	if xcheckparameters(3,3) then xreturnstring(xmcm(xpeeknumber(1),xpeekstring(2),xpeekstring(3)));
end;

procedure xinternalmaximum;

var a,b,d:xdatatyp; ad,bd,r:xstring;

procedure xinternalmax_spreadsheet;
	var cs,s:xshape; name,val:xstring; ns:xstop; p:xpage; r:xshape;
begin
	s:=xpeektext(1); if xca.abort then exit;
	p:=xgetpage(s); if p=nil then begin xrunerror('Type mismatch.'); exit; end;
	name:=xv(xgetslice(s,xnslice)); if name='' then begin xrunerror('Type mismatch.'); exit; end;
	ns:=p.names.first; r:=nil;
	while ns<>nil do begin cs:=ns.shape; ns:=ns.next;
		if xv(xgetslice(cs,xnslice))<>name then continue;
		if not cs.calculated then xupdateshape(cs);
		val:=xgetslice(cs,xvslice); if val='' then continue;
		if s.dtyp<>cs.dtyp then begin xrunerror('Type mismatch.'); exit; end;
		if r=nil then begin r:=cs; continue; end;
		case s.dtyp of
			xbooleandata: if xcsab(val,xgetslice(r,xvslice))>0 then r:=cs;
			xdatedata:    if xcsad(val,xgetslice(r,xvslice))>0 then r:=cs;
			xnumberdata:	if xcsan(val,xgetslice(r,xvslice))>0 then r:=cs;
			xstringdata:  if xcsas(val,xgetslice(r,xvslice))>0 then r:=cs;
			xtimedata:    if xcsat(val,xgetslice(r,xvslice))>0 then r:=cs;
		end;
	end;
	if r<>nil then xreturnobject(xstaticvar,xcopyshape(r)) else xreturnnull;
end;

begin
	if not xcheckparameters(1,2) then exit;
	if xpeekregister(0)=1 then begin xinternalmax_spreadsheet; exit; end;
	if xoperandsarenull(2) then begin xreturnnull; exit; end;
	r:='';
	a:=xpeektype(1); if xca.abort then exit;
	b:=xpeektype(2); if xca.abort then exit;
	ad:=xpeekasstring(1); if xca.abort then exit;
	bd:=xpeekasstring(2); if xca.abort then exit;
	if (a<>b) and (a<>xnodata) and (b<>xnodata) then begin xrunerror('Type mismatch.'); exit; end;
	if a=xnodata then d:=b else d:=a;
	case d of
		xbooleandata: if (ad<>'') and (xcsab(ad,bd)>0) then r:=ad else r:=bd;
		xdatedata:    if (ad<>'') and (xcsad(ad,bd)>0) then r:=ad else r:=bd;
		xnumberdata:	if (ad<>'') and (xcsan(ad,bd)>0) then r:=ad else r:=bd;
		xstringdata:  if (ad<>'') and (xcsas(ad,bd)>0) then r:=ad else r:=bd;
		xtimedata:    if (ad<>'') and (xcsat(ad,bd)>0) then r:=ad else r:=bd;
	end;
	if r<>'' then xreturnstringastype(d,r) else xreturnnull;
end;

procedure xinternalmessage;
	var cp:xinteger; s:xstring;
begin
	if not xcheckparameters(0,256) then exit;
	s:='';
	for cp:=1 to xpeekregister(0) do begin s:=s+xpeekasstring(cp); if xca.abort then exit; end;
	xmessage(s);
end;

procedure xinternalmiddle;
begin
	if xcheckparameters(3,3) then xreturnstring(copy(xpeekstring(1),xpeekinteger(2),xpeekinteger(3)));
end;

procedure xinternalminimum;

var a,b,d:xdatatyp; ad,bd,r:xstring;

procedure xinternalmin_spreadsheet;
	var cs,s:xshape; name,val:xstring; ns:xstop; p:xpage; r:xshape;
begin
	s:=xpeektext(1); if xca.abort then exit;
	p:=xgetpage(s); if p=nil then begin xrunerror('Type mismatch.'); exit; end;
	name:=xv(xgetslice(s,xnslice)); if name='' then begin xrunerror('Type mismatch.'); exit; end;
	ns:=p.names.first; r:=nil;
	while ns<>nil do begin cs:=ns.shape; ns:=ns.next;
		if xv(xgetslice(cs,xnslice))<>name then continue;
		if not cs.calculated then xupdateshape(cs);
		val:=xgetslice(cs,xvslice); if val='' then continue;
		if s.dtyp<>cs.dtyp then begin xrunerror('Type mismatch.'); exit; end;
		if r=nil then begin r:=cs; continue; end;
		case s.dtyp of
			xbooleandata: if xcsab(val,xgetslice(r,xvslice))<0 then r:=cs;
			xdatedata:    if xcsad(val,xgetslice(r,xvslice))<0 then r:=cs;
			xnumberdata:	if xcsan(val,xgetslice(r,xvslice))<0 then r:=cs;
			xstringdata:  if xcsas(val,xgetslice(r,xvslice))<0 then r:=cs;
			xtimedata:    if xcsat(val,xgetslice(r,xvslice))<0 then r:=cs;
		end;
	end;
	if r<>nil then xreturnobject(xstaticvar,xcopyshape(r)) else xreturnnull;
end;

begin
	if not xcheckparameters(1,2) then exit;
	if xpeekregister(0)=1 then begin xinternalmin_spreadsheet; exit; end;
	if xoperandsarenull(2) then begin xreturnnull; exit; end;
	r:='';
	a:=xpeektype(1); if xca.abort then exit;
	b:=xpeektype(2); if xca.abort then exit;
	ad:=xpeekasstring(1); if xca.abort then exit;
	bd:=xpeekasstring(2); if xca.abort then exit;
	if (a<>b) and (a<>xnodata) and (b<>xnodata) then begin xrunerror('Type mismatch.'); exit; end;
	if a=xnodata then d:=b else d:=a;
	case d of
		xbooleandata: if (ad<>'') and (xcsab(ad,bd)<0) then r:=ad else r:=bd;
		xdatedata:    if (ad<>'') and (xcsad(ad,bd)<0) then r:=ad else r:=bd;
		xnumberdata:	if (ad<>'') and (xcsan(ad,bd)<0) then r:=ad else r:=bd;
		xstringdata:  if (ad<>'') and (xcsas(ad,bd)<0) then r:=ad else r:=bd;
		xtimedata:    if (ad<>'') and (xcsat(ad,bd)<0) then r:=ad else r:=bd;
	end;
	if r<>'' then xreturnstringastype(d,r) else xreturnnull;
end;

procedure xinternalmodulus;
	var a,b:xnumber;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandsarenull(2) then begin xreturnnull; exit; end;
	a:=xpeeknumber(1); if xca.abort then exit;
	b:=xpeeknumber(2); if xca.abort then exit;
	if b=0 then begin xrunerror('Cannot divide by zero.'); exit; end;
	xreturnnumber(a-int(a/b)*b);
end;

procedure xinternalmultiply;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandsarenull(2) then begin xreturnnull; exit; end;
	xreturnnumber(xpeeknumber(1)*xpeeknumber(2));
end;

procedure xinternalnegate;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(-xpeeknumber(1));
end;

procedure xinternalnewdrawer;
	var a:xdrawer;
begin
	if not xcheckparameters(4,5) then exit;
	if xpeekregister(0)=5 then a:=xpeekdrawer(5) else a:=nil;
	xreturnobject(xdynamicvar,xnewdrawer(xpeekcabinet(1),xpeekstring(2),xpeekstring(3),xpeekstring(4),a));
end;

procedure xinternalnewfile;
begin
	if xcheckparameters(1,1) then xreturnboolean(xnewfile(xpeekstring(1)));
end;

procedure xinternalnewfolder;
	var a:xfolder;
begin
	if not xcheckparameters(3,4) then exit;
	if xpeekregister(0)=4 then a:=xpeekfolder(4) else a:=nil;
	xreturnobject(xdynamicvar,xnewfolder(xpeekdrawer(1),xpeekstring(2),xpeekstring(3),a));
end;

procedure xinternalnewpage;
	var a:xpage;
begin
	if not xcheckparameters(2,3) then exit;
	if xpeekregister(0)=3 then a:=xpeekpage(3) else a:=nil;
	xreturnobject(xdynamicvar,xnewpage(xpeekfolder(1),xpeekpage(2),a));
end;

procedure xinternalnextrecord;
	var b:xboolean; r:xrecord;
begin
	if not xcheckparameters(2,2) then exit;
	r:=xpeekobject(1); if xca.abort then exit;
	b:=xpeekboolean(2); if xca.abort then exit;
	if r=nil then begin xreturnobject(xdynamicvar,nil); exit; end;
	if not (xtype(r) in [xdrawerrecord,xfolderrecord,xpagerecord]) then begin xrunerror('Type mismatch.'); exit; end;
	if b then xreturnobject(xdynamicvar,r.prev) else xreturnobject(xdynamicvar,r.next);
end;

procedure xinternalnot;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnboolean(not xpeekboolean(1));
end;

procedure xinternalnotequal;
	var a,b:xdatatyp;
begin
	with xca^,local do begin
		if not xcheckparameters(2,2) then exit;
		if xoperandisnull(2) then begin xreturnboolean(xobjectisnull(xpeekobject(1))<>xobjectisnull(xpeekobject(2))); exit; end;
		a:=xpeektype(1); if xca.abort then exit;
		b:=xpeektype(2); if xca.abort then exit;
		if (a=xbooleandata)	and (b=xbooleandata)	then begin xreturnboolean(xpeekboolean(1)<>xpeekboolean(2)); exit; end;
		if (a=xcabinetdata)	and (b=xcabinetdata)	then begin xreturnboolean(xpeekcabinet(1)<>xpeekcabinet(2)); exit; end;
		if (a=xdatedata) 		and (b=xdatedata)			then begin xreturnboolean(xpeekdate(1)<>xpeekdate(2)); exit; end;
		if (a=xdrawerdata)	and (b=xdrawerdata)		then begin xreturnboolean(xpeekdrawer(1)<>xpeekdrawer(2)); exit; end;
		if (a=xfolderdata)	and (b=xfolderdata)		then begin xreturnboolean(xpeekfolder(1)<>xpeekfolder(2)); exit; end;
		if (a=xnumberdata) 	and (b=xnumberdata)		then begin xreturnboolean(xpeeknumber(1)<>xpeeknumber(2)); exit; end;
		if (a=xpagedata)		and (b=xpagedata)			then begin xreturnboolean(xpeekpage(1)<>xpeekpage(2)); exit; end;
		if (a=xstringdata)	and (b=xstringdata)		then begin xreturnboolean(ansicomparetext(xpeekstring(1),xpeekstring(2))<>0); exit; end;
		if (a=xtimedata) 		and (b=xtimedata)			then begin xreturnboolean(xpeektime(1)<>xpeektime(2)); exit; end;
		xrunerror('Type mismatch.');
	end;
end;

procedure xinternalopencabinet;
begin
	if xcheckparameters(1,1) then xreturnobject(xdynamicvar,xopencabinet(xpeekstring(1)));
end;

procedure xinternalopendrawer;
begin
	if xcheckparameters(1,1) then xreturnboolean(xopendrawer(xpeekdrawer(1)));
end;

procedure xinternalopenfolder;
begin
	if xcheckparameters(1,1) then xreturnboolean(xopenfolder(xpeekfolder(1)));
end;
procedure xinternalopenpage;
begin
	if xcheckparameters(1,1) then xreturnboolean(xopenpage(xpeekpage(1)));
end;

procedure xinternalor;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandsarenull(2) then begin xreturnnull; exit; end;
	xreturnboolean(xpeekboolean(1) or xpeekboolean(2));
end;

procedure xinternalordinal;
	var s:xstring;
begin
	if not xcheckparameters(1,1) then exit;
	s:=xpeekstring(1); if xca.abort then exit;
	if s='' then begin xreturnnumber(0); exit; end;
	xreturnnumber(ord(s[1]));
end;

procedure xinternalpause;
begin
	if xcheckparameters(1,1) then xpause(round(xpeeknumber(1)*1000));
end;

procedure xinternalposition;
begin
	if xcheckparameters(2,2) then xreturnnumber(pos(xpeekstring(1),xpeekstring(2)));
end;

procedure xinternalpower;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandsarenull(2) then begin xreturnnull; exit; end;
	xreturnnumber(power(xpeeknumber(1),xpeeknumber(2)));
end;

procedure xinternalprintpage;
	var auto:xboolean; d:xdoodad; n:xstring; p:xpage;
begin
	if not xcheckparameters(3,3) then exit;
	n:=xpeekstring(1); if xca.abort then exit;
	p:=xpeekpage(2); if xca.abort then exit;
	auto:=xpeekboolean(3); if xca.abort then exit;
	d:=xfinddoodad(xprinterdoodad,n);
	if d=nil then begin xreturnboolean(false); exit; end;
	xbeginprinting(d);
	xreturnboolean(xprintpage(p,auto));
	xendprinting;
end;

procedure xinternalradiantodegree;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(radtodeg(xpeeknumber(1)));
end;

procedure xinternalrandom;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandsarenull(2) then begin xreturnnull; exit; end;
	xreturnnumber(xgetrandomnumber(xpeekinteger(1),xpeekinteger(2)));
end;

procedure xinternalrandomize;
begin
	if not xcheckparameters(0,1) then exit;
	if xoperandsarenull(xpeekregister(0)) then exit;
	if xpeekregister(0)=0 then randomize else randseed:=xpeekinteger(1);
end;

procedure xinternalreadfile;
	var b:xboolean; s:xstring;
begin
	if not xcheckparameters(2,2) then exit;
	b:=xreadfile(xpeekstring(1)); if xca.abort then exit;
	xreturnboolean(b);
	if not b then begin xpokestring(2,''); exit; end;
	setlength(s,xbuffer.count);
	move(xbuffer.bytes[1],xpchar(s)^,xbuffer.count);
	xpokestring(2,s);
end;

procedure xinternalrealdivide;
	var a,b:xnumber;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandsarenull(2) then begin xreturnnull; exit; end;
	a:=xpeeknumber(1); if xca.abort then exit;
	b:=xpeeknumber(2); if xca.abort then exit;
	if b=0 then begin xrunerror('Cannot divide by zero.'); exit; end;
	xreturnnumber(a/b);
end;

procedure xinternalremoveleading;
	var cp:xinteger; d:xcharset;
begin
	if not xcheckparameters(2,256) then exit;
	d:=[];
	for cp:=2 to xpeekregister(0) do begin
		d:=d+[xpeekcharacter(cp)]; if xca.abort then exit;
	end;
	xreturnstring(xremoveleading(xpeekstring(1),d));
end;

procedure xinternalremovetrailing;
	var cp:xinteger; d:xcharset;
begin
	if not xcheckparameters(2,256) then exit;
	d:=[];
	for cp:=2 to xpeekregister(0) do begin
		d:=d+[xpeekcharacter(cp)]; if xca.abort then exit;
	end;
	xreturnstring(xremovetrailing(xpeekstring(1),d));
end;

procedure xinternalremoveunwanted;
begin
	if xcheckparameters(1,1) then xreturnstring(xremoveunwanted(xpeekstring(1)));
end;

procedure xinternalrenamedrawer;
begin
	if xcheckparameters(4,4) then xreturnboolean(xrenamedrawer(xpeekdrawer(1),xpeekstring(2),xpeekstring(3),xpeekstring(4)));
end;

procedure xinternalrenamefile;
begin
	if xcheckparameters(2,2) then xreturnboolean(xrenamefile(xpeekstring(1),xpeekstring(2)));
end;

procedure xinternalrenamefolder;
begin
	if xcheckparameters(3,3) then xreturnboolean(xrenamefolder(xpeekfolder(1),xpeekstring(2),xpeekstring(3)));
end;

procedure xinternalresolve;

var n:xstring; o:xobject; spreadsheet:xboolean;

procedure xinternalresolve_cabinet(c:xcabinet);
begin
  if c=nil          then begin xreturnnull; exit; end;
	if xv(n)='first'	then begin xreturnobject(xdynamicvar,c.drawers.first); exit; end;
	if xv(n)='last' 	then begin xreturnobject(xdynamicvar,c.drawers.last); exit; end;
	if xv(n)='name' 	then begin xreturnstring(c.name); exit; end;
	xrunerror('Field '''+n+''' not found in cabinet.');
end;

procedure xinternalresolve_drawer(d:xdrawer);
begin
	if d=nil            then begin xreturnnull; exit; end;
	if xv(n)='cabinet'	then begin xreturnobject(xdynamicvar,d.parent); exit; end;
	if xv(n)='first'		then begin xreturnobject(xdynamicvar,d.folders.first); exit; end;
	if xv(n)='group' 		then begin xreturnstring(d.group); exit; end;
	if xv(n)='last' 		then begin xreturnobject(xdynamicvar,d.folders.last); exit; end;
	if xv(n)='name' 		then begin xreturnstring(d.name); exit; end;
	if xv(n)='next' 		then begin xreturnobject(xdynamicvar,d.next); exit; end;
	if xv(n)='prev' 		then begin xreturnobject(xdynamicvar,d.prev); exit; end;
	if xv(n)='sel' 			then begin xreturnboolean(d.sel); exit; end;
	if xv(n)='version' 	then begin xreturnstring(d.version); exit; end;
	xrunerror('Field '''+n+''' not found in drawer.');
end;

procedure xinternalresolve_folder(f:xfolder);
begin
	if f=nil            then begin xreturnnull; exit; end;
	if xv(n)='drawer'		then begin xreturnobject(xdynamicvar,f.parent); exit; end;
	if xv(n)='first' 		then begin xreturnobject(xdynamicvar,f.pages.first); exit; end;
	if xv(n)='last' 		then begin xreturnobject(xdynamicvar,f.pages.last); exit; end;
	if xv(n)='name' 		then begin xreturnstring(f.name); exit; end;
	if xv(n)='next' 		then begin xreturnobject(xdynamicvar,f.next); exit; end;
	if xv(n)='prev' 		then begin xreturnobject(xdynamicvar,f.prev); exit; end;
	if xv(n)='sel' 			then begin xreturnboolean(f.sel); exit; end;
	if xv(n)='version' 	then begin xreturnstring(f.version); exit; end;
	xrunerror('Field '''+n+''' not found in folder.');
end;

procedure xinternalresolve_page(p:xpage);
	var f:xinteger; o:xstop; s:xshape;
begin
	if p=nil        	then begin xreturnnull; exit; end;
	if xv(n)='folder'	then begin xreturnobject(xdynamicvar,p.parent); exit; end;
	if xv(n)='next'		then begin xreturnobject(xdynamicvar,p.next); exit; end;
	if xv(n)='prev'		then begin xreturnobject(xdynamicvar,p.prev); exit; end;
	if xv(n)='sel'		then begin xreturnboolean(p.sel); exit; end;
	s:=nil;
	o:=xfindstopbynameandsubscript(p.names,n,false,0); if o<>nil then s:=o.shape;
	if s=nil then s:=xfindshapeonedgebyname(p.shapes,n);
	if s=nil then f:=xfindfield(p.fields,n) else f:=0;
	if (s=nil) and (f=0) and (not spreadsheet) then begin xreturnnull; exit; end;
	if (s=nil) and (f=0) then begin xrunerror('Field '''+n+''' not found on page.'); exit; end;
	if s=nil then with p.fields[f] do begin xreturnstringastype(dtyp,value); exit; end;
	if not s.calculated then xupdateshape(s);
	xreturnobject(xdynamicvar,s);
end;

procedure xinternalresolve_shape(s:xshape);
begin
	if s=nil            then begin xreturnnull; exit; end;
	if xv(n)='sel' 			then begin xreturnboolean(s.sel); exit; end;
	xrunerror('Field '''+n+''' not found in shape.');
end;

procedure xinternalresolve_unknown;
begin
	spreadsheet:=xpeekboolean(3); if xca.abort then exit;
	if not spreadsheet then begin xreturnnull; exit; end;
	o:=xgetpage(xca.ip.parent);
	if xtype(o)<>xpagerecord then begin xreturnnull; exit; end;
	xinternalresolve_page(o);
end;

begin
	o:=xpeekobject(1); if xca.abort then exit;
	n:=xpeekstring(2); if xca.abort then exit;
	case xtype(o) of
		xcabinetrecord:	begin xinternalresolve_cabinet(o); exit; end;
		xdrawerrecord:	begin xinternalresolve_drawer(o); exit; end;
		xfolderrecord:	begin xinternalresolve_folder(o); exit; end;
		xpagerecord:		begin xinternalresolve_page(o); exit; end;
		xshaperecord:		begin xinternalresolve_shape(o); exit; end;
		xnorecord:			begin xinternalresolve_unknown; exit; end;
	end;
end;

procedure xinternalright;
	var s:xstring;
begin
	if not xcheckparameters(2,2) then exit;
	s:=xpeekstring(1); if xca.abort then exit;
	xreturnstring(copy(s,length(s)-xpeekinteger(2)+1,length(s)));
end;

procedure xinternalround;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(round(xpeeknumber(1)));
end;

procedure xinternalrounddown;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(floor(xpeeknumber(1)));
end;

procedure xinternalroundup;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(ceil(xpeeknumber(1)));
end;

procedure xinternalsavepage;
	var p:xpage;
begin
	if not xcheckparameters(1,1) then exit;
	p:=xpeekpage(1); if xca.abort then exit;
	if p<>nil then p.modified:=true;
	xreturnboolean(xsavepage(p));
end;

procedure xinternalselectdrawer;
	var d:xdrawer;
begin
	if not xcheckparameters(2,2) then exit;
	d:=xpeekdrawer(1); if xca.abort then exit;
	if d=nil then exit;
	d.sel:=xpeekboolean(2);
end;

procedure xinternalselectdrawers;
	var c:xcabinet;
begin
	if not xcheckparameters(2,2) then exit;
	c:=xpeekcabinet(1); if xca.abort then exit;
	if c=nil then exit;
	xselectdrawers(c.drawers,xpeekboolean(2));
end;

procedure xinternalselectfolder;
	var f:xfolder;
begin
	if not xcheckparameters(2,2) then exit;
	f:=xpeekfolder(1); if xca.abort then exit;
	if f=nil then exit;
	f.sel:=xpeekboolean(2);
end;

procedure xinternalselectfolders;
	var d:xdrawer;
begin
	if not xcheckparameters(2,2) then exit;
	d:=xpeekdrawer(1); if xca.abort then exit;
	if d=nil then exit;
	xselectfolders(d.folders,xpeekboolean(2));
end;

procedure xinternalselectpage;
	var p:xpage;
begin
	if not xcheckparameters(2,2) then exit;
	p:=xpeekpage(1); if xca.abort then exit;
	if p=nil then exit;
	p.sel:=xpeekboolean(2);
end;

procedure xinternalselectpages;
	var f:xfolder;
begin
	if not xcheckparameters(2,2) then exit;
	f:=xpeekfolder(1); if xca.abort then exit;
	if f=nil then exit;
	xselectpages(f.pages,xpeekboolean(2));
end;

procedure xinternalsine;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(sin(xpeeknumber(1)));
end;

procedure xinternalsortdrawers;
	var c:xcabinet; s:xstring; t:xsorttyp;
begin
	if not xcheckparameters(2,2) then exit;
	c:=xpeekcabinet(1); if xca.abort then exit;
	if c=nil then exit;
	s:=xv(xpeekstring(2)); if xca.abort then exit;
	t:=xnosort;
	if s=xsorts[xgroupsort] then t:=xgroupsort;
	if s=xsorts[xnamesort] then t:=xnamesort;
	if s=xsorts[xversionsort] then t:=xversionsort;
	xsortchain(c.drawers,t,'',true);
end;

procedure xinternalsortfolders;
	var d:xdrawer; s:xstring; t:xsorttyp;
begin
	if not xcheckparameters(2,2) then exit;
	d:=xpeekdrawer(1); if xca.abort then exit;
	if d=nil then exit;
	s:=xv(xpeekstring(2)); if xca.abort then exit;
	t:=xnosort;
	if s=xsorts[xnamesort] then t:=xnamesort;
	if s=xsorts[xversionsort] then t:=xversionsort;
	xsortchain(d.folders,t,'',true);
end;

procedure xinternalsortpages;
	var f:xfolder;
begin
	if not xcheckparameters(2,2) then exit;
	f:=xpeekfolder(1); if xca.abort then exit;
	if f=nil then exit;
	xsortchain(f.pages,xusersort,xpeekstring(2),true);
end;

procedure xinternalsquareroot;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(sqrt(xpeeknumber(1)));
end;

procedure xinternalsubtract;

var a,b:xdatatyp;

procedure xinternalsubtract_timeandtime;
	var h,m,s,ms:word;
begin
	with xca.local do begin
		decodetime(xpeektime(1)-xpeektime(2),h,m,s,ms);
		xreturnnumber(h*3600+m*60+s);
	end;
end;

begin
	with xca^,local do begin
		if not xcheckparameters(2,2) then exit;
		if xoperandsarenull(2) then begin xreturnnull; exit; end;
		a:=xpeektype(1); if xca.abort then exit;
		b:=xpeektype(2); if xca.abort then exit;
		if (a=xdatedata)    and (b in [xnodata,xnumberdata])	then begin xreturndate(xpeekdate(1)-xpeeknumber(2)); exit; end;
		if (a=xtimedata)    and (b in [xnodata,xnumberdata])	then begin xreturntime(xpeektime(1)-(xpeeknumber(2)*1000/msecsperday)); exit; end;

		if (a=xdatedata)    and (b in [xnodata,xdatedata])    then begin xreturnnumber(xpeekdate(1)-xpeekdate(2)); exit; end;
		if (b=xdatedata)    and (a in [xnodata,xdatedata])    then begin xreturnnumber(xpeekdate(1)-xpeekdate(2)); exit; end;
		if (a=xnumberdata)  and (b in [xnodata,xnumberdata])  then begin xreturnnumber(xpeeknumber(1)-xpeeknumber(2)); exit; end;
		if (b=xnumberdata)  and (a in [xnodata,xnumberdata])  then begin xreturnnumber(xpeeknumber(1)-xpeeknumber(2)); exit; end;
		if (a=xtimedata)    and (b in [xnodata,xtimedata])    then begin xinternalsubtract_timeandtime; exit; end;
		if (b=xtimedata)    and (a in [xnodata,xtimedata])    then begin xinternalsubtract_timeandtime; exit; end;
		xrunerror('Type mismatch.');
	end;
end;

procedure xinternalswap;
	var a,b:xnumber;
begin
	if not xcheckparameters(2,2) then exit;
	a:=xpeeknumber(1); if xca.abort then exit;
	b:=xpeeknumber(2); if xca.abort then exit;
	xpokenumber(1,b); xpokenumber(2,a);
end;

procedure xinternalsum;
	var b:xboolean; cs,s:xshape; name,val:xstring; ns:xstop; p:xpage; r,n:xnumber;
begin
	if not xcheckparameters(1,1) then exit;
	s:=xpeektext(1); if xca.abort then exit;
	p:=xgetpage(s); if p=nil then begin xrunerror('Type mismatch.'); exit; end;
	name:=xv(xgetslice(s,xnslice)); if name='' then begin xrunerror('Type mismatch.'); exit; end;
	ns:=p.names.first; b:=false; r:=0;
	while ns<>nil do begin cs:=ns.shape; ns:=ns.next;
		if xv(xgetslice(cs,xnslice))<>name then continue;
		if not cs.calculated then xupdateshape(cs);
		val:=xgetslice(cs,xvslice); if val='' then continue;
		if xstncwe(val,n) then begin xrunerror('Type mismatch.'); exit; end;
		b:=true; r:=r+n;
	end;
	if b then xreturnnumber(r) else xreturnnull;
end;

procedure xinternaltangent;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(tan(xpeeknumber(1)));
end;

procedure xinternaltruncate;
begin
	if not xcheckparameters(1,1) then exit;
	if xoperandsarenull(1) then begin xreturnnull; exit; end;
	xreturnnumber(int(xpeeknumber(1)));
end;

procedure xinternalunfilepage;
	var p:xpage;
begin
	if not xcheckparameters(1,1) then exit;
	p:=xpeekpage(1);
	if (p<>nil) and (p=xcp) then begin xreturnboolean(false); xcx:='Current page cannot be unfiled.'; exit; end;
	xreturnboolean(xunfilepage(p));
end;

procedure xinternalunlock;
begin
	if xcheckparameters(1,1) then xunlockcabinet(xcabinetnametocid(xpeekstring(1)));
end;

procedure xinternalunlockall;
begin
	if xcheckparameters(0,0) then xunlockcabinets;
end;

procedure xinternalupdatepage;
	var b:xboolean; p:xpage;
begin
	if not xcheckparameters(1,1) then exit;
  p:=xpeekpage(1); if xca.abort then exit;
  xindexpage(p); b:=xupdatepage(p); xreturnboolean(b); if b then xindexpage(p);
end;

procedure xinternalupperbound;
	var s:xshape;
begin
	if not xcheckparameters(1,1) then exit;
	s:=xpeeknamable(1); if xca.abort then exit;
	if s.parent=nil then begin xreturnnumber(0); exit; end;
	xreturnnumber(xgetupperbound(xgetpage(s).names,xgetslice(s,xnslice)));
end;

procedure xinternaluppercase;
begin
	if xcheckparameters(1,1) then xreturnstring(ansiuppercase(xpeekstring(1)));
end;

procedure xinternalviewcabinet;
begin
	if xcheckparameters(2,2) then xviewcabinet(xpeekcabinet(1),xpeekdrawer(2));
end;

procedure xinternalviewdrawer;
begin
	if xcheckparameters(2,2) then xviewdrawer(xpeekdrawer(1),xpeekfolder(2));
end;

procedure xinternalviewfolder;
begin
	if xcheckparameters(2,2) then xviewfolder(xpeekfolder(1),xpeekpage(2));
end;

procedure xinternalviewpage;
begin
	if xcheckparameters(1,1) then xviewpage(xpeekpage(1),nil,0,0);
end;

procedure xinternalwarning;
	var cp:xinteger; s:xstring;
begin
	if not xcheckparameters(0,256) then exit;
	s:='';
	for cp:=1 to xpeekregister(0) do begin s:=s+xpeekasstring(cp); if xca.abort then exit; end;
	xwarning(s);
end;

procedure xinternalwritefile;
	var s:xstring;
begin
	if not xcheckparameters(2,2) then exit;
	s:=xpeekstring(2); if xca.abort then exit;
	xbuffer.count:=length(s);
	while xbuffer.count>=xbuffer.size do xgrowbuffer;
	move(xpchar(s)^,xbuffer.bytes[1],length(s));
	xreturnboolean(xwritefile(xpeekstring(1)));
end;

procedure xinternalxor;
begin
	if not xcheckparameters(2,2) then exit;
	if xoperandsarenull(2) then begin xreturnnull; exit; end;
	xreturnboolean(xpeekboolean(1) xor xpeekboolean(2));
end;

function  xintersectradiusandellipse(r:xrect; p:xpoint):xpoint;
	var a,b,det,a1,b1,c1,m,root,z:xextended; cp:xpoint;
begin
	cp:=xgetcenterpoint(r);
	result.x:=cp.x;
	if p.y>cp.y then result.y:=r.bottom else result.y:=r.top;
	if p.x=cp.x then exit;
	result:=xnilpoint;
	a:=sqr((xwidth(r)-xtpp)/2); b:=sqr((xheight(r)-xtpp)/2);
	m:=((cp.y-p.y)/(p.x-cp.x));
	z:=p.y+(m*p.x);
	a1:=(a*m*m)+b;
	if a1=0 then exit;
	b1:=(2.0*a*m*cp.y)-(2.0*a*m*z)-(2.0*b*cp.x);
	c1:=(a*z*z)-(2.0*a*z*cp.y)+(a*cp.y*cp.y)-(a*b)+(b*cp.x*cp.x);
	det:=(b1*b1)-(4.0*a1*c1);
	if det<0 then exit;
	if p.x<cp.x then root:=((-b1-sqrt(det))/(2.0*a1)) else root:=((-b1+sqrt(det))/(2.0*a1));
	result.x:=round(root); result.y:=round(z-(m*root));
end;

function  xintersectrectangles(a,b:xrect):xrect;
begin
	with result do begin
		if a.left<b.left 			then left:=b.left 		else left:=a.left;
		if a.top<b.top 				then top:=b.top 			else top:=a.top;
		if a.right>b.right 		then right:=b.right 	else right:=a.right;
		if a.bottom>b.bottom	then bottom:=b.bottom	else bottom:=a.bottom;
		if (right<left) or (bottom<top) then result:=xnilrect;
	end;
end;

function  xintext:xboolean;
begin
	result:=false; if xcp=nil then exit;
	if xcv<>xpageview then exit;
	if not xpir(xgvpr(xcp),xce.gp) then exit;
	xce.lp:=xlp(xce.gp,xcp.origin);
	result:=xpointinshape(xcs,xce.lp);
end;

function  xinvertex:xboolean;
	var cs,ns:xshape;
begin
	result:=false; if xcp=nil then exit;
	if xcv<>xpageview then exit;
	if not xpir(xgvpr(xcp),xce.gp) then exit;
	xce.lp:=xlp(xce.gp,xcp.origin);
	ns:=xcp.shapes.last;
	while ns<>nil do begin cs:=ns; ns:=ns.prev;
		if not cs.sel then continue;
		if not xpointinvertex(cs,xce.lp,xce.vertex) then continue;
		xce.shape:=cs;
		result:=true;
		exit;
	end;
end;

procedure xinvertpolygon(d:xdevice; n:xpolygon);
	var cv:xinteger;
begin
	setrop2(xdcs[d],r2_notxorpen);
	selectobject(xdcs[d],xpens[xwhite,xnormal]);
	selectobject(xdcs[d],xbrushes[xblack,xnormal]);
	for cv:=1 to n.count do with n.vertices[cv] do begin x:=x div xfac; y:=y div xfac; end;
	polygon(xdcs[d],n.vertices[1],n.count);
	setrop2(xdcs[d],r2_copypen);
end;
{
procedure xinvertrectangle(d:xdevice; r:xrect);
begin
	setrop2(xdcs[d],r2_notxorpen);
	selectobject(xdcs[d],xpens[xblack,xnormal]);
	selectobject(xdcs[d],xbrushes[xblack,xnormal]);
	with r do rectangle(xdcs[d],left div xfac,top div xfac,(right+xbump[d].x) div xfac,(bottom+xbump[d].y) div xfac);
	setrop2(xdcs[d],r2_copypen);
end;
}
procedure xinvertrectangle(d:xdevice; r:xrect);
  var prev:xinteger;
begin
	with r do begin
		left:=left div xfac; top:=top div xfac;
		right:=(right+xbump[d].x) div xfac; bottom:=(bottom+xbump[d].y) div xfac;
	end;
	invertrect(xdcs[d],r);
end;

function  xioerror(r:xinteger):xboolean;
begin
	result:=r<>0; if not result then exit;
	xcx:=xsystemerrormessage(getlasterror);
	if getlasterror=0 then case r of
		// delphi errors
		100:							xcx:='Disk read error.';	// disk read error
		101:							xcx:='Disk write error.';	// disk write error
		102:							xcx:='Not accessible.'; 	// file not assigned
		103:							xcx:='Not accessible.';		// file not open
		104:							xcx:='Not accessible.';		// file not open for input
		105:							xcx:='Not accessible.';		// file not open for output
		// windows errors
		error_disk_full:	xcx:='Cabinet is full.';
		else							xcx:=xsystemerrormessage(r);
	end;
end;

function  xioresult:xinteger;
begin
	result:=ioresult;
end;

function  xir(r:xrect; i:xtwit):xrect;
begin
	result.left:=r.left+i;
	result.top:=r.top+i;
	result.right:=r.right-i;
	result.bottom:=r.bottom-i;
end;

function  xisalphanumeric(c:xchar):xboolean;
begin
	result:=(ischaralphanumeric(c)) or (c=xtd);
end;

function  xisbooleanformat(f:xstring):xboolean;
begin
	result:=false; if f='' then exit;
	result:=pos('|',f)<>0;
end;

function  xiscolordevice(d:xdevice):xboolean;
begin
	result:=getdevicecaps(xdcs[d],numcolors)>2;
end;

function  xiscode(s:xshape):xboolean;
begin
	result:=false; if s=nil then exit;
	if s.styp<>xtextshape then exit;
	result:=ansilowercase(xgetslice(s,xfslice))=xcodeformat;
end;

function  xisdateformat(f:xstring):xboolean;
	const delims=xchars-['d','m','y']; seps=[' ','-','/',':',','];
	var p:xinteger; t:xstring;
begin
	result:=false; if f='' then exit;
	f:=ansilowercase(f); p:=1;
	t:=xgetnextgenerictoken(f,p,true,delims); if t='' then exit;
	if (t<>'m') and (t<>'mm') and (t<>'mmm') and (t<>'mmmm') then exit;
	t:=xgetnextgenerictoken(f,p,true,delims); if t='' then begin result:=true; exit; end;
	while (length(t)=1) and (t[1] in seps) do t:=xgetnextgenerictoken(f,p,true,delims);
	if (t<>'d') and (t<>'dd') then exit;
	t:=xgetnextgenerictoken(f,p,true,delims); if t='' then begin result:=true; exit; end;
	while (length(t)=1) and (t[1] in seps) do t:=xgetnextgenerictoken(f,p,true,delims);
	if (t<>'yy') and (t<>'yyyy') then exit;
	t:=xgetnextgenerictoken(f,p,true,delims); if t<>'' then exit;
	result:=true;
end;

function  xisdrawingpage(p:xpage):xboolean;
	var s:xshape; t:xstring;
begin
	result:=false;
	if p=nil then exit;
	s:=xfindshapeonedgebyname(p.shapes,'type'); if s=nil then begin result:=true; exit; end;
	t:=xv(xgetslice(s,xvslice));
	if (t='form') and (not xisprogramsdrawer(xgetdrawer(p))) then exit;
	if t='function' then exit;
	result:=true;
end;

function  xiseditable(s:xshape):xboolean;
begin
	result:=false; if s=nil then exit;
	if s.styp<>xtextshape then exit;
	result:=xstb(xgetslice(s,xuslice)) or xispopable(s);
end;

function  xiseditshape(s:xshape):xboolean;
begin
	result:=false; if s=nil then exit;
	result:=(s.styp=xtextshape) or ((s.styp=xpictureshape) and (s.slice=xnslice));
end;

function  xisformpage(p:xpage):xboolean;
	var s:xshape;
begin
	result:=false;
	if (p=nil) or (xisprogramsdrawer(xgetdrawer(p))) then exit;
	s:=xfindshapeonedgebyname(p.shapes,'type'); if s=nil then exit;
	result:=xv(xgetslice(s,xvslice))='form';
end;

function  xisfunctionpage(p:xpage):xboolean;
	var s:xshape;
begin
	result:=false;
	if p=nil then exit;
	s:=xfindshapeonedgebyname(p.shapes,'type'); if s=nil then exit;
	result:=xv(xgetslice(s,xvslice))='function';
end;

function  xishuge(var t:xtext):xboolean;
begin
	result:=(xwidth(t.rect) div xfac>high(smallint)) or (xheight(t.rect) div xfac>high(smallint));
end;

function  xisnumberformat(f:xstring):xboolean;
	const delims=xchars; valids=['z','9',',']; var p:xinteger; t:xstring;
begin
	result:=false; if f='' then exit;
	f:=ansilowercase(f); p:=1;
	t:=xgetnextgenerictoken(f,p,true,delims); if t='' then exit;
	if t='$' then t:=xgetnextgenerictoken(f,p,true,delims);
	while (length(t)=1) and (t[1] in valids) do t:=xgetnextgenerictoken(f,p,true,delims);
	if t='' then begin result:=true; exit; end;
	if t<>'.' then exit;
	t:=xgetnextgenerictoken(f,p,true,delims); if t='' then exit;
	while (length(t)=1) and (t[1] in valids-[',']) do t:=xgetnextgenerictoken(f,p,true,delims);
	if t<>'' then exit;
	result:=true;
end;

function  xisoneline(var t:xtext):xboolean;
begin
	result:=xheight(t.rect)<trunc(1.5*t.font.size);
end;

function  xispopable(s:xshape):xboolean;
begin
	result:=false; if s=nil then exit;
	if s.styp<>xtextshape then exit;
	result:=pos('|',xgetslice(s,xuslice))<>0;
end;

function  xisprogramsdrawer(d:xdrawer):xboolean;
begin
	result:=false; if d=nil then exit;
	if xv(d.group)<>xv(xprogramsdrawergroup) then exit;
	if xv(d.name)<>xv(xprogramsdrawername) then exit;
	result:=true;
end;

function  xisselection(s:xshape):xboolean;
begin
	result:=false; if s=nil then exit;
	result:=xistextselection(s.text);
end;

function  xissimple(var t:xtext):xboolean;
begin
	with t,font do result:=(not wrap) and (face=xcourierface) and (align=xleftalign);
end;

function  xistextselection(var t:xtext):xboolean;
begin
	with t,caretpos do result:=not ((col=anchor.col) and (row=anchor.row));
end;

function  xistimeformat(f:xstring):xboolean;
	const delims=xchars-['a','h','m','p','s']; seps=[' ',':'];
	var p:xinteger; t:xstring;
begin
	result:=false; if f='' then exit;
	f:=ansilowercase(f); p:=1;
	t:=xgetnextgenerictoken(f,p,true,delims); if t='' then exit;
	if (t<>'h') and (t<>'hh') then exit;
	t:=xgetnextgenerictoken(f,p,true,delims); if t='' then begin result:=true; exit; end;
	while (length(t)=1) and (t[1] in seps) do t:=xgetnextgenerictoken(f,p,true,delims);
	if t[1]='m' then begin
		if (t<>'m') and (t<>'mm') then exit;
		t:=xgetnextgenerictoken(f,p,true,delims); if t='' then begin result:=true; exit; end;
		while (length(t)=1) and (t[1] in seps) do t:=xgetnextgenerictoken(f,p,true,delims);
		if t[1]='s' then begin
			if (t<>'s') and (t<>'ss') then exit;
			t:=xgetnextgenerictoken(f,p,true,delims); if t='' then begin result:=true; exit; end;
			while (length(t)=1) and (t[1] in seps) do t:=xgetnextgenerictoken(f,p,true,delims);
		end;
	end;
	if (t<>'am') and (t<>'pm') then exit;
	result:=true;
end;

function  xits(i:xinteger):xstring;
begin
	result:=inttostr(i);
end;

function  xitt(i:xextended):xtwit;
begin
	result:=trunc(i*xtpi);
end;

{j}

{k}

function  xkeytodirection(k:xkey; command,shift:xboolean):xdir;
begin
	case k of
		vk_down:  	result:=xdown;
		vk_end:   	if command then result:=xbottom else result:=xend;
		vk_home:  	if command then result:=xtop else result:=xhome;
		vk_left:  	result:=xleft;
		vk_next:  	result:=xpagedown;
		vk_prior: 	result:=xpageup;
		vk_return:	if shift then result:=xup else result:=xdown;
		vk_right:		result:=xright;
		vk_tab:			if shift then result:=xleft else result:=xright;
		vk_up:    	result:=xup;
		else				result:=xnodir;
	end;
end;

{l}

function  xlimit(a,min,max:xinteger):xinteger;
begin
	result:=a;
	if result<min then result:=min;
	if result>max then result:=max;
end;

function  xlimitpoint(p:xpoint; r:xrect):xpoint;
begin
	result:=p;
	if p.x<r.left 	then result.x:=r.left;
	if p.x>r.right 	then result.x:=r.right;
	if p.y<r.top 		then result.y:=r.top;
	if p.y>r.bottom	then result.y:=r.bottom;
end;

function  xlockcabinet(cid:xstring):xboolean;

var e:xinteger; cn:xstring; n:xlock; st:xtick;

function  xlockcabinet_compatible:xboolean;
	const ovs:array[1..2] of xversion=(19971007,19980324);
	var cv:xinteger; v:xversion;
begin
	result:=false; v:=0;
	with n^ do begin
		if xfilesize(fcb)<>1 then exit;
		xseek(fcb,0); xblockread(fcb,v,1);
		for cv:=low(ovs) to high(ovs) do begin
			if v<>ovs[cv] then continue;
			xseek(fcb,0); xblockwrite(fcb,xfileversion,1); v:=xfileversion;
			break;
		end;
		result:=v=xfileversion;
		xioresult;
	end;
end;

function  xlockcabinet_format:xboolean;
	var fcb:file;
begin
	result:=false;
	if xcabinetidentifierisreadonly(cid) and not xfileexists(cn+'lock') then begin xcx:='Cabinet is not valid.'; exit; end;
	if xcabinetidentifierisreadonly(cid) then begin result:=true; exit; end;
	//if xdirectoryexists(cn) and xfileexists(cn+'lock') and xfileexists(xgetdrawerindexname(cid)) then begin result:=true; exit; end;
	if not xdirectoryexists(cn) and not xnewdirectory(cn) then exit;
	if not xfileexists(cn+'lock') then begin
		xassignfile(fcb,cn+'lock');
		xrewrite(fcb,sizeof(xfileversion));
		xblockwrite(fcb,xfileversion,1);
		xclosefile(fcb);
		if xioerror(xioresult) then exit;
	end;
	if not xfileexists(xgetdrawerindexname(cid)) then begin
		if not xnewfile(xgetdrawerindexname(cid)) then exit;
		if not xappenddrawerentry(cid,xmakedrawerentry(0,0,'','','')) then exit;
	end;
	result:=true;
end;

begin
	result:=false;
	if not xcabinetidentifierisvalid(cid) then begin xcx:='Cabinet is not accessible.'; exit; end;
	n:=xfindlock(cid); if n=nil then begin n:=xcreatelock(cid); xappendlink(xlocks,n); end;
	with n^ do begin
		cn:=cid+xname+'\';
		if not xlockcabinet_format then exit;
		if count<>0 then begin result:=true; inc(count); exit; end;
		xassignfile(fcb,cn+'lock');
		st:=xgetticks;
		repeat
			if abs(xgetticks-st)>=90000 then begin xcx:='Cabinet is not accessible.'; exit; end;
			if xuseraborted then exit;
			xreset(fcb,sizeof(xfileversion));
			e:=xioresult; if e=0 then break;
			if e=error_sharing_violation then continue;
			xioerror(e);
			exit;
		until xforever;
		inc(count);
		if not xlockcabinet_compatible then begin xunlockcabinet(cid); xcx:='Program and file versions are not compatible.'; exit; end;
		result:=true;
	end;
end;

function  xlp(g,o:xpoint):xpoint;
begin
	result.x:=g.x-o.x; result.y:=g.y-o.y;
end;

function  xlr(r:xrect; o:xpoint):xrect;
begin
	result.left:=r.left-o.x;
	result.top:=r.top-o.y;
	result.right:=r.right-o.x;
	result.bottom:=r.bottom-o.y;
end;

function  xlvbr(b:xblock):xrect;
begin
	result:=xnilrect; if b=nil then exit;
	result:=xintersectrectangles(b.body,xlr(b.clip,b.origin));
end;

function  xlvcr(c:xcabinet):xrect;
begin
	result:=xnilrect; if c=nil then exit;
	with c^,drawers^ do begin
		if first=nil then exit;
		result:=xlr(body,origin);
		result.right:=xmin(lastdrawer.head.right,result.right);
	end;
end;

function  xlvdr(d:xdrawer):xrect;
begin
	result:=xnilrect; if d=nil then exit;
	with d^,folders^ do begin
		if first=nil then exit;
		result:=xlr(body,origin);
		result.right:=xmin(lastfolder.head.right,result.right);
	end;
end;

function  xlvfr(f:xfolder):xrect;
begin
	result:=xnilrect; if f=nil then exit;
	with f^,pages^ do begin
		if first=nil then exit;
		result:=xlr(body,origin);
		result.right:=xmin(lastpage.head.right,result.right);
	end;
end;

function  xlvpr(p:xpage):xrect;
begin
	result:=xnilrect; if p=nil then exit;
	result:=xintersectrectangles(p.body,xlr(xca.clip,p.origin));
end;

{m}

function  xmakearc(r:xrect; a,b:xdegree):xarc;
begin
	fillchar(result,sizeof(result),x00);
	with result do begin
		rect:=r;
		angles[1]:=a;
		angles[2]:=b;
		mag:=1.0;
	end;
end;

function  xmakecurve:xcurve;
begin
	xpolygon(result):=xmakepolygon;
end;

function  xmakeellipse(r:xrect):xellipse;
begin
	fillchar(result,sizeof(result),x00);
	result.rect:=r;
end;

function  xmakedrawerentry(id,lev:xinteger; g,n,v:xstring):xdrawerentry;
begin
	fillchar(result,sizeof(result),x00);
	with result do begin did:=id; level:=lev; group:=g; name:=n; version:=v; end;
end;

function  xmakeevent(e:xeventtyp):xevent;
begin
	fillchar(result,sizeof(result),x00);
	result.etyp:=e;
	result.gp:=xgetmousepoint;
	result.command:=((getkeystate(vk_control) or getkeystate(vk_menu)) and $8000)<>0;
	result.shift:=(getkeystate(vk_shift) and $8000)<>0;
end;

function  xmakefolderentry(id,lev:xinteger; n,v:xstring):xfolderentry;
begin
	fillchar(result,sizeof(result),x00);
	with result do begin fid:=id; level:=lev; name:=n; version:=v; end;
end;

function  xmakepageentry(id,lev:xinteger; const f:xfields):xpageentry;
begin
	fillchar(result,sizeof(result),x00);
	with result do begin pid:=id; level:=lev; fields:=f; end;
end;

function  xmakepicture:xpicture;
begin
	fillchar(result,sizeof(result),x00);
	result.rect:=xmr(0,0,360,360);
	result.color:=xclearcolor;
	result.mag:=1.0;
end;

function  xmakepolygon:xpolygon;
begin
	fillchar(result,sizeof(result),x00);
	result.mag:=1.0;
end;

function  xmakeposition(col,row:xinteger):xposition;
begin
	fillchar(result,sizeof(result),x00);
	result.col:=col; result.row:=row;
end;

procedure xmaketextfitwithellipsis(var t:xtext);
	var s:xstring; w:xtwit;
begin
	w:=xwidth(t.rect); if xgettextwidth(t)<=w then exit; s:=xgetvalue(t);
	while (length(s)>1) and (xgettextwidth(t)>=w) do begin delete(s,length(s),1); xsetvalue(t,s+'…'); end;
end;

function  xmakeyuv(y,u,v:xinteger):xyuv;
begin
	fillchar(result,sizeof(result),x00);
	result.y:=y;
	result.u:=u;
	result.v:=v;
end;

function  xmax(x,y:xinteger):xinteger;
begin
	if x<y then result:=y else result:=x;
end;

function  xmc(p:xpigment; m:xmixture):xcolor;
begin
	fillchar(result,sizeof(result),x00);
	result.pigment:=p;
	result.mixture:=m;
end;

function  xmcm(n:xnumber; s,p:xstring):xstring; // makecountmessage
begin
	if n=1 then result:=xnts(n)+xsp+s else result:=xnts(n)+xsp+p;
end;

procedure xmessage(m:xstring);
begin
	xsetvalue(xmsg,m);
	xslapmessage;
end;

function  xmf(f:xface; s:xsize; v:xstyle; a:xalign):xfont;
begin
	fillchar(result,sizeof(result),x00);
	result.face:=f;
	result.size:=s;
	result.style:=v;
	result.align:=a;
end;

function  xmidpoint(a,b:xpoint):xpoint;
begin
	result.x:=(a.x+b.x) div 2;
	result.y:=(a.y+b.y) div 2;
end;

function  xmin(x,y:xinteger):xinteger;
begin
	if x>y then result:=y else result:=x;
end;

procedure xmorphpage(p:xpage);
begin
	if p=nil then exit;
	p.body:=xmr(0,0,6120,7920);
	p.shapes.opened:=false;
	xdestroyshapes(p.shapes,false);
	xappendlink(p.shapes,xcreatetext(xmr(720,1800,5400,2160),xmf(xarialface,360,xboldstyle,xcenteralign),false,true,xclearcolor,xclearcolor,xredcolor,false,'','Page Not Accessible'));
	xadjustpage(p);
end;

function  xmousehasmoved(a,b:xpoint; gx,gy:xtwit):xboolean;
begin
	result:=not ((abs(b.x-a.x)<gx) and (abs(b.y-a.y)<gy));
end;

function  xmouseisdown(b:xbutton):xboolean;
begin
	result:=getasynckeystate(b)<0;
end;

function  xmovearc(a:xarc; dx,dy:xtwit):xarc;
begin
	result:=a;
	result.rect:=xmoverectangle(a.rect,dx,dy);
end;

procedure xmoveblockorigin(b:xblock; dx,dy:xinteger);
begin
	if b=nil then exit;
	with b^,edit^,text,origin do begin
		dx:=colwidth*round(dx/colwidth); // snapinteger
		dy:=rowheight*round(dy/rowheight); // snapinteger
		x:=xlimit(x+dx,xmininteger,clip.left);
		y:=xlimit(y+dy,clip.top+-(count-1)*rowheight,clip.top);
	end;
end;

procedure xmovecabinetorigin(c:xcabinet; dx:xinteger);
begin
	if c=nil then exit;
	if (c.drawers=nil) or (c.drawers.first=nil) then exit;
	with c^,origin,drawers.lastdrawer.head do x:=xlimit(x+dx,body.left-left,body.left);
end;

procedure xmovecaret(s:xshape; d:xdir; jump,extend,reset:xboolean);

function  xmovecaret_down:xposition;
	var p:xpoint;
begin
	with s^,text,result do begin
		result:=caretpos;
		if row=count then exit;
		p:=xpositiontopoint(xmemory,text,caretwas);
		col:=xpointtoposition(text,p).col;
		row:=row+1;
	end;
end;

function  xmovecaret_left:xinteger;
	var f:xboolean;
begin
	with s^,text,caretpos do begin
		result:=col; if result=1 then exit;
		if not jump then begin result:=col-1; exit; end;
		result:=xlimit(col,1,length(rows[row]));
		if result<2 then exit;
		while (result>1) and (rows[row][result-1] in [xsp,xtb]) do dec(result);
		f:=xisalphanumeric(rows[row][result-1]);
		while (result>1) and (f=xisalphanumeric(rows[row][result-1])) do dec(result);
	end;
end;

function  xmovecaret_right:xinteger;
	var f:xboolean;
begin
	with s^,text,caretpos do begin
		if not jump then begin result:=col+1; exit; end;
		result:=xlimit(col,1,length(rows[row]));
		if result>=length(rows[row]) then begin result:=col+1; exit; end;
		f:=xisalphanumeric(rows[row][result]);
		while (result<length(rows[row])) and (f=xisalphanumeric(rows[row][result])) do inc(result);
		while (result<length(rows[row])) and (rows[row][result] in [xsp,xtb]) do inc(result);
	end;
end;

function  xmovecaret_up:xposition;
	var p:xpoint;
begin
	with s^,text,result do begin
		result:=caretpos;
		if row=1 then exit;
		p:=xpositiontopoint(xmemory,text,caretwas);
		col:=xpointtoposition(text,p).col;
		row:=row-1;
	end;
end;

begin
	if s=nil then exit;
	with s^,text,caretpos do begin
		blocksel:=(xissimple(text)) and (extend and blocksel);
		case d of
			xbottom:		begin row:=count; col:=length(rows[row]); end;
			xdown:  		caretpos:=xmovecaret_down;
			xend:   		col:=length(rows[row]);
			xhome:  		col:=1;
			xleft:  		col:=xmovecaret_left;
			xright: 		col:=xmovecaret_right;
			xtop:				begin row:=1; col:=1; end;
			xup:    		caretpos:=xmovecaret_up;
		end;
		if not extend then anchor:=caretpos;
		if d in [xup,xdown] then xindentcode(s) else caretwas:=caretpos;
		if reset then lastop:=xnoshapeop;
		xadjustcaret(s);
	end;
end;

function  xmovecurve(c:xcurve; dx,dy:xtwit):xcurve;
begin
	result:=xcurve(xmovepolygon(xpolygon(c),dx,dy));
end;

procedure xmovedrawerorigin(d:xdrawer; dy:xinteger);
begin
	if d=nil then exit;
	if (d.folders=nil) or (d.folders.first=nil) then exit;
	with d^,origin,folders.lastfolder.head do y:=xlimit(y+dy,body.top-top,body.top);
end;

function  xmoveellipse(e:xellipse; dx,dy:xtwit):xellipse;
begin
	result:=e;
	result.rect:=xmoverectangle(e.rect,dx,dy);
end;

procedure xmovefolderorigin(f:xfolder; dy:xinteger);
begin
	if f=nil then exit;
	if (f.pages=nil) or (f.pages.first=nil) then exit;
	with f^,origin,pages.lastpage.head do y:=xlimit(y+dy,body.top-top,body.top);
end;

procedure xmovepage(p:xpage; q:xquadrant);
	var ph,wh,pw,ww:xtwit;
begin
	if p=nil then exit;
	with p^,xca.clip do begin
		pw:=xwidth(body); 			 	ph:=xheight(body);
		ww:=xwidth(xca.clip);	wh:=xheight(xca.clip);
		origin:=xmp(left,top);
		if pw<ww 	then xmovepageorigin(p,(ww-pw) div 2,0);
		if ph<wh	then xmovepageorigin(p,0,(wh-ph) div 2);
		if (pw>=ww) and (q in [xtopleft,xbottomleft])	then xmovepageorigin(p,xzdg,0);
		if (pw>=ww) and (q in [xtopright,xbottomright])	then xmovepageorigin(p,right-(body.right+left+xzdg),0);
		if not (q in [xbottomleft,xbottomright]) then exit;
		if ph>=wh	then xmovepageorigin(p,0,bottom-(body.bottom+top+xzdg));
	end;
end;

procedure xmovepageorigin(p:xpage; dx,dy:xinteger);
begin
	if p=nil then exit;
	inc(p.origin.x,dx); inc(p.origin.y,dy);
	xrestrictpage(p);
end;

function  xmovepoint(p:xpoint; dx,dy:xtwit):xpoint;
begin
	result.x:=p.x+dx;
	result.y:=p.y+dy;
end;

function  xmovepicture(p:xpicture; dx,dy:xtwit):xpicture;
begin
	result:=p;
	result.rect:=xmoverectangle(p.rect,dx,dy);
end;

function  xmovepolygon(n:xpolygon; dx,dy:xtwit):xpolygon;
	var cv:xvertex;
begin
	result:=n;
	with result do for cv:=1 to count do begin
		inc(vertices[cv].x,dx);
		inc(vertices[cv].y,dy);
	end;
	xadjustpolygon(result);
end;

function  xmoverectangle(r:xrect; dx,dy:xtwit):xrect;
begin
	result.left:=r.left+dx;
	result.top:=r.top+dy;
	result.right:=r.right+dx;
	result.bottom:=r.bottom+dy;
end;

procedure xmoveshape(s:xshape; dx,dy:xinteger);
begin
	if s=nil then exit;
	with s^ do case styp of
		xarcshape:				arc:=xmovearc(arc,dx,dy);
		xcurveshape:			curve:=xmovecurve(curve,dx,dy);
		xellipseshape:		ellipse:=xmoveellipse(ellipse,dx,dy);
		xgroupshape:			xmoveshapes(shapes,dx,dy,false);
		xpictureshape:		picture:=xmovepicture(picture,dx,dy);
		xpolygonshape:		polygon:=xmovepolygon(polygon,dx,dy);
		xrectangleshape:	rectangle:=xmoverectangle(rectangle,dx,dy);
		xtextshape:				text:=xmovetext(text,dx,dy);
	end;
	xadjustshape(s);
end;

procedure xmoveshapes(s:xshapes; dx,dy:xinteger; selected:xboolean);
	var cs,ns:xshape;
begin
	if s=nil then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if selected and not cs.sel then continue;
		xmoveshape(cs,dx,dy);
	end;
end;

function  xmovetext(var t:xtext; dx,dy:xtwit):xtext;
begin
	result:=t; result.rect:=xmoverectangle(t.rect,dx,dy);
end;

function  xmp(x,y:xtwit):xpoint;
begin
	result.x:=x; result.y:=y;
end;

function  xmr(l,t,r,b:xtwit):xrect;
begin
	with result do begin left:=l; top:=t; right:=r; bottom:=b; end;
end;

function  xmt(r:xrect; f:xfont; m,w:xboolean; larg:xboolean; v:xstring):xtext;
begin
	fillchar(result,sizeof(result),x00);
	with result do begin
		rect:=r;
		font:=f;
		margin:=m;
		wrap:=w;
		caretpos:=xmakeposition(1,1); anchor:=caretpos; caretwas:=caretpos;
		mag:=1.0; large:=larg;
		xadjusttext(result);
		xsetvalue(result,v);
	end;
end;

{n}

procedure xnavigatecabinet(c:xcabinet; d:xdir);
	var a,b:xdrawer; cc:xinteger;
begin
	if c=nil then exit;
	with c^ do begin
		if drawers.first=nil then exit;
		if not (d in [xleft,xright,xup,xdown]) then exit;
		if d in [xdown,xright] 	then a:=drawers.first else a:=drawers.last;
		b:=xgetfirstselecteddrawer(drawers);
		cc:=1; while (d=xright) and (cc<=xdrps) and (b<>nil) do begin b:=b.next; inc(cc); end;
		cc:=1; while (d=xleft) 	and (cc<=xdrps) and (b<>nil) do begin b:=b.prev; inc(cc); end;
		if (d in [xleft,xright]) and (b<>nil) then a:=b;
		if (d=xdown)	and (b<>nil) and (b.next<>nil) then a:=b.next;
		if (d=xup) 		and (b<>nil) and (b.prev<>nil) then a:=b.prev;
		xselectdrawers(drawers,false);
		a.sel:=true;
		xscrolltodrawer(a);
	end;
end;

procedure xnavigatedrawer(d:xdrawer; i:xdir);
	var a,b:xfolder;
begin
	if d=nil then exit;
	with d^ do begin
		if folders.first=nil then exit;
		if not (i in [xleft,xright,xup,xdown]) then exit;
		if i in [xdown,xright] then a:=folders.first else a:=folders.last;
		b:=xgetfirstselectedfolder(folders);
		if (i in [xdown,xright])	and (b<>nil) and (b.next<>nil) then a:=b.next;
		if (i in [xup,xleft]) 		and (b<>nil) and (b.prev<>nil) then a:=b.prev;
		xselectfolders(folders,false);
		a.sel:=true;
		xscrolltofolder(a);
	end;
end;

procedure xnavigatefolder(f:xfolder; d:xdir);
	var a,b:xpage;
begin
	if f=nil then exit;
	with f^ do begin
		if pages.first=nil then exit;
		if not (d in [xleft,xright,xup,xdown]) then exit;
		if d in [xdown,xright] 	then a:=pages.first else a:=pages.last;
		b:=xgetfirstselectedpage(pages);
		if (d in [xdown,xright])	and (b<>nil) and (b.next<>nil) then a:=b.next;
		if (d in [xup,xleft]) 		and (b<>nil) and (b.prev<>nil) then a:=b.prev;
		xselectpages(pages,false);
		a.sel:=true;
		xscrolltopage(a);
	end;
end;

procedure xnavigatemachine(d:xdir);
	var a:xarea;
begin
	with xareas^ do begin
		if not (d in [xleft,xright]) then exit;
		case d of
			xleft:  if xca=first then a:=last else a:=xca.prev;
			xright:	if xca=last then a:=first else a:=xca.next;
		end;
		xswitcharea(a);
	end;
end;

procedure xnavigatepage(p:xpage; d:xdir);
	var s:xstops; a,b:xstop;
begin
	if p=nil then exit;
	with p^ do begin
		if horzs.first=nil then exit;
		if not (d in [xleft,xright,xup,xdown]) then exit;
		if d in [xleft,xright]	then s:=horzs else s:=specials;
		if d in [xdown,xright] 	then a:=s.first else a:=s.last;
		b:=xgetfirstselectedstop(s);
		if (d in [xdown,xright])	and (b<>nil) and (b.next<>nil) then a:=b.next;
		if (d in [xup,xleft]) 		and (b<>nil) and (b.prev<>nil) then a:=b.prev;
		xselectshapes(shapes,false);
		xselectshape(a.shape,true);
		xscrolltoshape(a.shape);
	end;
end;

function  xnewdirectory(path:xstring):xboolean;
begin
	if (path<>'') and (path[length(path)]='\') then delete(path,length(path),1);
	mkdir(path);
	result:=not xioerror(xioresult);
end;

function  xnewdrawer(c:xcabinet; g,n,v:xstring; a:xdrawer):xdrawer;
	var de:xdrawerentry;
begin
	result:=nil; if c=nil then exit;
	if (a<>nil) and (a.chain<>c.drawers) then a:=nil;
	if not xlockcabinet(c.cid) then exit;
	try
		if not xreaddrawerentry(c.cid,0,de) then exit;
		inc(de.lastdid);
		if not xwritedrawerentry(c.cid,0,de) then exit;
		de:=xmakedrawerentry(de.did,0,g,n,v);
		if not xappenddrawerentry(c.cid,de) then exit;
		if not xnewdirectory(xgetdrawerdirectoryname(c.cid,de.did)) then exit;
		if not xnewfile(xgetfolderindexname(c.cid,de.did)) then exit;
		if not xappendfolderentry(c.cid,de.did,xmakefolderentry(0,0,'','')) then exit;
		result:=xcreatedrawer(g,n,v);
		result.cid:=c.cid; result.did:=de.did;
		xinsertlinkafter(c.drawers,a,result);
		xadjustcabinet(c);
	finally xunlockcabinet(c.cid); end;
end;

function  xnewfile(path:xstring):xboolean;
	var fcb:file;
begin
	xassignfile(fcb,path);
	xrewrite(fcb,1);
	xclosefile(fcb);
	result:=not xioerror(xioresult);
end;

function  xnewfolder(d:xdrawer; n,v:xstring; a:xfolder):xfolder;
	var fe:xfolderentry;
begin
	result:=nil; if d=nil then exit;
	if (a<>nil) and (a.chain<>d.folders) then a:=nil;
	if not xlockcabinet(d.cid) then exit;
	try
		if not xreadfolderentry(d.cid,d.did,0,fe) then exit;
		inc(fe.lastfid);
		if not xwritefolderentry(d.cid,d.did,0,fe) then exit;
		fe:=xmakefolderentry(fe.fid,0,n,v);
		if not xappendfolderentry(d.cid,d.did,fe) then exit;
		if not xnewdirectory(xgetfolderdirectoryname(d.cid,d.did,fe.fid)) then exit;
		if not xnewfile(xgetpageindexname(d.cid,d.did,fe.fid)) then exit;
		if not xappendpageentry(d.cid,d.did,fe.fid,xmakepageentry(0,0,xnilfields)) then exit;
		result:=xcreatefolder(n,v);
		result.cid:=d.cid; result.did:=d.did; result.fid:=fe.fid;
		xinsertlinkafter(d.folders,a,result);
		xadjustdrawer(d);
	finally xunlockcabinet(d.cid); end;
end;

function  xnewpage(f:xfolder; t,a:xpage):xpage;
	var np:xpage; pe:xpageentry;
begin
	result:=nil; np:=nil; if f=nil then exit;
	if (a<>nil) and (a.chain<>f.pages) then a:=nil;
	if not xlockcabinet(f.cid) then exit;
	try
		if not xreadpageentry(f.cid,f.did,f.fid,0,pe) then exit;
		np:=xcreatepagefromtemplate(t); if np=nil then exit;
		inc(pe.lastpid);
		if not xwritepageentry(f.cid,f.did,f.fid,0,pe) then exit;
		xindexpage(np); xupdatepage(np); xindexpage(np);
		pe:=xmakepageentry(pe.pid,0,np.fields);
		if not xappendpageentry(f.cid,f.did,f.fid,pe) then exit;
		with np^ do begin cid:=f.cid; did:=f.did; fid:=f.fid; pid:=pe.pid; end;
		if not xwritepage(np) then exit;
		result:=np;
		xinsertlinkafter(f.pages,a,result);
		xadjustfolder(f);
	finally xunlockcabinet(f.cid);
		xclosepage(np); if result=nil then xdestroypage(np);
	end;
end;

function  xnormalizeangle(a:xdegree):xdegree;
begin
	result:=a;
	if a<0 then result:=360+a;
	if a>360 then result:=a-360;
end;

procedure xnormalizepage(p:xpage; z:xextended; s:xtwit; v:xslice);
begin
	if p=nil then exit;
	xzoompage(p,z); p.snap:=s; xslicepage(p,v);
end;

function  xnr(r:xrect):xrect;
	var t:xinteger;
begin
	result:=r;
	with result do begin
		if right<left then begin t:=right; right:=left; left:=t; end;
		if bottom<top then begin t:=bottom; bottom:=top; top:=t; end;
	end;
end;

function  xnts(n:xnumber):xstring;
begin
	setlength(result,255);
	setlength(result,floattotextfmt(xpchar(result),n,fvcurrency,''));
end;

{o}

function  xobjectisnull(o:xobject):xboolean;
begin
	result:=false; if o=nil then begin result:=true; exit; end;
	if xtype(o)<>xshaperecord then exit;
	if xshape(o).styp<>xtextshape then exit;
	if xgetslice(xshape(o),xvslice)<>'' then exit;
	result:=true;
end;

procedure xobscurecursor;
begin
	setcursor(0);
end;

function  xopenblock(bn:xstring):xblock;
begin
	result:=nil;
	if not xreadblock(bn,result) then exit;
end;

function  xopencabinet(cn:xstring):xcabinet;
	var c:xdoodad; cd:xinteger; cid:xstring; d:xdrawer;
begin
	result:=nil; cid:='';
	c:=xfinddoodad(xcabinetdoodad,cn); if c<>nil then cid:=c.cid;
	if (cid='') and (xdirectoryexists(cn)) then cid:=cn;
	if cid='' then begin xcx:=''''+cn+''' is not a valid cabinet.'; exit; end;
	if cid[length(cid)]<>'\' then cid:=cid+'\';
	if not xlockcabinet(cid) then exit;
	with xindex do try
		if not xreaddrawerindex(cid) then exit;
		result:=xcreatecabinet(cn);
		result.drawers.opened:=true;
		for cd:=1 to count-1 do with drawerindex[cd] do begin
			d:=xcreatedrawer(group,name,version);
			d.cid:=cid; d.did:=did; d.level:=level;
			xappendlink(result.drawers,d);
		end;
		xadjustcabinet(result);
	finally xunlockcabinet(cid); end;
end;

function  xopenconfiguration:xboolean;

procedure xopenconfiguration_getdefaultcabinets;
	var cc:xchar;
begin
	for cc:='a' to 'z' do begin
		if not xcabinetidentifierisvalid(cc+':\') then continue;
		xappendlink(xconfig.doodads,xcreatecabinetdoodad(upcase(cc),cc+':\'));
	end;
end;

procedure xopenconfiguration_getdefaultprinters;
	var center,postscript,reverse:xboolean; device,name:xstring; rotate:xinteger;
	var pn,pp:xstring;
begin
	if not xgetdefaultprinter(pn,pp) then exit;
	name:=xdefaultprintername;
	device:=pn;
	xgetdefaultprinterconfiguration(pn,pp,postscript,center,reverse,rotate);
	xappendlink(xconfig.doodads,xcreateprinterdoodad(name,device,postscript,center,reverse,rotate,0,0,0));
end;

procedure xopenconfiguration_getdefaultscanners;
begin
	xappendlink(xconfig.doodads,xcreatescannerdoodad(xdefaultscannername,xdefaultscannerdevice));
end;

procedure xopenconfiguration_updatewindowsdefaultprinter;
	var c,d,p:xdoodad;
begin
	// update windows default
	d:=xfinddoodad(xprinterdoodad,xdefaultprintername); if d=nil then exit;
	p:=xfinddoodadbydevice(xprinterdoodad,d.device); if p=nil then exit;
	d.centerfeed:=p.centerfeed;
	d.postscript:=p.postscript;
	d.reverse:=p.reverse;
	d.rotate:=p.rotate;
end;

procedure xopenconfiguration_updatedefaultprinter;
	var c,d,p:xdoodad;
begin
	d:=xfinddoodad(xprinterdoodad,xdefaultprintername); if d=nil then exit;
	c:=xfinddoodad(xdefaultdoodad,xgetcomputername); if c=nil then exit;
	if c.printer='' then exit;
	p:=xfinddoodad(xprinterdoodad,c.printer);
	d.device:=p.device;
	d.centerfeed:=p.centerfeed;
	d.postscript:=p.postscript;
	d.reverse:=p.reverse;
	d.rotate:=p.rotate;
end;

procedure xopenconfiguration_updatedefaultscanner;
	var c,d,s:xdoodad;
begin
	d:=xfinddoodad(xscannerdoodad,xdefaultprintername); if d=nil then exit;
	c:=xfinddoodad(xdefaultdoodad,xgetcomputername); if c=nil then exit;
	if c.scanner='' then exit;
	s:=xfinddoodad(xscannerdoodad,c.scanner);
	d.device:=s.device;
end;

begin
	with xconfig do begin
		result:=false;
		xopenconfiguration_getdefaultcabinets;
		xopenconfiguration_getdefaultprinters;
		xopenconfiguration_getdefaultscanners;
		if not xlockcabinet(cid) then exit;
		try
			if not xreadconfiguration then exit;
			result:=true; xconfig.opened:=true;
		finally xunlockcabinet(cid); end;
		xopenconfiguration_updatewindowsdefaultprinter;
		xopenconfiguration_updatedefaultprinter;
		xopenconfiguration_updatedefaultscanner;
	end;
end;

function  xopendrawer(d:xdrawer):xboolean;
	var cf:xinteger; f:xfolder;
begin
	result:=false; if d=nil then exit;
	if d.folders.opened then begin result:=true; exit; end;
	if not xlockcabinet(d.cid) then exit;
	with xindex do try
		if not xreadfolderindex(d.cid,d.did) then exit;
		result:=true; d.folders.opened:=true;
		for cf:=1 to count-1 do with folderindex[cf] do begin
			f:=xcreatefolder(name,version);
			f.cid:=d.cid; f.did:=d.did; f.fid:=fid; f.level:=level;
			xappendlink(d.folders,f);
		end;
		xadjustdrawer(d);
	finally xunlockcabinet(d.cid); end;
end;

function  xopenfolder(f:xfolder):xboolean;
	var cp:xinteger; p:xpage;
begin
	result:=false; if f=nil then exit;
	if f.pages.opened then begin result:=true; exit; end;
	if not xlockcabinet(f.cid) then exit;
	with xindex do try
		if not xreadpageindex(f.cid,f.did,f.fid) then exit;
		result:=true; f.pages.opened:=true;
		for cp:=1 to count-1 do with pageindex[cp] do begin
			p:=xcreatepage;
			p.cid:=f.cid; p.did:=f.did; p.fid:=f.fid; p.pid:=pid; p.level:=level;
			p.fields:=fields;
			xappendlink(f.pages,p);
		end;
		xadjustfolder(f);
	finally xunlockcabinet(f.cid); end;
end;

function  xopenlexicon:xboolean;
begin
	with xlexicon do begin
		result:=false;
		if not xlockcabinet(cid) then exit;
		try
			if not xreadlexicon then exit;
			xreadaddenda;
			result:=true; xlexicon.opened:=true;
		finally xunlockcabinet(cid); end;
	end;
end;

procedure xopenmachine;
	var s:xshape;
begin
	with xca.global,stack^ do begin
		stack.sf:=1;
		// internal functions
		xaddinternalsymbol('abs',xinternalabsolutevalue);
		xaddinternalsymbol('additem',xinternaladditem);
		xaddinternalsymbol('addseparator',xinternaladdseparator);
		xaddinternalsymbol('arccos',xinternalarccosine);
		xaddinternalsymbol('arcsin',xinternalarcsine);
		xaddinternalsymbol('arctan',xinternalarctangent);
		xaddinternalsymbol('avg',xinternalaverage);
		xaddinternalsymbol('beep',xinternalbeep);
		xaddinternalsymbol('blink',xinternalblink);
		xaddinternalsymbol('chr',xinternalcharacter);
		xaddinternalsymbol('closecabinet',xinternalclosecabinet);
		xaddinternalsymbol('closedrawer',xinternalclosedrawer);
		xaddinternalsymbol('closefolder',xinternalclosefolder);
		xaddinternalsymbol('closepage',xinternalclosepage);
		xaddinternalsymbol('copypage',xinternalcopypage);
		xaddinternalsymbol('cos',xinternalcosine);
		xaddinternalsymbol('count',xinternalcount);
		xaddinternalsymbol('createpage',xinternalcreatepage);
		xaddinternalsymbol('ctb',xinternalconverttoboolean);
		xaddinternalsymbol('ctd',xinternalconverttodate);
		xaddinternalsymbol('ctn',xinternalconverttonumber);
		xaddinternalsymbol('cts',xinternalconverttostring);
		xaddinternalsymbol('ctt',xinternalconverttotime);
		xaddinternalsymbol('dec',xinternaldecrement);
		xaddinternalsymbol('degreetoradian',xinternaldegreetoradian);
		xaddinternalsymbol('delete',xinternaldelete);
		xaddinternalsymbol('deletedrawer',xinternaldeletedrawer);
		xaddinternalsymbol('deletefile',xinternaldeletefile);
		xaddinternalsymbol('deletefolder',xinternaldeletefolder);
		xaddinternalsymbol('deletepage',xinternaldeletepage);
		xaddinternalsymbol('destroypage',xinternaldestroypage);
		xaddinternalsymbol('dialog',xinternaldialog);
		xaddinternalsymbol('drawmenubar',xinternaldrawmenubar);
		xaddinternalsymbol('drawworkarea',xinternaldrawworkarea);
		xaddinternalsymbol('duplicatedrawer',xinternalduplicatedrawer);
		xaddinternalsymbol('duplicatefolder',xinternalduplicatefolder);
		xaddinternalsymbol('duplicatepage',xinternalduplicatepage);
		xaddinternalsymbol('error',xinternalerror);
		xaddinternalsymbol('filepage',xinternalfilepage);
		xaddinternalsymbol('fillleft',xinternalfillleft);
		xaddinternalsymbol('fillright',xinternalfillright);
		xaddinternalsymbol('finddrawer',xinternalfinddrawer);
		xaddinternalsymbol('findfolder',xinternalfindfolder);
		xaddinternalsymbol('findpage',xinternalfindpage);
		xaddinternalsymbol('formatboolean',xinternalformatboolean);
		xaddinternalsymbol('formatdate',xinternalformatdate);
		xaddinternalsymbol('formatnumber',xinternalformatnumber);
		xaddinternalsymbol('formattime',xinternalformattime);
		xaddinternalsymbol('frac',xinternalfraction);
		xaddinternalsymbol('getdate',xinternalgetdate);
		xaddinternalsymbol('getday',xinternalgetday);
		xaddinternalsymbol('getdayofweek',xinternalgetdayofweek);
		xaddinternalsymbol('getdrawercount',xinternalgetdrawercount);
		xaddinternalsymbol('getfirstselecteddrawer',xinternalgetfirstselecteddrawer);
		xaddinternalsymbol('getfirstselectedfolder',xinternalgetfirstselectedfolder);
		xaddinternalsymbol('getfirstselectedpage',xinternalgetfirstselectedpage);
		xaddinternalsymbol('getfoldercount',xinternalgetfoldercount);
		xaddinternalsymbol('gethours',xinternalgethours);
		xaddinternalsymbol('getlastselecteddrawer',xinternalgetlastselecteddrawer);
		xaddinternalsymbol('getlastselectedfolder',xinternalgetlastselectedfolder);
		xaddinternalsymbol('getlastselectedpage',xinternalgetlastselectedpage);
		xaddinternalsymbol('getminutes',xinternalgetminutes);
		xaddinternalsymbol('getmonth',xinternalgetmonth);
		xaddinternalsymbol('getpagecount',xinternalgetpagecount);
		xaddinternalsymbol('getseconds',xinternalgetseconds);
		xaddinternalsymbol('getselecteddrawercount',xinternalgetselecteddrawercount);
		xaddinternalsymbol('getselectedfoldercount',xinternalgetselectedfoldercount);
		xaddinternalsymbol('getselectedpagecount',xinternalgetselectedpagecount);
		xaddinternalsymbol('getticks',xinternalgetticks);
		xaddinternalsymbol('gettime',xinternalgettime);
		xaddinternalsymbol('gettoken',xinternalgettoken);
		xaddinternalsymbol('getyear',xinternalgetyear);
 		xaddinternalsymbol('gnt',xinternalgetnexttoken);
		xaddinternalsymbol('gpt',xinternalgetprevioustoken);
		xaddinternalsymbol('inc',xinternalincrement);
		xaddinternalsymbol('insert',xinternalinsert);
		xaddinternalsymbol('lcase',xinternallowercase);
		xaddinternalsymbol('left',xinternalleft);
		xaddinternalsymbol('len',xinternallength);
		xaddinternalsymbol('lock',xinternallock);
		xaddinternalsymbol('log',xinternallogarithm);
		xaddinternalsymbol('max',xinternalmaximum);
		xaddinternalsymbol('mcm',xinternalmakecountmessage);
		xaddinternalsymbol('message',xinternalmessage);
		xaddinternalsymbol('mid',xinternalmiddle);
		xaddinternalsymbol('min',xinternalminimum);
		xaddinternalsymbol('newdrawer',xinternalnewdrawer);
		xaddinternalsymbol('newfile',xinternalnewfile);
		xaddinternalsymbol('newfolder',xinternalnewfolder);
		xaddinternalsymbol('newpage',xinternalnewpage);
		xaddinternalsymbol('opencabinet',xinternalopencabinet);
		xaddinternalsymbol('opendrawer',xinternalopendrawer);
		xaddinternalsymbol('openfolder',xinternalopenfolder);
		xaddinternalsymbol('openpage',xinternalopenpage);
		xaddinternalsymbol('ord',xinternalordinal);
		xaddinternalsymbol('pause',xinternalpause);
		xaddinternalsymbol('pos',xinternalposition);
		xaddinternalsymbol('printpage',xinternalprintpage);
		xaddinternalsymbol('radiantodegree',xinternalradiantodegree);
		xaddinternalsymbol('random',xinternalrandom);
		xaddinternalsymbol('randomize',xinternalrandomize);
		xaddinternalsymbol('readfile',xinternalreadfile);
		xaddinternalsymbol('removeleading',xinternalremoveleading);
		xaddinternalsymbol('removetrailing',xinternalremovetrailing);
		xaddinternalsymbol('removeunwanted',xinternalremoveunwanted);
		xaddinternalsymbol('renamedrawer',xinternalrenamedrawer);
		xaddinternalsymbol('renamefile',xinternalrenamefile);
		xaddinternalsymbol('renamefolder',xinternalrenamefolder);
		xaddinternalsymbol('right',xinternalright);
		xaddinternalsymbol('round',xinternalround);
		xaddinternalsymbol('rounddown',xinternalrounddown);
		xaddinternalsymbol('roundup',xinternalroundup);
		xaddinternalsymbol('savepage',xinternalsavepage);
		xaddinternalsymbol('selectdrawer',xinternalselectdrawer);
		xaddinternalsymbol('selectdrawers',xinternalselectdrawers);
		xaddinternalsymbol('selectfolder',xinternalselectfolder);
		xaddinternalsymbol('selectfolders',xinternalselectfolders);
		xaddinternalsymbol('selectpage',xinternalselectpage);
		xaddinternalsymbol('selectpages',xinternalselectpages);
		xaddinternalsymbol('sin',xinternalsine);
		xaddinternalsymbol('sortdrawers',xinternalsortdrawers);
		xaddinternalsymbol('sortfolders',xinternalsortfolders);
		xaddinternalsymbol('sortpages',xinternalsortpages);
		xaddinternalsymbol('sqrt',xinternalsquareroot);
		xaddinternalsymbol('sum',xinternalsum);
		xaddinternalsymbol('tan',xinternaltangent);
		xaddinternalsymbol('trunc',xinternaltruncate);
		xaddinternalsymbol('ucase',xinternaluppercase);
		xaddinternalsymbol('unfilepage',xinternalunfilepage);
		xaddinternalsymbol('unlock',xinternalunlock);
		xaddinternalsymbol('unlockall',xinternalunlockall);
		xaddinternalsymbol('updatepage',xinternalupdatepage);
		xaddinternalsymbol('upperbound',xinternalupperbound);
		xaddinternalsymbol('viewcabinet',xinternalviewcabinet);
		xaddinternalsymbol('viewdrawer',xinternalviewdrawer);
		xaddinternalsymbol('viewfolder',xinternalviewfolder);
		xaddinternalsymbol('viewpage',xinternalviewpage);
		xaddinternalsymbol('warning',xinternalwarning);
		xaddinternalsymbol('writefile',xinternalwritefile);
		xaddinternalsymbol('xcc',xinternalgetcurrentcabinet);
		xaddinternalsymbol('xcd',xinternalgetcurrentdrawer);
		xaddinternalsymbol('xcf',xinternalgetcurrentfolder);
		xaddinternalsymbol('xcp',xinternalgetcurrentpage);
		xaddinternalsymbol('xcv',xinternalgetcurrentview);
		xaddinternalsymbol('xcx',xinternalgetcurrenterror);
		// internal templates
		// internal constants
		xaddglobalsymbol('','areaview',sp);			xpushnumber(stack,ord(xareaview));
		xaddglobalsymbol('','cabinetview',sp);	xpushnumber(stack,ord(xcabinetview));
		xaddglobalsymbol('','drawerview',sp);		xpushnumber(stack,ord(xdrawerview));
		xaddglobalsymbol('','filemenu',sp);			xpushnumber(stack,ord(xfilemenu));
		xaddglobalsymbol('','folderview',sp);		xpushnumber(stack,ord(xfolderview));
		xaddglobalsymbol('','pagemenu',sp);			xpushnumber(stack,ord(xpagemenu));
		xaddglobalsymbol('','pageview',sp);			xpushnumber(stack,ord(xpageview));
		xaddglobalsymbol('','x00',sp);					xpushstring(stack,x00);
		xaddglobalsymbol('','xcr',sp);					xpushstring(stack,xcr);
		xaddglobalsymbol('','xcrlf',sp);				xpushstring(stack,xcrlf);
		xaddglobalsymbol('','xlf',sp);					xpushstring(stack,xlf);
		xaddglobalsymbol('','xsp',sp);					xpushstring(stack,xsp);
		xaddglobalsymbol('','specialmenu',sp);	xpushnumber(stack,ord(xspecialmenu));
		xaddglobalsymbol('','xsq',sp);					xpushstring(stack,xsq);
		xaddglobalsymbol('','xtb',sp);					xpushstring(stack,xtb);
		s:=xcreatepicture(xblankpicture,xblackcolor,xclearcolor);
		xaddglobalsymbol('','blank',sp);				xpushobject(stack,xstaticvar,xpicturedata,s);
		// mark
		xaddglobalmarksymbol;
		xpushmark(stack);
	end;
end;

procedure xopenmenu(m:xmenu);

procedure xopenmenu_color(p:xprop);
	var app:xboolean; g:xpigment; x:xmixture;
begin
	g:=xpigment(xgetshapesproperty(xcp.shapes,p,xpigmentprop,true,app));
	x:=xmixture(xgetshapesproperty(xcp.shapes,p,xmixtureprop,true,app));
	xaddcommand(m,g=xclear,'Clear',x00,@xhandlepigment,[p,xclear]);
	xaddcommand(m,g=xwhite,'White',x00,@xhandlepigment,[p,xwhite]);
	xaddcommand(m,g=xgray,'Gray',x00,@xhandlepigment,[p,xgray]);
	xaddcommand(m,g=xblack,'Black',x00,@xhandlepigment,[p,xblack]);
	xaddseparator(m);
	xaddcommand(m,g=xred,'Red',x00,@xhandlepigment,[p,xred]);
	xaddcommand(m,g=xorange,'Orange',x00,@xhandlepigment,[p,xorange]);
	xaddcommand(m,g=xyellow,'Yellow',x00,@xhandlepigment,[p,xyellow]);
	xaddcommand(m,g=xgreen,'Green',x00,@xhandlepigment,[p,xgreen]);
	xaddcommand(m,g=xblue,'Blue',x00,@xhandlepigment,[p,xblue]);
	xaddcommand(m,g=xpurple,'Purple',x00,@xhandlepigment,[p,xpurple]);
	xaddseparator(m);
	xaddcommand(m,x=xlight,'Light',x00,@xhandlemixture,[p,xlight]);
	xaddcommand(m,x=xnormal,'Normal',x00,@xhandlemixture,[p,xnormal]);
	xaddcommand(m,x=xdark,'Dark',x00,@xhandlemixture,[p,xdark]);
end;

procedure xopenmenu_drawer;
begin
	xaddcommand(m,false,'New...',x00,@xhandlenew,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Rename...',x00,@xhandlerename,[xnilparms]);
	xaddcommand(m,false,'Delete',x00,@xhandledelete,[xnilparms]);
end;

procedure xopenmenu_edit;

procedure xopenmenu_edit_blockview;
begin
	xaddcommand(m,false,'Undo','Z',@xhandleundo,[xnilparms]);
	xaddcommand(m,false,'Redo','Y',@xhandleredo,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Cut','X',@xhandlecut,[xnilparms]);
	xaddcommand(m,false,'Copy','C',@xhandlecopy,[xnilparms]);
	xaddcommand(m,false,'Paste','V',@xhandlepaste,[xnilparms]);
	if xblockisconfiguration(xcb) then xaddcommand(m,false,'Paste Devices',x00,@xhandledevices,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Select All','A',@xhandleselectall,[xnilparms]);
	xaddseparator(m);
	xaddsuggestioncommands(m);
end;

procedure xopenmenu_edit_cabinetview;
begin
	xaddcommand(m,false,'Copy','C',@xhandlecopy,[xnilparms]);
	xaddcommand(m,false,'Paste','V',@xhandlepaste,[xnilparms]);
	xaddcommand(m,false,'Duplicate','D',@xhandleduplicate,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Select All','A',@xhandleselectall,[xnilparms]);
end;

procedure xopenmenu_edit_drawerview;
begin
	xaddcommand(m,false,'Copy','C',@xhandlecopy,[xnilparms]);
	xaddcommand(m,false,'Paste','V',@xhandlepaste,[xnilparms]);
	xaddcommand(m,false,'Duplicate','D',@xhandleduplicate,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Select All','A',@xhandleselectall,[xnilparms]);
end;

procedure xopenmenu_edit_folderview;
begin
	xaddcommand(m,false,'Cut','X',@xhandlecut,[xnilparms]);
	xaddcommand(m,false,'Copy','C',@xhandlecopy,[xnilparms]);
	xaddcommand(m,false,'Paste','V',@xhandlepaste,[xnilparms]);
	xaddcommand(m,false,'Duplicate','D',@xhandleduplicate,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Select All','A',@xhandleselectall,[xnilparms]);
end;

procedure xopenmenu_edit_pageview;
begin
	xaddcommand(m,false,'Undo','Z',@xhandleundo,[xnilparms]);
	xaddcommand(m,false,'Redo','Y',@xhandleredo,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Cut','X',@xhandlecut,[xnilparms]);
	xaddcommand(m,false,'Copy','C',@xhandlecopy,[xnilparms]);
	xaddcommand(m,false,'Paste','V',@xhandlepaste,[xnilparms]);
	if xisdrawingpage(xcp) then xaddcommand(m,false,'Duplicate','D',@xhandleduplicate,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Select All','A',@xhandleselectall,[xnilparms]);
	if not xisfunctionpage(xcp) then begin
		xaddseparator(m);
		xaddcommand(m,false,'Fill Right','H',@xhandlefill,[xright]);
		xaddcommand(m,false,'Fill Down','I',@xhandlefill,[xdown]);
	end;
	xaddseparator(m);
	xaddsuggestioncommands(m);
end;

begin
	if xcv=xblockview		then begin xopenmenu_edit_blockview; exit; end;
	if xcv=xcabinetview	then begin xopenmenu_edit_cabinetview; exit; end;
	if xcv=xdrawerview 	then begin xopenmenu_edit_drawerview; exit; end;
	if xcv=xfolderview 	then begin xopenmenu_edit_folderview; exit; end;
	if xcv=xpageview 		then begin xopenmenu_edit_pageview; exit; end;
end;

procedure xopenmenu_file;

procedure xopenmenu_file_areaview;
begin
	xaddcommand(m,false,'Open...','O',@xhandleopen,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Sleep',x00,@xhandlesleep,[xnilparms]);
	xaddcommand(m,false,'Quit','Q',@xhandlequit,[xnilparms]);
end;

procedure xopenmenu_file_blockview;
begin
	xaddcommand(m,false,'Save','S',@xhandlesave,[xnilparms]);
	xaddcommand(m,false,'Close','W',@xhandleclose,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Print...','P',@xhandleprint,[xnilparms]);
	xaddcommand(m,false,'Print Special...',x00,@xhandleprintspecial,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Sleep',x00,@xhandlesleep,[xnilparms]);
	xaddcommand(m,false,'Quit','Q',@xhandlequit,[xnilparms]);
end;

procedure xopenmenu_file_cabinetview;
begin
	xaddcommand(m,false,'Open','O',@xhandleopen,[xnilparms]);
	xaddcommand(m,false,'Close','W',@xhandleclose,[xnilparms]);
	xaddseparator(m);
	xcm:=m; xrunevent('',xmenueventname,0,[nil]); xcm:=nil;
	xaddseparator(m);
	xaddcommand(m,false,'Sleep',x00,@xhandlesleep,[xnilparms]);
	xaddcommand(m,false,'Quit','Q',@xhandlequit,[xnilparms]);
end;

procedure xopenmenu_file_drawerview;
begin
	xaddcommand(m,false,'Open','O',@xhandleopen,[xnilparms]);
	xaddcommand(m,false,'Close','W',@xhandleclose,[xnilparms]);
	xaddseparator(m);
	xcm:=m; xrunevent('',xmenueventname,0,[nil]); xcm:=nil;
	xaddseparator(m);
	xaddcommand(m,false,'Sleep',x00,@xhandlesleep,[xnilparms]);
	xaddcommand(m,false,'Quit','Q',@xhandlequit,[xnilparms]);
end;

procedure xopenmenu_file_folderview;
begin
	xaddcommand(m,false,'Open','O',@xhandleopen,[xnilparms]);
	xaddcommand(m,false,'Close','W',@xhandleclose,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Print...','P',@xhandleprint,[xnilparms]);
	xaddcommand(m,false,'Print Special...',x00,@xhandleprintspecial,[xnilparms]);
	xcm:=m; xrunevent('',xmenueventname,0,[nil]); xcm:=nil;
	xaddseparator(m);
	xaddcommand(m,false,'Sleep',x00,@xhandlesleep,[xnilparms]);
	xaddcommand(m,false,'Quit','Q',@xhandlequit,[xnilparms]);
end;

procedure xopenmenu_file_pageview;
begin
	xaddcommand(m,false,'Save','S',@xhandlesave,[xnilparms]);
	xaddcommand(m,false,'Close','W',@xhandleclose,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Print...','P',@xhandleprint,[xnilparms]);
	xaddcommand(m,false,'Print Special...',x00,@xhandleprintspecial,[xnilparms]);
	xcm:=m; xrunevent('',xmenueventname,0,[nil]); xcm:=nil;
	xaddseparator(m);
	xaddcommand(m,false,'Sleep',x00,@xhandlesleep,[xnilparms]);
	xaddcommand(m,false,'Quit','Q',@xhandlequit,[xnilparms]);
end;

begin
	if xcv=xareaview 		then begin xopenmenu_file_areaview; exit; end;
	if xcv=xblockview 	then begin xopenmenu_file_blockview; exit; end;
	if xcv=xcabinetview	then begin xopenmenu_file_cabinetview; exit; end;
	if xcv=xdrawerview 	then begin xopenmenu_file_drawerview; exit; end;
	if xcv=xfolderview 	then begin xopenmenu_file_folderview; exit; end;
	if xcv=xpageview 		then begin xopenmenu_file_pageview; exit; end;
end;

procedure xopenmenu_folder;
begin
	xaddcommand(m,false,'New...',x00,@xhandlenew,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Backup...',x00,@xhandlebackup,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Rename...',x00,@xhandlerename,[xnilparms]);
	xaddcommand(m,false,'Delete',x00,@xhandledelete,[xnilparms]);
end;

procedure xopenmenu_font;
	var a:xalign; app:xboolean; f:xface; s:xsize; v:xstyle;
begin
	f:=xface(xgetshapesproperty(xcp.shapes,xfontprop,xfaceprop,true,app));
	s:=xsize(xgetshapesproperty(xcp.shapes,xfontprop,xsizeprop,true,app));
	v:=xstyle(xgetshapesproperty(xcp.shapes,xfontprop,xstyleprop,true,app));
	a:=xalign(xgetshapesproperty(xcp.shapes,xfontprop,xalignprop,true,app));
	xaddcommand(m,f=xarialface,'Arial',x00,@xhandleface,[xarialface]);
	xaddcommand(m,f=xcourierface,'Courier',x00,@xhandleface,[xcourierface]);
	xaddcommand(m,f=xtimesface,'Times',x00,@xhandleface,[xtimesface]);
	xaddseparator(m);
	xaddcommand(m,v=xplainstyle,'Plain',x00,@xhandlestyle,[xplainstyle]);
	xaddcommand(m,v=xboldstyle,'Bold',x00,@xhandlestyle,[xboldstyle]);
	xaddcommand(m,v=xitalicstyle,'Italic',x00,@xhandlestyle,[xitalicstyle]);
	xaddseparator(m);
	xaddcommand(m,a=xleftalign,'Left',x00,@xhandlealign,[xleftalign]);
	xaddcommand(m,a=xcenteralign,'Center',x00,@xhandlealign,[xcenteralign]);
	xaddcommand(m,a=xrightalign,'Right',x00,@xhandlealign,[xrightalign]);
	xaddcommand(m,a=xbothalign,'Justify',x00,@xhandlealign,[xbothalign]);
	xaddcommand(m,a=xspreadalign,'Spread',x00,@xhandlealign,[xspreadalign]);
	xaddseparator(m);
	xaddcommand(m,s=090,'8.0 Lines/Inch',x00,@xhandlesize,[090]);
	xaddcommand(m,s=120,'6.0 Lines/Inch',x00,@xhandlesize,[120]);
	xaddcommand(m,s=180,'4.0 Lines/Inch',x00,@xhandlesize,[180]);
	xaddcommand(m,s=240,'3.0 Lines/Inch',x00,@xhandlesize,[240]);
	xaddcommand(m,s=360,'2.0 Lines/Inch',x00,@xhandlesize,[360]);
	xaddcommand(m,s=480,'1.5 Lines/Inch',x00,@xhandlesize,[480]);
	xaddcommand(m,s=720,'1.0 Line/Inch' ,x00,@xhandlesize,[720]);
end;

procedure xopenmenu_page;

procedure xopenmenu_page_folderview;
begin
	xaddcommand(m,false,'New Drawing',x00,@xhandlenew,[xinteger(xtemplates.drawing)]);
	if xisprogramsdrawer(xcd) then begin
		xaddcommand(m,false,'New Form',x00,@xhandlenew,[xinteger(xtemplates.form)]);
		xaddcommand(m,false,'New Function',x00,@xhandlenew,[xinteger(xtemplates.func)]);
	end;
	xcm:=m; xrunevent('',xmenueventname,0,[nil]); xcm:=nil;
	xaddseparator(m);
	xaddcommand(m,false,'Renumber...',x00,@xhandlerenumber,[xnilparms]);
	xaddcommand(m,false,'Delete',x00,@xhandledelete,[xnilparms]);
end;

procedure xopenmenu_page_pageview;
begin
	xaddcommand(m,false,'First',x00,@xhandleposition,[xhome]);
	xaddcommand(m,false,'Previous',x00,@xhandleposition,[xpageup]);
	xaddcommand(m,false,'Next',x00,@xhandleposition,[xpagedown]);
	xaddcommand(m,false,'Last',x00,@xhandleposition,[xend]);
	if not xisdrawingpage(xcp) then exit;
	xaddseparator(m);
	xaddcommand(m,false,'Resize...',x00,@xhandleresize,[xnilparms]);
	xaddcommand(m,false,'Set Scale...',x00,@xhandlescale,[xnilparms]);
end;

begin
	if xcv=xfolderview 	then begin xopenmenu_page_folderview; exit; end;
	if xcv=xpageview 		then begin xopenmenu_page_pageview; exit; end;
end;

procedure xopenmenu_shape;
	var a:xinteger; app:xboolean;
begin
	xaddcommand(m,false,'New Arc',x00,@xhandlenewshape,[xarcshape]);
	xaddcommand(m,false,'New Curve',x00,@xhandlenewshape,[xcurveshape]);
	xaddcommand(m,false,'New Ellipse',x00,@xhandlenewshape,[xellipseshape]);
	xaddcommand(m,false,'New Polygon',x00,@xhandlenewshape,[xpolygonshape]);
	xaddcommand(m,false,'New Rectangle',x00,@xhandlenewshape,[xrectangleshape]);
	xaddcommand(m,false,'New Text',x00,@xhandlenewshape,[xtextshape]);
	xaddcommand(m,false,'New Picture...',x00,@xhandlenewshape,[xpictureshape]);
	xaddseparator(m);
	xaddcommand(m,false,'Rotate','J',@xhandlerotate,[xnilparms]);
	xaddcommand(m,false,'Flip Horizontally',x00,@xhandleflip,[xhorz]);
	xaddcommand(m,false,'Flip Vertically',x00,@xhandleflip,[xvert]);
	xaddseparator(m);
	xaddcommand(m,false,'Bring to Front',x00,@xhandlesend,[xfront]);
	xaddcommand(m,false,'Send to Back',x00,@xhandlesend,[xback]);
	xaddseparator(m);
	xaddcommand(m,false,'Group','G',@xhandlegroup,[xnilparms]);
	xaddcommand(m,false,'Ungroup','U',@xhandleungroup,[xnilparms]);
	xaddseparator(m);
	a:=xgetshapesproperty(xcp.shapes,xarrowprop,xnoprop,true,app);
	xaddcommand(m,a=1,'No Arrows',x00,@xhandlearrow,[false,false]);
	xaddcommand(m,a=2,'Arrow at Start',x00,@xhandlearrow,[true,false]);
	xaddcommand(m,a=3,'Arrow at End',x00,@xhandlearrow,[false,true]);
	xaddcommand(m,a=4,'Arrow at Both Ends',x00,@xhandlearrow,[true,true]);
	xaddseparator(m);
	xaddcommand(m,false,'Modify...','M',@xhandlemodify,[xnilparms]);
end;

procedure xopenmenu_special;

procedure xopenmenu_special_areaview;
begin
	xaddcommand(m,false,'Compute...','K',@xhandlecompute,[xnilparms]);
end;

procedure xopenmenu_special_blockview;
begin
	xaddcommand(m,false,'Find...','F',@xhandlefind,[xnilparms]);
	xaddcommand(m,false,'Find Misspellings',x00,@xhandlefindmisspellings,[xnilparms]);
	xaddcommand(m,false,'Find Next','N',@xhandlenext,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Compute...','K',@xhandlecompute,[xnilparms]);
	xaddcommand(m,false,'Compute Size',x00,@xhandlespace,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Add Word...',x00,@xhandleaddword,[xnilparms]);
	xaddcommand(m,false,'Delete Word...',x00,@xhandledeleteword,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Indent','I',@xhandledent,[xin]);
	xaddcommand(m,false,'Outdent','O',@xhandledent,[xout]);
end;

procedure xopenmenu_special_cabinetview;
begin
	xaddcommand(m,false,'Find...','F',@xhandlefind,[xnilparms]);
	xaddcommand(m,false,'Find Deep...','G',@xhandlefinddeep,[xnilparms]);
	xaddcommand(m,false,'Find Next','N',@xhandlenext,[xnilparms]);
	if xisprogramsdrawer(xcd) then xaddcommand(m,false,'Find Error',x00,@xhandlefinderror,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Compute...','K',@xhandlecompute,[xnilparms]);
	xaddcommand(m,false,'Compute Size',x00,@xhandlespace,[xnilparms]);
	xaddseparator(m);
	if xisprogramsdrawer(xcd) then xaddcommand(m,false,'Compile','L',@xhandlecompile,[xnilparms]);
	xaddseparator(m);
	xcm:=m; xrunevent('',xmenueventname,0,[nil]); xcm:=nil;
end;

procedure xopenmenu_special_drawerview;
begin
	xaddcommand(m,false,'Find...','F',@xhandlefind,[xnilparms]);
	xaddcommand(m,false,'Find Deep...','G',@xhandlefinddeep,[xnilparms]);
	xaddcommand(m,false,'Find Next','N',@xhandlenext,[xnilparms]);
	if xisprogramsdrawer(xcd) then xaddcommand(m,false,'Find Error',x00,@xhandlefinderror,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Compute...','K',@xhandlecompute,[xnilparms]);
	xaddcommand(m,false,'Compute Size',x00,@xhandlespace,[xnilparms]);
	xaddseparator(m);
	if xisprogramsdrawer(xcd) then xaddcommand(m,false,'Compile','L',@xhandlecompile,[xnilparms]);
	xaddseparator(m);
	xcm:=m; xrunevent('',xmenueventname,0,[nil]); xcm:=nil;
end;

procedure xopenmenu_special_folderview;
begin
	xaddcommand(m,false,'Find...','F',@xhandlefind,[xnilparms]);
	xaddcommand(m,false,'Find Deep...','G',@xhandlefinddeep,[xnilparms]);
	xaddcommand(m,false,'Find Next','N',@xhandlenext,[xnilparms]);
	if xisprogramsdrawer(xcd) then xaddcommand(m,false,'Find Error',x00,@xhandlefinderror,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Compute...','K',@xhandlecompute,[xnilparms]);
	xaddcommand(m,false,'Compute Size',x00,@xhandlespace,[xnilparms]);
	xaddseparator(m);
	if xisprogramsdrawer(xcd) then xaddcommand(m,false,'Compile','L',@xhandlecompile,[xnilparms]);
	xaddseparator(m);
	xcm:=m; xrunevent('',xmenueventname,0,[nil]); xcm:=nil;
end;

procedure xopenmenu_special_pageview;
begin
	xaddcommand(m,false,'Find...','F',@xhandlefind,[xnilparms]);
	xaddcommand(m,false,'Find Misspellings',x00,@xhandlefindmisspellings,[xnilparms]);
	xaddcommand(m,false,'Find Next','N',@xhandlenext,[xnilparms]);
	if xisprogramsdrawer(xcd) then xaddcommand(m,false,'Find Error',x00,@xhandlefinderror,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Compute...','K',@xhandlecompute,[xnilparms]);
	xaddcommand(m,false,'Compute Size',x00,@xhandlespace,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,false,'Add Word...',x00,@xhandleaddword,[xnilparms]);
	xaddcommand(m,false,'Delete Word...',x00,@xhandledeleteword,[xnilparms]);
	xaddseparator(m);
	if xisprogramsdrawer(xcd) then xaddcommand(m,false,'Compile','L',@xhandlecompile,[xnilparms]);
	xaddseparator(m);
	xcm:=m; xrunevent('',xmenueventname,0,[nil]); xcm:=nil;
end;

begin
	if xcv=xareaview		then xopenmenu_special_areaview;
	if xcv=xblockview		then xopenmenu_special_blockview;
	if xcv=xcabinetview	then xopenmenu_special_cabinetview;
	if xcv=xdrawerview 	then xopenmenu_special_drawerview;
	if xcv=xfolderview 	then xopenmenu_special_folderview;
	if xcv=xpageview 		then xopenmenu_special_pageview;
end;

procedure xopenmenu_view;

procedure xopenmenu_view_blockview;
begin
	xaddsortcommands(m);
	xaddseparator(m);
	xaddcommand(m,false,'Reverse',x00,@xhandlereverse,[xnilparms]);
end;

procedure xopenmenu_view_cabinetview;
begin
	xaddsortcommands(m);
	xaddseparator(m);
	xaddcommand(m,false,'Reverse',x00,@xhandlereverse,[xnilparms]);
end;

procedure xopenmenu_view_drawerview;
begin
	xaddsortcommands(m);
	xaddseparator(m);
	xaddcommand(m,false,'Reverse',x00,@xhandlereverse,[xnilparms]);
end;

procedure xopenmenu_view_folderview;
begin
	xaddsortcommands(m);
	xaddseparator(m);
	xaddcommand(m,false,'Reverse',x00,@xhandlereverse,[xnilparms]);
	xaddseparator(m);
	xaddcommand(m,xca.edge=xtopedge,'Top Edges','T',@xhandleedge,[xtopedge]);
	xaddcommand(m,xca.edge=xbottomedge,'Bottom Edges','B',@xhandleedge,[xbottomedge]);
end;

procedure xopenmenu_view_pageview;
begin
	xaddcommand(m,false,'Reduce','R',@xhandlezoom,[xout]);
	xaddcommand(m,false,'Enlarge','E',@xhandlezoom,[xin]);
	xaddseparator(m);
	xaddcommand(m,false,'Top','T',@xhandlemove,[xtopleft]);
	xaddcommand(m,false,'Bottom','B',@xhandlemove,[xbottomleft]);
	xaddseparator(m);
	if xisdrawingpage(xcp) then begin
		case xca.edges of
			false:	xaddcommand(m,false,'Show Edges',x00,@xhandleedges,[xnilparms]);
			true:   xaddcommand(m,false,'Hide Edges',x00,@xhandleedges,[xnilparms]);
		end;
	end;
	if not xisformpage(xcp) then begin
		case xca.grid of
			false:	xaddcommand(m,false,'Show Grid Lines',x00,@xhandlegrid,[xnilparms]);
			true:   xaddcommand(m,false,'Hide Grid Lines',x00,@xhandlegrid,[xnilparms]);
		end;
	end;
	if not xisdrawingpage(xcp) then exit;
	xaddseparator(m);
	xaddcommand(m,xca.snap=10,'Small Snap',x00,@xhandlesnap,[10]);
	xaddcommand(m,xca.snap=30,'Medium Snap',x00,@xhandlesnap,[30]);
	xaddcommand(m,xca.snap=60,'Large Snap',x00,@xhandlesnap,[60]);
	xaddseparator(m);
	xaddcommand(m,xca.slice=xvslice,'Value Slice',x00,@xhandleslice,[xvslice]);
	xaddcommand(m,xca.slice=xfslice,'Format Slice',x00,@xhandleslice,[xfslice]);
	xaddcommand(m,xca.slice=xnslice,'Name Slice',x00,@xhandleslice,[xnslice]);
	xaddcommand(m,xca.slice=xcslice,'Code Slice',x00,@xhandleslice,[xcslice]);
	xaddcommand(m,xca.slice=xuslice,'Update Slice',x00,@xhandleslice,[xuslice]);
end;

begin
	if xcv=xblockview		then begin xopenmenu_view_blockview; exit; end;
	if xcv=xcabinetview	then begin xopenmenu_view_cabinetview; exit; end;
	if xcv=xdrawerview 	then begin xopenmenu_view_drawerview; exit; end;
	if xcv=xfolderview 	then begin xopenmenu_view_folderview; exit; end;
	if xcv=xpageview 		then begin xopenmenu_view_pageview; exit; end;
end;

begin
	if m=nil then exit;
	m.items.opened:=true;
	case m.mtyp of
		xbordermenu:	xopenmenu_color(xborderprop);
		xdrawermenu:	xopenmenu_drawer;
		xeditmenu:		xopenmenu_edit;
		xfilemenu:		xopenmenu_file;
		xfillmenu:		xopenmenu_color(xfillprop);
		xfoldermenu:	xopenmenu_folder;
		xfontmenu:		xopenmenu_font;
		xpagemenu:		xopenmenu_page;
		xpenmenu:			xopenmenu_color(xpenprop);
		xshapemenu:		xopenmenu_shape;
		xspecialmenu:	xopenmenu_special;
		xviewmenu:		xopenmenu_view;
	end;
	xadjustmenu(m);
end;

function  xopenpage(p:xpage):xboolean;
begin
	result:=false; if p=nil then exit;
	if p.shapes.opened then begin result:=true; exit; end;
	if not xlockcabinet(p.cid) then exit;
	try
		if not xreadpage(p) then exit;
		result:=true; p.shapes.opened:=true;
		p.edges:=xca.edges;
		xadjustpage(p);
	finally xunlockcabinet(p.cid); end;
end;

procedure xopenpopup(p:xpopup);
begin
	if p=nil then exit;
	p.choices.opened:=true;
	xadjustpopup(p);
end;

procedure xopenprograms;
	var c:xcabinet; cd:xdrawer; cf,nf:xfolder; cp,np:xpage; pi,pt:xinteger; t:xsymtyp;
begin
	with xca^ do begin
		if not (view in [xcabinetview,xdrawerview,xfolderview,xpageview]) then exit;
		c:=xopencabinet(xcidtocabinetname(cabinet.cid)); if c=nil then exit;
		try
			cd:=xfinddrawerwithcurrentversion(c.drawers,xprogramsdrawergroup,xprogramsdrawername);
			if (cd=nil) or (not xopendrawer(cd)) then exit;
			programs:=xcopydrawer(cd,true);
			nf:=programs.folders.first;
			while nf<>nil do begin cf:=nf; nf:=nf.next;
				if xfindsymbol([xca.global.symbols],xfoldersym,'',cf.name)<>nil then continue;
				cf:=xfindfolderwithcurrentversion(programs.folders,cf.name);
				if not xopenfolder(cf) then continue;
				xaddfoldersymbol(cf);
				np:=cf.pages.first;
				while np<>nil do begin cp:=np; np:=np.next;
					t:=xpagesym;
					pt:=xfindfield(cp.fields,'type');
					if (pt<>0) and (xv(cp.fields[pt].value)='function') then t:=xexternsym;
					pi:=xfindfield(cp.fields,'identifier'); if pi=0 then continue;
					if cp.fields[pi].value='' then exit;
					xaddpagesymbol(t,cf.name,cp.fields[pi].value,cp);
				end;
			end;
			xrunevent('',xinitializeeventname,0,[nil]);
		finally xclosecabinet(c); end;
	end;
end;

function  xopensort(f:xfolder; var s:xstring):xboolean;
begin
	result:=false; if f=nil then exit;
	if not xlockcabinet(f.cid) then exit;
	try
		if not xreadsort(f,s) then exit;
		result:=true;
	finally xunlockcabinet(f.cid); end;
end;

function  xoperandisnull(c:xinteger):xboolean;
	var cv:xinteger; o:xobject;
begin
	result:=false;
	for cv:=1 to c do begin
		o:=xpeekobject(cv); if xca.abort then exit;
		if xobjectisnull(o) then begin result:=true; exit; end;
	end;
end;

function  xoperandsarenull(c:xinteger):xboolean;
	var cv:xinteger; o:xobject;
begin
	if 1>c then begin result:=false; exit; end;
	result:=true;
	for cv:=1 to c do begin
		o:=xpeekobject(cv); if xca.abort then exit;
		result:=result and xobjectisnull(o);
	end;
end;

{p}

function  xpageiscurrent(p:xpage; pe:xinteger):xboolean;
begin
	result:=false; if p=nil then exit;
	result:=p.level=xindex.pageindex[pe].level;
	if not result then xcx:='Unable to save. Page modified by another user or task.';
end;

function  xpageisfiled(p:xpage):xboolean;
begin
	result:=false; if p=nil then exit;
	result:=p.pid<>0;
	if not result then xcx:='Invalid filing operation.';
end;

function  xpageisfound(p:xpage; e:xedgeset; s:xstring):xboolean;
	var cf:xinteger;
begin
	result:=false; if p=nil then exit;
	s:=xv(s);
	for cf:=low(p.fields) to high(p.fields) do with p.fields[cf] do begin
		if not (edge in e) then continue;
		if pos(s,xv(value))=0 then continue;
		result:=true;
		exit;
	end;
end;

function  xpageisloose(p:xpage):xboolean;
begin
	result:=false; if p=nil then exit;
	result:=p.pid=0;
	if not result then xcx:='Invalid filing operation.';
end;

function  xpageisreadonly(p:xpage):xboolean;
begin
	result:=(p<>nil) and (xcabinetidentifierisreadonly(p.cid));
	if result then xcx:='Page is read only.';
end;

function  xpageisvisible(p:xpage; fully:xboolean):xboolean;
begin
	result:=false; if p=nil then exit;
	if p.parent=nil then exit;
	if fully then result:=xrectangleencloses(xlvfr(p.parent),p.head);
	if not fully then result:=xrectangleintersects(xlvfr(p.parent),p.head);
end;

procedure xparsebreak;
begin
	if xca.loop.endmark=0 then begin xcompileerror('Break statement outside of for, loop, repeat, or while.'); exit; end;
	xaddjump(xca.loop.endmark);
	xgetnexttoken;
end;

procedure xparsecase;
	var endcasemark,endwhenmark,expr:xinteger;
begin
	with xca^,local,stack^ do begin
		endcasemark:=xgetmark;
		expr:=so+1;
		xgetnexttoken;
		xparseexpression;
		if not xskiptoken(xdotok) then exit;
		while not (xtok.ttyp in [xelsetok,xendtok,xnotok]) do begin
			if abort then exit;
			if not xskiptoken(xwhentok) then exit;
			xparseexpression;
			xaddpushreference(stack,expr);
			xaddinternalcall(xinternalequal,2);
			endwhenmark:=xgetmark;
			xaddjumpfalse(endwhenmark,true);
			if not xskiptoken(xdotok) then exit;
			xaddpop(1); // case expression
			xparsestatements;
			xaddjump(endcasemark);
			if not xskiptoken(xendtok) then exit;
			xaddmark(endwhenmark);
		end;
		xaddpop(1); // case expression
		if xtok.ttyp=xelsetok then begin xgetnexttoken; xparsestatements; end;
		if not xskiptoken(xendtok) then exit;
		xaddmark(endcasemark);
	end;
end;

procedure xparsecomplexexpression;
	var i:xinstruction;
begin
	xparsesimpleexpression;
	while xtok.ttyp in [xeqtok,xnetok,xgttok,xgetok,xlttok,xletok] do begin
		if xca.abort then exit;
		case xtok.ttyp of
			xeqtok:  i:=xcreateinternalcall(xinternalequal,2);
			xgetok:  i:=xcreateinternalcall(xinternalgreaterequal,2);
			xgttok:  i:=xcreateinternalcall(xinternalgreater,2);
			xletok:  i:=xcreateinternalcall(xinternallessequal,2);
			xlttok:  i:=xcreateinternalcall(xinternalless,2);
			xnetok:  i:=xcreateinternalcall(xinternalnotequal,2);
		end;
		xgetnexttoken;
		xparsesimpleexpression;
		xappendlink(xca.source.shape.instrs,i);
	end;
end;

procedure xparsecontinue;
begin
	if xca.loop.nextmark=0 then begin xcompileerror('Continue statement outside of for, loop, repeat, or while.'); exit; end;
	xaddjump(xca.loop.nextmark);
	xgetnexttoken;
end;

procedure xparseexit;
begin
	xaddjump(xca.code.endmark);
	xgetnexttoken;
end;

procedure xparseexpression;
	var i:xinstruction;
begin
	xparsesuperexpression;
	if xtok.ttyp<>xcetok then exit;
	i:=xcreateinternalcall(xinternalassign,2);
	xgetnexttoken;
	xparseexpression;
	xappendlink(xca.source.shape.instrs,i);
end;

procedure xparsefor;

var s:xsymbol;

procedure xparsefor_object;
	var backwards:xboolean; i:xinstruction; o:xloop; temp:xinteger;
begin
	with xca^,loop,local,stack^ do begin
		o:=loop;
		startmark:=xgetmark; nextmark:=xgetmark; endmark:=xgetmark;

		i:=xcreateinternalcall(xinternalassign,2);
		xgetnexttoken;
		temp:=so+1; inc(so);
		xaddpushconstant(xnodata,0);
		xaddpushreference(stack,temp);
		xparseexpression;
		backwards:=xtok.ttyp=xbackwardstok; if backwards then xgetnexttoken;
		xaddpushconstant(xbooleandata,backwards);
		xaddinternalcall(xinternalfirstrecord,2);
		xaddinternalcall(xinternalassign,2); xaddpop(1);

		xaddmark(startmark);
		xaddpushreference(stack,temp);
		xaddpushconstant(xnodata,0);
		xaddinternalcall(xinternalnotequal,2);
		xaddjumpfalse(endmark,true);
		if not xskiptoken(xdotok) then exit;
		xaddpushreference(stack,s.offset);
		xaddpushreference(stack,temp);
 		xappendlink(xca.source.shape.instrs,i); xaddpop(1);
		xaddpushreference(stack,temp);
		xaddpushreference(stack,temp);
		xaddpushconstant(xbooleandata,backwards);
		xaddinternalcall(xinternalnextrecord,2);
		xaddinternalcall(xinternalassign,2); xaddpop(1);

		xparsestatements;

		xaddmark(nextmark);
		xaddjump(startmark);
		xaddmark(endmark);
		xskiptoken(xendtok);
		xaddpop(1); dec(so);
		xaddpushreference(stack,s.offset); // nil out loop var for next time
		xaddpushconstant(xnodata,0);
		xaddinternalcall(xinternalassign,2); xaddpop(1);
		loop:=o;
	end;
end;

procedure xparsefor_ordinal;
	var backwards:xboolean; expr:xinteger; i:xinstruction; o:xloop;
begin
	with xca^,loop,local,stack^ do begin
		o:=loop;
		startmark:=xgetmark; nextmark:=xgetmark; endmark:=xgetmark;
		expr:=so+1; inc(so);
		xaddpushreference(stack,s.offset);
		i:=xcreateinternalcall(xinternalassign,2);
		xgetnexttoken;
		xparseexpression;
		xappendlink(xca.source.shape.instrs,i); xaddpop(1);
		if not xskiptoken(xtotok) then exit;
		xparseexpression;
		backwards:=xtok.ttyp=xbackwardstok;
		if backwards then begin
			xgetnexttoken;
			xaddpushreference(stack,s.offset);
			xaddpushreference(stack,expr);
			xaddinternalcall(xinternalswap,2); xaddpop(1);
		end;
		xaddmark(startmark);
		xaddpushreference(stack,s.offset);
		xaddpushreference(stack,expr);
		if not backwards then xaddinternalcall(xinternalgreater,2) else xaddinternalcall(xinternalless,2);
		xaddjumptrue(endmark,true);
		if not xskiptoken(xdotok) then exit;
		xparsestatements;
		xaddmark(nextmark);
		xaddpushreference(stack,s.offset);
		xaddpushreference(stack,s.offset);
		xaddpushconstant(xnumberdata,1);
		if not backwards then xaddinternalcall(xinternaladd,2) else xaddinternalcall(xinternalsubtract,2);
		xaddinternalcall(xinternalassign,2); xaddpop(1);
		xaddjump(startmark);
		xaddmark(endmark);
		xskiptoken(xendtok);
		xaddpop(1); dec(so);
		loop:=o;
	end;
end;

begin
	xgetnexttoken;
	if not xexpecttoken(xidenttok) then exit;
	s:=xfindsymbol([xca.local.symbols],xlocalsym,'',xtok.str);
	if s=nil then begin xcompileerror('Local variable '''+xtok.str+''' not found.'); exit; end;
	xgetnexttoken;
	case xtok.ttyp of
		xcetok: xparsefor_ordinal;
		xintok:	xparsefor_object;
		else    xcompileerror('Expected '''+xtokentypetostring(xcetok)+''' or '''+xtokentypetostring(xintok)+''' found '''+xtokentostring(xtok)+'''.');
	end;
end;

procedure xparsefunction;

procedure xparsefunction_parameters;
	var cv:xvalue; o:xinteger; s:xsymbol; v:xvalues;
begin
	try v:=xcreatechain(nil);
		repeat
			if xca.abort then exit;
			xgetnexttoken;
			if not xexpecttoken(xidenttok) then exit;
			s:=xfindsymbol([xca.local.symbols],xlocalsym,'',xtok.str);
			if s<>nil then begin xcompileerror('Parameter '''+xtok.str+''' is not unique.'); exit; end;
			xappendlink(v,xcreatevalue(xtok.str));
			xgetnexttoken;
		until xtok.ttyp<>xcommatok;
		o:=0; cv:=v.last;
		while cv<>nil do begin
			dec(o);
			xaddlocalsymbol(cv.value,o);
			cv:=cv.prev;
		end;
		xaddcheckparameters(abs(o));
		xskiptoken(xrptok);
	finally xdestroyvalues(v,true); end;
end;

procedure xparsefunction_returns;
	var s:xsymbol;
begin
	xgetnexttoken;
	if not xexpecttoken(xidenttok) then exit;
	s:=xfindsymbol([xca.local.symbols],xlocalsym,'',xtok.str);
	if s<>nil then begin xcompileerror('Return variable '''+xtok.str+''' is not unique.'); exit; end;
	xaddlocalsymbol(xtok.str,3);
	xgetnexttoken;
end;

begin
	with xca.code do begin
		endmark:=xgetmark;
		if not xskiptoken(xfunctiontok) then exit;
		if not xskiptoken(xidenttok) then exit;
		if xtok.ttyp=xlptok then xparsefunction_parameters else xaddcheckparameters(0);
		if xtok.ttyp=xreturnstok then xparsefunction_returns;
		if not xskiptoken(xdotok) then exit;
		xparselocals;
		xparsestatements;
		xaddmark(endmark);
		xskiptoken(xendtok);
	end;
end;

procedure xparseglobal;
	var m:xsymbol; s:xscope;
begin
	with xca^,global do begin
		repeat
			if abort then exit;
			xgetnexttoken;
			if not xexpecttoken(xidenttok) then exit;
			s:=xgetfolder(source.shape).name;
			m:=xfindsymbol([xca.global.symbols],xglobalsym,s,xtok.str);
			if m=nil then m:=xfindsymbol([xca.global.symbols],xglobalsym,'',xtok.str);
			if m<>nil then begin xcompileerror('Global variable '''+xtok.str+''' is not unique.'); exit; end;
			xaddglobalsymbol(s,xtok.str,stack.sp);
			xpushobject(stack,xnovar,xnodata,nil);
			xgetnexttoken;
		until xtok.ttyp<>xcommatok;
	end;
end;

function  xparseidentifier:xsymbol;

var t:xstring;

procedure xparseidentifier_function;
	var b:xboolean; p:xinteger;
begin
	b:=xtok.ttyp=xlptok; p:=0;
	if b then repeat
		if xca.abort then exit;
		xgetnexttoken;
		xparseexpression;
		inc(p);
	until xtok.ttyp<>xcommatok;
	if result.styp=xexternsym then xaddexternalcall(result.page,p);
	if result.styp=xinternsym then xaddinternalcall(result.intern,p);
	if b then xskiptoken(xrptok); // after callinstr so errors look good
end;

procedure xparseidentifier_shapename;
begin
	xaddpushconstant(xnodata,0);
	xaddpushconstant(xstringdata,t);
	xaddpushconstant(xbooleandata,true);
	xaddinternalcall(xinternalresolve,3);
	xparseselectors;
end;

procedure xparseidentifier_otherpages;
begin
	xaddpushconstant(xpagedata,xinteger(result.page));
	xparseselectors;
end;

procedure xparseidentifier_thispage;
begin
	xaddpushconstant(xpagedata,xinteger(xgetpage(xca.source.shape)));
	xgetnexttoken;
	xparseselectors;
end;

procedure xparseidentifier_variable;
begin
	if result.styp=xglobalsym then xaddpushreference(xca.global.stack,result.offset);
	if result.styp=xlocalsym then xaddpushreference(xca.local.stack,result.offset);
	xparseselectors;
end;

begin
	result:=nil;
	if xtok.str='thispage' then begin xparseidentifier_thispage; exit; end;
	result:=xparsename(t);
	if result=nil then begin xparseidentifier_shapename; exit; end;
	if result.styp in [xinternsym,xexternsym] then begin xparseidentifier_function; exit; end;
	if result.styp in [xpagesym]							then begin xparseidentifier_otherpages; exit; end;
	if result.styp in [xglobalsym,xlocalsym] 	then begin xparseidentifier_variable; exit; end;
end;

procedure xparseif;
	var endmark,elsemark:xinteger;
begin
	endmark:=xgetmark;
	elsemark:=xgetmark;
	xgetnexttoken;
	xparseexpression;
	xaddjumpfalse(elsemark,true);
	if not xskiptoken(xdotok) then exit;
	xparsestatements;
	xaddjump(endmark);
	xaddmark(elsemark);
	if xtok.ttyp=xelsetok then begin xgetnexttoken; xparsestatements; end;
	xskiptoken(xendtok);
	xaddmark(endmark);
end;

procedure xparselocal;
	var s:xsymbol;
begin
	repeat
		if xca.abort then exit;
		xgetnexttoken;
		if not xexpecttoken(xidenttok) then exit;
		s:=xfindsymbol([xca.local.symbols],xlocalsym,'',xtok.str);
		if s<>nil then begin xcompileerror('Local variable '''+xtok.str+''' is not unique.'); exit; end;
		inc(xca.local.stack.so);
		xaddlocalsymbol(xtok.str,xca.local.stack.so);
		xaddpushconstant(xnodata,0);
		xgetnexttoken;
	until xtok.ttyp<>xcommatok;
end;

procedure xparselocals;
begin
	while xtok.ttyp=xlocaltok do begin
		if xca.abort then exit;
		xparselocal;
	end;
end;

procedure xparseloop;
	var o:xloop;
begin
	with xca^,loop do begin
		o:=loop;
		startmark:=xgetmark; nextmark:=xgetmark; endmark:=xgetmark;
		xgetnexttoken;
		xaddmark(startmark);
		xparsestatements;
		xaddmark(nextmark);
		xaddjump(startmark);
		xaddmark(endmark);
		xskiptoken(xendtok);
		loop:=o;
	end;
end;

function  xparsename(var tok:xstring):xsymbol;

var f:xfolder; spreadsheet:xboolean;

procedure xparsename_explicitscope;
	var s:xscope;
begin
	with xca^ do begin
		s:=xtok.str;
		if xfindsymbol([global.symbols],xfoldersym,'',s)=nil then begin xcompileerror('Folder '''+s+''' not found.'); exit; end;
		xgetnexttoken; xgetnexttoken; if not xexpecttoken(xidenttok) then exit;
		tok:=s+':'+xtok.str;
		result:=xfindsymbol([global.symbols],xglobalsym,s,xtok.str);
		if result=nil then result:=xfindsymbol([global.symbols],xpagesym,s,xtok.str);
		if result=nil then result:=xfindsymbol([global.symbols],xexternsym,s,xtok.str);
		if result=nil then begin xcompileerror('Identifier '''+xtok.str+''' not found in folder '''+s+'''.'); exit; end;
		xgetnexttoken;
	end;
end;

procedure xparsename_spreadsheetscope;
	var p:xpage;
begin
	with xca^ do begin
		p:=xgetpage(source.shape);
		if (p<>nil) and (xfindshape(p.shapes,xtok.str)<>nil) then begin xgetnexttoken; exit; end;
		result:=xfindsymbol([global.symbols],xglobalsym,'',xtok.str);
		if result=nil then result:=xfindsymbol([global.symbols],xpagesym,'',xtok.str);
		if result=nil then result:=xfindsymbol([global.symbols],xinternsym,'',xtok.str);
		if result=nil then begin xcompileerror('Identifier '''+xtok.str+''' not found.'); exit; end;
		xgetnexttoken;
	end;
end;

begin
	with xca^ do begin
		result:=nil; tok:=xtok.str; spreadsheet:=source.slice=xcslice;
		if xpeeknexttoken.ttyp=xcolontok then begin xparsename_explicitscope; exit; end;
		if spreadsheet then begin xparsename_spreadsheetscope; exit; end;
		result:=xfindsymbol([local.symbols],xlocalsym,'',xtok.str);
		f:=xgetfolder(xca.source.shape);
		if (result=nil) and (f<>nil) then result:=xfindsymbol([global.symbols],xglobalsym,f.name,xtok.str);
		if (result=nil) and (f<>nil) then result:=xfindsymbol([global.symbols],xpagesym,f.name,xtok.str);
		if (result=nil) and (f<>nil) then result:=xfindsymbol([global.symbols],xexternsym,f.name,xtok.str);
		if (result=nil) then result:=xfindsymbol([global.symbols],xglobalsym,'',xtok.str);
		if (result=nil) then result:=xfindsymbol([global.symbols],xpagesym,'',xtok.str);
		if (result=nil) then result:=xfindsymbol([global.symbols],xinternsym,'',xtok.str);
		if (result=nil) then xcompileerror('Identifier '''+xtok.str+''' not found.');
		xgetnexttoken;
	end;
end;

procedure xparserepeat;
	var o:xloop;
begin
	with xca^,loop do begin
		o:=loop;
		startmark:=xgetmark; nextmark:=xgetmark; endmark:=xgetmark;
		xgetnexttoken;
		xaddmark(startmark);
		xparsestatements;
		xskiptoken(xuntiltok);
		xaddmark(nextmark);
		xparseexpression;
		xaddjumpfalse(startmark,true);
		xaddmark(endmark);
		loop:=o;
	end;
end;

procedure xparseselector;
begin
	if not (xtok.ttyp in [xdottok,xlbtok]) then begin xcompileerror('Expected '''+xtokentypetostring(xdottok)+''' or '''+xtokentypetostring(xlbtok)+''' found '''+xtokentostring(xtok)+'''.'); exit; end;
	if xtok.ttyp=xlbtok then begin
		xgetnexttoken;
		xparseexpression;
		xaddpushconstant(xbooleandata,xca.source.slice=xcslice);
		xaddinternalcall(xinternalindex,3);
		xskiptoken(xrbtok);
		exit;
	end;
	xgetnexttoken;
	if not xexpecttoken(xidenttok) then exit;
	xaddpushconstant(xstringdata,xtok.str);
	xaddpushconstant(xbooleandata,xca.source.slice=xcslice);
	xaddinternalcall(xinternalresolve,3);
	xgetnexttoken;
end;

procedure xparseselectors;
begin
	while xtok.ttyp in [xdottok,xlbtok] do begin
		if xca.abort then exit;
		xparseselector;
	end;
end;

procedure xparsesimpleexpression;
	var i:xinstruction;
begin
	xparseterm;
	while xtok.ttyp in [xplustok,xdashtok,xstartok,xslashtok,xcarettok,xdivtok,xmodtok] do begin
		if xca.abort then exit;
		case xtok.ttyp of
			xcarettok:	i:=xcreateinternalcall(xinternalpower,2);
			xdashtok:   i:=xcreateinternalcall(xinternalsubtract,2);
			xdivtok:    i:=xcreateinternalcall(xinternalintegerdivide,2);
			xmodtok:    i:=xcreateinternalcall(xinternalmodulus,2);
			xplustok:	  i:=xcreateinternalcall(xinternaladd,2);
			xslashtok:	i:=xcreateinternalcall(xinternalrealdivide,2);
			xstartok:	  i:=xcreateinternalcall(xinternalmultiply,2);
		end;
		xgetnexttoken;
		xparseterm;
		xappendlink(xca.source.shape.instrs,i);
	end;
end;

procedure xparsestatement;

procedure xparsestatement_identifier;
	var i:xinstruction; s:xsymbol;
begin
	try
		s:=xparseidentifier;
		if (s<>nil) and (s.styp in [xexternsym,xinternsym]) and (not (xtok.ttyp in [xdottok,xlbtok])) then exit;
		if (s<>nil) and (s.styp in [xexternsym,xinternsym]) then xparseselectors;
		if not xexpecttoken(xcetok) then exit;
		i:=xcreateinternalcall(xinternalassign,2);
		xgetnexttoken;
		xparseexpression;
		xappendlink(xca.source.shape.instrs,i);
	finally xaddpop(1); end; // pop return value
end;

begin
	case xtok.ttyp of
		xbreaktok:		xparsebreak;
		xcasetok:			xparsecase;
		xcontinuetok:	xparsecontinue;
		xexittok:			xparseexit;
		xfortok:			xparsefor;
		xglobaltok:		xparseglobal;
		xidenttok:		xparsestatement_identifier;
		xiftok:				xparseif;
		xlooptok:			xparseloop;
		xrepeattok:		xparserepeat;
		xwhiletok:		xparsewhile;
		else					xcompileerror('Expected statement found '''+xtokentostring(xtok)+'''.');
	end;
end;

procedure xparsestatements;
	const t=[xbreaktok,xcasetok,xcontinuetok,xexittok,xfortok,xglobaltok,
		xidenttok,xiftok,xlooptok,xrepeattok,xwhiletok];
begin
	while xtok.ttyp in t do begin
		if xca.abort then exit;
		xparsestatement;
	end;
end;

procedure xparsesuperexpression;
	var m:xinteger; i:xinstruction;
begin
	xparsecomplexexpression;
	while xtok.ttyp in [xandtok,xortok,xxortok] do begin
		if xca.abort then exit;
		m:=xgetmark;
		case xtok.ttyp of
			xandtok:	xaddjumpfalse(m,false);
			xortok:		xaddjumptrue(m,false);
		end;
		case xtok.ttyp of
			xandtok:	i:=xcreateinternalcall(xinternaland,2);
			xortok:		i:=xcreateinternalcall(xinternalor,2);
			xxortok:	i:=xcreateinternalcall(xinternalxor,2);
		end;
		xgetnexttoken;
		xparsecomplexexpression;
		xappendlink(xca.source.shape.instrs,i);
		xaddmark(m);
	end;
end;

procedure xparseterm;

procedure xparseterm_ampersand;
	var s:xsymbol; t:xstring;
begin
	xgetnexttoken;
	s:=xparsename(t);
	if s=nil then begin xcompileerror('Identifier '''+t+''' not found.'); exit; end;
	xaddpushconstant(xsymboldata,xinteger(s));
end;

procedure xparseterm_boolean;
begin
	xaddpushconstant(xbooleandata,xtok.bool);
	xgetnexttoken;
end;

procedure xparseterm_dash;
begin
	xgetnexttoken;
	xparseterm;
	xaddinternalcall(xinternalnegate,1);
end;

procedure xparseterm_identifier;
var s:xsymbol;
begin
	s:=xparseidentifier;
	if (s<>nil) and (s.styp in [xexternsym,xinternsym]) then xparseselectors;
end;

procedure xparseterm_leftparen;
begin
	xgetnexttoken;
	xparseexpression;
	xskiptoken(xrptok);
end;

procedure xparseterm_nil;
begin
	xaddpushconstant(xnodata,0);
	xgetnexttoken;
end;

procedure xparseterm_not;
begin
	xgetnexttoken;
	xparseterm;
	xaddinternalcall(xinternalnot,1);
end;

procedure xparseterm_number;
begin
	xaddpushconstant(xnumberdata,xtok.num);
	xgetnexttoken;
end;

procedure xparseterm_plus;
begin
	xgetnexttoken;
	xparseterm;
end;

procedure xparseterm_string;
begin
	xaddpushconstant(xstringdata,xqts(xtok.str));
	xgetnexttoken;
end;

begin
	case xtok.ttyp of
		xamptok:		xparseterm_ampersand;
		xdashtok:	  xparseterm_dash;
		xfalsetok:	xparseterm_boolean;
		xidenttok:	xparseterm_identifier;
		xlptok:		  xparseterm_leftparen;
		xniltok:		xparseterm_nil;
		xnottok:    xparseterm_not;
		xnumtok:	  xparseterm_number;
		xplustok:	  xparseterm_plus;
		xstrtok:	  xparseterm_string;
		xtruetok:		xparseterm_boolean;
		else			  xcompileerror('Expected expression found '''+xtokentostring(xtok)+'''.')
	end;
end;

procedure xparsewhile;
	var o:xloop;
begin
	with xca^,loop do begin
		o:=loop;
		startmark:=xgetmark; nextmark:=xgetmark; endmark:=xgetmark;
		xgetnexttoken;
		xaddmark(startmark);
		xparseexpression;
		xaddjumpfalse(endmark,true);
		xskiptoken(xdotok);
		xparsestatements;
		xaddmark(nextmark);
		xaddjump(startmark);
		xaddmark(endmark);
		xskiptoken(xendtok);
		loop:=o;
	end;
end;

function  xpastecharacters(s:xshape):xboolean;

var c:xinteger;

procedure xpastecharacters_block;
	var oc:xinteger; cv:xvalue;
begin
	with s^,text,caretpos do begin
		xdeleteselectedcharacters(s,false);
		oc:=col; dec(row);
		cv:=xclip.values.first;
		while cv<>nil do begin
			col:=oc; inc(row); if row>count then begin xappendrow(text); rows[count]:=xcr; end;
			anchor:=caretpos;
			xinsertcharacters(s,cv.value);
			cv:=cv.next;
		end;
		col:=oc; inc(row); if row>count then begin xappendrow(text); rows[count]:=xcr; end;
		anchor:=caretpos; caretwas:=caretpos;
	end;
end;

begin
	result:=false; if s=nil then exit;
	c:=xgetvaluecount(xclip.values); if c=0 then exit;
	result:=true;
	if (xissimple(s.text)) and (c>1) then begin xpastecharacters_block; exit; end;
	xinsertcharacters(s,xclip.values.firstvalue.value);
end;

procedure xpause(t:xtick);
	var ot:xtick;
begin
	ot:=xgetticks; while abs(xgetticks-ot)<=t do;
end;

function  xpeekasstring(p:xinteger):xstring;

var v:xvar;

procedure xpeekasstring_simpletype;
begin
	result:=xgetslice(v.obj,xvslice);
end;

procedure xpeekasstring_symbol;
begin
	result:=xsymboltostring(v.obj);
end;

begin
	result:='';
	v:=xpeekvariable(p); if xca.abort then exit;
	if xtypemismatch(v,xsimpletypes+[xsymboldata]) then exit;
	if xtype(v.obj)=xsymbolrecord then xpeekasstring_symbol else xpeekasstring_simpletype;
end;

function  xpeekboolean(p:xinteger):xboolean;
	var v:xvar;
begin
	result:=false;
	v:=xpeekvariable(p); if xca.abort then exit;
	if xtypemismatch(v,[xbooleandata]) then exit;
	result:=xstb(xgetslice(v.obj,xvslice));
end;

function  xpeekcabinet(p:xinteger):xcabinet;
	var v:xvar;
begin
	result:=nil;
	v:=xpeekvariable(p); if xca.abort then exit;
	if xtypemismatch(v,[xcabinetdata]) then exit;
	result:=v.obj;
end;

function  xpeekcharacter(p:xinteger):xchar;
	var s:xstring;
begin
	s:=xpeekstring(p);
	if s<>'' then result:=s[1] else result:=x00;
end;

function  xpeekdate(p:xinteger):xdate;
	var v:xvar;
begin
	result:=0;
	v:=xpeekvariable(p); if xca.abort then exit;
	if xtypemismatch(v,[xdatedata]) then exit;
	result:=xstd(xgetslice(v.obj,xvslice));
end;

function  xpeekdrawer(p:xinteger):xdrawer;
	var v:xvar;
begin
	result:=nil;
	v:=xpeekvariable(p); if xca.abort then exit;
	if xtypemismatch(v,[xdrawerdata]) then exit;
	result:=v.obj;
end;

function  xpeekfolder(p:xinteger):xfolder;
	var v:xvar;
begin
	result:=nil;
	v:=xpeekvariable(p); if xca.abort then exit;
	if xtypemismatch(v,[xfolderdata]) then exit;
	result:=v.obj;
end;

function  xpeekinteger(p:xinteger):xinteger;
	var n:xnumber;
begin
	result:=0;
	n:=xpeeknumber(p); if xca.abort then exit;
	if n>xmaxinteger then begin xrunerror('Number out of range.'); exit; end;
	if n<xmininteger then begin xrunerror('Number out of range.'); exit; end;
	result:=trunc(n);
end;

function  xpeeknamable(p:xinteger):xshape;
	var v:xobject;
begin
	result:=nil;
	v:=xpeekobject(p); if xca.abort then exit;
	if xtype(v)<>xshaperecord then begin xrunerror('Type mismatch.'); exit; end;
	if not (xshape(v).styp in [xpictureshape,xtextshape]) then begin xrunerror('Type mismatch.'); exit; end;
	result:=v;
end;

function  xpeeknexttoken:xtoken;
	var p:xinteger;
begin
	with xca^,source,shape.slices[slice] do begin
		finalize(result); result:=xniltoken; p:=pos;
		if abort then exit;
		repeat
			finalize(result); result:=xgetnextlanguagetoken(str,p,false);
		until result.ttyp<>xcommenttok;
	end;
end;

function  xpeeknumber(p:xinteger):xnumber;
	var v:xvar;
begin
	result:=0;
	v:=xpeekvariable(p); if xca.abort then exit;
	if xtypemismatch(v,[xnumberdata]) then exit;
	result:=xstnc(xgetslice(v.obj,xvslice));
end;

function  xpeekobject(p:xinteger):xobject;
	var v:xvar;
begin
	result:=nil;
	v:=xpeekvariable(p); if xca.abort then exit;
	result:=v.obj;
end;

function  xpeekpage(p:xinteger):xpage;
	var v:xvar;
begin
	result:=nil;
	v:=xpeekvariable(p); if xca.abort then exit;
	if xtypemismatch(v,[xpagedata]) then exit;
	result:=v.obj;
end;

function  xpeekregister(o:xinteger):xinteger;
	var v:xinteger;
begin
	result:=0;
	with xca.local.stack^ do begin
		v:=sf+o;
		if v<1 then begin xrunerror('Invalid stack reference.'); exit; end;
		if v>sp then begin xrunerror('Invalid stack reference.'); exit; end;
		result:=xinteger(vars[v].obj);
	end;
end;

function  xpeekstring(p:xinteger):xstring;
	var v:xvar;
begin
	result:='';
	v:=xpeekvariable(p); if xca.abort then exit;
	if xtypemismatch(v,[xstringdata]) then exit;
	result:=xgetslice(v.obj,xvslice);
end;

function  xpeeksymbol(p:xinteger):xsymbol;
	var v:xvar;
begin
	result:=nil;
	v:=xpeekvariable(p); if xca.abort then exit;
	if xtypemismatch(v,[xsymboldata]) then exit;
	result:=v.obj;
end;

function  xpeektext(p:xinteger):xshape;
	var v:xobject;
begin
	result:=nil;
	v:=xpeekobject(p); if xca.abort then exit;
	if xtype(v)<>xshaperecord then begin xrunerror('Type mismatch.'); exit; end;
	if xshape(v).styp<>xtextshape then begin xrunerror('Type mismatch.'); exit; end;
	result:=v;
end;

function  xpeektime(p:xinteger):xtime;
	var v:xvar;
begin
	result:=0;
	v:=xpeekvariable(p); if xca.abort then exit;
	if xtypemismatch(v,[xtimedata]) then exit;
	result:=xstt(xgetslice(v.obj,xvslice));
end;

function  xpeektype(p:xinteger):xdatatyp;
	var v:xvar;
begin
	result:=xnodata;
	v:=xpeekvariable(p); if v=nil then exit;
	result:=v.dtyp;
end;

function  xpeekvariable(p:xinteger):xvar;
	var v:xinteger;
begin
	result:=nil;
	with xca.local.stack^ do begin
		v:=sf+(-xpeekregister(0)+(p-1));
		if v<1 then begin xrunerror('Invalid stack reference.'); exit; end;
		if v>sp then begin xrunerror('Invalid stack reference.'); exit; end;
		result:=vars[v].ref;
	end;
end;

function  xphonex(w:xshortstring):xshortstring;

type
	xruletyp=(xww,xbw,xew,xse,xnw);

	xrule=record
		typ:xruletyp;
		pattern,output:string[12];
		bump:xinteger;
	end;

const
	xrules:array[1..2109-439] of xrule=
	(
	// proper-name rules
	{
	(typ:xww;	pattern:'ecclesiastes';	output:'.kl.s.st.s'; 	  bump:12),
	(typ:xww;	pattern:'hammarskjold';	output:'h.m.rsh.ld'; 	  bump:12),
	(typ:xww;	pattern:'michelangelo';	output:'m.k.l.nj.l.';   bump:12),
	(typ:xww;	pattern:'narragansett';	output:'n.r.g.ns.t'; 	  bump:12),
	(typ:xww;	pattern:'poughkeepsie';	output:'p.k.ps.';				bump:12),
	(typ:xww;	pattern:'rachmaninoff';	output:'r.km.n.n.f';		bump:12),
	(typ:xww;	pattern:'weyerhaeuser';	output:'w.rh.s.r';			bump:12),
	(typ:xww;	pattern:'albuquerque';	output:'.lb.k.rk.'; 	  bump:11),
	(typ:xww;	pattern:'charlemagne';	output:'sh.rl.m.n'; 		bump:11),
	(typ:xww;	pattern:'debusschere';	output:'d.b.sh.r'; 			bump:11),
	(typ:xww;	pattern:'gainesville';	output:'g.nsv.l'; 			bump:11),
	(typ:xww;	pattern:'herzegovina';	output:'h.rts.g.v.n.'; 	bump:11),
	(typ:xww;	pattern:'hippocrates';	output:'h.p.kr.t.s'; 		bump:11),
	(typ:xww;	pattern:'machiavelli';	output:'m.k.v.l.'; 			bump:11),
	(typ:xww;	pattern:'melchizedek';	output:'m.lk.s.d.k'; 		bump:11),
	(typ:xww;	pattern:'schenectady';	output:'sk.n.kt.d.'; 		bump:11),
	(typ:xww;	pattern:'schlesinger';	output:'shl.s.nj.r'; 		bump:11),
	(typ:xww;	pattern:'sennacherib';	output:'s.n.k.r.b'; 		bump:11),
	(typ:xww;	pattern:'susquehanna';	output:'s.skw.h.n.'; 		bump:11),
	(typ:xww;	pattern:'tchaikovsky';	output:'ch.k.fsk.'; 		bump:11),
	(typ:xww;	pattern:'tutankhamen';	output:'t.t.nk.m.n'; 		bump:11),
	(typ:xww;	pattern:'vichyssoise';	output:'v.sh.sw.s'; 		bump:11),
	(typ:xww;	pattern:'wisenheimer';	output:'w.s.nh.m.r'; 		bump:11),
	(typ:xww;	pattern:'archimedes';		output:'.rk.m.d.s'; 		bump:10),
	(typ:xww;	pattern:'armageddon';		output:'.rm.g.d.n'; 		bump:10),
	(typ:xww;	pattern:'artaxerxes';		output:'.rt.s.rks.s';   bump:10),
	(typ:xww;	pattern:'beaujolais';		output:'b.j.l.'; 				bump:10),
	(typ:xww;	pattern:'copenhagen';	  output:'k.p.nh.g.n'; 		bump:10),
	(typ:xww;	pattern:'gethsemane';	  output:'g.ths.m.n.';		bump:10),
	(typ:xww;	pattern:'kazakhstan';	  output:'k.s.kst.n';			bump:10),
	(typ:xww;	pattern:'linkletter';	  output:'l.nkl.t.r';			bump:10),
	(typ:xww;	pattern:'louisville';	  output:'l.v.l';					bump:10),
	(typ:xww;	pattern:'marseilles';	  output:'m.rs.';					bump:10),
	(typ:xww;	pattern:'monticello';	  output:'m.nt.ch.l.';		bump:10),
	(typ:xww;	pattern:'montpelier';	  output:'m.ntp.l.r';			bump:10),
	(typ:xww;	pattern:'montserrat';	  output:'m.ns.r.t';			bump:10),
	(typ:xww;	pattern:'okeechobee';	  output:'.k.ch.b.';			bump:10),
	(typ:xww;	pattern:'pittsburgh';	  output:'p.tsb.rg';			bump:10),
	(typ:xww;	pattern:'prometheus';	  output:'pr.m.th.s';			bump:10),
	(typ:xww;	pattern:'rutherford';	  output:'r.th.f.rd';			bump:10),
	(typ:xww;	pattern:'septuagint';	  output:'s.pt.j.nt';			bump:10),
	(typ:xww;	pattern:'seychelles';	  output:'s.sh.ls';				bump:10),
	(typ:xww;	pattern:'shreveport';	  output:'shr.vp.rt';  		bump:10),
	(typ:xww;	pattern:'strychnine';	  output:'str.kn.n';			bump:10),
	(typ:xww;	pattern:'argentina';		output:'.rj.nt.n.'; 		bump:9),
	(typ:xww;	pattern:'androcles';		output:'.ndr.kl.s'; 		bump:9),
	(typ:xww;	pattern:'aphrodite';		output:'.fr.d.t.'; 			bump:9),
	(typ:xww;	pattern:'aristotle';		output:'.r.st.t.l'; 		bump:9),
	(typ:xww;	pattern:'bacharach';		output:'b.k.r.k'; 			bump:9),
	(typ:xww;	pattern:'beethoven';		output:'b.t.v.n'; 			bump:9),
	(typ:xww;	pattern:'belafonte';		output:'b.l.f.nt.'; 		bump:9),
	(typ:xww;	pattern:'cervantes';	  output:'s.rv.nt.s'; 		bump:9),
	(typ:xww;	pattern:'charmaine';	  output:'sh.rm.n'; 			bump:9),
	(typ:xww;	pattern:'cleveland';	  output:'kl.vl.nd'; 			bump:9),
	(typ:xww;	pattern:'descartes';		output:'d.k.rt'; 				bump:9),
	(typ:xww;	pattern:'edinburgh';	  output:'.d.nb.r.';	 		bump:9),
	(typ:xww;	pattern:'euphrates';	  output:'.fr.t.s';		 		bump:9),
	(typ:xww;	pattern:'farentino';	  output:'f.r.nt.n.';	 		bump:9),
	(typ:xww;	pattern:'feliciano';	  output:'f.l.s.n.';	 		bump:9),
	(typ:xww;	pattern:'farrakhan';	  output:'f.r.k.n';		 		bump:9),
	(typ:xww;	pattern:'francesca';	  output:'fr.nch.sk.';		bump:9),
	(typ:xww;	pattern:'friedrich';	  output:'fr.dr.k';				bump:9),
	(typ:xww;	pattern:'gorbachev';	  output:'g.rb.ch.f';			bump:9),
	(typ:xww;	pattern:'greenwich';	  output:'gr.n.ch';				bump:9),
	(typ:xww;	pattern:'guillaume';	  output:'g.m';						bump:9),
	(typ:xww;	pattern:'kissinger';	  output:'k.s.nj.r';			bump:9),
	(typ:xww;	pattern:'krushchev';	  output:'kr.sch.f';			bump:9),
	(typ:xww;	pattern:'lafayette';	  output:'l.f.y.t';				bump:9),
	(typ:xww;	pattern:'laguardia';	  output:'l.gw.rd.';			bump:9),
	(typ:xww;	pattern:'lindbergh';	  output:'l.nb.rg'; 		  bump:9),
	(typ:xww;	pattern:'lufthansa';	  output:'l.ft.ns.'; 		  bump:9),
	(typ:xww;	pattern:'mitterand';	  output:'m.t.r.n'; 		  bump:9),
	(typ:xww;	pattern:'montalban';	  output:'m.nt.b.n'; 		  bump:9),
	(typ:xww;	pattern:'nathaniel';	  output:'n.th.ny.l'; 		bump:9),
	(typ:xww;	pattern:'netanyahu';	  output:'n.t.ny.h.'; 		bump:9),
	(typ:xww;	pattern:'nietzsche';	  output:'n.ch.'; 				bump:9),
	(typ:xww;	pattern:'palmolive';	  output:'p.lm.l.v'; 			bump:9),
	(typ:xww;	pattern:'philistia';	  output:'f.l.st.'; 			bump:9),
	(typ:xww;	pattern:'preminger';	  output:'pr.m.nj.r';  		bump:9),
	(typ:xww;	pattern:'princeton';	  output:'pr.nst.n';  		bump:9),
	(typ:xww;	pattern:'provolone';	  output:'pr.v.l.n.';  		bump:9),
	(typ:xww;	pattern:'rehnquist';	  output:'r.nkw.st';  		bump:9),
	(typ:xww;	pattern:'reykjavik';	  output:'r.ky.v.k';  		bump:9),
	(typ:xww;	pattern:'roquefort';	  output:'r.kf.rt';  			bump:9),
	(typ:xww;	pattern:'saccharin';	  output:'s.kr.n';  			bump:9),
	(typ:xww;	pattern:'stapleton';	  output:'st.p.lt.n'; 		bump:9),
	(typ:xww;	pattern:'stockholm';	  output:'st.kh.m'; 			bump:9),
	(typ:xww;	pattern:'achilles';		  output:'.k.l.s'; 			  bump:8),
	(typ:xww;	pattern:'angelina';		  output:'.nj.l.n.'; 		  bump:8),
	(typ:xww;	pattern:'arkansas';		  output:'.rk.ns.'; 			bump:8),
	(typ:xww;	pattern:'basinger';			output:'b.s.ng.r'; 			bump:8),
	(typ:xww;	pattern:'borgnine';		  output:'b.rgn.n'; 			bump:8),
	(typ:xww;	pattern:'charlene';	  	output:'sh.rl.n'; 			bump:8),
	(typ:xww;	pattern:'carlisle';		  output:'k.rl.l'; 				bump:8),
	(typ:xww;	pattern:'carnegie';		  output:'k.rn.g.'; 			bump:8),
	(typ:xww;	pattern:'chenille';	  	output:'sh.n.l'; 				bump:8),
	(typ:xww;	pattern:'cheyenne';	  	output:'sh.n'; 					bump:8),
	(typ:xww;	pattern:'chiquita';	  	output:'ch.k.t.'; 			bump:8),
	(typ:xww;	pattern:'crichton';	  	output:'kr.t.n'; 				bump:8),
	(typ:xww;	pattern:'comerica';	  	output:'k.m.r.k.'; 			bump:8),
	(typ:xww;	pattern:'diabetes';	  	output:'d.b.t.s'; 			bump:8),
	(typ:xww;	pattern:'dietrich';	  	output:'d.tr.k';	 			bump:8),
	(typ:xww;	pattern:'faulkner';	  	output:'f.kn.r';	 			bump:8),
	(typ:xww;	pattern:'frampton';	  	output:'fr.mt.n';	 			bump:8),
	(typ:xww;	pattern:'francois';	  	output:'fr.nsw.';	 			bump:8),
	(typ:xww;	pattern:'gershwin';			output:'g.rshw.n'; 	 	  bump:8),
	(typ:xww;	pattern:'gillette';			output:'j.l.t'; 		 	  bump:8),
	(typ:xww;	pattern:'gingrich';			output:'g.ngr.ch'; 	 	  bump:8),
	(typ:xww;	pattern:'ginsberg';			output:'g.nsb.rg'; 		 	bump:8),
	(typ:xww;	pattern:'ginsburg';			output:'g.nsb.rg'; 		 	bump:8),
	(typ:xww;	pattern:'giuseppe';			output:'j.s.p.'; 			 	bump:8),
	(typ:xww;	pattern:'gonzales';			output:'g.ns.l.s'; 		 	bump:8),
	(typ:xww;	pattern:'guccione';			output:'g.ch.n.'; 			bump:8),
	(typ:xww;	pattern:'guiseppe';			output:'j.s.p.'; 			 	bump:8),
	(typ:xww;	pattern:'hamlisch';			output:'h.ml.sh'; 		 	bump:8),
	(typ:xww;	pattern:'havlicek';			output:'h.vl.ch.k'; 	 	bump:8),
	(typ:xww;	pattern:'heinrich';			output:'h.nr.k'; 			 	bump:8),
	(typ:xww;	pattern:'hercules';			output:'h.rk.l.s'; 		 	bump:8),
	(typ:xww;	pattern:'iglesias';			output:'.gl.s.s'; 		 	bump:8),
	(typ:xww;	pattern:'illinois';			output:'.l.n.'; 			 	bump:8),
	(typ:xww;	pattern:'iroquois';			output:'.r.kw.'; 			 	bump:8),
	(typ:xww;	pattern:'issachar';			output:'.s.k.r'; 			 	bump:8),
	(typ:xww;	pattern:'liberace';			output:'l.b.r.ch.';   	bump:8),
	(typ:xww;	pattern:'locklear';	   	output:'l.kl.r'; 		    bump:8),
	(typ:xww;	pattern:'madeline';	   	output:'m.d.l.n'; 		  bump:8),
	(typ:xww;	pattern:'magellan';	   	output:'m.j.l.n'; 		  bump:8),
	(typ:xww;	pattern:'mangione';	   	output:'m.nj.n.'; 		  bump:8),
	(typ:xww;	pattern:'menachem';	   	output:'m.n.k.m'; 		  bump:8),
	(typ:xww;	pattern:'mercedes';	   	output:'m.rs.d.s'; 		  bump:8),
	(typ:xww;	pattern:'michelle';	   	output:'m.sh.l'; 			  bump:8),
	(typ:xww;	pattern:'michener';	   	output:'m.chn.r'; 			bump:8),
	(typ:xww;	pattern:'monaghan';	   	output:'m.n.h.n'; 			bump:8),
	(typ:xww;	pattern:'onesimus';	   	output:'.n.s.m.s'; 			bump:8),
	(typ:xww;	pattern:'penelope';	   	output:'p.n.l.p.'; 			bump:8),
	(typ:xww;	pattern:'pinochle';	   	output:'p.n.k.l'; 			bump:8),
	(typ:xww;	pattern:'pleiades';	   	output:'pl.d.s'; 				bump:8),
	(typ:xww;	pattern:'plimpton';	   	output:'pl.mpt.n'; 			bump:8),
	(typ:xww;	pattern:'principe';	   	output:'pr.ns.p.'; 			bump:8),
	(typ:xww;	pattern:'redgrave';	   	output:'r.dgr.v'; 			bump:8),
	(typ:xww;	pattern:'rochelle';	   	output:'r.sh.l'; 				bump:8),
	(typ:xww;	pattern:'salinger';	   	output:'s.l.nj.r'; 			bump:8),
	(typ:xww;	pattern:'sarajevo';	   	output:'s.r.y.v.'; 			bump:8),
	(typ:xww;	pattern:'scorsese';	   	output:'sk.rs.s.'; 			bump:8),
	(typ:xww;	pattern:'shadrach';	   	output:'sh.dr.k'; 			bump:8),
	(typ:xww;	pattern:'shoshone';	   	output:'sh.sh.n.'; 			bump:8),
	(typ:xww;	pattern:'socrates';	   	output:'s.kr.t.s'; 			bump:8),
	(typ:xww;	pattern:'suriname';	   	output:'s.r.n.m.'; 			bump:8),
	(typ:xww;	pattern:'tangiers';	   	output:'t.nj.rs'; 			bump:8),
	(typ:xww;	pattern:'valencia';	   	output:'v.l.nsh.'; 			bump:8),
	(typ:xww;	pattern:'vespucci';	   	output:'v.sp.ch.'; 			bump:8),
	(typ:xww;	pattern:'yosemite';	   	output:'y.s.m.t.'; 			bump:8),
	(typ:xww;	pattern:'zimbabwe';	   	output:'z.mb.bw.'; 			bump:8),
	(typ:xww;	pattern:'bacchus';		  output:'b.k.s'; 				bump:7),
	(typ:xww;	pattern:'baghdad';		  output:'b.gd.d'; 				bump:7),
	(typ:xww;	pattern:'bahrain';		  output:'b.r.n'; 				bump:7),
	(typ:xww;	pattern:'bateman';		  output:'b.tm.n'; 				bump:7),
	(typ:xww;	pattern:'bridget';		  output:'br.j.t'; 				bump:7),
	(typ:xww;	pattern:'bombeck';		  output:'b.mb.k'; 				bump:7),
	(typ:xww;	pattern:'bradley';		  output:'br.dl.'; 				bump:7),
	(typ:xww;	pattern:'bristol';		  output:'br.st.l'; 			bump:7),
	(typ:xww;	pattern:'buckley';	  	output:'b.kl.';			 	  bump:7),
	(typ:xww;	pattern:'chablis';	  	output:'sh.bl.';		 	  bump:7),
	(typ:xww;	pattern:'chamois';		  output:'sh.m.'; 			  bump:7),
	(typ:xww;	pattern:'chaucer';		  output:'ch.s.r'; 			  bump:7),
	(typ:xww;	pattern:'chekhov';		  output:'ch.k.v'; 			  bump:7),
	(typ:xww;	pattern:'delores';		  output:'d.l.r.s'; 	  	bump:7),
	(typ:xww;	pattern:'diddley';		  output:'d.dl.'; 		  	bump:7),
	(typ:xww;	pattern:'dorothy';	  	output:'d.rth.';	 			bump:7),
	(typ:xww;	pattern:'durante';	  	output:'d.r.nt.';	 			bump:7),
	(typ:xww;	pattern:'earhart';	  	output:'.rh.rt';	 			bump:7),
	(typ:xww;	pattern:'fabares';	  	output:'f.br.';	 				bump:7),
	(typ:xww;	pattern:'gefilte';	  	output:'g.f.lt.';	 			bump:7),
	(typ:xww;	pattern:'gehenna';	  	output:'g.h.n.';				bump:7),
	(typ:xww;	pattern:'genghis';	  	output:'g.ng.s';				bump:7),
	(typ:xww;	pattern:'gephart';	  	output:'g.ph.rt';				bump:7),
	(typ:xww;	pattern:'geraldo';	  	output:'h.r.ld.';				bump:7),
	(typ:xww;	pattern:'gielgud';	  	output:'g.lg.d';				bump:7),
	(typ:xww;	pattern:'gillian';	  	output:'j.l.n';					bump:7),
	(typ:xww;	pattern:'herbert';	  	output:'h.rb.rt';				bump:7),
	(typ:xww;	pattern:'horatio';	  	output:'h.r.sh.';				bump:7),
	(typ:xww;	pattern:'ireland';	  	output:'.rl.nd';				bump:7),
	(typ:xww;	pattern:'jacques';		  output:'j.k'; 				  bump:7),
	(typ:xww;	pattern:'jericho';		  output:'j.r.k.'; 			  bump:7),
	(typ:xww;	pattern:'keturah';		  output:'k.t.r.'; 			  bump:7),
	(typ:xww;	pattern:'khayyam';		  output:'k.y.m'; 			  bump:7),
	(typ:xww;	pattern:'knievel';		  output:'k.n.v.l'; 		  bump:7),
	(typ:xww;	pattern:'langley';		  output:'l.ngl.'; 			  bump:7),
	(typ:xww;	pattern:'luciano';		  output:'l.ch.n.'; 		  bump:7),
	(typ:xww;	pattern:'macgraw';		  output:'m.gr.'; 			  bump:7),
	(typ:xww;	pattern:'malachi';		  output:'m.l.k.'; 			  bump:7),
	(typ:xww;	pattern:'malcolm';		  output:'m.lk.m'; 			  bump:7),
	(typ:xww;	pattern:'maugham';		  output:'m.m'; 					bump:7),
	(typ:xww;	pattern:'mcluhan';		  output:'m.kl.n';	 			bump:7),
	(typ:xww;	pattern:'mcmahon';		  output:'m.km.n'; 				bump:7),
	(typ:xww;	pattern:'megiddo';		  output:'m.g.d.'; 				bump:7),
	(typ:xww;	pattern:'meshech';		  output:'m.sh.k'; 				bump:7),
	(typ:xww;	pattern:'mikhail';		  output:'m.k.l'; 				bump:7),
	(typ:xww;	pattern:'moliere';		  output:'m.ly.r'; 				bump:7),
	(typ:xww;	pattern:'moresby';		  output:'m.rsb.'; 				bump:7),
	(typ:xww;	pattern:'murdoch';		  output:'m.rd.k'; 				bump:7),
	(typ:xww;	pattern:'nineveh';		  output:'n.n.v.'; 				bump:7),
	(typ:xww;	pattern:'nureyev';		  output:'n.r.y.v'; 			bump:7),
	(typ:xww;	pattern:'olivier';		  output:'.l.v.'; 				bump:7),
	(typ:xww;	pattern:'orestes';		  output:'.r.st.s'; 			bump:7),
	(typ:xww;	pattern:'panache';	   	output:'p.n.sh'; 				bump:7),
	(typ:xww;	pattern:'pasteur';	   	output:'p.st.r'; 				bump:7),
	(typ:xww;	pattern:'pontius';	   	output:'p.nch.s'; 			bump:7),
	(typ:xww;	pattern:'prspctv';	   	output:'p.rsp.kt.v'; 		bump:7),
	(typ:xww;	pattern:'puccini';	   	output:'p.ch.n.'; 			bump:7),
	(typ:xww;	pattern:'quixote';	   	output:'k.h.t.'; 				bump:7),
	(typ:xww;	pattern:'richter';	   	output:'r.kt.r'; 				bump:7),
	(typ:xww;	pattern:'rutgers';	    output:'r.tg.rs'; 		 	bump:7),
	(typ:xww;	pattern:'saginaw';	    output:'s.g.n.'; 			 	bump:7),
	(typ:xww;	pattern:'theresa';	    output:'t.r.s.'; 			 	bump:7),
	(typ:xww;	pattern:'westley';	    output:'w.sl.'; 			 	bump:7),
	(typ:xww;	pattern:'yangtze';	    output:'y.ngs.'; 			 	bump:7),
	(typ:xww;	pattern:'alexis';				output:'.l.ks.s'; 			bump:6),
	(typ:xww;	pattern:'apache';				output:'.p.ch.'; 				bump:6),
	(typ:xww;	pattern:'bhutan';				output:'b.t.n'; 				bump:6),
	(typ:xww;	pattern:'bronte';				output:'br.nt.'; 				bump:6),
	(typ:xww;	pattern:'buenos';				output:'bw.n.s'; 				bump:6),
	(typ:xww;	pattern:'capote';				output:'k.p.t.'; 				bump:6),
	(typ:xww;	pattern:'cherie';				output:'sh.r.'; 				bump:6),
	(typ:xww;	pattern:'cheryl';				output:'sh.r.l'; 				bump:6),
	(typ:xww;	pattern:'chopin';				output:'sh.p.n'; 				bump:6),
	(typ:xww;	pattern:'cicely';				output:'s.s.l.'; 				bump:6),
	(typ:xww;	pattern:'daphne';				output:'d.fn.'; 				bump:6),
	(typ:xww;	pattern:'dubois';				output:'d.b.'; 				  bump:6),
	(typ:xww;	pattern:'dudley';				output:'d.dl.'; 			  bump:6),
	(typ:xww;	pattern:'gandhi';				output:'g.nd.'; 			  bump:6),
	(typ:xww;	pattern:'garcia';				output:'g.rs.'; 			  bump:6),
	(typ:xww;	pattern:'gehrig';				output:'g.r.g'; 			  bump:6),
	(typ:xww;	pattern:'gibran';				output:'g.br.n'; 			  bump:6),
	(typ:xww;	pattern:'goethe';				output:'g.t.'; 				  bump:6),
	(typ:xww;	pattern:'goulet';				output:'g.l.'; 				  bump:6),
	(typ:xww;	pattern:'hagman';				output:'h.gm.n'; 			  bump:6),
	(typ:xww;	pattern:'herbie';				output:'h.rb.'; 			  bump:6),
	(typ:xww;	pattern:'hermes';				output:'h.rm.s'; 			  bump:6),
	(typ:xww;	pattern:'holmes';				output:'h.ms'; 				  bump:6),
	(typ:xww;	pattern:'johann';				output:'y.h.n'; 			  bump:6),
	(typ:xww;	pattern:'kahlil';				output:'k.l.l'; 			  bump:6),
	(typ:xww;	pattern:'malawi';				output:'m.l.w.'; 			  bump:6),
	(typ:xww;	pattern:'margot';				output:'m.rg.'; 			  bump:6),
	(typ:xww;	pattern:'medici';				output:'m.d.ch.'; 		  bump:6),
	(typ:xww;	pattern:'meghan';				output:'m.g.n'; 			  bump:6),
	(typ:xww;	pattern:'mendes';				output:'m.nd.s'; 			  bump:6),
	(typ:xww;	pattern:'michal';				output:'m.k.l'; 			  bump:6),
	(typ:xww;	pattern:'michel';				output:'m.k.l'; 			  bump:6),
	(typ:xww;	pattern:'mignon';				output:'m.ny.n'; 			  bump:6),
	(typ:xww;	pattern:'mojave';				output:'m.h.v.'; 			  bump:6),
	(typ:xww;	pattern:'moines';				output:'m.n'; 				  bump:6),
	(typ:xww;	pattern:'molech';				output:'m.l.k'; 			  bump:6),
	(typ:xww;	pattern:'morgen';				output:'m.rg.n'; 			  bump:6),
	(typ:xww;	pattern:'munich';				output:'m.n.k'; 			  bump:6),
	(typ:xww;	pattern:'nasdaq';				output:'n.sd.k'; 			  bump:6),
	(typ:xww;	pattern:'navajo';				output:'n.v.h.'; 			  bump:6),
	(typ:xww;	pattern:'oneida';				output:'.n.d.'; 			  bump:6),
	(typ:xww;	pattern:'pacino';				output:'p.ch.n.';			  bump:6),
	(typ:xww;	pattern:'petula';				output:'p.t.l.';			  bump:6),
	(typ:xww;	pattern:'phoebe';				output:'f.b.';				  bump:6),
	(typ:xww;	pattern:'rachel';				output:'r.ch.l';		 	 	bump:6),
	(typ:xww;	pattern:'raquel';				output:'r.k.l';			 	 	bump:6),
	(typ:xww;	pattern:'renoir';				output:'r.nw.r';		 	 	bump:6),
	(typ:xww;	pattern:'riyadh';	      output:'r.y.d'; 		  	bump:6),
	(typ:xww;	pattern:'rodham';	      output:'r.d.m'; 		  	bump:6),
	(typ:xww;	pattern:'rzeppa';	      output:'r.s.p.';	 	  	bump:6),
	(typ:xww;	pattern:'salome';	      output:'s.l.m.';	 	  	bump:6),
	(typ:xww;	pattern:'sartre';	      output:'s.rtr.';	 	  	bump:6),
	(typ:xww;	pattern:'seeger';	      output:'s.g.r';	 		  	bump:6),
	(typ:xww;	pattern:'sergei';	      output:'s.rg.';	 		  	bump:6),
	(typ:xww;	pattern:'shiloh';	      output:'sh.l.';			  	bump:6),
	(typ:xww;	pattern:'sinead';	      output:'sh.n.d';		  	bump:6),
	(typ:xww;	pattern:'sirhan';	      output:'s.rh.n';		  	bump:6),
	(typ:xww;	pattern:'stuart';	      output:'st.rt';			  	bump:6),
	(typ:xww;	pattern:'swayze';				output:'sw.s.';		 	 		bump:6),
	(typ:xww;	pattern:'tehran';				output:'t.r.n';		 	 		bump:6),
	(typ:xww;	pattern:'thames';				output:'t.ms';		 	 		bump:6),
	(typ:xww;	pattern:'tucson';				output:'t.s.n';		 	 		bump:6),
	(typ:xww;	pattern:'warhol';				output:'w.rh.l';	 	 		bump:6),
	(typ:xww;	pattern:'zurich';				output:'z.r.k';		 	 		bump:6),
	(typ:xww;	pattern:'andes';				output:'.nd.s'; 			  bump:5),
	(typ:xww;	pattern:'angie';				output:'.nj.'; 				  bump:5),
	(typ:xww;	pattern:'bette';				output:'b.t.'; 				  bump:5),
	(typ:xww;	pattern:'bjorn';				output:'b.rn'; 				  bump:5),
	(typ:xww;	pattern:'boise';				output:'b.s.'; 				  bump:5),
	(typ:xww;	pattern:'borge';				output:'b.rg.'; 				bump:5),
	(typ:xww;	pattern:'camus';				output:'k.m.'; 					bump:5),
	(typ:xww;	pattern:'chaka';				output:'sh.k.'; 				bump:5),
	(typ:xww;	pattern:'cheri';				output:'sh.r.'; 				bump:5),
	(typ:xww;	pattern:'chile';				output:'ch.l.'; 				bump:5),
	(typ:xww;	pattern:'cigna';				output:'s.gn.';  	 	    bump:5),
	(typ:xww;	pattern:'circe';				output:'s.rs.';  	 	    bump:5),
	(typ:xww;	pattern:'croce';				output:'kr.ch.'; 				bump:5),
	(typ:xww;	pattern:'dante';				output:'d.nt.'; 				bump:5),
	(typ:xww;	pattern:'delhi';				output:'d.l.'; 					bump:5),
	(typ:xww;	pattern:'dhaka';				output:'d.k.'; 					bump:5),
	(typ:xww;	pattern:'edgar';				output:'.dg.r';	 	 	    bump:5),
	(typ:xww;	pattern:'ephes';				output:'.f.s';	  	 	  bump:5),
	(typ:xww;	pattern:'exxon';				output:'.ks.n';	  	 	  bump:5),
	(typ:xww;	pattern:'geico';				output:'g.k.';		 	 	  bump:5),
	(typ:xww;	pattern:'giles';				output:'j.ls';		 	 	  bump:5),
	(typ:xww;	pattern:'guido';				output:'gw.d.';		 	 	  bump:5),
	(typ:xww;	pattern:'hades';				output:'h.d.s';		 	 	  bump:5),
	(typ:xww;	pattern:'haydn';				output:'h.d.n';		 	 	  bump:5),
	(typ:xww;	pattern:'henri';				output:'.nr.';			 	 	bump:5),
	(typ:xww;	pattern:'jared';				output:'j.r.d';			 	 	bump:5),
	(typ:xww;	pattern:'jesse';				output:'j.s.';			 	 	bump:5),
	(typ:xww;	pattern:'julio';				output:'h.l.';			 	 	bump:5),
	(typ:xww;	pattern:'kiowa';				output:'k.w.';			 	 	bump:5),
	(typ:xww;	pattern:'lewis';				output:'l.s';				 	 	bump:5),
	(typ:xww;	pattern:'lhasa';				output:'l.s.';			 	 	bump:5),
	(typ:xww;	pattern:'mehta';				output:'m.t.';			 	 	bump:5),
	(typ:xww;	pattern:'monet';				output:'m.n.';			 	 	bump:5),
	(typ:xww;	pattern:'monte';				output:'m.nt.';			 	 	bump:5),
	(typ:xww;	pattern:'moshe';				output:'m.sh.';			 	 	bump:5),
	(typ:xww;	pattern:'negev';				output:'n.g.v';			 	 	bump:5),
	(typ:xww;	pattern:'nolte';				output:'n.lt.';			 	 	bump:5),
	(typ:xww;	pattern:'ouija';				output:'w.j.';			 	 	bump:5),
	(typ:xww;	pattern:'pabst';				output:'p.ps';			 	 	bump:5),
	(typ:xww;	pattern:'peres';				output:'p.r.s';			 	 	bump:5),
	(typ:xww;	pattern:'perot';				output:'p.r.';			 	 	bump:5),
	(typ:xww;	pattern:'phnom';				output:'p.n.m';			 	 	bump:5),
	(typ:xww;	pattern:'qatar';				output:'k.t.r';			 	 	bump:5),
	(typ:xww;	pattern:'sault';				output:'s.';				 	 	bump:5),
	(typ:xww;	pattern:'sioux';				output:'s.';			 	 		bump:5),
	(typ:xww;	pattern:'sonja';				output:'s.ny.';		 	 		bump:5),
	(typ:xww;	pattern:'sonya';				output:'s.ny.';		 	 		bump:5),
	(typ:xww;	pattern:'tanya';				output:'t.ny.';		 	 		bump:5),
	(typ:xww;	pattern:'tarot';				output:'t.r.';		 	 		bump:5),
	(typ:xww;	pattern:'tempe';				output:'t.mp.';		 	 		bump:5),
	(typ:xww;	pattern:'thyme';				output:'t.m';			 	 		bump:5),
	(typ:xww;	pattern:'tonya';				output:'t.ny.';		 	 		bump:5),
	(typ:xww;	pattern:'torme';				output:'t.rm.';		 	 		bump:5),
	(typ:xww;	pattern:'verde';				output:'v.rd.';		 	 		bump:5),
	(typ:xww;	pattern:'vichy';				output:'v.sh.';		 	 		bump:5),
	(typ:xww;	pattern:'vinci';				output:'v.nch.';		 	 	bump:5),
	(typ:xww;	pattern:'ares';			   	output:'.r.s'; 				  bump:4),
	(typ:xww;	pattern:'cher';			   	output:'sh.r'; 				  bump:4),
	(typ:xww;	pattern:'dahl';			   	output:'d.l'; 				  bump:4),
	(typ:xww;	pattern:'gere';			   	output:'g.r'; 					bump:4),
	(typ:xww;	pattern:'gibb';			   	output:'g.b'; 					bump:4),   // bee gee
	(typ:xww;	pattern:'gogh';			   	output:'g.'; 						bump:4),   // vincent van
	(typ:xww;	pattern:'jose';			   	output:'h.s.'; 				  bump:4),
	(typ:xww;	pattern:'jung';			   	output:'y.ng'; 				  bump:4),
	(typ:xww;	pattern:'kobe';			   	output:'k.b.'; 				  bump:4),
	(typ:xww;	pattern:'macy';			   	output:'m.s.'; 				  bump:4),
	(typ:xww;	pattern:'minh';			   	output:'m.n'; 				  bump:4),
	(typ:xww;	pattern:'nike';			   	output:'n.k.'; 				  bump:4),
	(typ:xww;	pattern:'nimh';			   	output:'n.m'; 				  bump:4),
	(typ:xww;	pattern:'nyse';			   	output:'n.s.'; 				  bump:4),
	(typ:xww;	pattern:'penh';			   	output:'p.n'; 				  bump:4),
	(typ:xww;	pattern:'psat';			   	output:'ps.t'; 				  bump:4),
	(typ:xww;	pattern:'sean';			   	output:'sh.n'; 				  bump:4),
	(typ:xww;	pattern:'tgif';			   	output:'tg.f'; 				  bump:4),
	(typ:xww;	pattern:'thes';			   	output:'th.s'; 				  bump:4),
	(typ:xww;	pattern:'ymca';			   	output:'yms.'; 				  bump:4),
	(typ:xww;	pattern:'ywca';			   	output:'yws.'; 				  bump:4),
	(typ:xww;	pattern:'cia';			   	output:'s.'; 					 	bump:3),
	(typ:xww;	pattern:'des';			   	output:'d.'; 				 	 	bump:3),
	(typ:xww;	pattern:'mci';					output:'ms.'; 	 			 	bump:3),
	(typ:xww;	pattern:'mgm';					output:'mgm'; 	 			 	bump:3),
	(typ:xww;	pattern:'nyc';					output:'n.s'; 		 		 	bump:3),
	(typ:xww;	pattern:'psa';			   	output:'ps.'; 				 	bump:3),
	(typ:xww;	pattern:'pst';			   	output:'pst'; 				 	bump:3),
	(typ:xww;	pattern:'pta';			   	output:'pt.'; 				 	bump:3),

	(typ:xbw;	pattern:'hasenpfeffer';	output:'h.s.nf.f.r';		bump:12),
	(typ:xbw;	pattern:'newfoundland';	output:'n.f.nl.n';			bump:11),
	(typ:xbw;	pattern:'discotheque';	output:'d.sk.t.k'; 			bump:11),
	(typ:xbw;	pattern:'adirondack';		output:'.d.r.nd.k'; 		bump:10),
	(typ:xbw;	pattern:'cacciatore';		output:'k.ch.t.r.'; 	  bump:10),
	(typ:xbw;	pattern:'clydesdale';	  output:'kl.dsd.l'; 			bump:10),
	(typ:xbw;	pattern:'minestrone';	  output:'m.n.str.n.';		bump:10),
	(typ:xbw;	pattern:'poinsettia';	  output:'p.ns.t.';				bump:10),
	(typ:xbw;	pattern:'salmonella';	  output:'s.lm.n.l.';			bump:10),
	(typ:xbw;	pattern:'champlain';		output:'sh.mpl.n'; 			bump:9),
	(typ:xbw;	pattern:'charlotte';		output:'sh.rl.t'; 			bump:9),
	(typ:xbw;	pattern:'chevalier';		output:'sh.v.l.'; 		  bump:9),
	(typ:xbw;	pattern:'chevrolet';		output:'sh.vr.l.';  	 	bump:9),
	(typ:xbw;	pattern:'chihuahua';		output:'ch.w.w.'; 	 	 	bump:9),
	(typ:xbw;	pattern:'derringer';	  output:'d.r.nj.r';			bump:9),
	(typ:xbw;	pattern:'dillinger';	  output:'d.l.nj.r';			bump:9),
	(typ:xbw;	pattern:'guacamole';	  output:'gw.k.m.l.'; 		bump:9),
	(typ:xbw;	pattern:'laodicean';	  output:'l.d.s.n';				bump:9),
	(typ:xbw;	pattern:'lithuania';	  output:'l.th.w.n.';			bump:9),
	(typ:xbw;	pattern:'pekingese';	  output:'p.k.n';					bump:6),
	(typ:xbw;	pattern:'botulism';			output:'b.ch.l.sm';    	bump:8),
	(typ:xbw;	pattern:'burrough';			output:'b.r.';    			bump:8),
	(typ:xbw;	pattern:'chanukah';		  output:'h.n.k.'; 				bump:8),
	(typ:xbw;	pattern:'chisholm';		  output:'ch.s.m'; 				bump:8),
	(typ:xbw;	pattern:'comanche';		  output:'k.m.nch.'; 			bump:8),
	(typ:xbw;	pattern:'consomme';			output:'k.ns.m.'; 	 	 	bump:8),
	(typ:xbw;	pattern:'djibouti';	  	output:'j.b.t.'; 		 	  bump:8),
	(typ:xbw;	pattern:'escargot';	  	output:'.sk.rg.'; 	 	  bump:8),
	(typ:xbw;	pattern:'kurzweil';	   	output:'k.rtsw.l'; 	    bump:8),
	(typ:xbw;	pattern:'louisian';		  output:'l.s.n'; 			  bump:8),
	(typ:xbw;	pattern:'mesquite';	   	output:'m.sk.t'; 			  bump:8),
	(typ:xbw;	pattern:'michigan';	   	output:'m.sh.g.n'; 		  bump:8),
	(typ:xbw;	pattern:'nazirite';	   	output:'n.s.r.t'; 		  bump:8),
	(typ:xbw;	pattern:'nebuchad';	   	output:'n.b.k.';	 		  bump:8),
	(typ:xbw;	pattern:'chicago';		  output:'sh.k.g.'; 			bump:7),
	(typ:xbw;	pattern:'chinook';		  output:'sh.n.k'; 				bump:7),
	(typ:xbw;	pattern:'gestalt';			output:'g.st.lt'; 		  bump:7),
	(typ:xbw;	pattern:'lemieux';	  	output:'l.m.';					bump:7),
	(typ:xbw;	pattern:'lincoln';		  output:'l.nk.n'; 			  bump:7),
	(typ:xbw;	pattern:'lombard';		  output:'l.mb.rd'; 		  bump:7),
	(typ:xbw;	pattern:'quandar';			output:'kw.ndr'; 				bump:7),
	(typ:xbw;	pattern:'william';	    output:'w.ly.m';		 		bump:7),
	(typ:xbw;	pattern:'afghan';		   	output:'.fg.n';    			bump:6),
	(typ:xbw;	pattern:'balkan';				output:'b.lk.n'; 				bump:6),
	(typ:xbw;	pattern:'bunsen';				output:'b.ns.n'; 				bump:6),
	(typ:xbw;	pattern:'canape';		   	output:'k.n.p.'; 				bump:6),
	(typ:xbw;	pattern:'caesar';		   	output:'s.s.r';  				bump:6),
	(typ:xbw;	pattern:'cognac';		   	output:'k.ny.k'; 				bump:6),
	(typ:xbw;	pattern:'eccles';				output:'.kl.s'; 			  bump:6),
	(typ:xbw;	pattern:'freder';				output:'fr.dr'; 			  bump:6),
	(typ:xbw;	pattern:'geiger';				output:'g.g.r'; 			  bump:6),
	(typ:xbw;	pattern:'gibson';				output:'g.bs.n'; 			  bump:6),
	(typ:xbw;	pattern:'kroger';				output:'kr.g.r'; 	  		bump:6),
	(typ:xbw;	pattern:'rwanda';	      output:'r.w.nd.'; 	  	bump:6),
	(typ:xbw;	pattern:'sesame';	      output:'s.s.m.';		  	bump:6),
	(typ:xbw;	pattern:'sachet';	      output:'s.sh.'; 		  	bump:6),
	(typ:xbw;	pattern:'toyota';				output:'t.y.t.';	 	 		bump:6),
	(typ:xbw;	pattern:'brahm';		   	output:'br.m';  				bump:5),
	(typ:xbw;	pattern:'busch';		   	output:'b.sh';  				bump:5),
	(typ:xbw;	pattern:'ghana';				output:'g.n.';		 	 	  bump:5),
	(typ:xbw;	pattern:'kayak';				output:'k.y.k';  	 	    bump:5),
	(typ:xbw;	pattern:'kenya';				output:'k.ny.';  	 	    bump:5),
	(typ:xbw;	pattern:'koala';				output:'k.w.l.';		 	 	bump:5),
	(typ:xbw;	pattern:'liech';				output:'l.k';				 	 	bump:5),
	(typ:xbw;	pattern:'luger';				output:'l.g.r';			 	 	bump:5),
	(typ:xbw;	pattern:'mocha';				output:'m.k.';			 	 	bump:5),
	(typ:xbw;	pattern:'rhine';		   	output:'r.n';  		 		  bump:5),
	(typ:xbw;	pattern:'rosen';				output:'r.s.n';  		 	  bump:5),
	(typ:xbw;	pattern:'thai';			   	output:'t.';  	   			bump:4),
	(typ:xbw;	pattern:'thom';			   	output:'t.m';  	   			bump:4),
	(typ:xbw;	pattern:'zach';					output:'z.k'; 				  bump:4),
	(typ:xbw;	pattern:'zahn';					output:'z.n'; 				  bump:4),
	(typ:xbw;	pattern:'zech';					output:'z.k'; 				  bump:4),
	(typ:xbw;	pattern:'yv';				   	output:'.v';     			  bump:2),
	}
	// whole-word rules

	(typ:xww;	pattern:'machinelike';	output:'m.sh.nl.k'; 		bump:11),

	(typ:xww;	pattern:'bootlegged';	  output:'b.tl.gd';				bump:10),
	(typ:xww;	pattern:'chartreuse';	  output:'sh.rtr.s'; 			bump:10),
	(typ:xww;	pattern:'hispaniola';	  output:'h.sp.ny.l.';		bump:10),
	(typ:xww;	pattern:'massacring';	  output:'m.s.k.r.ng';		bump:10),
	(typ:xww;	pattern:'sidelining';	  output:'s.dl.n.ng';			bump:10),
	(typ:xww;	pattern:'snorkeling';	  output:'sn.rkl.ng';			bump:10),
	(typ:xww;	pattern:'suppleness';	  output:'s.p.ln.s';			bump:10),

	(typ:xww;	pattern:'badminton';		output:'b.dm.t.n'; 			bump:9),
	(typ:xww;	pattern:'bloodshed';		output:'bl.dsh.d'; 			bump:9),
	(typ:xww;	pattern:'bourgeois';	  output:'b.rjw.'; 			  bump:9),
	(typ:xww;	pattern:'groceries';	  output:'gr.sr.s';				bump:9),
	(typ:xww;	pattern:'isosceles';	  output:'.s.s.l.s';			bump:9),
	(typ:xww;	pattern:'licorices';	  output:'l.k.r.sh.s';    bump:9),
	(typ:xww;	pattern:'mustaches';	  output:'m.st.sh.s'; 		bump:9),
	(typ:xww;	pattern:'slaphappy';	  output:'sl.ph.p.'; 			bump:9),
	(typ:xww;	pattern:'spinaches';	  output:'sp.n.ch.s'; 		bump:9),
	(typ:xww;	pattern:'stringent';	  output:'str.nj.nt'; 		bump:9),
	(typ:xww;	pattern:'syringing';	  output:'s.r.nj.ng'; 		bump:9),
	(typ:xww;	pattern:'tanginess';	  output:'t.ng.n.s'; 			bump:9),
	(typ:xww;	pattern:'vehicular';	  output:'v.h.k.l.r'; 		bump:9),
	(typ:xww;	pattern:'watershed';	  output:'w.t.rsh.d'; 		bump:9),
	(typ:xww;	pattern:'whichever';	  output:'w.ch.v.r'; 			bump:9),

	(typ:xww;	pattern:'coloreds';	  	output:'k.l.rds'; 			bump:8),
	(typ:xww;	pattern:'entirety';	  	output:'.nt.rt.';	 			bump:8),
	(typ:xww;	pattern:'everyone';	  	output:'.vr.w.n';	 			bump:8),
	(typ:xww;	pattern:'fringing';	  	output:'fr.nj.ng';	 		bump:8),
	(typ:xww;	pattern:'gentlest';			output:'j.ntl.st'; 	 	  bump:8),
	(typ:xww;	pattern:'grandeur';			output:'gr.nj.r'; 			bump:8),
	(typ:xww;	pattern:'humblest';			output:'h.mbl.st'; 		 	bump:8),
	(typ:xww;	pattern:'infrared';			output:'.nfr.r.d'; 		 	bump:8),
	(typ:xww;	pattern:'licorice';	   	output:'l.k.r.sh'; 	    bump:8),
	(typ:xww;	pattern:'marching';	   	output:'m.rch.ng'; 		  bump:8),
	(typ:xww;	pattern:'muscling';	   	output:'m.sl.ng'; 			bump:8),
	(typ:xww;	pattern:'newlywed';	   	output:'n.l.w.d'; 			bump:8),
	(typ:xww;	pattern:'niceties';	   	output:'n.s.t.s'; 			bump:8),
	(typ:xww;	pattern:'nonesuch';	   	output:'n.ns.ch'; 			bump:8),
	(typ:xww;	pattern:'riverbed';	   	output:'r.v.rb.d'; 			bump:8),
	(typ:xww;	pattern:'spoonfed';	   	output:'sp.nf.d'; 			bump:8),
	(typ:xww;	pattern:'stickler';	   	output:'st.kl.r'; 			bump:8),
	(typ:xww;	pattern:'underfed';	   	output:'.nd.rf.d'; 			bump:8),
	(typ:xww;	pattern:'wherever';	   	output:'w.r.v.r'; 			bump:8),
	(typ:xww;	pattern:'wideness';	   	output:'w.dn.s'; 				bump:8),
	(typ:xww;	pattern:'widening';	   	output:'w.dn.ng'; 			bump:8),
	(typ:xww;	pattern:'whitened';	   	output:'w.t.nd'; 				bump:8),
	(typ:xww;	pattern:'wineries';	   	output:'w.n.r.s'; 			bump:8),
	(typ:xww;	pattern:'woodshed';	   	output:'w.dsh.d'; 			bump:8),
	(typ:xww;	pattern:'wretched';	   	output:'r.ch.d'; 				bump:8),
	(typ:xww;	pattern:'wronging';	   	output:'r.ng.ng'; 			bump:8),

	(typ:xww;	pattern:'apropos';		  output:'.pr.p.'; 			  bump:7),
	(typ:xww;	pattern:'arching';		  output:'.rch.ng'; 			bump:7),
	(typ:xww;	pattern:'attache';		  output:'.t.sh.'; 				bump:7),
	(typ:xww;	pattern:'bridges';		  output:'br.j.s'; 				bump:7),
	(typ:xww;	pattern:'bobsled';		  output:'b.bsl.d'; 			bump:7),
	(typ:xww;	pattern:'boredom';		  output:'b.rd.m'; 				bump:7),
	(typ:xww;	pattern:'chassis';		  output:'ch.s.'; 			  bump:7),
	(typ:xww;	pattern:'clothed';		  output:'kl.thd'; 			  bump:7),
	(typ:xww;	pattern:'clothes';		  output:'kl.s'; 			  	bump:7),
	(typ:xww;	pattern:'creches';		  output:'kr.sh.s'; 	  	bump:7),
	(typ:xww;	pattern:'gentler';			output:'j.ntl.r';  	   	bump:7),
	(typ:xww;	pattern:'gravely';	  	output:'gr.vl.';				bump:7),
	(typ:xww;	pattern:'grocery';	  	output:'gr.sr.';				bump:7),
	(typ:xww;	pattern:'hinging';	  	output:'h.nj.ng';				bump:7),
	(typ:xww;	pattern:'homerun';	  	output:'h.mr.n';				bump:7),
	(typ:xww;	pattern:'hosiery';	  	output:'h.sh.r.';				bump:7),
	(typ:xww;	pattern:'insects';	  	output:'.ns.ks';				bump:7),
	(typ:xww;	pattern:'laissez';		  output:'l.s.'; 				  bump:7),
	(typ:xww;	pattern:'leeched';		  output:'l.ch.d'; 			  bump:7),
	(typ:xww;	pattern:'littler';	    output:'l.t.l.r'; 			bump:7),
	(typ:xww;	pattern:'macabre';		  output:'m.k.br.'; 		  bump:7),
	(typ:xww;	pattern:'marches';		  output:'m.rch.s'; 			bump:7),
	(typ:xww;	pattern:'naivety';		  output:'n.v.t.'; 				bump:7),
	(typ:xww;	pattern:'oranges';		  output:'.rnj.s'; 				bump:7),
	(typ:xww;	pattern:'overfed';		  output:'.v.rf.d'; 			bump:7),
	(typ:xww;	pattern:'parches';	   	output:'p.rch.s'; 			bump:7),
	(typ:xww;	pattern:'quiches';	   	output:'k.sh.s'; 				bump:7),
	(typ:xww;	pattern:'rhythms';	    output:'r.th.ms'; 		 	bump:7),
	(typ:xww;	pattern:'roadbed';	    output:'r.db.d'; 			 	bump:7),
	(typ:xww;	pattern:'shorted';	    output:'sh.rt.d'; 		 	bump:7),
	(typ:xww;	pattern:'sickbed';	    output:'s.kb.d'; 			 	bump:7),
	(typ:xww;	pattern:'someone';	    output:'s.mw.n'; 			 	bump:7),
	(typ:xww;	pattern:'wringed';	    output:'r.ngd'; 			 	bump:7),
	(typ:xww;	pattern:'wronged';	    output:'r.ngd'; 			 	bump:7),

	(typ:xww;	pattern:'adobes';				output:'.d.b.s'; 				bump:6),
	(typ:xww;	pattern:'anyone';				output:'.n.w.n'; 				bump:6),
	(typ:xww;	pattern:'aren''t';			output:'.rnt'; 					bump:6),
	(typ:xww;	pattern:'chores';				output:'ch.rs'; 				bump:6),
	(typ:xww;	pattern:'clothe';				output:'kl.th'; 				bump:6),
	(typ:xww;	pattern:'creche';				output:'kr.sh'; 				bump:6),
	(typ:xww;	pattern:'debris';				output:'d.br.'; 			  bump:6),
	(typ:xww;	pattern:'dinged';				output:'d.ngd'; 			  bump:6),
	(typ:xww;	pattern:'esprit';				output:'.spr.'; 			  bump:6),
	(typ:xww;	pattern:'fanged';				output:'f.ngd'; 			  bump:6),
	(typ:xww;	pattern:'ganged';				output:'g.ngd'; 			  bump:6),
	(typ:xww;	pattern:'herpes';				output:'h.rp.s'; 			  bump:6),
	(typ:xww;	pattern:'hotbed';				output:'h.tb.d'; 			  bump:6),
	(typ:xww;	pattern:'idlest';				output:'.dl.st'; 			  bump:6),
	(typ:xww;	pattern:'lambed';				output:'l.md'; 				  bump:6),
	(typ:xww;	pattern:'lamber';				output:'l.m.r'; 			  bump:6),
	(typ:xww;	pattern:'limbed';				output:'l.md'; 				  bump:6),
	(typ:xww;	pattern:'macing';				output:'m.s.ng'; 			  bump:6),
	(typ:xww;	pattern:'maybes';				output:'m.b.s'; 			  bump:6),
	(typ:xww;	pattern:'misled';				output:'m.sl.d'; 			  bump:6),
	(typ:xww;	pattern:'nicety';				output:'n.s.t.'; 			  bump:6),
	(typ:xww;	pattern:'ninety';				output:'n.nt.'; 			  bump:6),
	(typ:xww;	pattern:'paiute';				output:'p.y.t';				  bump:6),
	(typ:xww;	pattern:'penury';				output:'p.ny.r.';			  bump:6),
	(typ:xww;	pattern:'piaget';				output:'p.j.';				  bump:6),
	(typ:xww;	pattern:'pinged';				output:'p.ngd';				  bump:6),
	(typ:xww;	pattern:'premed';				output:'pr.m.d';			  bump:6),
	(typ:xww;	pattern:'psyche';				output:'s.k.';				  bump:6),
	(typ:xww;	pattern:'quiche';				output:'k.sh';			 	 	bump:6),
	(typ:xww;	pattern:'rhythm';	      output:'r.th.m'; 		  	bump:6),
	(typ:xww;	pattern:'ringed';	      output:'r.ngd'; 		  	bump:6),
	(typ:xww;	pattern:'risque';	      output:'r.sk.'; 		  	bump:6),
	(typ:xww;	pattern:'rugged';	      output:'r.g.d'; 		  	bump:6),
	(typ:xww;	pattern:'schist';	      output:'sh.st';	 		  	bump:6),
	(typ:xww;	pattern:'sewage';	      output:'s.j';	 			  	bump:6),
	(typ:xww;	pattern:'strewn';	      output:'str.n';			  	bump:6),
	(typ:xww;	pattern:'suites';				output:'sw.ts';		 	 		bump:6),
	(typ:xww;	pattern:'touche';				output:'t.sh.';		 	 		bump:6),
	(typ:xww;	pattern:'wicked';				output:'w.k.d';		 	 		bump:6),
	(typ:xww;	pattern:'whited';				output:'w.t.d';		 	 		bump:6),
	(typ:xww;	pattern:'winged';				output:'w.ngd';		 	 		bump:6),

	(typ:xww;	pattern:'adobe';				output:'.d.b.'; 			  bump:5),
	(typ:xww;	pattern:'agape';				output:'.g.p.'; 			  bump:5),
	(typ:xww;	pattern:'cares';				output:'k.rs'; 					bump:5),
	(typ:xww;	pattern:'chore';				output:'ch.r';  	 	    bump:5),
	(typ:xww;	pattern:'corps';				output:'k.r'; 				  bump:5),
	(typ:xww;	pattern:'coups';				output:'k.s'; 				  bump:5),
	(typ:xww;	pattern:'execs';			  output:'.gs.ks'; 				bump:5),
	(typ:xww;	pattern:'fewer';				output:'f.r';	 		 	 	  bump:5),
	(typ:xww;	pattern:'maces';				output:'m.s.s';			 	 	bump:5),
	(typ:xww;	pattern:'mangy';				output:'m.nj.';			 	 	bump:5),
	(typ:xww;	pattern:'moles';				output:'m.ls';			 	 	bump:5),
	(typ:xww;	pattern:'mores';				output:'m.r.s';			 	 	bump:5),
	(typ:xww;	pattern:'naked';				output:'n.k.d';			 	 	bump:5),
	(typ:xww;	pattern:'petit';				output:'p.t.';			 	 	bump:5),
	(typ:xww;	pattern:'pshaw';				output:'p.sh.';			 	 	bump:5),
	(typ:xww;	pattern:'refed';				output:'r.f.d';			 	 	bump:5),
	(typ:xww;	pattern:'shred';				output:'shr.d';			 	 	bump:5),
	(typ:xww;	pattern:'sucre';				output:'s.kr.';		 	 		bump:5),
	(typ:xww;	pattern:'suite';				output:'sw.t';		 	 		bump:5),
	(typ:xww;	pattern:'tapes';				output:'t.ps';		 	 		bump:5),
	(typ:xww;	pattern:'unfed';				output:'.nf.d';		 	 		bump:5),
	(typ:xww;	pattern:'unwed';				output:'.nw.d';		 	 		bump:5),
	(typ:xww;	pattern:'voila';				output:'vw.l.';			 	 	bump:5),

	(typ:xww;	pattern:'bled';			   	output:'bl.d'; 				  bump:4),
	(typ:xww;	pattern:'chic';			  	output:'sh.k'; 				  bump:4),
	(typ:xww;	pattern:'coup';			   	output:'k.'; 					  bump:4),
	(typ:xww;	pattern:'exec';			   	output:'.gs.k'; 				bump:4),
	(typ:xww;	pattern:'faux';			   	output:'f.'; 						bump:4),
	(typ:xww;	pattern:'fled';			   	output:'fl.d'; 					bump:4),
	(typ:xww;	pattern:'gras';			   	output:'gr.'; 					bump:4),
	(typ:xww;	pattern:'hors';			   	output:'.r'; 						bump:4),
	(typ:xww;	pattern:'ices';			   	output:'.s.s'; 				  bump:4),
	(typ:xww;	pattern:'judg';			   	output:'j.j'; 				  bump:4),
	(typ:xww;	pattern:'mach';			   	output:'m.k'; 				  bump:4),
	(typ:xww;	pattern:'once';			   	output:'w.ns'; 				  bump:4),
	(typ:xww;	pattern:'oohs';			   	output:'.s'; 					  bump:4),
	(typ:xww;	pattern:'sewn';			   	output:'s.n'; 				  bump:4),
	(typ:xww;	pattern:'shed';			   	output:'sh.d'; 				  bump:4),
	(typ:xww;	pattern:'sled';			   	output:'sl.d'; 				  bump:4),
	(typ:xww;	pattern:'sped';			   	output:'sp.d'; 				  bump:4),
	(typ:xww;	pattern:'whoa';			   	output:'w.'; 					  bump:4),
	(typ:xww;	pattern:'whse';			   	output:'whs.'; 				  bump:4),
	(typ:xww;	pattern:'yyyy';			   	output:'y'; 					  bump:4),

	(typ:xww;	pattern:'chi';			   	output:'k.'; 					 	bump:3),
	(typ:xww;	pattern:'chr';			   	output:'ch.r'; 			 	 	bump:3),
	(typ:xww;	pattern:'ene';			   	output:'.n.'; 				 	bump:3),
	(typ:xww;	pattern:'ese';			   	output:'.s.'; 				 	bump:3),
	(typ:xww;	pattern:'ewe';			   	output:'.'; 				 	 	bump:3),
	(typ:xww;	pattern:'exe';			   	output:'.ks.'; 			 	 	bump:3),
	(typ:xww;	pattern:'fed';			   	output:'f.d'; 			 	 	bump:3),
	(typ:xww;	pattern:'gee';					output:'j.'; 		  		 	bump:3),
	(typ:xww;	pattern:'gnp';					output:'gnp'; 	  		 	bump:3),
	(typ:xww;	pattern:'gte';					output:'gt.'; 	  		 	bump:3),
	(typ:xww;	pattern:'huh';					output:'h.'; 	  			 	bump:3),
	(typ:xww;	pattern:'jah';					output:'y.'; 	  			 	bump:3),
	(typ:xww;	pattern:'khz';					output:'khs'; 	 			 	bump:3),
	(typ:xww;	pattern:'led';					output:'l.d'; 	 			 	bump:3),
	(typ:xww;	pattern:'les';					output:'l.s'; 	 			 	bump:3),
	(typ:xww;	pattern:'mph';					output:'mph'; 	 			 	bump:3),
	(typ:xww;	pattern:'ned';					output:'n.d'; 	 			 	bump:3),
	(typ:xww;	pattern:'neh';					output:'n.h'; 	 			 	bump:3),
	(typ:xww;	pattern:'nih';					output:'n.'; 		 			 	bump:3),
	(typ:xww;	pattern:'nne';					output:'n.'; 		 			 	bump:3),
	(typ:xww;	pattern:'ohs';					output:'.s'; 		 		 	 	bump:3),
	(typ:xww;	pattern:'ole';					output:'.l.'; 	 		 	 	bump:3),
	(typ:xww;	pattern:'phd';					output:'phd'; 	 		 	 	bump:3),
	(typ:xww;	pattern:'pre';			   	output:'pr.'; 				 	bump:3),
	(typ:xww;	pattern:'qed';			   	output:'kw.d'; 				 	bump:3),
	(typ:xww;	pattern:'red';			   	output:'r.d'; 				 	bump:3),
	(typ:xww;	pattern:'she';			   	output:'sh.'; 				  bump:3),
	(typ:xww;	pattern:'sse';			   	output:'s.'; 					  bump:3),
	(typ:xww;	pattern:'the';			   	output:'th.'; 				  bump:3),
	(typ:xww;	pattern:'ugh';			   	output:'.g'; 					  bump:3),
	(typ:xww;	pattern:'wed';			   	output:'w.d'; 				  bump:3),
	(typ:xww;	pattern:'wes';			   	output:'w.s'; 				  bump:3),
	(typ:xww;	pattern:'yes';			   	output:'y.s'; 				  bump:3),
	(typ:xww;	pattern:'zzz';			   	output:'z'; 				  	bump:3),
	(typ:xww;	pattern:'ed';						output:'.d'; 					  bump:2),
	(typ:xww;	pattern:'eh';						output:'.'; 					  bump:2),
	(typ:xww;	pattern:'fe';						output:'f.'; 					  bump:2),
	(typ:xww;	pattern:'ge';						output:'g.'; 					  bump:2),
	(typ:xww;	pattern:'he';						output:'h.'; 					  bump:2),
	(typ:xww;	pattern:'me';						output:'m.'; 					  bump:2),
	(typ:xww;	pattern:'mn';						output:'mn'; 					  bump:2),
	(typ:xww;	pattern:'ne';						output:'n.'; 					  bump:2),
	(typ:xww;	pattern:'of';						output:'.v'; 					  bump:2),
	(typ:xww;	pattern:'oh';						output:'.'; 					  bump:2),
	(typ:xww;	pattern:'ph';						output:'ph'; 					  bump:2),
	(typ:xww;	pattern:'ps';						output:'ps'; 					  bump:2),
	(typ:xww;	pattern:'pt';						output:'pt'; 					  bump:2),
	(typ:xww;	pattern:'re';						output:'r.'; 					  bump:2),
	(typ:xww;	pattern:'rh';						output:'rh'; 					  bump:2),
	(typ:xww;	pattern:'se';						output:'s.'; 					  bump:2),
	(typ:xww;	pattern:'uh';						output:'.'; 					  bump:2),
	(typ:xww;	pattern:'ye';						output:'y.'; 					  bump:2),
	(typ:xww;	pattern:'yy';						output:'y'; 					  bump:2),

	// silent-e and beginning-of-word rules

	(typ:xbw;	pattern:'camouflages';	output:'k.m.fl.j.s'; 		bump:11),
	(typ:xbw;	pattern:'environment';	output:'.nv.r.m.nt'; 		bump:11),
	(typ:xbw;	pattern:'grandfather';	output:'gr.n'; 					bump:5),
	(typ:xbw;	pattern:'grandmother';	output:'gr.n'; 					bump:5),
	(typ:xbw;	pattern:'grandnephew';	output:'gr.n'; 					bump:5),
	(typ:xbw;	pattern:'grandparent';	output:'gr.n'; 					bump:5),
	(typ:xbw;	pattern:'monseigneur';	output:'m.ns.ny.r'; 		bump:11),
	(typ:xbw;	pattern:'temperature';	output:'t.mp.rch.r'; 		bump:11),

	(typ:xbw;	pattern:'bombardier';		output:'b.mb.d.r'; 			bump:10),
	(typ:xbw;	pattern:'chandelier';		output:'sh.nd.l.r';  	 	bump:10),
	(typ:xbw;	pattern:'featherbed';	  output:'f.th.rb.d'; 		bump:10),
	(typ:xbw;	pattern:'grandchild';	  output:'gr.n'; 					bump:5),
	(typ:xbw;	pattern:'grandniece';	  output:'gr.n'; 					bump:5),
	(typ:xbw;	pattern:'hallelujah';	  output:'h.l.l.y.'; 			bump:10),
	(typ:xbw;	pattern:'malefactor';	  output:'m.l.f.kt.r'; 		bump:10),
	(typ:xbw;	pattern:'rendezvous';	  output:'r.nd.v.';				bump:10),
	(typ:xbw;	pattern:'repertoire';	  output:'r.p.tw.r';			bump:10),
	(typ:xbw;	pattern:'shortening';	  output:'sh.rtn.ng';			bump:10),
	(typ:xbw;	pattern:'stagecoach';	  output:'st.j';					bump:5),
	(typ:xbw;	pattern:'triphammer';	  output:'tr.p';					bump:4),

	(typ:xse;	pattern:'adventure';		output:'.dv.nch.r';			bump:9),
	(typ:xse;	pattern:'longshore';		output:'l.ngsh.r';			bump:9),

	(typ:xbw;	pattern:'boomerang';		output:'b.m.r.ng'; 			bump:9),
	(typ:xbw;	pattern:'camouflag';		output:'k.m.fl.j'; 			bump:9),
	(typ:xbw;	pattern:'champagne';		output:'sh.mp.n'; 			bump:9),
	(typ:xbw;	pattern:'falsehood';		output:'f.lsh.d'; 		 	bump:9),
	(typ:xbw;	pattern:'haberdash';	  output:'h.b.d.sh'; 			bump:9),
	(typ:xbw;	pattern:'habergeon';	  output:'h.b.rj.n'; 			bump:9),
	(typ:xbw;	pattern:'haphazard';	  output:'h.ph.s.rd'; 		bump:9),
	(typ:xbw;	pattern:'harlequin';	  output:'h.rl.k.n';	 		bump:9),
	(typ:xbw;	pattern:'heartache';	  output:'h.rt.k';		 		bump:9),
	(typ:xbw;	pattern:'hyperbole';	  output:'h.p.rb.l.';	 		bump:9),
	(typ:xbw;	pattern:'looseness';	  output:'l.sn.s';				bump:9),
	(typ:xbw;	pattern:'mannequin';	  output:'m.n.k.n';				bump:9),
	(typ:xbw;	pattern:'marijuana';	  output:'m.r.w.n.';			bump:9),
	(typ:xbw;	pattern:'monsignor';	  output:'m.ns.ny.r';			bump:9),
	(typ:xbw;	pattern:'omniscien';	  output:'.mn.sh';				bump:6),
	(typ:xbw;	pattern:'orangutan';	  output:'.r.ng.t.ng';		bump:9),
	(typ:xbw;	pattern:'pistachio';	  output:'p.st.sh.';			bump:9),
	(typ:xbw;	pattern:'reservoir';	  output:'r.s.rvw.r';			bump:9),
	(typ:xbw;	pattern:'sepulcher';	  output:'s.p.lk.r';			bump:9),
	(typ:xbw;	pattern:'shortener';	  output:'sh.rtn.r';			bump:9),
	(typ:xbw;	pattern:'turquoise';	  output:'t.rk';					bump:5),
	(typ:xbw;	pattern:'vegetable';	  output:'v.j';						bump:4),
	(typ:xbw;	pattern:'vigilante';	  output:'v.j.l.nt.';			bump:9),

	(typ:xbw;	pattern:'apprecia';			output:'.pr.sh.';    		bump:8),
	(typ:xbw;	pattern:'applique';			output:'.pl.k.';    		bump:8),
	(typ:xbw;	pattern:'artesian';			output:'.rt.s.n';    		bump:8),
	(typ:xbw;	pattern:'bellyach';			output:'b.l.k';    			bump:8),
	(typ:xbw;	pattern:'bustling';		  output:'b.sl.ng';  			bump:8),
	(typ:xbw;	pattern:'castling';		  output:'k.s.l.ng';  		bump:8),
	(typ:xbw;	pattern:'chestnut';		  output:'ch.sn.t'; 			bump:8),
	(typ:xbw;	pattern:'conquist';			output:'k.nk.st'; 	 	 	bump:8),
	(typ:xbw;	pattern:'cupboard';			output:'k.b.rd'; 	 	 		bump:8),
	(typ:xbw;	pattern:'dementia';			output:'d.m.nsh.'; 	 	 	bump:8),
	(typ:xbw;	pattern:'flamenco';	  	output:'fl.m.nk.'; 	 	  bump:8),
	(typ:xbw;	pattern:'gauntlet';	  	output:'g.ntl.t'; 	 	  bump:8),
	(typ:xbw;	pattern:'grandkid';	  	output:'gr.n'; 	 	  		bump:5),
	(typ:xbw;	pattern:'homeroom';	   	output:'h.mr.m'; 	      bump:8),
	(typ:xbw;	pattern:'hymnbook';	   	output:'h.mb.k'; 	      bump:8),
	(typ:xbw;	pattern:'likeness';		  output:'l.k'; 			  	bump:4),
	(typ:xbw;	pattern:'lingerie';		  output:'l.nj.r.'; 		  bump:8),
	(typ:xbw;	pattern:'laughter';		  output:'l.ft.r'; 			  bump:8),
	(typ:xbw;	pattern:'monsieur';	   	output:'m.sy.r'; 			  bump:8),
	(typ:xbw;	pattern:'negligee';	   	output:'n.gl.sh.';			bump:8),
	(typ:xbw;	pattern:'omelette';		  output:'.ml.t'; 				bump:8),
	(typ:xbw;	pattern:'princess';		  output:'pr.n'; 					bump:4),
	(typ:xbw;	pattern:'saboteur';		  output:'s.b.t.r'; 			bump:8),
	(typ:xbw;	pattern:'sanctuar';		  output:'s.nch.r'; 			bump:8),
	(typ:xbw;	pattern:'sandwich';		  output:'s.n'; 					bump:4),
	(typ:xbw;	pattern:'sayonara';		  output:'s.y.n.r.'; 			bump:8),
	(typ:xbw;	pattern:'shrubber';		  output:'shr.br'; 				bump:8),
	(typ:xbw;	pattern:'sombrero';		  output:'s.mbr.r.'; 			bump:8),
	(typ:xbw;	pattern:'surefoot';		  output:'sh.r'; 					bump:4),
	(typ:xbw;	pattern:'tortilla';		  output:'t.rt.y.'; 			bump:8),
	(typ:xbw;	pattern:'temperam';			output:'t.mp.r'; 				bump:7),
	(typ:xbw;	pattern:'viscount';			output:'v.k.nt'; 				bump:7),

	(typ:xse;	pattern:'defense';			output:'d.f.ns'; 				bump:7),
	(typ:xse;	pattern:'feature';			output:'f.ch.r'; 				bump:7),
	(typ:xse;	pattern:'leisure';			output:'l.sh.r'; 				bump:7),
	(typ:xse;	pattern:'measure';			output:'m.sh.r'; 				bump:7),
	(typ:xse;	pattern:'passage';			output:'p.s.j'; 				bump:7),
	(typ:xse;	pattern:'purpose';			output:'p.rp.s'; 				bump:7),
	(typ:xse;	pattern:'remorse';			output:'r.m.rs'; 				bump:7),
	(typ:xse;	pattern:'scuttle';			output:'sk.t.l'; 				bump:7),
	(typ:xse;	pattern:'service';			output:'s.rv.s'; 				bump:7),

	(typ:xbw;	pattern:'ageless';			output:'.jl.s';  	  		bump:7),
	(typ:xbw;	pattern:'bankrup';			output:'b.nkr.p';  	  	bump:7),
	(typ:xbw;	pattern:'bastion';			output:'b.sch.n';  	  	bump:7),
	(typ:xbw;	pattern:'bivouac';			output:'b.vw.k';  	  	bump:7),
	(typ:xbw;	pattern:'bristle';			output:'br.s.l';				bump:7),
	(typ:xbw;	pattern:'bouquet';			output:'b.k.'; 					bump:7),
	(typ:xbw;	pattern:'bouvier';			output:'b.v.'; 					bump:7),
	(typ:xbw;	pattern:'cabaret';			output:'k.b.r.';  	  	bump:7),
	(typ:xbw;	pattern:'calving';			output:'k.v.ng';  	  	bump:7),
	(typ:xbw;	pattern:'celloph';		  output:'s.l.f';  				bump:7),
	(typ:xbw;	pattern:'colonel';	  	output:'k.rn.l'; 		 	  bump:7),
	(typ:xbw;	pattern:'defecat';	  	output:'d.f.'; 		 	  	bump:4),
	(typ:xbw;	pattern:'dossier';	  	output:'d.s.'; 			 	  bump:7),
	(typ:xbw;	pattern:'epitome';	  	output:'.p.t.m.'; 	 	  bump:7),
	(typ:xbw;	pattern:'froward';	  	output:'fr.w.rd'; 	 	  bump:7),
	(typ:xbw;	pattern:'fuchsia';			output:'f.sh.'; 			  bump:7),
	(typ:xbw;	pattern:'gestapo';			output:'g.st.p.'; 		  bump:7),
	(typ:xbw;	pattern:'gingham';			output:'g.ng.m'; 			  bump:7),
	(typ:xbw;	pattern:'glacier';			output:'gl.sh.r'; 		  bump:7),
	(typ:xbw;	pattern:'grandma';			output:'gr.m.'; 			  bump:7),
	(typ:xbw;	pattern:'grandpa';			output:'gr.mp.'; 			  bump:7),
	(typ:xbw;	pattern:'heretic';			output:'h.r.t.k'; 		  bump:7),
	(typ:xbw;	pattern:'hoosier';			output:'h.sh.r'; 			  bump:7),
	(typ:xbw;	pattern:'inaugur';			output:'.n.gy.r'; 			bump:7),
	(typ:xbw;	pattern:'lasagna';	  	output:'l.s.ny.';				bump:7),
	(typ:xbw;	pattern:'machete';		  output:'m.sh.t.'; 		  bump:7),
	(typ:xbw;	pattern:'macrame';		  output:'m.kr.m.'; 		  bump:7),
	(typ:xbw;	pattern:'marquee';		  output:'m.rk.'; 			  bump:7),
	(typ:xbw;	pattern:'marquis';		  output:'m.rk.'; 			  bump:7),
	(typ:xbw;	pattern:'mastect';		  output:'m.s.kt'; 			  bump:7),
	(typ:xbw;	pattern:'molotov';		  output:'m.l.t.f'; 			bump:7),
	(typ:xbw;	pattern:'monarch';		  output:'m.n.rk'; 				bump:7),
	(typ:xbw;	pattern:'mustach';	   	output:'m.st.sh'; 			bump:7),
	(typ:xbw;	pattern:'opossum';	   	output:'p.s.m'; 				bump:7),
	(typ:xbw;	pattern:'paceset';	   	output:'p.s.t'; 				bump:7),
	(typ:xbw;	pattern:'parfait';	   	output:'p.rf.'; 				bump:7),
	(typ:xbw;	pattern:'parquet';			output:'p.rk.'; 				bump:7),
	(typ:xbw;	pattern:'penguin';			output:'p.ngw.n'; 			bump:7),
	(typ:xbw;	pattern:'pentium';			output:'p.nt.m'; 				bump:7),
	(typ:xbw;	pattern:'pharaoh';			output:'f.r.'; 					bump:7),
	(typ:xbw;	pattern:'piranha';			output:'p.r.n.'; 				bump:7),
	(typ:xbw;	pattern:'potpour';			output:'p.p.r'; 				bump:7),
	(typ:xbw;	pattern:'protege';			output:'pr.t.j.'; 			bump:7),
	(typ:xbw;	pattern:'pumpkin';			output:'p.mk.n'; 				bump:7),
	(typ:xbw;	pattern:'pursuan';			output:'p.rs.n'; 				bump:7),
	(typ:xbw;	pattern:'rapport';			output:'r.p.r'; 				bump:7),
	(typ:xbw;	pattern:'raspber';			output:'r.sb.r'; 				bump:7),
	(typ:xbw;	pattern:'reticen';			output:'r.t.s.n'; 			bump:7),
	(typ:xbw;	pattern:'salient';			output:'s.ly.nt'; 			bump:7),
	(typ:xbw;	pattern:'seedbed';			output:'s.db.d'; 				bump:7),
	(typ:xbw;	pattern:'simpler';			output:'s.mpl'; 				bump:5),
	(typ:xbw;	pattern:'simples';			output:'s.mpl'; 				bump:5),
	(typ:xbw;	pattern:'simplex';			output:'s.mpl'; 				bump:5),
	(typ:xbw;	pattern:'souffle';			output:'s.fl.'; 				bump:7),
	(typ:xbw;	pattern:'steeple';			output:'st.p.l'; 				bump:7),
	(typ:xbw;	pattern:'startle';			output:'st.rt.l'; 			bump:7),
	(typ:xbw;	pattern:'stomach';			output:'st.m.k'; 				bump:7),
	(typ:xbw;	pattern:'subquer';			output:'s.bkw.r'; 			bump:7),
	(typ:xbw;	pattern:'systole';			output:'s.st.l.'; 			bump:7),
	(typ:xbw;	pattern:'tequila';			output:'t.k.l.'; 				bump:7),
	(typ:xbw;	pattern:'timbrel';	    output:'t.mbr.l';	  		bump:7),
	(typ:xbw;	pattern:'tsunami';	    output:'s.n.m.';	  		bump:7),
	(typ:xbw;	pattern:'ukulele';	    output:'.k.l.l.';	  		bump:7),
	(typ:xbw;	pattern:'upholst';	    output:'.p.l';	 		 		bump:5),
	(typ:xbw;	pattern:'vindict';	    output:'v.nd.kt';		 		bump:7),
	(typ:xbw;	pattern:'vinegar';	    output:'v.n.g.r';		 		bump:7),
	(typ:xse;	pattern:'unwhole';	    output:'.nh.l';			 		bump:7),

	(typ:xse;	pattern:'battle';				output:'b.t.l'; 				bump:6),
	(typ:xse;	pattern:'bottle';				output:'b.t.l'; 				bump:6),
	(typ:xse;	pattern:'breeze';				output:'br.s'; 					bump:6),
	(typ:xse;	pattern:'brides';				output:'br.ds'; 				bump:6),
	(typ:xse;	pattern:'bridge';				output:'br.j'; 					bump:6),
	(typ:xse;	pattern:'change';				output:'ch.nj'; 				bump:6),
	(typ:xse;	pattern:'cheese';				output:'ch.s'; 					bump:6),
	(typ:xse;	pattern:'figure';				output:'f.g.r'; 				bump:6),
	(typ:xse;	pattern:'grease';				output:'gr.s'; 					bump:6),
	(typ:xse;	pattern:'kettle';				output:'k.t.l'; 				bump:6),
	(typ:xse;	pattern:'minute';				output:'m.n.t'; 				bump:6),
	(typ:xse;	pattern:'office';				output:'.f.s'; 					bump:6),
	(typ:xse;	pattern:'police';				output:'p.l.s'; 				bump:6),
	(typ:xse;	pattern:'praise';				output:'pr.s'; 					bump:6),
	(typ:xse;	pattern:'prince';				output:'pr.ns'; 			 	bump:6),
	(typ:xse;	pattern:'rattle';				output:'r.t.l'; 			 	bump:6),
	(typ:xse;	pattern:'sledge';				output:'sl.j'; 			 		bump:6),
	(typ:xse;	pattern:'sleeve';				output:'sl.v'; 			 		bump:6),
	(typ:xse;	pattern:'sponge';				output:'sp.nj'; 			 	bump:6),
	(typ:xse;	pattern:'square';				output:'skw.r'; 			 	bump:6),
	(typ:xse;	pattern:'strike';				output:'str.k'; 			 	bump:6),
	(typ:xse;	pattern:'tattle';				output:'t.t.l'; 			 	bump:6),
	(typ:xse;	pattern:'twelve';				output:'tw.lv';				 	bump:6),

	(typ:xbw;	pattern:'achiev';			  output:'.ch.v';    			bump:6),
	(typ:xbw;	pattern:'antler';		   	output:'.ntl.r';    		bump:6),
	(typ:xbw;	pattern:'apothe';		   	output:'.p.th.';    		bump:6),
	(typ:xbw;	pattern:'arcing';		   	output:'.rk.ng';    		bump:6),
	(typ:xbw;	pattern:'argyle';			  output:'.rg.l';    			bump:6),
	(typ:xbw;	pattern:'ballet';				output:'b.l.'; 					bump:6),
	(typ:xbw;	pattern:'closet';		   	output:'kl.s'; 					bump:4),
	(typ:xbw;	pattern:'compaq';				output:'k.mp.k'; 				bump:6),
	(typ:xbw;	pattern:'diverg';				output:'d.v.r'; 			  bump:5),
	(typ:xbw;	pattern:'divers';				output:'d.v.r'; 			  bump:5),
	(typ:xbw;	pattern:'divert';				output:'d.v.r'; 			  bump:5),
	(typ:xbw;	pattern:'divest';				output:'d.v.s'; 			  bump:5),
	(typ:xbw;	pattern:'dogged';				output:'d.g.d'; 			  bump:6),
	(typ:xbw;	pattern:'dogleg';				output:'d.gl.g'; 			  bump:6),
	(typ:xbw;	pattern:'fiance';				output:'f.ns.'; 			  bump:6),
	(typ:xbw;	pattern:'fidget';	      output:'f.j.'; 			  	bump:5),
	(typ:xbw;	pattern:'flambe';				output:'fl.mb.'; 			  bump:6),
	(typ:xbw;	pattern:'frappe';				output:'fr.p.'; 			  bump:6),
	(typ:xbw;	pattern:'gibbon';				output:'g.b.n'; 			  bump:6),
	(typ:xbw;	pattern:'gigolo';				output:'j.g.l.'; 			  bump:6),
	(typ:xbw;	pattern:'ginger';				output:'j.nj.r'; 			  bump:6),
	(typ:xbw;	pattern:'goblet';				output:'g.bl.t'; 			  bump:6),
	(typ:xbw;	pattern:'gravel';				output:'gr.v.l'; 			  bump:6),
	(typ:xbw;	pattern:'hombre';				output:'.mbr.'; 			  bump:6),
	(typ:xbw;	pattern:'hunger';				output:'h.ng.r'; 			  bump:6),
	(typ:xbw;	pattern:'hurrah';				output:'h.r.'; 				  bump:6),
	(typ:xbw;	pattern:'insign';				output:'.ns.gn'; 			  bump:6),
	(typ:xbw;	pattern:'island';				output:'.'; 			  		bump:2),
	(typ:xbw;	pattern:'jaguar';				output:'j.gw.r'; 	  		bump:6),
	(typ:xbw;	pattern:'karate';				output:'k.r.t.'; 	  		bump:6),
	(typ:xbw;	pattern:'loosen';				output:'l.s.n'; 	  		bump:6),
	(typ:xbw;	pattern:'medley';				output:'m.dl.'; 	  		bump:6),
	(typ:xbw;	pattern:'memoir';				output:'m.mw.r'; 	  		bump:6),
	(typ:xbw;	pattern:'milque';				output:'m.lk'; 	  			bump:6),
	(typ:xbw;	pattern:'myrtle';				output:'m.rt.l';   			bump:6),
	(typ:xbw;	pattern:'papaya';				output:'p.p.y.';   			bump:6),
	(typ:xbw;	pattern:'peyote';				output:'p.t.'; 	  			bump:6),
	(typ:xbw;	pattern:'placeb';				output:'pl.s.b'; 	  		bump:6),
	(typ:xbw;	pattern:'placen';				output:'pl.s.n'; 	  		bump:6),
	(typ:xbw;	pattern:'pueblo';				output:'pw.bl.';   			bump:6),
	(typ:xbw;	pattern:'recipe';				output:'r.s.p.';   			bump:6),
	(typ:xbw;	pattern:'ragged';	      output:'r.g.d'; 			  bump:6),
	(typ:xbw;	pattern:'reissu';	      output:'r.sh.'; 		  	bump:5),
	(typ:xbw;	pattern:'sacred';	      output:'s.kr.d'; 		  	bump:6),
	(typ:xbw;	pattern:'savage';	      output:'s.v.'; 		  		bump:4),
	(typ:xbw;	pattern:'seabed';	      output:'s.b.d';	 		  	bump:6),
	(typ:xbw;	pattern:'signet';	      output:'s.gn.t';		  	bump:6),
	(typ:xbw;	pattern:'signif';	      output:'s.gn.f';		  	bump:6),
	(typ:xbw;	pattern:'signor';	      output:'s.ny.r';		  	bump:6),
	(typ:xbw;	pattern:'simple';	      output:'s.mp.l';		  	bump:6),
	(typ:xbw;	pattern:'single';	      output:'s.ng.l';		  	bump:6),
	(typ:xbw;	pattern:'skewer';	      output:'sk.r';		  		bump:6),
	(typ:xbw;	pattern:'soccer';	      output:'s.k.r';			  	bump:6),
	(typ:xbw;	pattern:'somber';	      output:'s.mb.r';		  	bump:6),
	(typ:xbw;	pattern:'spring';	      output:'spr.ng';		  	bump:6),
	(typ:xbw;	pattern:'starch';	      output:'st.r';		  		bump:4),    // overrides archi rule
	(typ:xbw;	pattern:'status';	      output:'st.t';		  		bump:4),
	(typ:xbw;	pattern:'stewar';	      output:'st.';			  		bump:5),
	(typ:xbw;	pattern:'stogie';	      output:'st.g.';		  		bump:6),
	(typ:xbw;	pattern:'string';	      output:'str.ng';		  	bump:6),
	(typ:xbw;	pattern:'sunset';	      output:'s.ns.t';		  	bump:6),
	(typ:xbw;	pattern:'tablet';	      output:'t.bl.';		  		bump:5),
	(typ:xbw;	pattern:'tamale';	      output:'t.m.l.';	  		bump:5),
	(typ:xbw;	pattern:'tangie';	      output:'t.ng.';		  		bump:6),
	(typ:xbw;	pattern:'target';	      output:'t.rg';	  			bump:4),
	(typ:xbw;	pattern:'timbre';	      output:'t.mb.r';	  		bump:6),
	(typ:xbw;	pattern:'tricot';				output:'tr.k.';		 	 		bump:6),
	(typ:xbw;	pattern:'trough';				output:'tr.f';		 	 		bump:6),
	(typ:xbw;	pattern:'tsetse';				output:'t.ts.';		 	 		bump:6),
	(typ:xbw;	pattern:'turtle';				output:'t.rt.l';	 	 		bump:6),
	(typ:xbw;	pattern:'unblem';				output:'.nbl.m';	 	 		bump:6),
	(typ:xbw;	pattern:'unique';				output:'.n.k';	 	 			bump:5),
	(typ:xbw;	pattern:'unlife';				output:'.nl.f';				 	bump:6),
	(typ:xbw;	pattern:'untime';				output:'.nt.m';				 	bump:6),
	(typ:xbw;	pattern:'wednes';				output:'w.ns';				 	bump:6),
	(typ:xbw;	pattern:'wombat';				output:'w.mb.t';			 	bump:6),
	(typ:xbw;	pattern:'zeppel';				output:'z.pl';			 		bump:6),
	(typ:xbw;	pattern:'zombie';				output:'z.mb.';			 		bump:6),

	(typ:xse;	pattern:'brake';				output:'br.k'; 					bump:5),
	(typ:xse;	pattern:'bride';				output:'br.d'; 					bump:5),
	(typ:xse;	pattern:'cause';				output:'k.s'; 					bump:5),
	(typ:xse;	pattern:'cease';				output:'s.s'; 					bump:5),
	(typ:xse;	pattern:'close';				output:'kl.s'; 					bump:5),
	(typ:xse;	pattern:'drive';				output:'dr.v'; 					bump:5),
	(typ:xse;	pattern:'flame';				output:'fl.m'; 					bump:5),
	(typ:xse;	pattern:'frame';				output:'fr.m'; 					bump:5),
	(typ:xse;	pattern:'globe';				output:'gl.b'; 					bump:5),
	(typ:xse;	pattern:'goose';				output:'g.s'; 					bump:5),
	(typ:xse;	pattern:'grace';				output:'gr.s'; 					bump:5),
	(typ:xse;	pattern:'grape';				output:'gr.p'; 					bump:5),
	(typ:xse;	pattern:'grave';				output:'gr.v'; 					bump:5),
	(typ:xse;	pattern:'guide';				output:'g.d'; 					bump:5),
	(typ:xse;	pattern:'guile';				output:'g.l'; 					bump:5),
	(typ:xse;	pattern:'hedge';				output:'h.j'; 					bump:5),
	(typ:xse;	pattern:'horse';				output:'h.rs'; 					bump:5),
	(typ:xse;	pattern:'house';				output:'h.s'; 					bump:5),
	(typ:xse;	pattern:'large';				output:'l.rj'; 					bump:5),
	(typ:xse;	pattern:'lease';				output:'l.s'; 					bump:5),
	(typ:xse;	pattern:'loose';				output:'l.s'; 					bump:5),
	(typ:xse;	pattern:'mince';				output:'m.ns'; 					bump:5),
	(typ:xse;	pattern:'mouse';				output:'m.s'; 					bump:5),
	(typ:xse;	pattern:'noise';				output:'n.s'; 					bump:5),
	(typ:xse;	pattern:'peace';				output:'p.s'; 					bump:5),
	(typ:xse;	pattern:'peice';				output:'p.s'; 					bump:5),   // for user misspellings
	(typ:xse;	pattern:'piece';				output:'p.s'; 					bump:5),
	(typ:xse;	pattern:'place';				output:'pl.s'; 					bump:5),
	(typ:xse;	pattern:'plate';				output:'pl.t'; 					bump:5),
	(typ:xse;	pattern:'price';				output:'pr.s'; 					bump:5),
	(typ:xse;	pattern:'prize';				output:'pr.s'; 					bump:5),
	(typ:xse;	pattern:'sauce';				output:'s.s'; 					bump:5),
	(typ:xse;	pattern:'scape';				output:'sk.p'; 					bump:5),
	(typ:xse;	pattern:'scare';				output:'sk.r'; 					bump:5),
	(typ:xse;	pattern:'score';				output:'sk.r'; 					bump:5),
	(typ:xse;	pattern:'sense';				output:'s.ns'; 					bump:5),
	(typ:xse;	pattern:'shake';				output:'sh.k'; 					bump:5),
	(typ:xse;	pattern:'shame';				output:'sh.m'; 					bump:5),
	(typ:xse;	pattern:'shape';				output:'sh.p'; 					bump:5),
	(typ:xse;	pattern:'share';				output:'sh.r'; 					bump:5),
	(typ:xse;	pattern:'shore';				output:'sh.r'; 					bump:5),
	(typ:xse;	pattern:'slave';				output:'sl.v'; 					bump:5),
	(typ:xse;	pattern:'smoke';				output:'sm.k'; 					bump:5),
	(typ:xse;	pattern:'snake';				output:'sn.k'; 					bump:5),
	(typ:xse;	pattern:'space';				output:'sp.s'; 					bump:5),
	(typ:xse;	pattern:'spike';				output:'sp.k'; 					bump:5),
	(typ:xse;	pattern:'spine';				output:'sp.n'; 					bump:5),
	(typ:xse;	pattern:'spoke';				output:'sp.k'; 					bump:5),
	(typ:xse;	pattern:'stage';				output:'st.j'; 					bump:5),
	(typ:xse;	pattern:'stake';				output:'st.k'; 					bump:5),
	(typ:xse;	pattern:'stale';				output:'st.l'; 					bump:5),
	(typ:xse;	pattern:'state';				output:'st.t'; 					bump:5),
	(typ:xse;	pattern:'stone';				output:'st.n'; 					bump:5),
	(typ:xse;	pattern:'store';				output:'st.r'; 					bump:5),
	(typ:xse;	pattern:'stove';				output:'st.v'; 					bump:5),
	(typ:xse;	pattern:'swine';				output:'sw.n'; 					bump:5),
	(typ:xse;	pattern:'taste';				output:'t.st'; 					bump:5),
	(typ:xse;	pattern:'trade';				output:'tr.d'; 					bump:5),
	(typ:xse;	pattern:'tribe';				output:'tr.b'; 					bump:5),
	(typ:xse;	pattern:'valve';				output:'v.lv'; 					bump:5),
	(typ:xse;	pattern:'vaude';				output:'v.d'; 					bump:5),
	(typ:xse;	pattern:'voice';				output:'v.s'; 					bump:5),
	(typ:xse;	pattern:'waste';				output:'w.st'; 					bump:5),
	(typ:xse;	pattern:'white';				output:'w.t'; 					bump:5),
	(typ:xse;	pattern:'whole';				output:'h.l'; 					bump:5),
	(typ:xse;	pattern:'whore';				output:'h.r'; 					bump:5),

	(typ:xbw;	pattern:'anger';		   	output:'.ng.r';    			bump:5),
	(typ:xbw;	pattern:'anxie';		   	output:'.ngs.';    			bump:5),
	(typ:xbw;	pattern:'arach';		   	output:'.r.k';    			bump:5),
	(typ:xbw;	pattern:'arced';		   	output:'.rkd';    			bump:5),
	(typ:xbw;	pattern:'argue';				output:'.rg.'; 				  bump:5),
	(typ:xbw;	pattern:'aught';		   	output:'.t';    				bump:5),
	(typ:xbw;	pattern:'bagel';		   	output:'b.g.l';  				bump:5),
	(typ:xbw;	pattern:'baker';		   	output:'b.k.r';  				bump:5),
	(typ:xbw;	pattern:'beret';		   	output:'b.r.';  				bump:5),
	(typ:xbw;	pattern:'brist';		   	output:'br.s';  				bump:5),
	(typ:xbw;	pattern:'blood';		   	output:'bl.d';  				bump:5),
	(typ:xbw;	pattern:'capel';		   	output:'k.p.l';  				bump:5),
	(typ:xbw;	pattern:'caper';		   	output:'k.p.r';  				bump:5),
	(typ:xbw;	pattern:'caram';		   	output:'k.rm';  				bump:5),
	(typ:xbw;	pattern:'cares';		   	output:'k.r.s';  				bump:5),
	(typ:xbw;	pattern:'caver';		   	output:'k.v.r';  				bump:5),
	(typ:xbw;	pattern:'comed';		   	output:'k.m.d';  				bump:5),
	(typ:xbw;	pattern:'demen';				output:'d.m.n'; 				bump:5),
	(typ:xbw;	pattern:'dingh';		   	output:'d.ng';  				bump:5),
	(typ:xbw;	pattern:'dogie';				output:'d.g.'; 					bump:5),
	(typ:xbw;	pattern:'embed';				output:'.mb.d'; 				bump:5),
	(typ:xbw;	pattern:'every';		   	output:'.vr.';   			  bump:5),
	(typ:xbw;	pattern:'excel';		   	output:'.ks.l';  			  bump:5),
	(typ:xbw;	pattern:'facad';		   	output:'f.s.d';  			  bump:5),
	(typ:xbw;	pattern:'facet';		   	output:'f.s.';  			  bump:4),
	(typ:xbw;	pattern:'forte';		   	output:'f.rt.';  			  bump:5),
	(typ:xbw;	pattern:'fosse';		   	output:'f.s.';  			  bump:5),
	(typ:xbw;	pattern:'genre';				output:'j.nr.';		 	 	  bump:5),
	(typ:xbw;	pattern:'gigan';				output:'j.g.n';  	 	    bump:5),
	(typ:xbw;	pattern:'gingi';				output:'j.nj.';  	 	    bump:5),
	(typ:xbw;	pattern:'homer';				output:'h.m.r';  	 	    bump:5),
	(typ:xbw;	pattern:'hered';				output:'h.r.d';  	 	    bump:5),
	(typ:xbw;	pattern:'heres';				output:'h.r.s';  	 	    bump:5),
	(typ:xbw;	pattern:'hirel';				output:'h.rl';		 			bump:5),
	(typ:xbw;	pattern:'hough';				output:'h.'; 		 	 	    bump:5),
	(typ:xbw;	pattern:'imbed';				output:'.mb.d';  	 	    bump:5),
	(typ:xbw;	pattern:'lager';				output:'l.g.r';			 	 	bump:5),
	(typ:xbw;	pattern:'liken';				output:'l.k.n';			 	 	bump:5),
	(typ:xbw;	pattern:'limer';				output:'l.m.r';			 	 	bump:5),
	(typ:xbw;	pattern:'lines';				output:'l.ns';			 	 	bump:5),
	(typ:xbw;	pattern:'liven';				output:'l.v.n';			 	 	bump:5),
	(typ:xbw;	pattern:'liver';				output:'l.v.r';			 	 	bump:5),
	(typ:xbw;	pattern:'macho';				output:'m.ch.';			 	 	bump:5),
	(typ:xbw;	pattern:'mangi';				output:'m.nj.';			 	 	bump:5),
	(typ:xbw;	pattern:'miner';				output:'m.n.r';			 	 	bump:5),
	(typ:xbw;	pattern:'molec';				output:'m.l.k';			 	 	bump:5),
	(typ:xbw;	pattern:'moles';				output:'m.l.s';			 	 	bump:5),
	(typ:xbw;	pattern:'noned';				output:'n.n.d';			 	 	bump:5),
	(typ:xbw;	pattern:'nonen';				output:'n.n.n';			 	 	bump:5),
	(typ:xbw;	pattern:'nones';				output:'n.n.s';			 	 	bump:5),
	(typ:xbw;	pattern:'nonex';				output:'n.n';			 			bump:3),
	(typ:xbw;	pattern:'onset';				output:'.ns.t';			 	 	bump:5),
	(typ:xbw;	pattern:'orche';				output:'.rk';			 	 		bump:4),
	(typ:xbw;	pattern:'orchi';				output:'.rk';			 			bump:4),
	(typ:xbw;	pattern:'orang';				output:'.rnj';		 			bump:5),
	(typ:xbw;	pattern:'pachy';				output:'p.k.';		 			bump:5),
	(typ:xbw;	pattern:'parch';				output:'p.rch';		 			bump:5),
	(typ:xbw;	pattern:'pique';				output:'p.k';			 			bump:5),
	(typ:xbw;	pattern:'pipel';				output:'p.pl';		 			bump:5),
	(typ:xbw;	pattern:'polem';				output:'p.l.m';		 			bump:5),
	(typ:xbw;	pattern:'posse';				output:'p.s.';		 			bump:5),
	(typ:xbw;	pattern:'psalm';				output:'s.m';  		 	    bump:5),
	(typ:xbw;	pattern:'psych';				output:'s.k';  		 	    bump:5),
	(typ:xbw;	pattern:'racer';		   	output:'r.s.r';  	 		  bump:5),
	(typ:xbw;	pattern:'races';		   	output:'r.s.s';  	 		  bump:5),
	(typ:xbw;	pattern:'ratio';		   	output:'r.sh.';  	 		  bump:5),
	(typ:xbw;	pattern:'reneg';		   	output:'r.n.g';  	 		  bump:5),
	(typ:xbw;	pattern:'roset';				output:'r.s.t';  		 	  bump:5),
	(typ:xbw;	pattern:'rough';				output:'r.f';  		 	    bump:5),
	(typ:xbw;	pattern:'safet';				output:'s.ft';  		 	  bump:5),
	(typ:xbw;	pattern:'sarsa';				output:'s.s';  		 	    bump:5),
	(typ:xbw;	pattern:'saute';				output:'s.t.'; 		 	    bump:5),
	(typ:xbw;	pattern:'sched';				output:'sk'; 		 	    	bump:3),
	(typ:xbw;	pattern:'schem';				output:'sk.m'; 		 	    bump:5),
	(typ:xbw;	pattern:'schis';				output:'sk.s'; 		 	    bump:5),
	(typ:xbw;	pattern:'schiz';				output:'sk.ts'; 	 	    bump:5),
	(typ:xbw;	pattern:'schol';				output:'sk.l'; 		 	    bump:5),
	(typ:xbw;	pattern:'schoo';				output:'sk.'; 		 	    bump:5),
	(typ:xbw;	pattern:'segue';				output:'s.gw.'; 	 	    bump:5),
	(typ:xbw;	pattern:'sewer';				output:'s.r'; 	 	    	bump:5),
	(typ:xbw;	pattern:'short';				output:'sh.rt'; 	 	    bump:5),
	(typ:xbw;	pattern:'somer';				output:'s.m.r'; 	 	    bump:5),
	(typ:xbw;	pattern:'sopho';				output:'s.f'; 		 	    bump:5),
	(typ:xbw;	pattern:'sover';				output:'s.vr'; 		 	    bump:5),
	(typ:xbw;	pattern:'statu';				output:'st.ch'; 	 	    bump:4),
	(typ:xbw;	pattern:'suble';				output:'s.b'; 		 	    bump:3),
	(typ:xbw;	pattern:'succi';				output:'s.ks'; 		 	    bump:4),
	(typ:xbw;	pattern:'suede';				output:'sw.d'; 		 	    bump:4),
	(typ:xbw;	pattern:'sugar';				output:'sh.g.r'; 		 	  bump:5),
	(typ:xbw;	pattern:'sword';				output:'s.rd';  	 	    bump:5),
	(typ:xbw;	pattern:'synch';		   	output:'s.nk';   	 		  bump:5),
	(typ:xbw;	pattern:'talen';		   	output:'t.l.n';   	 		bump:5),
	(typ:xbw;	pattern:'taper';		   	output:'t.p.r';   	 		bump:5),
	(typ:xbw;	pattern:'tapes';		   	output:'t.p.s';   	 		bump:5),
	(typ:xbw;	pattern:'teste';		   	output:'t.st.';   	 		bump:5),
	(typ:xbw;	pattern:'there';		   	output:'th.r'; 	  	 		bump:5),
	(typ:xbw;	pattern:'tiger';		   	output:'t.g.r';	  	 		bump:5),
	(typ:xbw;	pattern:'tilde';		   	output:'t.ld.';	  	 		bump:5),
	(typ:xbw;	pattern:'tongu';		   	output:'t.ng';	  	 		bump:5),
	(typ:xbw;	pattern:'tough';				output:'t.f';  		 	    bump:5),
	(typ:xbw;	pattern:'trich';				output:'tr.k'; 		 	    bump:5),
	(typ:xbw;	pattern:'twang';				output:'tw.ng'; 	 	    bump:5),
	(typ:xbw;	pattern:'twing';				output:'tw.n'; 	 	    	bump:4),
	(typ:xbw;	pattern:'under';				output:'.nd.r';  	    	bump:5),
	(typ:xbw;	pattern:'union';				output:'.ny.n';  	    	bump:5),
	(typ:xbw;	pattern:'valet';				output:'v.l.';  	    	bump:5),
	(typ:xbw;	pattern:'virtu';				output:'v.rch.'; 	    	bump:5),
	(typ:xbw;	pattern:'waver';				output:'w.v.r'; 	    	bump:5),
	(typ:xbw;	pattern:'where';				output:'w.r'; 	  	  	bump:5),
	(typ:xbw;	pattern:'whomp';			  output:'w.mp'; 	   			bump:5),
	(typ:xbw;	pattern:'widen';			  output:'w.d.n';	   			bump:5),
	(typ:xbw;	pattern:'windf';			  output:'w.n';	   				bump:4),
	(typ:xbw;	pattern:'windj';			  output:'w.n';	   				bump:4),
	(typ:xbw;	pattern:'windw';			  output:'w.n';	   				bump:4),
	(typ:xbw;	pattern:'yacht';			  output:'y.t';	   				bump:4),
	(typ:xbw;	pattern:'young';			  output:'y.ng';	 				bump:5),
	(typ:xbw;	pattern:'zucch';			  output:'z.k';		 				bump:5),

	(typ:xse;	pattern:'bake';					output:'b.k'; 				  bump:4),
	(typ:xse;	pattern:'bare';					output:'b.r'; 				  bump:4),
	(typ:xse;	pattern:'base';					output:'b.s'; 				  bump:4),
	(typ:xse;	pattern:'bone';					output:'b.n'; 				  bump:4),
	(typ:xse;	pattern:'cape';					output:'k.p'; 				  bump:4),
	(typ:xse;	pattern:'care';					output:'k.r'; 				  bump:4),
	(typ:xse;	pattern:'case';					output:'k.s'; 				  bump:4),
	(typ:xse;	pattern:'cave';					output:'k.v'; 				  bump:4),
	(typ:xse;	pattern:'code';					output:'k.d'; 				  bump:4),
	(typ:xse;	pattern:'cole';					output:'k.l'; 				  bump:4),
	(typ:xse;	pattern:'come';					output:'k.m'; 				  bump:4),
	(typ:xse;	pattern:'dare';					output:'d.r'; 				  bump:4),
	(typ:xse;	pattern:'dive';					output:'d.v'; 				  bump:4),
	(typ:xse;	pattern:'dove';					output:'d.v'; 				  bump:4),
	(typ:xse;	pattern:'edge';					output:'.j'; 				  	bump:4),
	(typ:xse;	pattern:'face';					output:'f.s'; 				  bump:4),
	(typ:xse;	pattern:'fare';					output:'f.r'; 				  bump:4),
	(typ:xse;	pattern:'file';					output:'f.l'; 				  bump:4),
	(typ:xse;	pattern:'gate';					output:'g.t'; 				  bump:4),
	(typ:xse;	pattern:'hare';					output:'h.r'; 				  bump:4),
	(typ:xse;	pattern:'hate';					output:'h.t'; 				  bump:4),
	(typ:xse;	pattern:'hide';					output:'h.d'; 				  bump:4),
	(typ:xse;	pattern:'home';					output:'h.m'; 				  bump:4),
	(typ:xse;	pattern:'hope';					output:'h.p'; 				  bump:4),
	(typ:xse;	pattern:'juke';					output:'j.k'; 				  bump:4),
	(typ:xse;	pattern:'life';					output:'l.f'; 				  bump:4),
	(typ:xse;	pattern:'like';					output:'l.k'; 				  bump:4),
	(typ:xse;	pattern:'lime';					output:'l.m'; 				  bump:4),
	(typ:xse;	pattern:'line';					output:'l.n'; 				  bump:4),
	(typ:xse;	pattern:'live';					output:'l.v'; 				  bump:4),
	(typ:xse;	pattern:'lode';					output:'l.d'; 				  bump:4),
	(typ:xse;	pattern:'lone';					output:'l.n'; 				  bump:4),
	(typ:xse;	pattern:'love';					output:'l.v'; 				  bump:4),
	(typ:xse;	pattern:'luke';					output:'l.k'; 				  bump:4),
	(typ:xse;	pattern:'make';					output:'m.k'; 				  bump:4),
	(typ:xse;	pattern:'mile';					output:'m.l'; 				  bump:4),
	(typ:xse;	pattern:'mine';					output:'m.n'; 				  bump:4),
	(typ:xse;	pattern:'mole';					output:'m.l'; 				  bump:4),
	(typ:xse;	pattern:'name';					output:'n.m'; 				  bump:4),
	(typ:xse;	pattern:'nine';					output:'n.n'; 				  bump:4),
	(typ:xse;	pattern:'none';					output:'n.n'; 				  bump:4),
	(typ:xse;	pattern:'nose';					output:'n.s'; 				  bump:4),
	(typ:xse;	pattern:'note';					output:'n.t'; 				  bump:4),
	(typ:xse;	pattern:'pace';					output:'p.s'; 				  bump:4),
	(typ:xse;	pattern:'page';					output:'p.j'; 				  bump:4),
	(typ:xse;	pattern:'pole';					output:'p.l'; 				  bump:4),
	(typ:xse;	pattern:'pure';					output:'p.r'; 				  bump:4),
	(typ:xse;	pattern:'rose';					output:'r.s'; 				  bump:4),
	(typ:xse;	pattern:'safe';					output:'s.f'; 				  bump:4),
	(typ:xse;	pattern:'sage';					output:'s.j'; 				  bump:4),
	(typ:xse;	pattern:'side';					output:'s.d'; 				  bump:4),
	(typ:xse;	pattern:'some';					output:'s.m'; 				  bump:4),
	(typ:xse;	pattern:'sore';					output:'s.r'; 				  bump:4),
	(typ:xse;	pattern:'tale';					output:'t.l'; 				  bump:4),
	(typ:xse;	pattern:'tape';					output:'t.p'; 				  bump:4),
	(typ:xse;	pattern:'tide';					output:'t.d'; 				  bump:4),
	(typ:xse;	pattern:'time';					output:'t.m'; 				  bump:4),
	(typ:xse;	pattern:'tire';					output:'t.r'; 				  bump:4),
	(typ:xse;	pattern:'tune';					output:'t.n'; 				  bump:4),
	(typ:xse;	pattern:'type';					output:'t.p'; 				  bump:4),
	(typ:xse;	pattern:'vice';					output:'v.s'; 				  bump:4),
	(typ:xse;	pattern:'vine';					output:'v.n'; 				  bump:4),
	(typ:xse;	pattern:'vise';					output:'v.s'; 				  bump:4),
	(typ:xse;	pattern:'vote';					output:'v.t'; 				  bump:4),
	(typ:xse;	pattern:'ware';					output:'w.r'; 				  bump:4),
	(typ:xse;	pattern:'wave';					output:'w.v'; 				  bump:4),
	(typ:xse;	pattern:'wide';					output:'w.d'; 				  bump:4),
	(typ:xse;	pattern:'wife';					output:'w.f'; 				  bump:4),
	(typ:xse;	pattern:'wine';					output:'w.n'; 				  bump:4),
	(typ:xse;	pattern:'wire';					output:'w.r'; 				  bump:4),
	(typ:xse;	pattern:'wise';					output:'w.s'; 				  bump:4),

	(typ:xbw;	pattern:'acce';			   	output:'.ks.';     			bump:4),
	(typ:xbw;	pattern:'acci';			   	output:'.ks.';     			bump:4),
	(typ:xbw;	pattern:'aire';			   	output:'.r';     			 	bump:4),
	(typ:xbw;	pattern:'alew';			   	output:'.lw';     		 	bump:4),
	(typ:xbw;	pattern:'anci';			   	output:'.nch';     			bump:4),
	(typ:xbw;	pattern:'ante';			   	output:'.nt.';     			bump:4),
	(typ:xbw;	pattern:'area';			   	output:'.r.';     			bump:4),
	(typ:xbw;	pattern:'axle';			   	output:'.ks.l';    			bump:4),
	(typ:xbw;	pattern:'bene';			   	output:'b.n.';    			bump:4),
	(typ:xbw;	pattern:'cafe';			   	output:'k.f.';    			bump:4),
	(typ:xbw;	pattern:'chiv';			   	output:'sh.v';    			bump:4),
	(typ:xbw;	pattern:'coch';			   	output:'k.k'; 	   			bump:4),
	(typ:xbw;	pattern:'coif';			   	output:'kw.f'; 	   			bump:4),
	(typ:xbw;	pattern:'dach';			   	output:'d.k'; 	   			bump:4),
	(typ:xbw;	pattern:'dewa';			   	output:'d.w.'; 	   			bump:4),
	(typ:xbw;	pattern:'dewe';			   	output:'d.w.'; 	   			bump:4),
	(typ:xbw;	pattern:'dewi';			   	output:'d.w.'; 	   			bump:4),
	(typ:xbw;	pattern:'dewy';			   	output:'d.w.'; 	   			bump:4),
	(typ:xbw;	pattern:'dual';			   	output:'d.l'; 	   			bump:4),
	(typ:xbw;	pattern:'eche';			   	output:'.sh.'; 	   			bump:4),
	(typ:xbw;	pattern:'elem';			   	output:'.l.m'; 	   			bump:4),
	(typ:xbw;	pattern:'esch';			   	output:'.sh'; 	   			bump:4),
	(typ:xbw;	pattern:'esth';			   	output:'.st'; 	   			bump:4),
	(typ:xbw;	pattern:'exit';			   	output:'.gs'; 	   			bump:2),
	(typ:xbw;	pattern:'fire';			   	output:'f.r'; 	   			bump:4),
	(typ:xbw;	pattern:'five';			   	output:'f.v'; 	   			bump:4),
	(typ:xbw;	pattern:'gibl';			   	output:'j.bl'; 	   			bump:4),
	(typ:xbw;	pattern:'gira';			   	output:'j.r.'; 	   			bump:4),
	(typ:xbw;	pattern:'goal';			   	output:'g.l'; 	   			bump:4),
	(typ:xbw;	pattern:'heir';			   	output:'.r'; 		   			bump:4),
	(typ:xbw;	pattern:'herb';			   	output:'.rb'; 		   		bump:4),
	(typ:xbw;	pattern:'here';			   	output:'h.r'; 		   		bump:4),
	(typ:xbw;	pattern:'homa';			   	output:'.m.'; 	   			bump:4),
	(typ:xbw;	pattern:'hugh';			   	output:'h.'; 	   				bump:4),
	(typ:xbw;	pattern:'inse';			   	output:'.ns.';   				bump:4),
	(typ:xbw;	pattern:'iowa';			   	output:'.w.';   				bump:4),
	(typ:xbw;	pattern:'iraq';			   	output:'.r.k';   				bump:4),
	(typ:xbw;	pattern:'isle';			   	output:'.';   					bump:2),
	(typ:xbw;	pattern:'issu';					output:'.sh'; 			  	bump:3),
	(typ:xbw;	pattern:'isth';					output:'.s'; 			  		bump:4),
	(typ:xbw;	pattern:'loch';					output:'l.k'; 		  		bump:4),
	(typ:xbw;	pattern:'luan';					output:'l.w.n';		  		bump:4),
	(typ:xbw;	pattern:'mace';					output:'m.s';		  			bump:3),
	(typ:xbw;	pattern:'mach';					output:'m.sh';		  		bump:4),
	(typ:xbw;	pattern:'nazi';			   	output:'n.ts.'; 			  bump:4),
	(typ:xbw;	pattern:'quer';		   		output:'kw.r';   	 		  bump:4),
	(typ:xbw;	pattern:'quor';		   		output:'kw.r';   	 		  bump:4),
	(typ:xbw;	pattern:'pigh';		   		output:'p.gh';   	 		  bump:4),
	(typ:xbw;	pattern:'pigl';		   		output:'p.gl';   	 		  bump:4),
	(typ:xbw;	pattern:'race';		   		output:'r.s';   	 		  bump:4),
	(typ:xbw;	pattern:'racq';		   		output:'r.k';   	 		  bump:4),
	(typ:xbw;	pattern:'salm';		   		output:'s.m';   	 		  bump:4),
	(typ:xbw;	pattern:'sikh';		   		output:'s.k';   	 		  bump:4),
	(typ:xbw;	pattern:'silh';		   		output:'s.l';   	 		  bump:4),
	(typ:xbw;	pattern:'sugg';		   		output:'s.gj';   	 		  bump:4),
	(typ:xbw;	pattern:'sync';		   		output:'s.nk';   	 		  bump:4),
	(typ:xbw;	pattern:'tach';			   	output:'t.k';     			bump:4),
	(typ:xbw;	pattern:'tong';			   	output:'t.ng'; 	   			bump:4),
	(typ:xbw;	pattern:'weis';			   	output:'w.s'; 	   			bump:4),
	(typ:xbw;	pattern:'were';			   	output:'w.r'; 	   			bump:4),
	(typ:xbw;	pattern:'whoo';			   	output:'w.'; 		   			bump:4),
	(typ:xbw;	pattern:'whop';			   	output:'w.p'; 		   		bump:4),
	(typ:xbw;	pattern:'yogi';			   	output:'y.g.'; 		   		bump:4),
	(typ:xbw;	pattern:'yolk';			   	output:'y.k'; 		   		bump:4),
	(typ:xbw;	pattern:'yule';					output:'y.l'; 				  bump:4),
	(typ:xbw;	pattern:'zing';					output:'z.ng'; 				  bump:4),

	(typ:xbw;	pattern:'ach';			   	output:'.k';    			  bump:3),
	(typ:xbw;	pattern:'ais';			   	output:'.';    				  bump:3),
	(typ:xbw;	pattern:'alk';			   	output:'.lk';    			  bump:3),
	(typ:xbw;	pattern:'arg';			   	output:'.rg';    				bump:3),
	(typ:xbw;	pattern:'art';			   	output:'.rt';    				bump:3),
	(typ:xbw;	pattern:'aug';			   	output:'.g';    				bump:3),
	(typ:xbw;	pattern:'ave';			   	output:'.v.';    				bump:3),
	(typ:xbw;	pattern:'awh';			   	output:'.w';    				bump:3),
	(typ:xbw;	pattern:'bed';			   	output:'b.d';    				bump:3),
	(typ:xbw;	pattern:'ble';			   	output:'bl';    			  bump:2),
	(typ:xbw;	pattern:'cem';			   	output:'s.m';    			  bump:3),
	(typ:xbw;	pattern:'dew';			   	output:'d.';    			  bump:3),
	(typ:xbw;	pattern:'gee';			   	output:'g.';    			  bump:3),
	(typ:xbw;	pattern:'get';			   	output:'g.t';    			  bump:3),
	(typ:xbw;	pattern:'gey';			   	output:'g.';    			  bump:3),
	(typ:xbw;	pattern:'gha';			   	output:'g.';   			  	bump:3),
	(typ:xbw;	pattern:'gho';			   	output:'g.';   			  	bump:3),
	(typ:xbw;	pattern:'gia';			   	output:'j';    			  	bump:1),
	(typ:xbw;	pattern:'gib';			   	output:'j';    			  	bump:1),
	(typ:xbw;	pattern:'gin';			   	output:'j';    			  	bump:1),
	(typ:xbw;	pattern:'gio';			   	output:'j';    			  	bump:1),
	(typ:xbw;	pattern:'gis';			   	output:'j';    			  	bump:1),
	(typ:xbw;	pattern:'gyn';			   	output:'g.n';    			  bump:3),
	(typ:xbw;	pattern:'ice';			   	output:'.s'; 		 			  bump:3),
	(typ:xbw;	pattern:'ign';					output:'.gn';   			 	bump:3),
	(typ:xbw;	pattern:'kle';					output:'kl.';   			 	bump:3),
	(typ:xbw;	pattern:'mac';					output:'m.k'; 	  			bump:3),
	(typ:xbw;	pattern:'mcg';					output:'m.g'; 	  			bump:3),
	(typ:xbw;	pattern:'ohm';					output:'.m'; 	  			 	bump:3),
	(typ:xbw;	pattern:'omb';					output:'.mb'; 	  			bump:3),
	(typ:xbw;	pattern:'one';			   	output:'w.n'; 	 			  bump:3),
	(typ:xbw;	pattern:'pew';			   	output:'p.'; 		 			  bump:3),
	(typ:xbw;	pattern:'sch';			   	output:'sh'; 		 			  bump:3),
	(typ:xbw;	pattern:'tao';			   	output:'d.'; 		 			  bump:3),
	(typ:xbw;	pattern:'tex';			   	output:'t.ks'; 	 			  bump:3),
	(typ:xbw;	pattern:'tia';			   	output:'t.'; 		 			  bump:3),
	(typ:xbw;	pattern:'two';			   	output:'t.';     			  bump:3),
	(typ:xbw;	pattern:'veh';			   	output:'v.';     			  bump:3),
	(typ:xbw;	pattern:'xav';			   	output:'z';     			  bump:1),
	(typ:xbw;	pattern:'xen';			   	output:'z';     			  bump:1),
	(typ:xbw;	pattern:'xer';			   	output:'z';     			  bump:1),
	(typ:xbw;	pattern:'xyl';			   	output:'z';     			  bump:1),

	(typ:xbw;	pattern:'gi';				   	output:'g';      				bump:1),
	(typ:xbw;	pattern:'kh';				   	output:'k';      				bump:2),
	(typ:xbw;	pattern:'mc';				   	output:'m.k';    				bump:2),
	(typ:xbw;	pattern:'pn';				   	output:'n';      			  bump:2),
	(typ:xbw;	pattern:'ps';				   	output:'s';      			  bump:2),
	(typ:xbw;	pattern:'pt';				   	output:'t';      			  bump:2),
	(typ:xbw;	pattern:'rh';				   	output:'r';      			  bump:2),
	(typ:xbw;	pattern:'un';				   	output:'.n';     			  bump:2),
	(typ:xbw;	pattern:'up';				   	output:'.p';     			  bump:2),
	(typ:xbw;	pattern:'y';				   	output:'y';      			  bump:1),
	(typ:xbw;	pattern:'z';				   	output:'z';      			  bump:1),

	// end-of-word rules

	(typ:xew;	pattern:'icklest';	    output:'.k.l.st'; 			bump:7),

	(typ:xew;	pattern:'combed';	      output:'k.md'; 				  bump:6),
	(typ:xew;	pattern:'eaches';	      output:'.ch.s'; 			  bump:6),
	(typ:xew;	pattern:'ements';	      output:'m.nts'; 			  bump:6),
	(typ:xew;	pattern:'ickler';	      output:'.k.l.r'; 			  bump:6),
	(typ:xew;	pattern:'jagged';	      output:'j.g.d'; 			  bump:6),
	(typ:xew;	pattern:'legged';	      output:'l.g.d'; 			  bump:6),
	(typ:xew;	pattern:'monias';		   	output:'m.ny.s';    		bump:6),
	(typ:xew;	pattern:'taches';	      output:'t.ch.s'; 			  bump:6),

	(typ:xew;	pattern:'actly';	      output:'.kl.'; 				  bump:5),
	(typ:xew;	pattern:'anges';	      output:'.nj.s'; 			  bump:5),
	(typ:xew;	pattern:'archy';	      output:'.rk.';	 			  bump:5),
	(typ:xew;	pattern:'blest';	      output:'bl.st'; 			  bump:5),
	(typ:xew;	pattern:'ceses';	      output:'s.s.s'; 			  bump:5),
	(typ:xew;	pattern:'ement';	      output:'m.nt'; 			  	bump:5),
	(typ:xew;	pattern:'enses';	      output:'.ns.s'; 			  bump:5),
	(typ:xew;	pattern:'monia';		   	output:'m.ny.';    			bump:5),
	(typ:xew;	pattern:'quing';		   	output:'k.ng';    			bump:5),
	(typ:xew;	pattern:'tches';	      output:'ch.s'; 				  bump:5),
	(typ:xew;	pattern:'tices';		   	output:'t.s.s';  			  bump:5),

	(typ:xew;	pattern:'acts';	      	output:'.ks';    			  bump:4),
	(typ:xew;	pattern:'acne';	      	output:'.kn.';    		  bump:4),
	(typ:xew;	pattern:'bach';		   		output:'b.k'; 		 	  	bump:4),
	(typ:xew;	pattern:'ches';		   		output:'ch.s'; 		 	  	bump:4),
	(typ:xew;	pattern:'cled';		   		output:'k.ld'; 		 	  	bump:4),
	(typ:xew;	pattern:'cles';		   		output:'k.ls'; 		 	  	bump:4),
	(typ:xew;	pattern:'dred';		   		output:'dr.d'; 		 	  	bump:4),
	(typ:xew;	pattern:'dres';		   		output:'dr.s'; 		 	  	bump:4),
	(typ:xew;	pattern:'ects';		   		output:'.ks'; 		 	  	bump:4),
	(typ:xew;	pattern:'eles';		   		output:'.l.s'; 		 	  	bump:4),
	(typ:xew;	pattern:'fled';	      	output:'f.ld';    			bump:4),
	(typ:xew;	pattern:'fles';	      	output:'f.ls';    			bump:4),
	(typ:xew;	pattern:'mned';	      	output:'md';    			  bump:4),
	(typ:xew;	pattern:'mnly';	      	output:'ml.';    			  bump:4),
	(typ:xew;	pattern:'pled';	      	output:'p.ld';   			  bump:4),
	(typ:xew;	pattern:'ples';	      	output:'p.ls';   			  bump:4),
	(typ:xew;	pattern:'qued';	      	output:'kd';	 			    bump:4),
	(typ:xew;	pattern:'ques';	      	output:'ks';	 			    bump:4),
	(typ:xew;	pattern:'sced';	      	output:'.sd';    				bump:4),
	(typ:xew;	pattern:'sces';	      	output:'s.s';   				bump:4),
	(typ:xew;	pattern:'shes';	      	output:'sh.s';    			bump:4),
	(typ:xew;	pattern:'ssis';	      	output:'s.s'; 	   			bump:4),
	(typ:xew;	pattern:'tsia';	      	output:'s.';    				bump:4),
	(typ:xew;	pattern:'zzas';	      	output:'ts.s';	 			  bump:4),

	(typ:xse;	pattern:'use';					output:'.s'; 				  	bump:3),

	(typ:xew;	pattern:'ape';				  output:'.p';  		   	  bump:3),
	(typ:xew;	pattern:'cle';	      	output:'k.l';	 			 		bump:3),
	(typ:xew;	pattern:'cre';	      	output:'k.r';	 			 		bump:3),
	(typ:xew;	pattern:'cts';	      	output:'ks';	 			 		bump:3),
	(typ:xew;	pattern:'ded';	      	output:'d.d';	 			 		bump:3),
	(typ:xew;	pattern:'dre';	      	output:'dr.';	 			 		bump:3),
	(typ:xew;	pattern:'ely';	      	output:'l.';    			  bump:3),
	(typ:xew;	pattern:'ews';	      	output:'.s';	 			 		bump:3),
	(typ:xew;	pattern:'fle';	      	output:'f.l';	 			 		bump:3),
	(typ:xew;	pattern:'ges';	      	output:'j.s';     			bump:3),
	(typ:xew;	pattern:'jah';	      	output:'j.'; 	    			bump:3),
	(typ:xew;	pattern:'mbs';	      	output:'ms';    			  bump:3),
	(typ:xew;	pattern:'mns';	      	output:'ms';    			  bump:3),
	(typ:xew;	pattern:'obe';	      	output:'.b';	 			    bump:3),
	(typ:xew;	pattern:'ple';	      	output:'p.l';	 			    bump:3),
	(typ:xew;	pattern:'pts';	      	output:'ps';	 			    bump:3),
	(typ:xew;	pattern:'que';	      	output:'k';	 			    	bump:3),
	(typ:xew;	pattern:'sce';	      	output:'.s';	 			    bump:3),
	(typ:xew;	pattern:'ses';	      	output:'s.s';	 			    bump:3),
	(typ:xew;	pattern:'sia';	      	output:'sh.';	 			    bump:3),
	(typ:xew;	pattern:'ted';	      	output:'t.d';	 			    bump:3),
	(typ:xew;	pattern:'tia';	      	output:'sh.';	 			    bump:3),
	(typ:xew;	pattern:'xes';	      	output:'ks.s';	 		    bump:3),
	(typ:xew;	pattern:'zes';	      	output:'s.s';	 			    bump:3),
	(typ:xew;	pattern:'zza';	      	output:'ts.';	 			    bump:3),
	(typ:xew;	pattern:'zzi';	      	output:'ts.';	 			    bump:3),
	(typ:xew;	pattern:'zzo';	      	output:'ts.';	 			    bump:3),
	(typ:xew;	pattern:'ah';	        	output:'.';		 			    bump:2),
	(typ:xew;	pattern:'ed';	        	output:'d';		 			    bump:2),
	(typ:xew;	pattern:'eh';	        	output:'.';		 			    bump:2),
	(typ:xew;	pattern:'es';	        	output:'s';		 			    bump:2),
	(typ:xew;	pattern:'ew';	        	output:'.';		 			    bump:2),
	(typ:xew;	pattern:'gy';	        	output:'j.';		 			  bump:2),
	(typ:xew;	pattern:'mb';	        	output:'m';		 			    bump:2),
	(typ:xew;	pattern:'mn';	        	output:'m';		 			    bump:2),
	(typ:xew;	pattern:'se';	        	output:'s';		 			    bump:2),
	(typ:xew;	pattern:'e';		      	output:'';					 		bump:1),

	// silent-e rules

	// eleven-letter rules

	(typ:xnw;	pattern:'exhortation';		output:'.ks.rt.sh.n'; bump:11),

	// ten-letter rules

	(typ:xnw;	pattern:'exhibition';		output:'.ks.b.sh.n';    bump:10),
	(typ:xnw;	pattern:'exultation';		output:'.ks.lt.sh.n';   bump:10),

	// nine-letter rules

	(typ:xnw;	pattern:'aborigine';		output:'.b.r.j.n.';  	  bump:9),
	(typ:xnw;	pattern:'christian';		output:'kr.sch.n';  	  bump:9),
	(typ:xnw;	pattern:'christmas';		output:'kr.s'; 	 	  		bump:6),
	(typ:xnw;	pattern:'executive';		output:'.gs';  					bump:2),
	(typ:xnw;	pattern:'phernalia';		output:'f.n.ly.';	  		bump:9),
	(typ:xnw;	pattern:'righteous';		output:'r.ch.s';	  		bump:9),

	(typ:xnw;	pattern:'encephalo';		output:'.ns.fl.'; 	 	 	bump:9),
	(typ:xnw;	pattern:'forestall';		output:'f.rst.l'; 	 		bump:9),
	(typ:xnw;	pattern:'sheepherd';		output:'sh.p'; 	 				bump:5),

	// eight-letter rules

	(typ:xnw;	pattern:'bachelor';	   	output:'b.chl.r';       bump:8),
	(typ:xnw;	pattern:'battling';	  	output:'b.tl.ng';		 	  bump:8),
	(typ:xnw;	pattern:'budgeted';	  	output:'b.j.t.d';			 	bump:8),
	(typ:xnw;	pattern:'changing';			output:'ch.nj.ng';   	  bump:8),
	(typ:xnw;	pattern:'christen';	   	output:'kr.s.n';        bump:8),
	(typ:xnw;	pattern:'conscien';			output:'k.nsh'; 	 	 		bump:5),
	(typ:xnw;	pattern:'consigna';	  	output:'k.ns.n'; 	 	  	bump:7),
	(typ:xnw;	pattern:'cringing';	   	output:'kr.nj.ng';      bump:8),
	(typ:xnw;	pattern:'daiquiri';			output:'d.k.r.'; 	 	  	bump:8),
	(typ:xnw;	pattern:'encephal';			output:'.ns.f.l'; 	 	 	bump:8),
	(typ:xnw;	pattern:'flanging';			output:'fl.nj.ng';   	  bump:8),
	(typ:xnw;	pattern:'forensic';			output:'f.r.ns.k'; 	 	  bump:8),
	(typ:xnw;	pattern:'fringing';	   	output:'fr.nj.ng';      bump:8),
	(typ:xnw;	pattern:'ouetting';				output:'.w.t.ng'; 	  bump:8),
	(typ:xnw;	pattern:'shepherd';	   	output:'sh.p';       		bump:5),
	(typ:xnw;	pattern:'shoulder';	   	output:'sh.ld.r';    		bump:8),
	(typ:xnw;	pattern:'subtlest';			output:'s.tl.st';   	  bump:8),
	(typ:xnw;	pattern:'thorough';	   	output:'th.r.';  	      bump:8),

	// seven-letter rules

	(typ:xnw;	pattern:'actment';	  	output:'.km.nt';		 	  bump:7),
	(typ:xnw;	pattern:'borough';	  	output:'b.r.';			 	  bump:7),
	(typ:xnw;	pattern:'buckler';	  	output:'b.kl.r';			 	bump:7),
	(typ:xnw;	pattern:'busines';	   	output:'b.sn.s';        bump:7),
	(typ:xnw;	pattern:'cabinet';	  	output:'k.bn.t'; 		 	  bump:7),
	(typ:xnw;	pattern:'chateau';	  	output:'sh.t.'; 		 	  bump:7),
	(typ:xnw;	pattern:'catalog';	  	output:'k.t.l.g'; 		 	bump:7),
	(typ:xnw;	pattern:'cellist';	  	output:'ch.l.st'; 		 	bump:7),
	(typ:xnw;	pattern:'chagrin';	  	output:'sh.gr.n'; 		 	bump:7),
	(typ:xnw;	pattern:'chances';	  	output:'ch.ns.s'; 		 	bump:7),
	(typ:xnw;	pattern:'charade';	  	output:'sh.r.d'; 		 		bump:7),
	(typ:xnw;	pattern:'charles';		  output:'ch.rls'; 				bump:7),
	(typ:xnw;	pattern:'chassid';		  output:'h.s.d'; 				bump:7),
	(typ:xnw;	pattern:'combing';	  	output:'k.m.ng'; 		 	  bump:7),
	(typ:xnw;	pattern:'cordial';	  	output:'k.rj.l'; 		 	  bump:7),
	(typ:xnw;	pattern:'crement';	  	output:'kr.';				 	  bump:3),
	(typ:xnw;	pattern:'crochet';	  	output:'kr.sh.';		 	  bump:7),
	(typ:xnw;	pattern:'crooked';	  	output:'kr.k.d';		 	  bump:7),
	(typ:xnw;	pattern:'croquet';	  	output:'kr.k.';			 	  bump:7),
	(typ:xnw;	pattern:'d''oeuvre';	  	output:'d.rv';			 	bump:7),
	(typ:xnw;	pattern:'douches';				output:'d.sh.s';	    bump:5),
	(typ:xnw;	pattern:'dungeon';			output:'d.nj.n';		    bump:7),
	(typ:xnw;	pattern:'earches';			output:'.rch.s';	 	 	  bump:7),
	(typ:xnw;	pattern:'enement';	  	output:'.n.';				 	  bump:3),
	(typ:xnw;	pattern:'enesses';			output:'n.s.s';  	 	    bump:7),
	(typ:xnw;	pattern:'flaccid';	  	output:'fl.s.d';			 	bump:7),
	(typ:xnw;	pattern:'flagell';	  	output:'fl.j.l';			 	bump:7),
	(typ:xnw;	pattern:'forever';	  	output:'f.r.v.r';			 	bump:7),
	(typ:xnw;	pattern:'fortune';			output:'f.rch.n';  	   	bump:7),
	(typ:xnw;	pattern:'indless';	  	output:'.ndl.s';		 	  bump:7),
	(typ:xnw;	pattern:'ingless';	  	output:'.ngl.s';		 	  bump:7),
	(typ:xnw;	pattern:'ingness';	  	output:'.ngn.s';		 	  bump:7),
	(typ:xnw;	pattern:'gourmet';	  	output:'g.rm.';			 	  bump:7),
	(typ:xnw;	pattern:'guising';	  	output:'g';		 	  			bump:1),
	(typ:xnw;	pattern:'indling';	  	output:'.ndl.ng';		  	bump:7),
	(typ:xnw;	pattern:'ironies';	  	output:'.r.';			 	  	bump:3),
	(typ:xnw;	pattern:'kinderg';			output:'k.nd.';					bump:6),
	(typ:xnw;	pattern:'languag';	  	output:'l.ngw.';		 	  bump:6),   // overrides lang and gua rules
	(typ:xnw;	pattern:'machine';	  	output:'m.sh.n';		 	  bump:7),
	(typ:xnw;	pattern:'moisten';	  	output:'m.s.n';		  	  bump:7),
	(typ:xnw;	pattern:'ophthal';				output:'.pth.';  	 	  bump:7),
	(typ:xnw;	pattern:'ouetted';				output:'.w.t.d'; 	    bump:7),
	(typ:xnw;	pattern:'plement';	  	output:'pl.';				 	  bump:3),
	(typ:xnw;	pattern:'ranging';			output:'r.nj.ng';   	  bump:7),
	(typ:xnw;	pattern:'residua';				output:'r.s.j.';  		bump:7),
	(typ:xnw;	pattern:'sadduce';				output:'s.j.s.';  		bump:7),
	(typ:xnw;	pattern:'soldier';	  	output:'s.lj.r';		 	  bump:7),
	(typ:xnw;	pattern:'subtler';			output:'s.tl.r';   	  	bump:7),
	(typ:xnw;	pattern:'teboard';	  	output:'t';			  			bump:2),
	(typ:xnw;	pattern:'tetanus';	  	output:'t.tn.s';				bump:7),
	(typ:xnw;	pattern:'theless';	  	output:'th.l.s';			  bump:7),
	(typ:xnw;	pattern:'through';	  	output:'thr.';			 	  bump:7),
	(typ:xnw;	pattern:'tickler';	  	output:'t.kl.r';			 	  bump:7),
	(typ:xnw;	pattern:'untless';	  	output:'.ntl.s';			 	bump:7),

	// six-letter rules

	(typ:xnw;	pattern:'angina';				output:'.nj.n.';   	    bump:6),
	(typ:xnw;	pattern:'anging';				output:'.ng.ng';   	    bump:6),
	(typ:xnw;	pattern:'angler';				output:'.ngl.r';   	    bump:6),
	(typ:xnw;	pattern:'answer';				output:'.ns.r';  	 	    bump:6),
	(typ:xnw;	pattern:'assump';				output:'.s.m';  	 	    bump:6),
	(typ:xnw;	pattern:'asthma';				output:'.sm.'; 	 	 	  	bump:6),
	(typ:xnw;	pattern:'atelin';				output:'.tl.n';  	 	    bump:6),
	(typ:xnw;	pattern:'bangle';		   	output:'b.ng.l';   	 		bump:6),
	(typ:xnw;	pattern:'briand';				output:'br.n';	 	   		bump:6),
	(typ:xnw;	pattern:'bronch';				output:'br.nk';	 	   		bump:6),
	(typ:xnw;	pattern:'brough';				output:'br.';	 	   			bump:6),
	(typ:xnw;	pattern:'buckle';				output:'b.k.l';	 	   		bump:6),
	(typ:xnw;	pattern:'budget';				output:'b.j.t';	 	   		bump:6),
	(typ:xnw;	pattern:'burger';				output:'b.rg.r'; 				bump:6),
	(typ:xnw;	pattern:'caches';				output:'k.sh.s'; 	 		  bump:6),
	(typ:xnw;	pattern:'camera';				output:'k.mr.'; 	 		  bump:6),
	(typ:xnw;	pattern:'cateur';				output:'k.t.r'; 	 		  bump:6),
	(typ:xnw;	pattern:'celtic';				output:'s.lt.k'; 	 		  bump:6),   // basketball team
	(typ:xnw;	pattern:'chalet';				output:'sh.l.';   	    bump:6),
	(typ:xnw;	pattern:'chance';				output:'ch.ns';   	    bump:5),
	(typ:xnw;	pattern:'chapar';				output:'sh.p.r';   	    bump:6),
	(typ:xnw;	pattern:'chaper';				output:'sh.p.r';   	    bump:6),
	(typ:xnw;	pattern:'charis';				output:'k.r.s';   	    bump:6),
	(typ:xnw;	pattern:'charla';				output:'sh.rl.';   	    bump:6),
	(typ:xnw;	pattern:'christ';				output:'kr';   	    		bump:3),
	(typ:xnw;	pattern:'ckless';				output:'kl.s'; 	    		bump:6),
	(typ:xnw;	pattern:'cliche';				output:'kl.sh.';   	    bump:6),
	(typ:xnw;	pattern:'clothe';				output:'kl.s';  	 	    bump:6),
	(typ:xnw;	pattern:'comple';				output:'k.mpl.'; 	 	    bump:6),
	(typ:xnw;	pattern:'comptr';				output:'k.ntr';	   	    bump:6),
	(typ:xnw;	pattern:'ctness';				output:'k';	 	  	  		bump:2),
	(typ:xnw;	pattern:'culiar';				output:'k.ly.r';   	    bump:6),
	(typ:xnw;	pattern:'daybed';				output:'d.b.d';		   	  bump:6),
	(typ:xnw;	pattern:'debuta';				output:'d.b.t.'; 				bump:6),
	(typ:xnw;	pattern:'drawal';				output:'dr.l'; 					bump:6),
	(typ:xnw;	pattern:'duling';				output:'j.l.ng'; 	 	    bump:6),
	(typ:xnw;	pattern:'dulous';				output:'j.l.s';  	 	    bump:6),
	(typ:xnw;	pattern:'eaglet';				output:'.gl.t'; 				bump:6),
	(typ:xnw;	pattern:'ectnes';	  		output:'.k';				 		bump:3),
	(typ:xnw;	pattern:'enough';				output:'.n.f';  	 	    bump:6),
	(typ:xnw;	pattern:'fascis';				output:'f.sh.s';   	    bump:6),
	(typ:xnw;	pattern:'februa';				output:'f.b.';  	 	    bump:6),
	(typ:xnw;	pattern:'fiches';				output:'f.sh.s'; 			  bump:6),
	(typ:xnw;	pattern:'ficing';				output:'f.s.ng'; 			  bump:6),
	(typ:xnw;	pattern:'finale';				output:'f.n.l.';   	    bump:6),
	(typ:xnw;	pattern:'forest';				output:'f.r.';   	    	bump:4),
	(typ:xnw;	pattern:'forget';				output:'f.rg.t';   	   	bump:6),
	(typ:xnw;	pattern:'fortun';				output:'f.rch.n';  	   	bump:6),
	(typ:xnw;	pattern:'garine';				output:'j.r.n';  	 	    bump:6),
	(typ:xnw;	pattern:'garten';				output:'g.rd.n'; 			  bump:6),
	(typ:xnw;	pattern:'gartne';				output:'g.rdn.'; 			  bump:6),
	(typ:xnw;	pattern:'gentle';				output:'j.nt.l';  	 	  bump:6),
	(typ:xnw;	pattern:'getown';				output:'jt.n';  	 	    bump:6),
	(typ:xnw;	pattern:'graham';				output:'gr.m';  	 	    bump:6),
	(typ:xnw;	pattern:'guttur';				output:'g.t.r';  	 	    bump:6),
	(typ:xnw;	pattern:'headed';				output:'h.d.d';  	 	    bump:6),
	(typ:xnw;	pattern:'honest';				output:'.';  	 	    		bump:1),
	(typ:xnw;	pattern:'iggler';				output:'.gl.r';   	    bump:6),
	(typ:xnw;	pattern:'imager';				output:'.m.jr';   	    bump:6),
	(typ:xnw;	pattern:'indict';				output:'.nd.';  	 	    bump:5),
	(typ:xnw;	pattern:'indler';				output:'.ndl.r';   	    bump:6),
	(typ:xnw;	pattern:'inging';				output:'.ng.ng';   	    bump:6),
	(typ:xnw;	pattern:'ironic';				output:'.r.'; 	  	    bump:3),
	(typ:xnw;	pattern:'legles';				output:'l.gl.s';   	    bump:6),
	(typ:xnw;	pattern:'lesses';				output:'l.s.s';   	    bump:6),
	(typ:xnw;	pattern:'likeli';				output:'l.k';  	 	    	bump:4),
	(typ:xnw;	pattern:'listen';				output:'l.s.n';  	 	    bump:6),
	(typ:xnw;	pattern:'longev';				output:'l.nj';  	 	    bump:4),
	(typ:xnw;	pattern:'longit';				output:'l.nj';  	 	    bump:4),
	(typ:xnw;	pattern:'messia';				output:'m.s';	   	    	bump:4),
	(typ:xnw;	pattern:'miliar';				output:'m.ly.r';   	    bump:6),
	(typ:xnw;	pattern:'mption';				output:'msh.n';  	 	    bump:6),
	(typ:xnw;	pattern:'ninged';				output:'n.ngd';  	 	    bump:6),
	(typ:xnw;	pattern:'number';				output:'n.mb.r';   	    bump:6),
	(typ:xnw;	pattern:'oaches';		   	output:'.ch.s';  	 		  bump:6),
	(typ:xnw;	pattern:'oubted';				output:'.t.d';  	 	    bump:6),
	(typ:xnw;	pattern:'ouette';				output:'.w.t';  	 	    bump:6),
	(typ:xnw;	pattern:'quitou';				output:'kw.t.';  	 	    bump:6),
	(typ:xnw;	pattern:'phragm';				output:'fr.m';  	 	    bump:6),
	(typ:xnw;	pattern:'scendo';				output:'sh.nd.';   	    bump:6),
	(typ:xnw;	pattern:'sclero';				output:'skl.r.';   	    bump:6),
	(typ:xnw;	pattern:'should';				output:'sh.d';	  	 	  bump:6),
	(typ:xnw;	pattern:'simile';				output:'s.m.l.';	 	 	  bump:6),
	(typ:xnw;	pattern:'solder';				output:'s.d.r';	 		 	  bump:6),
	(typ:xnw;	pattern:'stless';				output:'sl.s';  	 	    bump:6),
	(typ:xnw;	pattern:'stling';				output:'sl.ng';   	 	  bump:6),
	(typ:xnw;	pattern:'subtle';				output:'s.t.l';   	  	bump:6),
	(typ:xnw;	pattern:'subtly';				output:'s.tl.';   	  	bump:6),
	(typ:xnw;	pattern:'surate';				output:'s.r.t';   	  	bump:6),
	(typ:xnw;	pattern:'though';				output:'th.';  		 	    bump:6),
	(typ:xnw;	pattern:'trophe';				output:'tr.f.'; 	 	    bump:6),
	(typ:xnw;	pattern:'umbler';				output:'.mbl.r';	 	  	bump:6),
	(typ:xnw;	pattern:'unches';				output:'.nch.s';	 	  	bump:6),
	(typ:xnw;	pattern:'zzeria';				output:'ts.r.';	 	  		bump:6),

	// five-letter rules

	(typ:xnw;	pattern:'alion';				output:'.ly.n'; 		 	  bump:5),
	(typ:xnw;	pattern:'ancel';				output:'.ns.l';  	 	    bump:5),
	(typ:xnw;	pattern:'ancer';				output:'.ns.r';  	 	    bump:5),
	(typ:xnw;	pattern:'ances';	      output:'.ns.s'; 			  bump:5),
	(typ:xnw;	pattern:'angle';				output:'.ng.l';  	 	    bump:5),
	(typ:xnw;	pattern:'angui';				output:'.ngw.';  	 	    bump:5),
	(typ:xnw;	pattern:'antle';				output:'.nt.l';  	 	    bump:5),
	(typ:xnw;	pattern:'apple';				output:'.p.l';  	 	    bump:5),
	(typ:xnw;	pattern:'archa';				output:'.rk.';  	 	    bump:5),
	(typ:xnw;	pattern:'archi';				output:'.rk.';  	 	    bump:5),
	(typ:xnw;	pattern:'assoc';				output:'.s.sh';  	 	    bump:5),
	(typ:xnw;	pattern:'asten';				output:'.s.n';  	 	    bump:5),
	(typ:xnw;	pattern:'aught';				output:'.t';  	 		   	bump:5),
	(typ:xnw;	pattern:'awyer';		   	output:'.y.r';   		 		bump:5),
	(typ:xnw;	pattern:'baugh';				output:'b.';  	 	    	bump:5),
	(typ:xnw;	pattern:'beget';				output:'b.g.t';  	 	    bump:5),
	(typ:xnw;	pattern:'begin';				output:'b.g.n';  	 	    bump:5),
	(typ:xnw;	pattern:'blame';				output:'bl.m';  	 	    bump:5),
	(typ:xnw;	pattern:'bleed';				output:'bl.d';	   	    bump:5),
	(typ:xnw;	pattern:'bless';				output:'bl.s';	   	    bump:5),
	(typ:xnw;	pattern:'bogey';				output:'b.g.';  	 	    bump:5),
	(typ:xnw;	pattern:'bomba';				output:'b.mb.';  	 	    bump:5),
	(typ:xnw;	pattern:'bough';				output:'b.'; 		 	 	    bump:5),
	(typ:xnw;	pattern:'break';				output:'br.k'; 	 	 	    bump:5),
	(typ:xnw;	pattern:'broch';				output:'br.sh';  	 	    bump:5),
	(typ:xnw;	pattern:'calve';				output:'k.v'; 	 	 	    bump:5),
	(typ:xnw;	pattern:'caulk';				output:'k.k';  		 	    bump:5),
	(typ:xnw;	pattern:'cedur';				output:'s.j.r';  		 	  bump:5),
	(typ:xnw;	pattern:'ceipt';				output:'s.';  		 	  	bump:4),
	(typ:xnw;	pattern:'celet';				output:'sl.t';  		 	  bump:5),
	(typ:xnw;	pattern:'celli';				output:'ch.l.';  	 	    bump:5),
	(typ:xnw;	pattern:'cello';				output:'ch.l.';  	 	    bump:5),
	(typ:xnw;	pattern:'certo';				output:'ch.rt.';   	    bump:5),
	(typ:xnw;	pattern:'chais';				output:'sh.'; 	 		    bump:4),
	(typ:xnw;	pattern:'chala';				output:'sh.l.';  	 	    bump:5),
	(typ:xnw;	pattern:'chald';				output:'k.ld';  	 	    bump:5),
	(typ:xnw;	pattern:'chame';				output:'k.m.';  	 	    bump:5),
	(typ:xnw;	pattern:'chamo';				output:'k.m.';  	 	    bump:5),
	(typ:xnw;	pattern:'chara';				output:'k.r.';  	 	    bump:5),
	(typ:xnw;	pattern:'chasm';				output:'k.sm';  	 	    bump:5),
	(typ:xnw;	pattern:'chial';				output:'k';  	 	    		bump:2),
	(typ:xnw;	pattern:'choir';				output:'kw.r';  	 	    bump:5),
	(typ:xnw;	pattern:'chaun';				output:'k.n';  		 	    bump:5),
	(typ:xnw;	pattern:'chiro';				output:'k.r.';  	 	    bump:5),
	(typ:xnw;	pattern:'cious';				output:'sh.s';  	 	    bump:5),
	(typ:xnw;	pattern:'ciple';				output:'s.p.l';  	 	    bump:5),
	(typ:xnw;	pattern:'ckler';				output:'kl.r';  	 	    bump:5),
	(typ:xnw;	pattern:'clang';				output:'kl.ng';	   	    bump:5),
	(typ:xnw;	pattern:'climb';				output:'kl.m';	   	    bump:5),
	(typ:xnw;	pattern:'cling';				output:'kl.ng';	   	    bump:5),
	(typ:xnw;	pattern:'cliqu';				output:'kl.k';	   	    bump:5),
	(typ:xnw;	pattern:'cloth';				output:'kl.th';	   	    bump:5),
	(typ:xnw;	pattern:'cocci';				output:'k.k.';	   	   	bump:5),
	(typ:xnw;	pattern:'comba';				output:'k.mb.';	   	   	bump:5),
	(typ:xnw;	pattern:'combe';				output:'k.m.';	   	    bump:5),
	(typ:xnw;	pattern:'combi';				output:'k.mb.';	   	    bump:5),
	(typ:xnw;	pattern:'combo';				output:'k.mb.';	   	    bump:5),
	(typ:xnw;	pattern:'conch';				output:'k.nk';	   	    bump:5),
	(typ:xnw;	pattern:'cough';				output:'k.f';	  	 	    bump:5),
	(typ:xnw;	pattern:'could';				output:'k.d';	  	 	    bump:5),
	(typ:xnw;	pattern:'czech';				output:'ch.k';	   	    bump:5),
	(typ:xnw;	pattern:'debut';				output:'d.b.'; 				  bump:5),
	(typ:xnw;	pattern:'depot';				output:'d.p.';	   	    bump:5),
	(typ:xnw;	pattern:'dless';				output:'dl.s';	   	    bump:5),
	(typ:xnw;	pattern:'douch';				output:'d.sh';	 	 	    bump:5),
	(typ:xnw;	pattern:'dough';				output:'d.';	  	 	    bump:5),
	(typ:xnw;	pattern:'dular';				output:'j.l.r';	   	    bump:5),
	(typ:xnw;	pattern:'dulat';				output:'j.l.';  	 	    bump:4),
	(typ:xnw;	pattern:'dulum';				output:'j.l.m';	   	    bump:5),
	(typ:xnw;	pattern:'duous';				output:'j.s';		  	 	  bump:5),
	(typ:xnw;	pattern:'eagle';				output:'.g.l';	 	 	    bump:4),
	(typ:xnw;	pattern:'eague';				output:'.g';	  	 	    bump:4),
	(typ:xnw;	pattern:'earch';				output:'.rch';	 	 	    bump:5),
	(typ:xnw;	pattern:'easle';				output:'.s.l';	 	 	    bump:4),
	(typ:xnw;	pattern:'eaves';				output:'.vs';	  	 	    bump:5),
	(typ:xnw;	pattern:'ectly';				output:'.kl.';	  	 	  bump:5),
	(typ:xnw;	pattern:'edges';				output:'.j.s';	  	 	  bump:5),
	(typ:xnw;	pattern:'educa';				output:'.j.';	  	 	    bump:3),
	(typ:xnw;	pattern:'eiger';				output:'.g.r';	 	 	    bump:5),
	(typ:xnw;	pattern:'empts';				output:'.mps'; 				  bump:5),
	(typ:xnw;	pattern:'encer';				output:'.ns.r'; 				bump:5),
	(typ:xnw;	pattern:'ences';				output:'.ns.s'; 				bump:5),
	(typ:xnw;	pattern:'eness';				output:''; 				  		bump:1),
	(typ:xnw;	pattern:'engel';				output:'.ng.l';	  	 	  bump:5),
	(typ:xnw;	pattern:'esque';				output:'.sk';		  	 	  bump:5),
	(typ:xnw;	pattern:'exion';				output:'.ksh.n';	 	 	  bump:5),
	(typ:xnw;	pattern:'ewing';				output:'.ng';	 		 	 	  bump:5),
	(typ:xnw;	pattern:'exagg';				output:'.gs.j';	 		 	  bump:5),
	(typ:xnw;	pattern:'exert';				output:'.gs';			 			bump:2),
	(typ:xnw;	pattern:'exhal';				output:'.ksh.l';			 	bump:5),
	(typ:xnw;	pattern:'exorb';				output:'.gs';				 	  bump:2),
	(typ:xnw;	pattern:'exual';				output:'.ksh.l';		 	  bump:5),
	(typ:xnw;	pattern:'ffler';				output:'fl.r';  	 	    bump:5),
	(typ:xnw;	pattern:'fiche';				output:'f.sh'; 			  	bump:5),
	(typ:xnw;	pattern:'ficit';				output:'f.s.t'; 				bump:5),
	(typ:xnw;	pattern:'flagg';				output:'fl.g'; 					bump:5),
	(typ:xnw;	pattern:'gagor';				output:'g.j.r';  	  		bump:5),
	(typ:xnw;	pattern:'garch';				output:'g.rk';  	  		bump:5),
	(typ:xnw;	pattern:'gerie';				output:'j';  		 	  		bump:1),
	(typ:xnw;	pattern:'ggler';				output:'gl.r';  		 	  bump:5),
	(typ:xnw;	pattern:'gness';				output:'gn.s';  	 	    bump:5),
	(typ:xnw;	pattern:'gotia';				output:'g.sh.';  	 	    bump:5),
	(typ:xnw;	pattern:'guber';				output:'g.b.';  	 	    bump:5),
	(typ:xnw;	pattern:'guise';				output:'g'; 	 		 	    bump:1),
	(typ:xnw;	pattern:'guish';				output:'gw.';  	 	    	bump:3),
	(typ:xnw;	pattern:'handk';				output:'h.nk';  	 	    bump:5),
	(typ:xnw;	pattern:'honor';				output:'.n.r';  	 	    bump:5),
	(typ:xnw;	pattern:'iarch';				output:'.rk';	  	 	    bump:5),
	(typ:xnw;	pattern:'ictly';				output:'.kl.';	  	 	  bump:5),
	(typ:xnw;	pattern:'idges';				output:'.j.s';	  	 	  bump:5),
	(typ:xnw;	pattern:'iggle';				output:'.g.l';	  	 	  bump:5),
	(typ:xnw;	pattern:'ignan';				output:'.g';	  	 	  	bump:2),
	(typ:xnw;	pattern:'ignit';				output:'.g';	  	 	  	bump:2),
	(typ:xnw;	pattern:'ilien';				output:'.ly.n'; 		 	  bump:5),
	(typ:xnw;	pattern:'ilion';				output:'.ly.n'; 		 	  bump:5),
	(typ:xnw;	pattern:'indle';				output:'.nd.l';   	    bump:5),
	(typ:xnw;	pattern:'inger';				output:'.ng.r';	  	 	  bump:5),
	(typ:xnw;	pattern:'iquet';				output:'.k.t';	 	 	  	bump:5),
	(typ:xnw;	pattern:'irony';				output:'.r.';	  	 	  	bump:3),
	(typ:xnw;	pattern:'issue';				output:'.sh.';	 	 	  	bump:5),
	(typ:xnw;	pattern:'keler';				output:'kl.r';   	 		  bump:5),
	(typ:xnw;	pattern:'kless';				output:'kl.s';   	 		  bump:5),
	(typ:xnw;	pattern:'kness';				output:'k';   	 		  	bump:1),
	(typ:xnw;	pattern:'knote';				output:'kn.t';   	 		  bump:5),
	(typ:xnw;	pattern:'krieg';	   		output:'kr.g'; 	  		  bump:5),
	(typ:xnw;	pattern:'llion';				output:'ly.n'; 		 	    bump:5),
	(typ:xnw;	pattern:'lough';				output:'l.';  		 	    bump:5),
	(typ:xnw;	pattern:'mathe';				output:'m.th.';  	 	    bump:5),
	(typ:xnw;	pattern:'mblem';				output:'mbl.m';  	 	    bump:5),
	(typ:xnw;	pattern:'mbing';				output:'m.ng';  	 	    bump:5),
	(typ:xnw;	pattern:'mning';				output:'m.ng';  	 	    bump:5),
	(typ:xnw;	pattern:'mortg';				output:'m.r';  	 	   		bump:4),
	(typ:xnw;	pattern:'ncial';				output:'nsh.l';  	 	    bump:5),
	(typ:xnw;	pattern:'nctly';				output:'nkl.';	  	 	  bump:5),
	(typ:xnw;	pattern:'nihil';				output:'n.l';  		 	    bump:5),
	(typ:xnw;	pattern:'nivel';				output:'n.v.l'; 	 	    bump:5),
	(typ:xnw;	pattern:'odger';				output:'.j.r';  	 	    bump:5),
	(typ:xnw;	pattern:'odges';				output:'.j.s';  	 	    bump:5),
	(typ:xnw;	pattern:'often';				output:'.f.n';  	 	    bump:5),
	(typ:xnw;	pattern:'ombia';				output:'.mb.';  	 	    bump:5),
	(typ:xnw;	pattern:'owatt';				output:'.w.t';  	 	    bump:5),
	(typ:xnw;	pattern:'oween';				output:'.w.n';  	 	    bump:5),
	(typ:xnw;	pattern:'owher';		   	output:'.w.r';   	 			bump:5),
	(typ:xnw;	pattern:'owise';		   	output:'.w.s';   	 			bump:4),
	(typ:xnw;	pattern:'owitz';		   	output:'.w.ts';   	 		bump:4),
	(typ:xnw;	pattern:'owork';				output:'.w.rk';  	 	    bump:5),
	(typ:xnw;	pattern:'paque';				output:'p.k'; 	 	  		bump:5),
	(typ:xnw;	pattern:'pholo';				output:'f'; 	 	 	  		bump:2),
	(typ:xnw;	pattern:'plumb';				output:'pl.m';  	 	    bump:5),
	(typ:xnw;	pattern:'probl';				output:'pr.bl';  	 	    bump:5),
	(typ:xnw;	pattern:'proge';				output:'pr.j';  	 	    bump:4),
	(typ:xnw;	pattern:'qualm';				output:'kw.m'; 	 	 	    bump:5),
	(typ:xnw;	pattern:'quito';				output:'k.t.'; 	 	 	    bump:5),
	(typ:xnw;	pattern:'rarch';				output:'r.rk';     			bump:5),
	(typ:xnw;	pattern:'rivel';				output:'r.v.l'; 	 	    bump:5),
	(typ:xnw;	pattern:'rhand';				output:'r';  	 	    		bump:1),
	(typ:xnw;	pattern:'rhang';				output:'r';  	 	    		bump:1),
	(typ:xnw;	pattern:'rhaul';				output:'r';  	 	    		bump:1),
	(typ:xnw;	pattern:'rhead';				output:'r';  	 	    		bump:1),
	(typ:xnw;	pattern:'rhear';				output:'r';  	 	    		bump:1),
	(typ:xnw;	pattern:'rheat';				output:'r';  	 	    		bump:1),
	(typ:xnw;	pattern:'rhigh';				output:'r';  	 	    		bump:1),
	(typ:xnw;	pattern:'rhood';				output:'r';  	 	   			bump:1),
	(typ:xnw;	pattern:'rhuma';				output:'r';  	 	    		bump:1),
	(typ:xnw;	pattern:'rifle';				output:'r.f.l';  	 	    bump:5),
	(typ:xnw;	pattern:'sales';				output:'s.ls';  	 	    bump:5),
	(typ:xnw;	pattern:'salve';				output:'s.v';  		 	    bump:5),
	(typ:xnw;	pattern:'satia';				output:'s.sh.';  	 	    bump:5),
	(typ:xnw;	pattern:'sched';				output:'sk'; 		 	    	bump:3),
	(typ:xnw;	pattern:'schol';				output:'sk.l'; 		 	    bump:5),
	(typ:xnw;	pattern:'schoo';				output:'sk.'; 		 	    bump:5),
	(typ:xnw;	pattern:'scien';				output:'s.n';  	 	    	bump:5),
	(typ:xnw;	pattern:'signa';				output:'s.gn.';  	 	    bump:5),
	(typ:xnw;	pattern:'sique';		   	output:'s.k';  	 		  	bump:5),
	(typ:xnw;	pattern:'seous';				output:'sh.s';  	 	    bump:5),
	(typ:xnw;	pattern:'sques';				output:'sks';  	 	  	  bump:5),
	(typ:xnw;	pattern:'ssler';				output:'sl.r'; 	 	  	  bump:5),
	(typ:xnw;	pattern:'stial';				output:'sch.l';  	 	    bump:5),
	(typ:xnw;	pattern:'stian';				output:'sch.n';  	 	    bump:5),
	(typ:xnw;	pattern:'stion';				output:'sch.n';  	 	    bump:5),
	(typ:xnw;	pattern:'stler';				output:'s';  	 	    		bump:2),
	(typ:xnw;	pattern:'stlik';				output:'s';  	 	    		bump:2),
	(typ:xnw;	pattern:'stnes';				output:'s';  	 	    		bump:2),
	(typ:xnw;	pattern:'suous';				output:'sh.s';  	 	    bump:5),
	(typ:xnw;	pattern:'tangi';				output:'t.nj.';  	 	   	bump:5),
	(typ:xnw;	pattern:'thbed';				output:'thb.d';  	 	   	bump:5),
	(typ:xnw;	pattern:'thumb';				output:'th.m';   	 	    bump:5),
	(typ:xnw;	pattern:'ticer';		   	output:'t.s.r';  			  bump:5),
	(typ:xnw;	pattern:'tioch';				output:'t.k';  	 	    	bump:5),
	(typ:xnw;	pattern:'tious';				output:'sh.s';  	 	    bump:5),
	(typ:xnw;	pattern:'tique';		   	output:'t.k';  	 		  	bump:4),
	(typ:xnw;	pattern:'title';		   	output:'t.t.l';  			  bump:5),
	(typ:xnw;	pattern:'toget';		   	output:'t.g.t';  			  bump:5),
	(typ:xnw;	pattern:'ttler';		   	output:'tl.r';  			  bump:5),
	(typ:xnw;	pattern:'tulen';				output:'ch.'; 	 	    	bump:2),
	(typ:xnw;	pattern:'tuous';				output:'ch.s'; 	 	    	bump:5),
	(typ:xnw;	pattern:'umbed';				output:'.md'; 		 	 	  bump:5),
	(typ:xnw;	pattern:'umbie';				output:'.m.'; 		 	 	  bump:5),
	(typ:xnw;	pattern:'umble';				output:'.mb.l'; 	 	 	  bump:5),
	(typ:xnw;	pattern:'untle';				output:'.nt.l'; 	 	 	  bump:5),
	(typ:xnw;	pattern:'uphol';				output:'.p';	 	 	 	  	bump:3),
	(typ:xnw;	pattern:'uscle';				output:'.s.l'; 	 	 	    bump:5),
	(typ:xnw;	pattern:'usque';				output:'.sk'; 	 	 	    bump:5),
	(typ:xnw;	pattern:'vileg';				output:'v'; 	 	 	    	bump:2),
	(typ:xnw;	pattern:'white';				output:'w.t';  	 	    	bump:4),
	(typ:xnw;	pattern:'would';				output:'w.d';	  	 	    bump:5),
	(typ:xnw;	pattern:'xious';				output:'ksh.s';  		 	  bump:5),
	(typ:xnw;	pattern:'yield';				output:'y.ld';  		 	  bump:5),

	// four-letter rules

	(typ:xnw;	pattern:'ache';		   		output:'.k';    	 		  bump:4),
	(typ:xnw;	pattern:'acre';		   		output:'.k.r';   	 		  bump:4),
	(typ:xnw;	pattern:'agen';		   		output:'.j.n';   	 		  bump:4),
	(typ:xnw;	pattern:'ager';		   		output:'.j.r';  	 	  	bump:4),
	(typ:xnw;	pattern:'ages';		   		output:'.j.s';   	 		  bump:4),
	(typ:xnw;	pattern:'ance';		   		output:'.ns';  		 	  	bump:4),
	(typ:xnw;	pattern:'ange';		   		output:'.nj';  		 	  	bump:3),
	(typ:xnw;	pattern:'augh';		   		output:'.f';    		 	  bump:4),
	(typ:xnw;	pattern:'bagg';		   		output:'b.g';   	 		  bump:4),
	(typ:xnw;	pattern:'bahn';		   		output:'b.n';   	 		  bump:4),
	(typ:xnw;	pattern:'balk';		   		output:'b.k';   	 		  bump:4),
	(typ:xnw;	pattern:'balm';		   		output:'b.m';   	 		  bump:4),
	(typ:xnw;	pattern:'bang';		   		output:'b.ng';   	 		  bump:4),
	(typ:xnw;	pattern:'berg';		   		output:'b.rg';   	 		  bump:4),
	(typ:xnw;	pattern:'bigh';		   		output:'b.gh';   	 		  bump:4),
	(typ:xnw;	pattern:'bign';		   		output:'b.gn';   	 		  bump:4),
	(typ:xnw;	pattern:'bler';		   		output:'bl.r';   	 		  bump:4),
	(typ:xnw;	pattern:'bomb';		   		output:'b.m';   	 		  bump:4),
	(typ:xnw;	pattern:'boog';		   		output:'b.g';   	 		  bump:4),
	(typ:xnw;	pattern:'bove';		   		output:'b.v';   	 		  bump:4),
	(typ:xnw;	pattern:'bred';		   		output:'br.d';   	 		  bump:4),
	(typ:xnw;	pattern:'brew';		   		output:'br.';   	 		  bump:4),
	(typ:xnw;	pattern:'buch';		   		output:'b.k';   	 		  bump:4),
	(typ:xnw;	pattern:'calf';		   		output:'k.f';   	 		  bump:4),
	(typ:xnw;	pattern:'cach';	      	output:'k.sh'; 		  		bump:4),
	(typ:xnw;	pattern:'cean';		   		output:'sh.n';  	 		  bump:4),
	(typ:xnw;	pattern:'chae';	      	output:'k.'; 			  		bump:4),
	(typ:xnw;	pattern:'chew';	      	output:'ch.'; 		  		bump:4),
	(typ:xnw;	pattern:'celt';		   		output:'k.lt';  	 		  bump:4),
	(typ:xnw;	pattern:'chao';		   		output:'k.';    	 		  bump:4),
	(typ:xnw;	pattern:'chau';		   		output:'sh.';   	 		  bump:4),
	(typ:xnw;	pattern:'chef';		   		output:'sh.f';  	 		  bump:4),
	(typ:xnw;	pattern:'chem';		   		output:'k.m';   	 		  bump:4),
	(typ:xnw;	pattern:'chet';		   		output:'sh.';   	 		  bump:4),
	(typ:xnw;	pattern:'chev';		   		output:'sh.v';  	 		  bump:4),
	(typ:xnw;	pattern:'chif';		   		output:'sh.f';  	 		  bump:4),
	(typ:xnw;	pattern:'chlo';		   		output:'kl.';   	 		  bump:4),
	(typ:xnw;	pattern:'chol';		   		output:'k.l';   	 		  bump:4),
	(typ:xnw;	pattern:'chor';		   		output:'k.r';   	 		  bump:4),
	(typ:xnw;	pattern:'chut';					output:'sh';  	 	    	bump:2),
	(typ:xnw;	pattern:'cial';		   		output:'sh.l';  	 		  bump:4),
	(typ:xnw;	pattern:'cion';		   		output:'sh.n';  	 		  bump:4),
	(typ:xnw;	pattern:'cism';		   		output:'s.sm';  	 		  bump:4),
	(typ:xnw;	pattern:'cius';		   		output:'sh.s'; 	 	 		  bump:4),
	(typ:xnw;	pattern:'ckle';		   		output:'k.l'; 	 	 		  bump:4),
	(typ:xnw;	pattern:'clem';		   		output:'kl.m'; 	 	 		  bump:4),
	(typ:xnw;	pattern:'cogn';		   		output:'k.gn'; 	 	 		  bump:4),
	(typ:xnw;	pattern:'crew';		   		output:'kr.'; 	 	 		  bump:4),
	(typ:xnw;	pattern:'cuis';		   		output:'kw.s';  	 		  bump:4),
	(typ:xnw;	pattern:'czar';		   		output:'z.r';   	 		  bump:4),
	(typ:xnw;	pattern:'debt';		   		output:'d.';   	 		 		bump:3),
	(typ:xnw;	pattern:'dger';		   		output:'j.r';   	 		  bump:4),
	(typ:xnw;	pattern:'dges';		   		output:'j.s';   	 		  bump:4),
	(typ:xnw;	pattern:'dich';		   		output:'d.k.';   	 		  bump:4),
	(typ:xnw;	pattern:'digm';		   		output:'d.m';   	 		  bump:4),
	(typ:xnw;	pattern:'dign';		   		output:'d.gn';   	 		  bump:4),
	(typ:xnw;	pattern:'dler';		   		output:'dl.r';   	 		  bump:4),
	(typ:xnw;	pattern:'drew';		   		output:'dr.';   	 		  bump:4),
	(typ:xnw;	pattern:'dual';		   		output:'j';   	 		  	bump:1),
	(typ:xnw;	pattern:'duat';		   		output:'j';   	 		  	bump:1),
	(typ:xnw;	pattern:'dule';		   		output:'j';   	 		  	bump:1),
	(typ:xnw;	pattern:'dumb';		   		output:'d.m';   	 		  bump:4),
	(typ:xnw;	pattern:'dung';		   		output:'d.ng';   	 		  bump:4),
	(typ:xnw;	pattern:'each';		   		output:'.ch';	  	 		  bump:4),
	(typ:xnw;	pattern:'eaux';		   		output:'.';	  	 		  	bump:4),
	(typ:xnw;	pattern:'echo';		   		output:'.k.';   	 		  bump:4),
	(typ:xnw;	pattern:'ecre';		   		output:'.kr.';	 		  	bump:4),
	(typ:xnw;	pattern:'ectf';		   		output:'.k';	 		  		bump:3),
	(typ:xnw;	pattern:'ecua';		   		output:'.kw.';	 		  	bump:4),
	(typ:xnw;	pattern:'eful';		   		output:'f.l';	 			  	bump:4),
	(typ:xnw;	pattern:'eich';		   		output:'.k';	 			  	bump:4),
	(typ:xnw;	pattern:'else';		   		output:'.ls';	 			  	bump:4),
	(typ:xnw;	pattern:'empt';		   		output:'.m';  		 	  	bump:3),
	(typ:xnw;	pattern:'ence';		   		output:'.ns';  		 	  	bump:4),
	(typ:xnw;	pattern:'ense';		   		output:'.ns';  		 	  	bump:3),
	(typ:xnw;	pattern:'ergy';		   		output:'.rj.';  	 	  	bump:4),
	(typ:xnw;	pattern:'etle';		   		output:'.t.l';  	 	  	bump:4),
	(typ:xnw;	pattern:'ewed';		   		output:'.d';  	 	  		bump:4),
	(typ:xnw;	pattern:'ewes';		   		output:'.s';  	 	  		bump:4),
	(typ:xnw;	pattern:'exac';		   		output:'.gs';			  		bump:2),
	(typ:xnw;	pattern:'exal';		   		output:'.gs';			  		bump:2),
	(typ:xnw;	pattern:'exam';		   		output:'.gs';			 		 	bump:2),
	(typ:xnw;	pattern:'exas';		   		output:'.gs';				  	bump:2),
	(typ:xnw;	pattern:'exem';		   		output:'.gs';  	 	  		bump:2),
	(typ:xnw;	pattern:'exes';		   		output:'.ks.s';  	 	  	bump:4),
	(typ:xnw;	pattern:'exha';		   		output:'.gs';  	 	  		bump:3),
	(typ:xnw;	pattern:'exhi';		   		output:'.gs.';  	 	  	bump:4),
	(typ:xnw;	pattern:'exil';		   		output:'.gs';  		 	  	bump:2),
	(typ:xnw;	pattern:'exis';		   		output:'.gs';  		 	  	bump:2),
	(typ:xnw;	pattern:'exho';		   		output:'.gs.';  	 	  	bump:4),
	(typ:xnw;	pattern:'exhu';		   		output:'.gs.';  	 	  	bump:4),
	(typ:xnw;	pattern:'exon';		   		output:'.gs';  		 	  	bump:2),
	(typ:xnw;	pattern:'exot';		   		output:'.gs';  		 	  	bump:2),
	(typ:xnw;	pattern:'exus';		   		output:'.ks';  		 	  	bump:2),
	(typ:xnw;	pattern:'ffle';		   		output:'f.l'; 		 	  	bump:4),
	(typ:xnw;	pattern:'fici';		   		output:'f.sh.';  		 	  bump:4),
	(typ:xnw;	pattern:'flag';		   		output:'fl.g'; 		 	  	bump:4),
	(typ:xnw;	pattern:'fogg';		   		output:'f.g'; 		 	  	bump:4),
	(typ:xnw;	pattern:'folk';		   		output:'f.k';  		 	  	bump:4),
	(typ:xnw;	pattern:'fore';		   		output:'f.r';  		 	  	bump:4),
	(typ:xnw;	pattern:'fred';		   		output:'fr.d'; 		 	  	bump:4),
	(typ:xnw;	pattern:'gear';		   		output:'g.r';   	 		  bump:4),
	(typ:xnw;	pattern:'geis';		   		output:'g.s';   	 		  bump:4),
	(typ:xnw;	pattern:'geld';		   		output:'g.ld';   	 		  bump:4),
	(typ:xnw;	pattern:'ggio';		   		output:'j.';   		 		  bump:4),
	(typ:xnw;	pattern:'ggle';		   		output:'g.l';  		 		  bump:4),
	(typ:xnw;	pattern:'ghas';		   		output:'g.s';   	 		  bump:4),
	(typ:xnw;	pattern:'ghum';		   		output:'g.m';   	 		  bump:4),
	(typ:xnw;	pattern:'gill';				  output:'g.l';  	 		   	bump:4),
	(typ:xnw;	pattern:'glea';		   		output:'gl.'; 	 	 		  bump:4),
	(typ:xnw;	pattern:'glee';		   		output:'g';  	 			  	bump:1),
	(typ:xnw;	pattern:'glen';		   		output:'g';  	 		  		bump:1),
	(typ:xnw;	pattern:'gler';		   		output:'g';  	 		  		bump:1),
	(typ:xnw;	pattern:'gles';		   		output:'g.ls';  	 		  bump:4),
	(typ:xnw;	pattern:'guar';		   		output:'g';  	 		  		bump:1),
	(typ:xnw;	pattern:'guis';		   		output:'gw';  	 		  	bump:2),
	(typ:xnw;	pattern:'half';		   		output:'h.f';	  	 		  bump:4),
	(typ:xnw;	pattern:'halv';		   		output:'h.v';	  	 		  bump:4),
	(typ:xnw;	pattern:'hang';		   		output:'h.ng';	 	 		  bump:4),
	(typ:xnw;	pattern:'head';		   		output:'h.d';	  	 		  bump:4),
	(typ:xnw;	pattern:'hoag';		   		output:'h.g';	  	 		  bump:4),
	(typ:xnw;	pattern:'hour';		   		output:'.r';	  	 		  bump:4),
	(typ:xnw;	pattern:'icer';		   		output:'.s.r';   	 		  bump:4),
	(typ:xnw;	pattern:'ices';		   		output:'.s.s';   	 		  bump:4),
	(typ:xnw;	pattern:'ingh';		   		output:'.ngh';   	 		  bump:4),
	(typ:xnw;	pattern:'iope';		   		output:'.p.';   	 		  bump:4),
	(typ:xnw;	pattern:'iron';		   		output:'.rn';   	 		  bump:4),
	(typ:xnw;	pattern:'itia';		   		output:'.sh.';   	 		  bump:4),
	(typ:xnw;	pattern:'jara';		   		output:'h.r.';   	 		  bump:4),
	(typ:xnw;	pattern:'john';		   		output:'j.n';   	 		  bump:4),
	(typ:xnw;	pattern:'juan';			   	output:'w.n'; 				  bump:4),
	(typ:xnw;	pattern:'kler';		   		output:'kl.r'; 		 	  	bump:4),
	(typ:xnw;	pattern:'kley';		   		output:'kl.'; 		 	  	bump:4),
	(typ:xnw;	pattern:'kopf';		   		output:'k.f'; 		 	  	bump:4),
	(typ:xnw;	pattern:'legg';		   		output:'l.g'; 		 	  	bump:4),
	(typ:xnw;	pattern:'legm';		   		output:'l.m'; 		 	  	bump:4),
	(typ:xnw;	pattern:'less';		   		output:'l.s'; 		 	  	bump:4),
	(typ:xnw;	pattern:'liou';		   		output:'ly.'; 		 	  	bump:4),
	(typ:xnw;	pattern:'logg';		   		output:'l.g'; 		 	  	bump:4),
	(typ:xnw;	pattern:'long';		   		output:'l.ng'; 		 	  	bump:4),
	(typ:xnw;	pattern:'lyur';		   		output:'l.y.r'; 	 	  	bump:4),
	(typ:xnw;	pattern:'mech';		   		output:'m.k';   	 		  bump:4),
	(typ:xnw;	pattern:'mnem';		   		output:'n.m';   	 		  bump:4),
	(typ:xnw;	pattern:'mong';		   		output:'m.ng';   	 		  bump:4),
	(typ:xnw;	pattern:'mpty';		   		output:'mpt.';   	 		  bump:4),
	(typ:xnw;	pattern:'ncia';		   		output:'ns.';   	 		  bump:4),
	(typ:xnw;	pattern:'negl';		   		output:'n.gl';   	 		  bump:4),
	(typ:xnw;	pattern:'nged';		   		output:'njd';   	 		  bump:4),
	(typ:xnw;	pattern:'nion';		   		output:'ny.n';   	 		  bump:4),
	(typ:xnw;	pattern:'nior';		   		output:'ny.r';   	 		  bump:4),
	(typ:xnw;	pattern:'noch';		   		output:'n.k';   	 		  bump:4),
	(typ:xnw;	pattern:'nsec';		   		output:'ns.k';   	 		  bump:4),
	(typ:xnw;	pattern:'nsee';		   		output:'ns.';   	 		  bump:4),
	(typ:xnw;	pattern:'nsel';		   		output:'ns.l';   	 		  bump:4),
	(typ:xnw;	pattern:'nsen';		   		output:'ns.n';   	 		  bump:4),
	(typ:xnw;	pattern:'nseq';		   		output:'ns.';   	 		  bump:3),
	(typ:xnw;	pattern:'nser';		   		output:'ns.r';   	 		  bump:4),
	(typ:xnw;	pattern:'nses';		   		output:'ns.s';   	 		  bump:4),
	(typ:xnw;	pattern:'nuch';		   		output:'n.k';   	 		  bump:4),
	(typ:xnw;	pattern:'numb';		   		output:'n.m';   	 		  bump:4),
	(typ:xnw;	pattern:'oach';		   		output:'.ch';  	 			  bump:4),
	(typ:xnw;	pattern:'ogre';		   		output:'.g.r';   	 		  bump:4),
	(typ:xnw;	pattern:'ogue';		   		output:'.g';   	 			  bump:4),
	(typ:xnw;	pattern:'oign';		   		output:'.ny';  	 			  bump:4),
	(typ:xnw;	pattern:'okle';		   		output:'.kl.';   	 		  bump:4),
	(typ:xnw;	pattern:'ombo';		   		output:'.mb.';   	 		  bump:4),
	(typ:xnw;	pattern:'ombu';		   		output:'.mb.';   	 		  bump:4),
	(typ:xnw;	pattern:'oubt';		   		output:'.t';    	 		  bump:4),
	(typ:xnw;	pattern:'owav';		   		output:'.w.v';   	 		  bump:4),
	(typ:xnw;	pattern:'palm';					output:'p.m';  	 	  		bump:4),
	(typ:xnw;	pattern:'phol';					output:'ph'; 	 	 	  		bump:2),
	(typ:xnw;	pattern:'poch';		   		output:'p.k';   	 		  bump:4),
	(typ:xnw;	pattern:'pooh';		   		output:'p.'; 	  	 		  bump:4),
	(typ:xnw;	pattern:'preg';		   		output:'pr.g'; 	  	 		bump:4),
	(typ:xnw;	pattern:'prog';		   		output:'pr.g'; 	  	 		bump:4),
	(typ:xnw;	pattern:'ptly';		   		output:'pl.';   	 		  bump:4),
	(typ:xnw;	pattern:'pugn';		   		output:'p.g';   	 		  bump:3),
	(typ:xnw;	pattern:'quer';		   		output:'k.r';   	 		  bump:4),
	(typ:xnw;	pattern:'queu';		   		output:'k.';  	 	 		  bump:4),
	(typ:xnw;	pattern:'quor';		   		output:'k.r';   	 		  bump:4),
	(typ:xnw;	pattern:'rhap';		   		output:'r';   	 		  	bump:1),
	(typ:xnw;	pattern:'rhop';		   		output:'r';   	 		  	bump:1),
	(typ:xnw;	pattern:'rhor';		   		output:'r';   	 		  	bump:1),
	(typ:xnw;	pattern:'rhou';		   		output:'r';   	 		  	bump:1),
	(typ:xnw;	pattern:'rong';		   		output:'r.ng'; 		 	  	bump:4),
	(typ:xnw;	pattern:'schw';		   		output:'shw';    	 		  bump:4),
	(typ:xnw;	pattern:'seaw';		   		output:'s.w';    	 		  bump:4),
	(typ:xnw;	pattern:'sexi';		   		output:'s.ks';    	 		bump:3),
	(typ:xnw;	pattern:'sial';		   		output:'sh.l';  	 		  bump:4),
	(typ:xnw;	pattern:'sian';		   		output:'sh.n';  	 		  bump:4),
	(typ:xnw;	pattern:'sion';		   		output:'sh.n';  	 		  bump:4),
	(typ:xnw;	pattern:'sive';		   		output:'s.v';  	 		 		bump:4),
	(typ:xnw;	pattern:'soch';		   		output:'s.k';  	 		 		bump:4),
	(typ:xnw;	pattern:'ssle';		   		output:'s.l';   	 		  bump:4),
	(typ:xnw;	pattern:'ssur';		   		output:'sh.r';   	 		  bump:4),
	(typ:xnw;	pattern:'stle';		   		output:'s.l';   	 		  bump:4),
	(typ:xnw;	pattern:'stli';	      	output:'sl.'; 	   			bump:4),
	(typ:xnw;	pattern:'stly';	      	output:'sl.'; 	   			bump:4),
	(typ:xnw;	pattern:'sual';		   		output:'sh.l'; 	 	 		  bump:4),
	(typ:xnw;	pattern:'sura';		   		output:'sh.r.';  	 		  bump:4),
	(typ:xnw;	pattern:'sure';		   		output:'sh';  	 		  	bump:1),
	(typ:xnw;	pattern:'suri';		   		output:'sh';  	 		  	bump:1),
	(typ:xnw;	pattern:'sury';		   		output:'sh';  	 		  	bump:1),
	(typ:xnw;	pattern:'tach';		   		output:'t.ch';   	 		  bump:4),
	(typ:xnw;	pattern:'tech';		   		output:'t.k';   	 		  bump:4),
	(typ:xnw;	pattern:'teur';		   		output:'ch.r';   	 		  bump:4),
	(typ:xnw;	pattern:'thon';		   		output:'th.n';  		 		bump:4),
	(typ:xnw;	pattern:'tial';		   		output:'sh.l';  	 		  bump:4),
	(typ:xnw;	pattern:'tian';		   		output:'sh.n';  	 		  bump:4),
	(typ:xnw;	pattern:'tiar';		   		output:'sh.'; 	 	 		  bump:3),
	(typ:xnw;	pattern:'tiat';		   		output:'sh.'; 	 	 		  bump:3),
	(typ:xnw;	pattern:'tice';		   		output:'t.s';  	 			  bump:4),
	(typ:xnw;	pattern:'tien';		   		output:'sh.n'; 	 			  bump:4),
	(typ:xnw;	pattern:'tion';		   		output:'sh.n';  	 		  bump:4),
	(typ:xnw;	pattern:'tium';		   		output:'sh.m';  	 		  bump:4),
	(typ:xnw;	pattern:'tius';		   		output:'sh.s';  	 		  bump:4),
	(typ:xnw;	pattern:'tive';		   		output:'t.v';  	 		 		bump:4),
	(typ:xnw;	pattern:'tous';		   		output:'t.s';  	 		 		bump:4),
	(typ:xnw;	pattern:'tred';		   		output:'tr.d'; 	 		 		bump:4),
	(typ:xnw;	pattern:'tsia';		   		output:'s.'; 		 		 		bump:4),
	(typ:xnw;	pattern:'ttle';		   		output:'t.l';  	 		 		bump:3),
	(typ:xnw;	pattern:'tuen';		   		output:'ch';  	 		  	bump:1),
	(typ:xnw;	pattern:'tula';		   		output:'ch';  	 		  	bump:1),
	(typ:xnw;	pattern:'tura';		   		output:'ch';  	 		  	bump:1),
	(typ:xnw;	pattern:'ture';		   		output:'ch';  	 		  	bump:1),
	(typ:xnw;	pattern:'turi';		   		output:'ch'; 	 		  		bump:1),
	(typ:xnw;	pattern:'turo';		   		output:'ch'; 	 		  		bump:1),
	(typ:xnw;	pattern:'tury';		   		output:'ch'; 	 		  		bump:1),
	(typ:xnw;	pattern:'ucre';		   		output:'.k.r';   	 		  bump:4),
	(typ:xnw;	pattern:'umbl';		   		output:'.mbl'; 		 		  bump:4),
	(typ:xnw;	pattern:'umby';		   		output:'.m.'; 		 		  bump:4),
	(typ:xnw;	pattern:'unch';		   		output:'.nch'; 		 		  bump:4),
	(typ:xnw;	pattern:'urer';	      	output:'.r.r';   				bump:4),
	(typ:xnw;	pattern:'uxur';	      	output:'.ksh.r'; 				bump:4),
	(typ:xnw;	pattern:'view';	      	output:'v.'; 	  				bump:4),
	(typ:xnw;	pattern:'vior';	      	output:'vy.r'; 	  			bump:4),
	(typ:xnw;	pattern:'weis';		   		output:'v.s';   	 		  bump:4),
	(typ:xnw;	pattern:'wher';		   		output:'w.r';   	 		  bump:4),
	(typ:xnw;	pattern:'year';		   		output:'y.r'; 	  	 		bump:4),
	(typ:xnw;	pattern:'xion';		   		output:'ksh.n';   	 		bump:4),
	(typ:xnw;	pattern:'yaki';		   		output:'y.k.';  	 	 		bump:4),
	(typ:xnw;	pattern:'yard';		   		output:'y.rd';  	 	 		bump:4),
	(typ:xnw;	pattern:'zler';		   		output:'sl.r';   	 			bump:4),
	(typ:xnw;	pattern:'zuel';		   		output:'sw.l';   	 			bump:4),
	(typ:xnw;	pattern:'zure';		   		output:'sh.r';   	 			bump:4),

	// three-letter rules

	(typ:xnw;	pattern:'adj';				  output:'.j';  		   	  bump:3),
	(typ:xnw;	pattern:'ahs';				  output:'.s';  		   	  bump:3),
	(typ:xnw;	pattern:'age';				  output:'.j';  		   	  bump:2),
	(typ:xnw;	pattern:'agn';				  output:'.gn';  		   	  bump:3),
	(typ:xnw;	pattern:'alk';				  output:'.k';  		   	  bump:3),
	(typ:xnw;	pattern:'ang';				  output:'.ng';  		   	  bump:3),
	(typ:xnw;	pattern:'arz';				  output:'.rts'; 		   	  bump:3),
	(typ:xnw;	pattern:'awa';				  output:'.w.';  		   	  bump:3),
	(typ:xnw;	pattern:'awo';				  output:'.w.';  		   	  bump:3),
	(typ:xnw;	pattern:'ble';				  output:'b.l';  		   	  bump:3),
	(typ:xnw;	pattern:'ces';				  output:'s.s';   		   	bump:3),
	(typ:xnw;	pattern:'chr';				  output:'kr';   		   	  bump:3),
	(typ:xnw;	pattern:'cia';				  output:'sh.';  		   	  bump:3),
	(typ:xnw;	pattern:'ddh';				  output:'d';  	 		   	  bump:3),
	(typ:xnw;	pattern:'dge';				  output:'j';  	 		   	  bump:2),
	(typ:xnw;	pattern:'dgi';				  output:'j';  	 		   	  bump:2),
	(typ:xnw;	pattern:'dgm';				  output:'jm';  	 		   	bump:3),
	(typ:xnw;	pattern:'dgy';				  output:'j';  	 		   	  bump:2),
	(typ:xnw;	pattern:'dle';				  output:'d.l';  		   	  bump:3),
	(typ:xnw;	pattern:'dth';				  output:'th';  	 		   	bump:3),
	(typ:xnw;	pattern:'eag';				  output:'.g';  	 		   	bump:3),
	(typ:xnw;	pattern:'edg';				  output:'.j';  	 		   	bump:3),
	(typ:xnw;	pattern:'egy';				  output:'.j.';  	 		   	bump:3),
	(typ:xnw;	pattern:'ewd';				  output:'.d';  	 		   	bump:3),
	(typ:xnw;	pattern:'exu';				  output:'.gs';  	 		   	bump:2),
	(typ:xnw;	pattern:'fah';				  output:'f.';  		   	  bump:3),
	(typ:xnw;	pattern:'fog';				  output:'f.g';  		   	  bump:3),
	(typ:xnw;	pattern:'ftb';				  output:'f';  		   	  	bump:2),
	(typ:xnw;	pattern:'ftl';				  output:'f';  		   	  	bump:2),
	(typ:xnw;	pattern:'ftn';				  output:'f';  		   	  	bump:2),
	(typ:xnw;	pattern:'fts';				  output:'f';  		   	  	bump:2),
	(typ:xnw;	pattern:'gae';				  output:'j'; 	 		   	  bump:1),
	(typ:xnw;	pattern:'gar';				  output:'g';  		   	  	bump:1),
	(typ:xnw;	pattern:'ghe';				  output:'g';  	 		   	  bump:2),
	(typ:xnw;	pattern:'ght';				  output:'t';  	 		   	  bump:3),
	(typ:xnw;	pattern:'gie';				  output:'j.';  	 		   	bump:1),
	(typ:xnw;	pattern:'gir';				  output:'g';  	 		   	  bump:1),
	(typ:xnw;	pattern:'giv';				  output:'g.v';  	 		   	bump:3),
	(typ:xnw;	pattern:'gle';				  output:'g.l';  	 		   	bump:3),
	(typ:xnw;	pattern:'gua';				  output:'gw';  		   		bump:1),
	(typ:xnw;	pattern:'gue';				  output:'g';  		   		  bump:2),
	(typ:xnw;	pattern:'gyn';				  output:'j.n';  		   	  bump:3),
	(typ:xnw;	pattern:'hew';				  output:'h.';  		   	  bump:3),
	(typ:xnw;	pattern:'idg';				  output:'.j';  		   	  bump:3),
	(typ:xnw;	pattern:'igg';				  output:'.g';  		   	  bump:3),
	(typ:xnw;	pattern:'igh';				  output:'.'; 	 		   	  bump:3),
	(typ:xnw;	pattern:'ign';				  output:'.n'; 	 		   	  bump:3),
	(typ:xnw;	pattern:'jew';				  output:'j.';  		   	  bump:3),
	(typ:xnw;	pattern:'kle';				  output:'k.l';  		   	  bump:3),
	(typ:xnw;	pattern:'mpt';				  output:'m';  		   	  	bump:2),
	(typ:xnw;	pattern:'nds';				  output:'ns';  		   	  bump:3),
	(typ:xnw;	pattern:'ndt';				  output:'nt';  		   	  bump:3),
	(typ:xnw;	pattern:'new';				  output:'n.';  		   	  bump:3),
	(typ:xnw;	pattern:'nse';				  output:'ns';   		   	  bump:3),
	(typ:xnw;	pattern:'omb';				  output:'.m';   		   	  bump:3),
	(typ:xnw;	pattern:'pph';				  output:'f';   		   	  bump:3),
	(typ:xnw;	pattern:'ptw';				  output:'p';   		   	  bump:2),
	(typ:xnw;	pattern:'roa';				  output:'r.';  	 		   	bump:3),
	(typ:xnw;	pattern:'sce';				  output:'s';   		   	  bump:2),
	(typ:xnw;	pattern:'sua';				  output:'sw.';   		   	bump:3),
	(typ:xnw;	pattern:'tch';				  output:'ch';   		   	  bump:3),
	(typ:xnw;	pattern:'tua';				  output:'ch.';   		   	bump:3),
	(typ:xnw;	pattern:'ulz';				  output:'.lts';   		   	bump:3),
	(typ:xnw;	pattern:'who';				  output:'h.';   		   	  bump:3),
	(typ:xnw;	pattern:'zle';				  output:'s.l';  		   	  bump:3),

	// two-letter rules

	(typ:xnw;	pattern:'aw';						output:'.'; 					  bump:2),
	(typ:xnw;	pattern:'ce';						output:'s'; 					  bump:1),
	(typ:xnw;	pattern:'ch';						output:'ch';					  bump:2),
	(typ:xnw;	pattern:'ci';						output:'s'; 					  bump:1),
	(typ:xnw;	pattern:'ck';						output:'k';						  bump:2),
	(typ:xnw;	pattern:'cy';						output:'s.';					  bump:2),
	(typ:xnw;	pattern:'ex';						output:'.ks';					  bump:2),
	(typ:xnw;	pattern:'fj';						output:'f';					  	bump:2),
	(typ:xnw;	pattern:'ge';						output:'j'; 					  bump:1),
	(typ:xnw;	pattern:'gg';						output:'g'; 					  bump:2),
	(typ:xnw;	pattern:'gi';						output:'j'; 					  bump:1),
	(typ:xnw;	pattern:'gn';						output:'n'; 					  bump:2),
	(typ:xnw;	pattern:'gy';						output:'j.';					  bump:2),
	(typ:xnw;	pattern:'kn';						output:'n'; 					  bump:2),
	(typ:xnw;	pattern:'ow';						output:'.'; 					  bump:2),
	(typ:xnw;	pattern:'ph';						output:'f'; 					  bump:2),
	(typ:xnw;	pattern:'rh';						output:'r'; 					  bump:2),
	(typ:xnw;	pattern:'wh';						output:'w'; 					  bump:2),
	(typ:xnw;	pattern:'wr';						output:'r'; 					  bump:2),

	// one-letter rules

	(typ:xnw;	pattern:'a';						output:'.'; 					  bump:1),
	(typ:xnw;	pattern:'b';						output:'b'; 					  bump:1),
	(typ:xnw;	pattern:'c';						output:'k'; 					  bump:1),
	(typ:xnw;	pattern:'d';						output:'d'; 					  bump:1),
	(typ:xnw;	pattern:'e';						output:'.'; 					  bump:1),
	(typ:xnw;	pattern:'f';						output:'f'; 					  bump:1),
	(typ:xnw;	pattern:'g';						output:'g'; 					  bump:1),
	(typ:xnw;	pattern:'h';						output:'h'; 					  bump:1),
	(typ:xnw;	pattern:'i';						output:'.'; 					  bump:1),
	(typ:xnw;	pattern:'j';						output:'j'; 					  bump:1),
	(typ:xnw;	pattern:'k';						output:'k'; 					  bump:1),
	(typ:xnw;	pattern:'l';						output:'l'; 					  bump:1),
	(typ:xnw;	pattern:'m';						output:'m'; 					  bump:1),
	(typ:xnw;	pattern:'n';						output:'n'; 					  bump:1),
	(typ:xnw;	pattern:'o';						output:'.'; 					  bump:1),
	(typ:xnw;	pattern:'p';						output:'p'; 					  bump:1),
	(typ:xnw;	pattern:'q';						output:'kw';					  bump:1),
	(typ:xnw;	pattern:'r';						output:'r'; 					  bump:1),
	(typ:xnw;	pattern:'s';						output:'s'; 					  bump:1),
	(typ:xnw;	pattern:'t';						output:'t'; 					  bump:1),
	(typ:xnw;	pattern:'u';						output:'.'; 					  bump:1),
	(typ:xnw;	pattern:'v';						output:'v'; 					  bump:1),
	(typ:xnw;	pattern:'w';						output:'w'; 					  bump:1),
	(typ:xnw;	pattern:'x';						output:'ks';					  bump:1),
	(typ:xnw;	pattern:'y';						output:'.'; 					  bump:1),
	(typ:xnw;	pattern:'z';						output:'s'; 					  bump:1)
	);

var cc,cr:xinteger;

begin
	result:=''; if w='' then exit;
	w:=xv(w);
	fillchar(w[length(w)+1],sizeof(w)-length(w)-1,x00);
	cc:=1;
	while cc<=length(w) do begin
		for cr:=1 to high(xrules) do with xrules[cr] do begin
			if (typ=xww) and (cc<>1) then continue;
			if (typ=xbw) and (cc<>1) then continue;
			if (typ=xse) and (cc<>1) then continue;
			if (typ=xww) and (length(w)<>length(pattern)) then continue;
			if (typ=xew) and (length(w)-cc+1<>length(pattern)) then continue;
			if (typ=xse) and (length(w)-length(pattern)<3) then continue;
			if (typ=xnw) and (length(w)-cc+1<length(pattern)) then continue;
			if strlcomp(@pattern[1],@w[cc],length(pattern))<>0 then continue;
			result:=result+output;
			inc(cc,bump-1);
			break;
		end;
		inc(cc);
	end;
	for cc:=length(result) downto 2 do if result[cc]=result[cc-1] then delete(result,cc,1);
	if (length(result)=0) and (w[1] in ['a','e','i','o','u','y']) then result:='.';
	if (length(result)=0) and not (w[1] in ['a','e','i','o','u','y']) then result:=w[1];
end;

function  xpir(r:xrect; p:xpoint):xboolean;
begin
	result:=false;
	if p.x<r.left then exit;
	if p.x>r.right then exit;
	if p.y<r.top then exit;
	if p.y>r.bottom then exit;
	result:=true;
end;

function  xpointequals(a,b:xpoint):xboolean;
begin
	result:=(a.x=b.x) and (a.y=b.y);
end;

function  xpointinarc(a:xarc; p:xpoint):xboolean;
	var epa,max,min:xdegree;
begin
	with a do begin
		result:=false;
		if not xpointinellipse(xmakeellipse(a.rect),p) then exit;
		epa:=xgetangle(xgetcenterpoint(a.rect),p);
		min:=angles[1]; max:=angles[2];
		if max<min then begin min:=angles[2]; max:=angles[1]; end;
		result:=(epa<=max) and (epa>=min);
		if angles[2]<=angles[1] then result:=not result;
	end;
end;

function  xpointincurve(c:xcurve; p:xpoint):xboolean;
begin
	result:=xpointinpolygon(xpolygon(c),p);
end;

function  xpointinellipse(e:xellipse; p:xpoint):xboolean;
	var a,b,x,y:xextended; cp:xpoint;
begin
	result:=false;
	a:=(xwidth(e.rect)-10)/2;	b:=(xheight(e.rect)-10)/2;
	if (a=0) or (b=0) then exit;
	x:=p.x; y:=p.y; // don't reduce
	cp:=xgetcenterpoint(e.rect);
	if (sqr(x-cp.x)/sqr(a))+(sqr(y-cp.y)/sqr(b))>1 then exit;
	result:=true;
end;

function  xpointinhandle(s:xshape; p:xpoint; var h:xhandle):xboolean;
begin
	result:=true; if s=nil then begin result:=false; exit; end;
	with s.rect do begin
		h:=xbottomright;	if xpir(xmr(right-xhhsp,bottom-xhhsp,right+xhhsp,bottom+xhhsp),p) then exit;
		h:=xbottomleft; 	if xpir(xmr(left-xhhsp,bottom-xhhsp,left+xhhsp,bottom+xhhsp),p) then exit;
		h:=xtopright; 		if xpir(xmr(right-xhhsp,top-xhhsp,right+xhhsp,top+xhhsp),p) then exit;
		h:=xtopleft; 			if xpir(xmr(left-xhhsp,top-xhhsp,left+xhhsp,top+xhhsp),p) then exit;
	end;
	result:=false;
end;

function  xpointinpicture(e:xpicture; p:xpoint):xboolean;
begin
	result:=xpir(e.rect,p);
end;

function  xpointinpolygon(n:xpolygon; p:xpoint):xboolean;
	var cv:xinteger; g:hrgn;
begin
	result:=false;
	if not xpir(n.rect,p) then exit;
	for cv:=1 to n.count do with n.vertices[cv] do begin x:=x div xfac; y:=y div xfac; end;
	g:=createpolygonrgn(n.vertices[1],n.count,winding);
	result:=ptinregion(g,p.x div xfac,p.y div xfac);
	deleteobject(g);
end;

function  xpointinshape(s:xshape; p:xpoint):xboolean;

function  xpointinshape_group:xboolean;
	var cs:xshape;
begin
	result:=true;
	cs:=s.shapes.first; while cs<>nil do begin if xpointinshape(cs,p) then exit; cs:=cs.next; end;
	result:=false;
end;

begin
	result:=false; if s=nil then exit;
	with s^ do begin
		if hidden then exit;
		if xpointonshape(s,p) then begin result:=true; exit; end;
		if (fill.pigment=xclear) and (not (styp in [xgroupshape,xpictureshape,xtextshape])) then exit;
		case styp of
			xarcshape:  			result:=xpointinarc(arc,p);
			xcurveshape:  		result:=xpointincurve(curve,p);
			xellipseshape:		result:=xpointinellipse(ellipse,p);
			xgroupshape:	  	result:=xpointinshape_group;
			xpictureshape:		result:=xpointinpicture(picture,p);
			xpolygonshape:  	result:=xpointinpolygon(polygon,p);
			xrectangleshape:	result:=xpir(rectangle,p);
			xtextshape: 	  	result:=xpointintext(text,p);
		end;
	end;
end;

function  xpointintext(var t:xtext; p:xpoint):xboolean;
begin
	result:=xpir(t.rect,p);
end;

function  xpointinvertex(s:xshape; p:xpoint; var v:xvertex):xboolean;

procedure xpointinvertex_arc;
	var ca:xinteger; tp:xpoint;
begin
	result:=true;
	for ca:=high(s.arc.angles) downto low(s.arc.angles) do begin
		v:=ca;
		tp:=xgetarcpoint(s.arc,v);
		if xpir(xmr(tp.x-xhhsp,tp.y-xhhsp,tp.x+xhhsp,tp.y+xhhsp),p) then exit;
	end;
	result:=false;
end;

procedure xpointinvertex_curve;
	var cv:xvertex;
begin
	result:=true;
	for cv:=s.curve.count downto 1 do with s.curve.vertices[cv] do begin
		v:=cv;
		if xpir(xmr(x-xhhsp,y-xhhsp,x+xhhsp,y+xhhsp),p) then exit;
	end;
	result:=false;
end;

procedure xpointinvertex_picture;
	var h,w:xtwit; tp:xpoint;
begin
	with s^,picture,rect do begin
		if slice=xnslice then begin result:=false; exit; end;
		result:=true;
		w:=(xwidth(rect)-10) div 2; h:=(xheight(rect)-10) div 2;
		v:=1; tp:=xmp(left,top+h); 		if xpir(xmr(tp.x-xhhsp,tp.y-xhhsp,tp.x+xhhsp,tp.y+xhhsp),p) then exit;
		v:=2; tp:=xmp(left+w,top); 		if xpir(xmr(tp.x-xhhsp,tp.y-xhhsp,tp.x+xhhsp,tp.y+xhhsp),p) then exit;
		v:=3; tp:=xmp(right,top+h); 	if xpir(xmr(tp.x-xhhsp,tp.y-xhhsp,tp.x+xhhsp,tp.y+xhhsp),p) then exit;
		v:=4; tp:=xmp(left+w,bottom); if xpir(xmr(tp.x-xhhsp,tp.y-xhhsp,tp.x+xhhsp,tp.y+xhhsp),p) then exit;
		result:=false;
	end;
end;

procedure xpointinvertex_polygon;
	var cv:xvertex;
begin
	result:=true;
	for cv:=s.polygon.count downto 1 do with s.polygon.vertices[cv] do begin
		v:=cv;
		if xpir(xmr(x-xhhsp,y-xhhsp,x+xhhsp,y+xhhsp),p) then exit;
	end;
	result:=false;
end;

begin
	result:=false; if s=nil then exit;
	case s.styp of
		xarcshape:			xpointinvertex_arc;
		xcurveshape:  	xpointinvertex_curve;
		xpictureshape:	xpointinvertex_picture;
		xpolygonshape:	xpointinvertex_polygon;
	end;
end;

function  xpointonarc(a:xarc; p:xpoint; closed:xboolean):xboolean;
begin
	with a do begin
		result:=true;
		if (closed) and (xpointonline(xgetcenterpoint(rect),xgetarcpoint(a,1),p)) then exit;
		if (closed) and (xpointonline(xgetcenterpoint(rect),xgetarcpoint(a,2),p)) then exit;
		result:=false;
		rect:=xir(rect,-20);
		if not xpointinarc(a,p) then exit;
		rect:=xir(rect,50);
		if xpointinarc(a,p) then exit;
		result:=true;
	end;
end;

function  xpointoncurve(c:xcurve; p:xpoint; closed:xboolean):xboolean;
begin
	result:=xpointonpolygon(xpolygon(c),p,closed);
end;

function  xpointonellipse(e:xellipse; p:xpoint):xboolean;
begin
	result:=false;
	if not xpointinellipse(xindentellipse(e,-20),p) then exit;
	if xpointinellipse(xindentellipse(e,30),p) then exit;
	result:=true;
end;

function  xpointonline(a,b,p:xpoint):xboolean;
	var b1,b2,m1,m2:xextended; ip:xpoint;
begin
	result:=false;
	if not xpir(xir(xnr(xmr(a.x,a.y,b.x,b.y)),-30),p) then exit;
	if b.x=a.x then begin result:=abs(b.x-p.x)<=30; exit; end;
	if b.y=a.y then begin result:=abs(b.y-p.y)<=30; exit; end;
	m1:=(b.y-a.y)/(b.x-a.x); b1:=a.y-(m1*a.x);
	m2:=-1/m1; b2:=p.y-(m2*p.x);
	ip.x:=round((b2-b1)/(m1-m2));
	ip.y:=round(m1*ip.x+b1);
	result:=xgetdistance(p,ip)<=30;
end;

function  xpointonpicture(e:xpicture; p:xpoint):xboolean;
begin
	result:=xpointonrectangle(e.rect,p);
end;

function  xpointonpolygon(n:xpolygon; p:xpoint; closed:xboolean):xboolean;
	var cv:xvertex;
begin
	with n do begin
		result:=false;
		if not xpir(xir(rect,-20),p) then exit;
		result:=true;
		for cv:=1 to count-1 do if xpointonline(vertices[cv],vertices[cv+1],p) then exit;
		if (closed) and (xpointonline(vertices[count],vertices[1],p)) then exit;
		result:=false;
	end;
end;

function  xpointonrectangle(r:xrect; p:xpoint):xboolean;
begin
	result:=false;
	if not xpir(xir(r,-20),p) then exit;
	if xpir(xir(r,30),p) then exit;
	result:=true;
end;

function  xpointonshape(s:xshape; p:xpoint):xboolean;

function  xpointonshape_group:xboolean;
	var cs:xshape;
begin
	result:=true;
	cs:=s.shapes.first; while cs<>nil do begin if xpointonshape(cs,p) then exit; cs:=cs.next; end;
	result:=false;
end;

begin
	result:=false; if s=nil then exit;
	if s.hidden then exit;
	with s^ do case styp of
		xarcshape:  	  	result:=xpointonarc(arc,p,fill.pigment<>xclear);
		xcurveshape: 	  	result:=xpointoncurve(curve,p,fill.pigment<>xclear);
		xellipseshape:		result:=xpointonellipse(ellipse,p);
		xgroupshape:	  	result:=xpointonshape_group;
		xpictureshape: 		result:=xpointonpicture(picture,p);
		xpolygonshape: 		result:=xpointonpolygon(polygon,p,fill.pigment<>xclear);
		xrectangleshape:	result:=xpointonrectangle(rectangle,p);
		xtextshape: 	  	result:=xpointontext(text,p);
	end;
end;

function  xpointontext(var t:xtext; p:xpoint):xboolean;
begin
	result:=xpointonrectangle(t.rect,p);
end;

function  xpointtoposition(var t:xtext; p:xpoint):xposition;
	var cc,csz,fc,lc,nsz,x:xinteger;
begin
	with t,result do begin
		p:=xlp(p,rect.topleft);
		row:=xlimit(trunc(p.y/rowheight)+1,1,count);
		if xissimple(t) then begin col:=xlimit(round((p.x-xzoommargin(t))/colwidth)+1,1,xmaxinteger); exit; end;
		row:=xlimit(trunc(p.y/rowheight)+1,1,count);
		xsetfont(xmemory,font,mag);
		x:=xformatrow(xmemory,t,row,xnilpoint,xnilrect,fc,lc);
		col:=length(rows[row]);
		for cc:=1 to length(rows[row])-1 do begin
			nsz:=gettabbedtextextent(xdcs[xmemory],@rows[row][1],cc,1,tabsize);
			csz:=gettabbedtextextent(xdcs[xmemory],@rows[row][1],1,1,tabsize);
			if p.x<x+loword(nsz)*xfac-(loword(csz)*xfac div 2) then begin col:=cc; exit; end;
		end;
	end;
end;

procedure xpokenumber(p:xinteger; n:xnumber);
	var v:xvar;
begin
	v:=xpeekvariable(p); if xca.abort then exit;
	if xtypemismatch(v,[xnumberdata]) then exit;
	if v.obj=nil then begin v.vtyp:=xstaticvar; v.dtyp:=xnumberdata; v.obj:=xcreatedefaulttext(xdefaultnumberformat,''); end;
	xsetslice(v.obj,xvslice,xnts(n));
end;

procedure xpokeobject(p:xinteger; o:xobject);
	var v:xvar;
begin
	v:=xpeekvariable(p); if xca.abort then exit;
	if xtypemismatch(v,[xdatatype(o)]) then exit;
	v.dtyp:=xdatatype(o);
	v.obj:=o;
end;

procedure xpokestring(p:xinteger; t:xstring);
	var v:xvar;
begin
	v:=xpeekvariable(p); if xca.abort then exit;
	if xtypemismatch(v,[xstringdata]) then exit;
	if v.obj=nil then begin v.vtyp:=xstaticvar; v.dtyp:=xstringdata; v.obj:=xcreatedefaulttext(xdefaultstringformat,''); end;
	xsetslice(v.obj,xvslice,t);
end;

function  xpopasstring(s:xstack):xstring;

procedure xpopasstring_simpletype;
begin
	with s^ do result:=xgetslice(vars[sp].ref.obj,xvslice);
end;

procedure xpopasstring_symbol;
begin
	with s^ do result:=xsymboltostring(vars[sp].ref.obj);
end;

begin
	result:=''; if s=nil then exit;
	with s^ do begin
		if sp<1 then begin xrunerror('Internal Error 104.'); exit; end;
		if xtypemismatch(vars[sp].ref,xsimpletypes+[xsymboldata]) then exit;
		if xtype(vars[sp].ref.obj)=xsymbolrecord then xpopasstring_symbol else xpopasstring_simpletype;
		if vars[sp].vtyp=xstaticvar then begin xdestroyshape(vars[sp].obj); vars[sp].obj:=nil; end;
		dec(sp);
	end;
end;

function  xpopboolean(s:xstack):xboolean;
begin
	result:=false; if s=nil then exit;
	with s^ do begin
		if sp<1 then begin xrunerror('Internal Error 105.'); exit; end;
		if xtypemismatch(vars[sp].ref,[xbooleandata]) then exit;
		result:=xstb(xgetslice(vars[sp].ref.obj,xvslice));
		if vars[sp].vtyp=xstaticvar then begin xdestroyshape(vars[sp].obj); vars[sp].obj:=nil; end;
		dec(sp);
	end;
end;

procedure xpopcaret;
	var cc:xinteger;
begin
	with xcarets do begin
		xhidecaret;
		current:=stack[1];
		for cc:=1 to high(stack)-1 do stack[cc]:=stack[cc+1];
	end;
end;

procedure xpopcursor;
	var cc:xinteger;
begin
	with xcursors do begin
		xhidecursor;
		current:=stack[1];
		for cc:=1 to high(stack)-1 do stack[cc]:=stack[cc+1];
		if current<>xnocursor	then while showcursor(true)<0 do;
		if current=xnocursor	then while showcursor(false)>=0 do;
	end;
end;

procedure xpopmachine;
begin
	with xca^,local do begin
		xdestroyvariables(stack,true,false);
		xpopmark(stack);
		stack.sf:=xpopregister(stack);
		ip:=xpopobject(stack);
		abort:=xpopboolean(stack);
	end;
end;

procedure xpopmark(s:xstack);
begin
	if s=nil then exit;
	with s^ do begin
		if sp<1 then begin xrunerror('Internal Error 107.'); exit; end;
		if vars[sp].ref.vtyp<>xmarkvar then begin xrunerror('Internal Error 103.'); exit; end;
		dec(sp);
	end;
end;

procedure xpopn(s:xstack; n:xinteger);
	var cv:xinteger;
begin
	if s=nil then exit;
	with s^ do begin
		for cv:=1 to n do begin
			if sp<=0 then begin xrunerror('Internal Error 102.'); exit; end;
			if vars[sp].vtyp=xstaticvar then begin xdestroyshape(vars[sp].obj); vars[sp].obj:=nil; end;
			dec(sp);
		end;
	end;
end;

function  xpopnumber(s:xstack):xnumber;
begin
	result:=0; if s=nil then exit;
	with s^ do begin
		if sp<1 then begin xrunerror('Internal Error 106.'); exit; end;
		if xtypemismatch(vars[sp].ref,[xnumberdata]) then exit;
		result:=xstnc(xgetslice(vars[sp].ref.obj,xvslice));
		if vars[sp].vtyp=xstaticvar then begin xdestroyshape(vars[sp].obj); vars[sp].obj:=nil; end;
		dec(sp);
	end;
end;

function  xpopobject(s:xstack):xobject;
begin
	result:=nil; if s=nil then exit;
	with s^ do begin
		if sp<1 then begin xrunerror('Internal Error 108.'); exit; end;
		result:=vars[sp].ref.obj;
		dec(sp);
	end;
end;

function  xpopregister(s:xstack):xinteger;
begin
	result:=0; if s=nil then exit;
	with s^ do begin
		if sp<1 then begin xrunerror('Internal Error 109.'); exit; end;
		result:=xinteger(vars[sp].ref.obj);
		dec(sp);
	end;
end;

procedure xpositioncabinet(c:xcabinet; d:xdir);
	var n,dx:xinteger;
begin
	if c=nil then exit;
	if not (d in [xend,xhome,xpagedown,xpageup]) then exit;
	with c^ do begin
		if drawers.first=nil then exit;
		if d in [xend,xhome] then n:=xgetdrawercount(drawers);
		dx:=0;
		case d of
			xend:				dx:=-n*xdrawergrid;
			xhome:			dx:=+n*xdrawergrid;
			xpagedown:	dx:=-(ops-1)*xdrawergrid;
			xpageup:		dx:=+(ops-1)*xdrawergrid;
		end;
		xmovecabinetorigin(c,dx);
		xselectdrawers(drawers,false);
		xgetfirstvisibledrawer(drawers,true).sel:=true;
	end;
end;

procedure xpositiondrawer(t:xdrawer; d:xdir);
	var n,dy:xinteger;
begin
	if t=nil then exit;
	if not (d in [xend,xhome,xpagedown,xpageup]) then exit;
	with t^ do begin
		if folders.first=nil then exit;
		if d in [xend,xhome] then n:=xgetfoldercount(folders);
		dy:=0;
		case d of
			xend:				dy:=-n*xfoldergrid;
			xhome:			dy:=+n*xfoldergrid;
			xpagedown:	dy:=-(ops-1)*xfoldergrid;
			xpageup:		dy:=+(ops-1)*xfoldergrid;
		end;
		xmovedrawerorigin(t,dy);
		xselectfolders(folders,false);
		xgetfirstvisiblefolder(folders,true).sel:=true;
	end;
end;

procedure xpositionfolder(f:xfolder; d:xdir);
	var n,dy:xinteger;
begin
	if f=nil then exit;
	if not (d in [xend,xhome,xpagedown,xpageup]) then exit;
	with f^ do begin
		if pages.first=nil then exit;
		if d in [xend,xhome] then n:=xgetpagecount(pages);
		dy:=0;
		case d of
			xend:				dy:=-n*xpagegrid;
			xhome:			dy:=+n*xpagegrid;
			xpagedown:	dy:=-(ops-1)*xpagegrid;
			xpageup:		dy:=+(ops-1)*xpagegrid;
		end;
		xmovefolderorigin(f,dy);
		xselectpages(pages,false);
		xgetfirstvisiblepage(pages,true).sel:=true;
	end;
end;

function  xpositionrectangle(r:xrect; x,y:xtwit):xrect;
begin
	result.left:=x;
	result.top:=y;
	result.right:=result.left+r.right-r.left;
	result.bottom:=result.top+r.bottom-r.top;
end;

function  xpositiontopoint(d:xdevice; var t:xtext; p:xposition):xpoint;
	var re:tabc; fc,lc,sz,x:xinteger;
begin
	result:=xnilpoint;
	with t,p do try
		result.y:=(row-1)*rowheight;
		if xissimple(t) then begin result.x:=xzoommargin(t)+(col-1)*colwidth-10; exit; end;
		xsetfont(d,font,mag);
		x:=xformatrow(d,t,row,xnilpoint,xnilrect,fc,lc);
		sz:=gettabbedtextextent(xdcs[d],@rows[row][1],col-1,1,tabsize);
		result.x:=loword(sz)*xfac+x-10;
		if (result.x+rect.left>rect.right) and (col=length(rows[row])) and (length(rows[row])>1) then
			getcharabcwidths(xdcs[d],ord(rows[row][length(rows[row])-1]),ord(rows[row][length(rows[row])-1]),re) else re.abcc:=0;
		if re.abcc>0 then dec(result.x,re.abcc*xfac);
		result.y:=(row-1)*font.size;
	finally result:=xgp(result,rect.topleft); end;
end;

function  xprintpage(p:xpage; auto:xboolean):xboolean;
	var cs,ns:xshape;
begin
	result:=false; if p=nil then exit;
	if xprinting.canceled then begin xcx:='Printing canceled.'; exit; end;
	if xprinting.error then begin xcx:='Printing canceled due to error.'; exit; end;
	result:=true;
	p:=xcopypage(p,true);
	xnormalizepage(p,1/p.mag,60,p.slice);
	xbeginprinterpage(p.body,auto);
	xsetcliprectangle(xprinter,p.body);
	ns:=p.shapes.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if xgetedge(cs)<>xnoedge then continue;
		if cs.styp=xpictureshape then xadjustpicture(cs.picture,false);
		xdrawshape(xprinter,cs);
	end;
	xendprinterpage;
	xdestroypage(p);
end;

function  xptac(var t:xtext; p:xposition):xinteger; // positiontoabsolutecharacter
	var cr:xinteger;
begin
	with t,p do begin
		result:=0;
		for cr:=1 to count do begin
			if cr=row then begin result:=result+col; exit; end;
			inc(result,length(rows[cr]));
		end;
	end;
end;

procedure xpushboolean(s:xstack; b:xboolean);
begin
	if s=nil then exit;
	xpushobject(s,xstaticvar,xbooleandata,xcreatedefaulttext(xdefaultbooleanformat,xbts(b)));
end;

procedure xpushcaret;
	var cc:xinteger;
begin
	with xcarets do begin
		for cc:=high(stack) downto 2 do stack[cc]:=stack[cc-1];
		stack[1]:=current;
		xhidecaret;
	end;
end;

procedure xpushcursor;
	var cc:xinteger;
begin
	with xcursors do begin
		for cc:=high(stack) downto 2 do stack[cc]:=stack[cc-1];
		stack[1]:=current;
		xhidecursor;
	end;
end;

procedure xpushdate(s:xstack; d:xdate);
begin
	if s=nil then exit;
	xpushobject(s,xstaticvar,xdatedata,xcreatedefaulttext(xdefaultdateformat,xdts(d)));
end;

procedure xpushmachine;
begin
	with xca^,local do begin
		xpushboolean(stack,abort);
		xpushobject(stack,xdynamicvar,xnodata,ip);
		xpushregister(stack,stack.sf);
		xpushmark(stack);
	end;
end;

procedure xpushnumber(s:xstack; n:xnumber);
begin
	if s=nil then exit;
	xpushobject(s,xstaticvar,xnumberdata,xcreatedefaulttext(xdefaultnumberformat,xnts(n)));
end;

procedure xpushmark(s:xstack);
begin
	if s=nil then exit;
	xpushobject(s,xmarkvar,xnodata,nil);
end;

procedure xpushobject(s:xstack; v:xvartyp; d:xdatatyp; o:xobject);
begin
	if s=nil then exit;
	with s^ do begin
		if sp=high(vars) then begin xrunerror('Stack overflow.'); exit; end;
		inc(sp);
		vars[sp].vtyp:=v;
		vars[sp].dtyp:=d;
		vars[sp].ref:=@vars[sp];
		vars[sp].obj:=o;
	end;
end;

procedure xpushregister(s:xstack; v:xinteger);
begin
	if s=nil then exit;
	with s^ do begin
		if sp=high(vars) then begin xrunerror('Stack overflow.'); exit; end;
		inc(sp);
		vars[sp].vtyp:=xregvar;
		vars[sp].dtyp:=xnodata;
		vars[sp].ref:=@vars[sp];
		vars[sp].obj:=xobject(v);
	end;
end;

procedure xpushstring(s:xstack; v:xstring);
begin
	if s=nil then exit;
	xpushobject(s,xstaticvar,xstringdata,xcreatedefaulttext(xdefaultstringformat,v));
end;

procedure xpushtime(s:xstack; t:xtime);
begin
	if s=nil then exit;
	xpushobject(s,xstaticvar,xtimedata,xcreatedefaulttext(xdefaulttimeformat,xtts(t)));
end;

{q}

function  xqts(s:xstring):xstring;
	var c:xchar; i:xinteger;
begin
	result:=''; if s='' then exit;
	c:=s[1]; delete(s,1,1); delete(s,length(s),1);
	i:=1; while i<length(s) do begin if s[i]=c then delete(s,i,1); inc(i); end;
	result:=s;
end;

{r}

function  xreadaddenda:xboolean;
begin
	result:=false; xlexicon.addenda:=xcrlf;
	if not xreadfile(xgetaddendafilename) then exit;
	result:=true;
	xfetchaddenda;
end;

function  xreadblock(path:xstring; var b:xblock):xboolean;
begin
	result:=false; b:=nil;
	if not xfileexists(path) then begin xcx:=''''+path+''' is not a valid file.'; exit; end;
	if not xreadfile(path) then exit;
	result:=true; b:=xfetchblock(path);
end;

function  xreadconfiguration:xboolean;
begin
	result:=false;
	if not xfileexists(xgetconfigurationfilename) then begin result:=true; exit; end;
	if not xreadfile(xgetconfigurationfilename) then exit;
	result:=xfetchconfiguration;
end;

function  xreaddrawerentry(cid:xstring; rid:xinteger; var d:xdrawerentry):xboolean;
begin
	result:=xreadentry(xgetdrawerindexname(cid),rid,sizeof(xdrawerentry),d);
end;

function  xreaddrawerindex(cid:xstring):xboolean;
begin
	result:=xreadindex(xgetdrawerindexname(cid),sizeof(xdrawerentry));
end;

function  xreadentry(path:xstring; rid,rlen:xinteger; var e):xboolean;
	var fcb:file;
begin
	xassignfile(fcb,path);
	xreset(fcb,rlen);
	xseek(fcb,rid);
	xblockread(fcb,e,1);
	xclosefile(fcb);
	result:=not xioerror(xioresult);
end;

function  xreadfile(path:xstring):xboolean;
	var fcb:file;
begin
	with xbuffer do begin
		xassignfile(fcb,path);
		xreset(fcb,1);
		count:=xfilesize(fcb);
		while count>=size do xgrowbuffer;
		xblockread(fcb,bytes^,count);
		xclosefile(fcb);
		pos:=1;
		result:=not xioerror(xioresult);
	end;
end;

function  xreadfolderentry(cid:xstring; did,rid:xinteger; var f:xfolderentry):xboolean;
begin
	result:=xreadentry(xgetfolderindexname(cid,did),rid,sizeof(xfolderentry),f);
end;

function  xreadfolderindex(cid:xstring; did:xinteger):xboolean;
begin
	result:=xreadindex(xgetfolderindexname(cid,did),sizeof(xfolderentry));
end;

function  xreadindex(path:xstring; rlen:xinteger):xboolean;
	var fcb:file;
begin
	with xindex do begin
		xassignfile(fcb,path);
		xreset(fcb,rlen);
		count:=xfilesize(fcb);
		while count*rlen>=size do xgrowindex;
		xblockread(fcb,entries^,count);
		xclosefile(fcb);
		result:=not xioerror(xioresult);
	end;
end;

function  xreadlexicon:xboolean;
begin
	result:=false;
	if not xfileexists(xgetlexiconfilename) then begin xcx:='Lexicon not found.'; exit; end;
	if not xreadfile(xgetlexiconfilename) then exit;
	result:=true;
	xfetchlexicon;
end;

function  xreadpage(p:xpage):xboolean;
begin
	result:=false; if p=nil then exit;
	if not xreadfile(xgetpagefilename(p.cid,p.did,p.fid,p.pid)) then exit;
	if not xfetchpage(p) then begin xcx:='Page is damaged.'; exit; end;
	result:=true;
end;

function  xreadpageentry(cid:xstring; did,fid,rid:xinteger; var p:xpageentry):xboolean;
begin
	result:=xreadentry(xgetpageindexname(cid,did,fid),rid,sizeof(xpageentry),p);
end;

function  xreadpageindex(cid:xstring; did,fid:xinteger):xboolean;
begin
	result:=xreadindex(xgetpageindexname(cid,did,fid),sizeof(xpageentry));
end;

function  xreadpicture(path:xstring; var p:xpicture):xboolean;
	var b:xbitmap; f:xboolean;
begin
	with xbuffer do begin
		result:=false;
		if not xreadfile(path) then exit;
		case (bytes[1] shl 8) or (bytes[2]) of
			$424d:  begin b:=@bytes[sizeof(tbitmapfileheader)+1]; f:=false; end;
			$ffd8:	begin if not xfetchjpeg(b) then exit; f:=true; end;
			else		begin xcx:='Specified file is not a valid picture.'; exit; end;
		end;
		result:=xbitmaptopicture(b,p);
		if f then freemem(b);
	end;
end;

function  xreadsort(f:xfolder; var s:xstring):xboolean;
begin
	result:=false; s:=''; if f=nil then exit;
	if not xreadfile(xgetsortfilename(f.cid,f.did,f.fid)) then exit;
	if not xfetchsort(s) then begin xcx:='Sort file is damaged.'; exit; end;
	result:=true;
end;

function  xreallocmemory(p:xpointer; s:xinteger):xpointer;
begin
	result:=xmanager.old.reallocmem(p,s);
end;

function	xrectangleencloses(a,b:xrect):xboolean;
begin
	result:=false;
	if b.left<a.left then exit;
	if b.top<a.top then exit;
	if b.right>a.right then exit;
	if b.bottom>a.bottom then exit;
	result:=true;
end;

function	xrectangleequals(a,b:xrect):xboolean;
begin
	result:=false;
	if b.left<>a.left then exit;
	if b.top<>a.top then exit;
	if b.right<>a.right then exit;
	if b.bottom<>a.bottom then exit;
	result:=true;
end;

function  xrectangleintersects(a,b:xrect):xboolean;
begin
	result:=false;
	if b.right<a.left then exit;
	if b.bottom<a.top then exit;
	if b.left>a.right then exit;
	if b.top>a.bottom then exit;
	result:=true;
end;

procedure xrefreshmenus;
begin
	xdestroymenus(false);
	xcreatemenu(xfilemenu,'File');
	xcreatemenu(xeditmenu,'Edit');
	xcreatemenu(xviewmenu,'View');
	xcreatemenu(xspecialmenu,'Special');
	if xcv=xcabinetview	then xcreatemenu(xdrawermenu,'Drawer');
	if xcv=xdrawerview 	then xcreatemenu(xfoldermenu,'Folder');
	if xcv=xfolderview 	then xcreatemenu(xpagemenu,'Page');
	if xcv=xpageview 	then xcreatemenu(xpagemenu,'Page');
	if (xcv=xpageview) and (xisdrawingpage(xcp)) then xcreatemenu(xshapemenu,'Shape');
	if (xcv=xpageview) and (not xisformpage(xcp)) then xcreatemenu(xfontmenu,'Font');
	if (xcv=xpageview) and (xisdrawingpage(xcp)) then begin
		xcreatemenu(xpenmenu,'Pen');
		xcreatemenu(xbordermenu,'Border');
		xcreatemenu(xfillmenu,'Fill');
	end;
	xadjustbar;
end;

function  xremovecharacters(s:xstring; c:xcharset):xstring;
	var cc:xinteger;
begin
	for cc:=length(s) downto 1 do if s[cc] in c then delete(s,cc,1);
	result:=s;
end;

procedure xremovecurvevertex(var c:xcurve; v:xvertex);
begin
	xremovepolygonvertex(xpolygon(c),v);
end;

function  xremoveleading(s:xstring; c:xcharset):xstring;
begin
	while (length(s)<>0) and (s[1] in c) do delete(s,1,1);
	result:=s;
end;

function  xremovelink(n:xlink):xlink;
	var r:xrecord;
begin
	result:=n; r:=n; if (r=nil) or (r.chain=nil) then exit;
	with r^ do begin
		if r=chain.first then chain.first:=next;
		if r=chain.last then chain.last:=prev;
		if next<>nil then next.prev:=prev;
		if prev<>nil then prev.next:=next;
		prev:=nil; next:=nil;
		chain:=nil; parent:=nil;
	end;
end;

procedure xremovepolygonvertex(var n:xpolygon; v:xvertex);
begin
	with n do begin
		if count<=2 then exit;
		move(vertices[v+1],vertices[v],sizeof(xpoint)*(count-v));
		dec(count);
		xadjustpolygon(n);
	end;
end;

function  xremovepossessive(w:xstring):xstring;
begin
	if (length(w)>2) and (w[length(w)]='s') and (w[length(w)-1] in xsqs) then delete(w,length(w)-1,2);
	result:=w;
end;

procedure xremoverows(var t:xtext; sr,er:xinteger);
	var c,cr:xinteger;
begin
	with t do begin
		if sr>er then exit;
		for cr:=er+1 to count do rows[sr+(cr-er)-1]:=rows[cr];
		for cr:=count-(er-sr+1)+1 to count do finalize(rows[cr]);
		c:=xgetrowchunk(t);
		dec(count,er-sr+1); while xaligntoboundary(count,c)<size do xshrinkrows(t);
	end;
end;

procedure xremoveshapevertex(s:xshape; v:xvertex);
begin
	if s=nil then exit;
	with s^ do case styp of
		xcurveshape:		xremovecurvevertex(curve,v);
		xpolygonshape:	xremovepolygonvertex(polygon,v);
	end;
	xadjustshape(s);
end;

function  xremovetrailing(s:xstring; c:xcharset):xstring;
begin
	while (length(s)<>0) and (s[length(s)] in c) do delete(s,length(s),1);
	result:=s;
end;

function  xremoveunwanted(s:xstring):xstring;
	const dumps=[chr($00)..chr($1F)]-[xcr,xlf,xtb]; var cc:xinteger;
begin
	for cc:=length(s) downto 1 do if s[cc] in dumps then delete(s,cc,1);
	result:=s;
end;

function  xrenamedrawer(d:xdrawer; g,n,v:xstring):xboolean;
	var cd:xinteger;
begin
	result:=false; if d=nil then exit;
	if not xlockcabinet(d.cid) then exit;
	with xindex do try
		if not xreaddrawerindex(d.cid) then exit;
		if not xfinddrawerentry(d.did,cd) then exit;
		if not xdraweriscurrent(d,cd) then exit;
		with drawerindex[cd] do begin inc(level); group:=g; name:=n; version:=v; end;
		if not xwritedrawerindex(d.cid) then exit;
		result:=true;
		with d^ do begin inc(level); group:=g; name:=n; version:=v; end;
	finally xunlockcabinet(d.cid); end;
end;

function  xrenamefile(opath,npath:xstring):xboolean;
begin
	result:=renamefile(opath,npath);
end;

function  xrenamefolder(f:xfolder; n,v:xstring):xboolean;
	var cf:xinteger;
begin
	result:=false; if f=nil then exit;
	if not xlockcabinet(f.cid) then exit;
	with xindex do try
		if not xreadfolderindex(f.cid,f.did) then exit;
		if not xfindfolderentry(f.fid,cf) then exit;
		if not xfolderiscurrent(f,cf) then exit;
		with folderindex[cf] do begin inc(level); name:=n; version:=v; end;
		if not xwritefolderindex(f.cid,f.did) then exit;
		result:=true;
		with f^ do begin inc(level); name:=n; version:=v; end;
	finally xunlockcabinet(f.cid); end;
end;

function  xreplacecharacters(s:xshape; v:xstring):xboolean;
begin
	result:=false; if s=nil then exit;
	with s^,text do begin
		result:=true;
		xinsertcharacters(s,v);
		anchor.col:=caretpos.col-length(v);
	end;
end;

procedure xreplacelink(a,b:xlink);
begin
	if (a=nil) or (xrecord(a).chain=nil) then exit;
	if (b=nil) or (xrecord(b).chain<>nil) then exit;
	xinsertlinkafter(xrecord(a).chain,a,b);
	xremovelink(a);
end;

procedure xresamplebits(obits:xbytes; ow,oh:xinteger; nbits:xbytes; nw,nh:xinteger);
	var p,p1,q,q1,srcxf,srcyf,xfac,yfac:xextended;
	var cc,cr,dx,dy,nrw,ocw,orw,ncw,srcxi,srcyi:xinteger;
	var a,b,c,d,nc:^xrgb;
begin
	if (nw=0) or (nh=0) then exit;
	ocw:=3; orw:=xaligntoboundary(ow*ocw,4);
	ncw:=3; nrw:=xaligntoboundary(nw*ncw,4);
	xfac:=ow/nw; yfac:=oh/nh;
	for cr:=0 to nh-1 do begin
		srcyf:=cr*yfac; srcyi:=trunc(srcyf);
		q:=srcyf-srcyi; q1:=1.0-q;
		for cc:=0 to nw-1 do begin
			srcxf:=cc*xfac; srcxi:=trunc(srcxf);
			p:=srcxf-srcxi; p1:=1.0-p;

			if srcxi<>ow-1 then dx:=+1 else if srcxi<>0 then dx:=-1 else dx:=0;
			if srcyi<>oh-1 then dy:=+1 else if srcyi<>0 then dy:=-1 else dy:=0;

			a:=@obits[(((srcyi+00)*orw)+((srcxi+00)*ocw))+1];
			b:=@obits[(((srcyi+00)*orw)+((srcxi+dx)*ocw))+1];
			c:=@obits[(((srcyi+dy)*orw)+((srcxi+00)*ocw))+1];
			d:=@obits[(((srcyi+dy)*orw)+((srcxi+dx)*ocw))+1];

			nc:=@nbits[(((cr)*nrw)+((cc)*ncw))+1];
			nc.r:=trunc(((a.r*p1+b.r*p)*q1)+((c.r*p1+d.r*p)*q));
			nc.g:=trunc(((a.g*p1+b.g*p)*q1)+((c.g*p1+d.g*p)*q));
			nc.b:=trunc(((a.b*p1+b.b*p)*q1)+((c.b*p1+d.b*p)*q));
		end;
	end;
end;

procedure xreset(var f:xfile; r:xinteger);
begin
	reset(f,r);
	if ioresult=0 then exit;
	xclearreadonlyflag(tfilerec(f).name);
	reset(f,r);
end;

procedure xresetbuffer;
begin
	xbuffer.count:=0; xbuffer.pos:=1;
end;

procedure xresetclock(c:xclock);
begin
	xclocks[c].value:=0;
end;

procedure xresetclocks;
	var cc:xclock;
begin
	for cc:=1 to high(xclock) do xresetclock(cc);
end;

procedure xresetduplicate(p:xpage);
begin
	if p=nil then exit;
	p.dup.inprogress:=false;
	p.dup.offset:=xzoompoint(xmp(120,120),p.mag);
end;

procedure xresetmachine;
begin
	with xca^ do begin
		xunlockcabinets;
		source.shape:=nil; source.slice:=xnoslice;
		mark:=0;
		fillchar(code,sizeof(code),x00);
		fillchar(loop,sizeof(loop),x00);
		abort:=false;
		finalize(debug); debug:=xnildebug;
		xdestroysymbols(local.symbols,true,false);
		xdestroyvariables(local.stack,true,false);
	end;
end;

procedure xresolvejumps(i:xinstructions);
	var cii,coi,nii,noi:xinstruction;
begin
	if i=nil then exit;
	noi:=i.first;
	while noi<>nil do begin coi:=noi; noi:=noi.next;
		if not (coi.ityp in [xjumpinstr,xjumpfalseinstr,xjumptrueinstr]) then continue;
		nii:=i.first;
		while nii<>nil do begin cii:=nii; nii:=nii.next;
			if (cii.ityp<>xmarkinstr) or (coi.mark<>cii.mark) then continue;
			coi.ip:=cii;
			break;
		end;
	end;
end;

function  xrestorepagestate(undo:xboolean):xboolean;
	var fc,tc:xpages; rp:xpage;
begin
	result:=false; if xcp=nil then exit;
	fc:=xca.undo.pages; tc:=xca.redo.pages;
	if not undo then begin fc:=xca.redo.pages; tc:=xca.undo.pages; end;
	if fc.first=nil then exit;
	result:=true;
	if xgetpagecount(tc)=xmaxundos then xdestroypage(tc.first);
	rp:=xcopypage(xcp,true);
	xappendlink(tc,rp);
	rp:=fc.last; xremovelink(rp);
	xreplacelink(xcp,rp);
	rp.level:=xcp.level;
	xdestroypage(xcp);
	xca.page:=rp;
	xca.mag:=rp.mag; xca.snap:=rp.snap; xca.slice:=rp.slice;  xca.edges:=rp.edges;
end;

function  xrestoreshapestate(s:xshape; undo:xboolean):xboolean;
	var fc,tc:xshapes; rs:xshape;
begin
	result:=false; if s=nil then exit;
	fc:=xca.undo.texts; tc:=xca.redo.texts;
	if not undo then begin fc:=xca.redo.texts; tc:=xca.undo.texts; end;
	if fc.first=nil then exit;
	result:=true;
	if xgetshapecount(tc)=xmaxshapeundos then xdestroyshape(tc.first);
	rs:=xcopyshape(s);
	rs.text:=xzoomtext(rs.text,1/rs.mag);
	xappendlink(tc,rs);
	rs:=fc.last;
	xfinalizetext(s.text); s.text:=xcopytext(rs.text);
	s.text:=xzoomtext(s.text,s.mag);
	s.lastop:=rs.lastop;
	xdestroyshape(rs);
	xadjustshape(s);
end;

procedure xrestrictpage(p:xpage);
	var ph,wh,pw,ww,xa,xi,ya,yi:xtwit;
begin
	if p=nil then exit;
	with p^,origin,xca.clip do begin
		pw:=xwidth(body); 		ph:=xheight(body);
		ww:=xwidth(xca.clip);	wh:=xheight(xca.clip);
		if pw<ww 	then begin xi:=left+((ww-pw) div 2); xa:=xi; end;
		if pw>=ww then begin xi:=right-xzdg-pw; xa:=left+xzdg; end;
		if ph<wh 	then begin yi:=top+((wh-ph) div 2); ya:=yi; end;
		if ph>=wh	then begin yi:=bottom-xzdg-ph; ya:=top; end;
		if xisdrawingpage(xcp) then begin xi:=left+xzpg-pw; xa:=right-xzpg; end;
		if xisdrawingpage(xcp) then begin yi:=top+xzpg-ph; ya:=bottom-xzpg; end;
		x:=xlimit(x,xi,xa); y:=xlimit(y,yi,ya);
		origin:=xsnappoint(origin,xzdg);
	end;
end;

procedure xreturnboolean(b:xboolean);
begin
	with xca.local.stack^,vars[sf+3] do begin
		ref.vtyp:=xstaticvar;
		ref.dtyp:=xbooleandata;
		if ref.obj<>nil then xdestroyshape(ref.obj);
		ref.obj:=xcreatedefaulttext(xdefaultbooleanformat,xbts(b))
	end;
end;

procedure xreturndate(d:xdate);
begin
	with xca.local.stack^,vars[sf+3] do begin
		ref.vtyp:=xstaticvar;
		ref.dtyp:=xdatedata;
		ref.obj:=xcreatedefaulttext(xdefaultdateformat,xdts(d))
	end;
end;

procedure xreturnnull;
begin
	with xca.local.stack^,vars[sf+3] do begin
		ref.vtyp:=xstaticvar;
		ref.dtyp:=xnodata;
		ref.obj:=nil;
	end;
end;

procedure xreturnnumber(n:xnumber);
begin
	with xca.local.stack^,vars[sf+3] do begin
		ref.vtyp:=xstaticvar;
		ref.dtyp:=xnumberdata;
		ref.obj:=xcreatedefaulttext(xdefaultnumberformat,xnts(n))
	end;
end;

procedure xreturnobject(t:xvartyp; o:xobject);
begin
	with xca.local.stack^,vars[sf+3] do begin
		ref.vtyp:=t;
		ref.dtyp:=xdatatype(o);
		ref.obj:=o;
	end;
end;

procedure xreturnstring(s:xstring);
begin
	with xca.local.stack^,vars[sf+3] do begin
		ref.vtyp:=xstaticvar;
		ref.dtyp:=xstringdata;
		ref.obj:=xcreatedefaulttext(xdefaultstringformat,s)
	end;
end;

procedure xreturnstringastype(d:xdatatyp; s:xstring);
begin
	case d of
		xbooleandata:	xreturnboolean(xstb(s));
		xdatedata:    xreturndate(xstd(s));
		xnumberdata:  xreturnnumber(xstnc(s));
		xstringdata:  xreturnstring(s);
		xtimedata:    xreturntime(xstt(s));
	end;
end;

procedure xreturntime(t:xtime);
begin
	with xca.local.stack^,vars[sf+3] do begin
		ref.vtyp:=xstaticvar;
		ref.dtyp:=xtimedata;
		ref.obj:=xcreatedefaulttext(xdefaulttimeformat,xtts(t))
	end;
end;

procedure xreversechain(c:xpointer);
	var cr,nr:xrecord;
begin
	if c=nil then exit;
	if xrecord(c).rtyp<>xchainrecord then begin xerror('Internal Error 116.'); exit; end;
	with xchain(c)^ do begin
		cr:=first;
		while cr<>nil do begin nr:=cr.next; cr.next:=cr.prev; cr.prev:=nr; cr:=nr; end;
		nr:=first; first:=last; last:=nr;
	end;
end;

procedure xreverserows(s:xshape; sr,er:xinteger);
	var t:xstring;
begin
	if s=nil then exit;
	with s^,text do while sr<er do begin
		t:=rows[sr]; rows[sr]:=rows[er]; rows[er]:=t;
		inc(sr); dec(er);
	end;
end;

procedure xrewrite(var f:xfile; r:xinteger);
begin
	rewrite(f,r);
	if ioresult=0 then exit;
	xclearreadonlyflag(tfilerec(f).name);
	rewrite(f,r);
end;

function  xrotatearc(a:xarc):xarc;
begin
	result:=a;
	with result do begin
		rect:=xrotaterectangle(rect);
		angles[1]:=xnormalizeangle(angles[1]-90);
		angles[2]:=xnormalizeangle(angles[2]-90);
	end;
end;

function  xrotatecurve(c:xcurve; a:xdegree):xcurve;
begin
	result:=xcurve(xrotatepolygon(xpolygon(c),a));
end;

function  xrotateellipse(e:xellipse):xellipse;
begin
	result:=e;
	result.rect:=xrotaterectangle(e.rect);
end;

function  xrotatepicture(p:xpicture):xpicture;
	var bcp,ccp:xpoint; cc,cr,cw,nc,ncw,nr,nrw,rw,t:xinteger; nbits:xbytes;
begin
	result:=p;
	with result,omap,header do begin
		if bits=nil then exit;
		cw:=3; rw:=xaligntoboundary(biwidth*cw,4);
		ncw:=3; nrw:=xaligntoboundary(biheight*ncw,4);
		getmem(nbits,count);
		move(bits^,nbits^,count);
		count:=nrw*biwidth; reallocmem(bits,count); fillchar(bits^,count,x00);
		for cr:=1 to biheight do begin
			for cc:=1 to biwidth do begin
				nr:=biwidth-cc+1; nc:=cr;
				xrgb(xpointer(@bits[(((nr-1)*nrw)+((nc-1)*ncw))+1])^):=xrgb(xpointer(@nbits[(((cr-1)*rw)+((cc-1)*cw))+1])^);
			end;
		end;
		freemem(nbits);
		t:=biwidth; biwidth:=biheight; biheight:=t;
		bcp:=xgetcenterpoint(bitmaprect); ccp:=xgetcenterpoint(croprect);
		croprect:=xmoverectangle(croprect,(bcp.y-ccp.y+bcp.x)-ccp.x,(bcp.y+ccp.x-bcp.x)-ccp.y);
		bitmaprect:=xrotaterectangle(bitmaprect);
		croprect:=xrotaterectangle(croprect);
		croprect:=xmoverectangle(croprect,-bitmaprect.left,-bitmaprect.top);
		bitmaprect:=xmoverectangle(bitmaprect,-bitmaprect.left,-bitmaprect.top);
		rect:=xrotaterectangle(rect);
		xadjustpicture(result,true);
	end;
end;

function  xrotatepolygon(n:xpolygon; a:xdegree):xpolygon;
	var na:xdegree; cp:xpoint; cv:xvertex; d:xextended;
begin
	result:=n;
	with result do begin
		cp:=xgetcenterpoint(rect);
		for cv:=1 to count do with vertices[cv] do begin
			d:=xgetdistance(vertices[cv],cp);
			na:=degtorad(xnormalizeangle(xgetangle(cp,vertices[cv])+a));
			x:=cp.x+round(cos(na)*d); y:=cp.y-round(sin(na)*d);
		end;
		xadjustpolygon(result);
	end;
end;

function  xrotaterectangle(r:xrect):xrect;
	var cp:xpoint;
begin
	with result do begin
		cp:=xgetcenterpoint(r);
		right:=cp.y-r.top+cp.x;
		top:=r.left-cp.x+cp.y;
		left:=cp.y-r.bottom+cp.x;
		bottom:=r.right-cp.x+cp.y;
	end;
end;

procedure xrotateshape(s:xshape);

procedure xrotateshape_group;
	var cs:xshape; gcp,scp:xpoint;
begin
	s.rect:=xrotaterectangle(s.rect);
	gcp:=xgetcenterpoint(s.rect);
	cs:=s.shapes.first;
	while cs<>nil do begin
		scp:=xgetcenterpoint(cs.rect);
		xmoveshape(cs,(gcp.y-scp.y+gcp.x)-scp.x,(gcp.y+scp.x-gcp.x)-scp.y);
		xrotateshape(cs);
		cs:=cs.next;
	end;
end;

begin
	if s=nil then exit;
	with s^ do case styp of
		xarcshape:				arc:=xrotatearc(arc);
		xcurveshape:			curve:=xrotatecurve(curve,-90);
		xellipseshape:		ellipse:=xrotateellipse(ellipse);
		xgroupshape:			xrotateshape_group;
		xpictureshape:		picture:=xrotatepicture(picture);
		xpolygonshape:		polygon:=xrotatepolygon(polygon,-90);
		xrectangleshape:	rectangle:=xrotaterectangle(rectangle);
		xtextshape:				text:=xrotatetext(text);
	end;
	xadjustshape(s);
end;

function  xrotatetext(var t:xtext):xtext;
begin
	result:=t;
	result.rect:=xrotaterectangle(t.rect);
	xwraptext(result,1,true,not xissimple(t));
end;

procedure xrunerror(e:xstring);
begin
	with xca^,source do begin
		if abort then exit;
		abort:=true;
		xcx:=e;
		if ip<>nil then begin finalize(xsearch.debug); xsearch.debug:=ip.debug; end;
		xsearch.error:=e;
	end;
end;

function  xrunevent(s:xscope; n:xstring; c:xinteger; p:array of xobject):xboolean;
	var b:xboolean; cp:xinteger; cs,ns:xsymbol;
begin
	with xca^ do begin
		result:=true; xsaveedit(xcs); s:=xv(s); n:=xv(n);
		ns:=global.symbols.first;
		while ns<>nil do begin cs:=ns; ns:=ns.next;
			if not (cs.styp in [xexternsym,xinternsym]) then continue;
			if (s<>'') and (xv(cs.scope)<>s) then continue;
			if cs.name<>n then continue;
			xpushmachine;
			for cp:=1 to c do xpushobject(local.stack,xdynamicvar,xdatatype(p[cp-1]),p[cp-1]);
			if cs.styp=xexternsym then xexecutepage(cs.page,c,false);
			if cs.styp=xinternsym then xexecuteinternal(cs.intern,c,false);
			b:=abort;
			result:=result and not b;
			if b then xresetmachine;
			if (b) and (n<>'menuevent') then xerror(xcx);
			xpopmachine;
		end;
	end;
end;

procedure xrunitem(i:xitem);
begin
	if i=nil then exit;
	with i^ do begin
		if @handler=@xhandlealign		  then begin xhandlealign(parms[1]); exit; end;
		if @handler=@xhandlearrow		  then begin xhandlearrow(parms[1],parms[2]); exit; end;
		if @handler=@xhandlecorrect	  then begin xhandlecorrect(xvalue(xinteger(parms[1]))); exit; end;
		if @handler=@xhandledent	    then begin xhandledent(parms[1]); exit; end;
		if @handler=@xhandleedge	    then begin xhandleedge(parms[1]); exit; end;
		if @handler=@xhandleface	    then begin xhandleface(parms[1]); exit; end;
		if @handler=@xhandlefill	    then begin xhandlefill(parms[1]); exit; end;
		if @handler=@xhandleflip		  then begin xhandleflip(parms[1]); exit; end;
		if @handler=@xhandlemixture	  then begin xhandlemixture(parms[1],parms[2]); exit; end;
		if @handler=@xhandlemove		  then begin xhandlemove(parms[1]); exit; end;
		if @handler=@xhandlenew			  then begin xhandlenew(xpage(xinteger(parms[1]))); exit; end;
		if @handler=@xhandlenewshape	then begin xhandlenewshape(parms[1]); exit; end;
		if @handler=@xhandlepigment		then begin xhandlepigment(parms[1],parms[2]); exit; end;
		if @handler=@xhandleposition	then begin xhandleposition(parms[1]); exit; end;
		if @handler=@xhandleprogram	  then begin xhandleprogram(xobject(xinteger(parms[1]))); exit; end;
		if @handler=@xhandlesend	    then begin xhandlesend(parms[1]); exit; end;
		if @handler=@xhandlesize	    then begin xhandlesize(parms[1]); exit; end;
		if @handler=@xhandleslice	    then begin xhandleslice(parms[1]); exit; end;
		if @handler=@xhandlesnap	    then begin xhandlesnap(parms[1]); exit; end;
		if @handler=@xhandlesort	    then begin xhandlesort(parms[1],parms[2]); exit; end;
		if @handler=@xhandlestyle	    then begin xhandlestyle(parms[1]); exit; end;
		if @handler=@xhandlezoom	    then begin xhandlezoom(parms[1]); exit; end;
		if @handler<>nil 						  then begin handler; exit; end;
	end;
end;

{s}

function  xsaveblock(b:xblock):xboolean;
begin
	result:=false; if b=nil then exit;
	if not b.edit.modified then begin result:=true; exit; end;
	b.edit.modified:=false;
	if not xwriteblock(b) then exit;
	result:=true;
end;

procedure xsavedrawerselections(d:xdrawers);
	var cd:xdrawer;
begin
	if d=nil then exit;
	cd:=d.first;
	while cd<>nil do begin cd.was:=cd.sel; cd:=cd.next; end;
end;

procedure xsaveedit(s:xshape);
begin
	if s=nil then exit;
	xsetslice(s,s.slice,xgetvalue(s.text));
end;

procedure xsavefolderselections(f:xfolders);
	var cf:xfolder;
begin
	if f=nil then exit;
	cf:=f.first;
	while cf<>nil do begin cf.was:=cf.sel; cf:=cf.next; end;
end;

function  xsavepage(p:xpage):xboolean;
	var cp:xinteger; e:xboolean;
begin
	result:=false; if p=nil then exit;
	if not p.shapes.opened then begin result:=true; exit; end;
	if not p.modified then begin result:=true; exit; end;
	p.modified:=false;
	if xcabinetidentifierisreadonly(p.cid) then begin result:=true; exit; end;
	if not xpageisfiled(p) then exit;
	xindexpage(p); e:=xupdatepage(p); xindexpage(p);
	if not xlockcabinet(p.cid) then exit;
	with xindex do try
		if not xreadpageindex(p.cid,p.did,p.fid) then exit;
		if not xfindpageentry(p.pid,cp) then exit;
		if not xpageiscurrent(p,cp) then exit;
		inc(pageindex[cp].level);
		pageindex[cp].fields:=p.fields;
		if not xwritepageindex(p.cid,p.did,p.fid) then exit;
		result:=e;
		inc(p.level);
		if not xwritepage(p) then exit;
		if p.edit<>nil then p.modified:=true;
	finally xunlockcabinet(p.cid); end;
end;

procedure xsavepageselections(p:xpages);
	var cp:xpage;
begin
	if p=nil then exit;
	cp:=p.first;
	while cp<>nil do begin cp.was:=cp.sel; cp:=cp.next; end;
end;

procedure xsavepagestate;
begin
	if xcp=nil then exit;
	xcp.modified:=true;
	xdestroypages(xca.redo.pages,false);
	if xgetpagecount(xca.undo.pages)=xmaxundos then xdestroypage(xca.undo.pages.first);
	xappendlink(xca.undo.pages,xcopypage(xcp,true));
end;

procedure xsaveshapestate(s:xshape; o:xshapeop);
	var cs:xshape;
begin
	if s=nil then exit;
	with xca^,undo do begin
		s.modified:=true;
		xdestroyshapes(redo.texts,false);
		if (s.lastop=o) and (s.lastop<>xnoshapeop) then exit;
		if xgetshapecount(undo.texts)=xmaxshapeundos then xdestroyshape(undo.texts.first);
		cs:=xcopyshape(s);
		cs.text:=xzoomtext(cs.text,1/cs.text.mag);
		xappendlink(undo.texts,cs);
		s.lastop:=o;
	end;
end;

procedure xsaveshapeselections(s:xshapes);
	var cs:xshape;
begin
	if s=nil then exit;
	cs:=s.first; while cs<>nil do begin cs.was:=cs.sel; cs:=cs.next; end;
end;

procedure xsavestopselections(s:xstops);
	var cs:xstop;
begin
	if s=nil then exit;
	cs:=s.first; while cs<>nil do begin cs.shape.was:=cs.shape.sel; cs:=cs.next; end;
end;

function  xscanpicture(s:xdoodad; var p:xpicture):xboolean;

type enumeration=set of tw_uint8;

var aid,sid:tw_identity; bitmap:xbitmap; capability:tw_capability;
var dsm:dsmentryproc; event:tw_event;
var hdib:hbitmap; lib:hmodule; msg:tmsg;
var rc:xinteger; ui:tw_userinterface;

function  xscanpicture_setcapability(c,t,d:xinteger):xboolean; forward;

procedure xscanpicture_closesource;
begin
	dsm(@aid,nil,dg_control,dat_identity,msg_closeds,sid);
end;

procedure xscanpicture_closesourcemanager;
begin
	dsm(@aid,nil,dg_control,dat_parent,msg_closedsm,xwindow);
end;

procedure xscanpicture_disablesource;
begin
	dsm(@aid,@sid,dg_control,dat_userinterface,msg_disableds,ui);
end;

function  xscanpicture_enablesource:xboolean;
begin
	result:=false;
	ui.showui:=false;
	ui.modalui:=false;
	ui.hparent:=xwindow;
	if dsm(@aid,@sid,dg_control,dat_userinterface,msg_enableds,ui)<>twrc_success then begin xcx:='Unable to enable TWAIN data source.'; exit; end;
	result:=true;
end;

function  xscanpicture_findsource:xboolean;
	var dn:xstring; rc:xinteger;
begin
	result:=false; fillchar(sid,sizeof(sid),x00); dn:=xv(s.device);
	if dn=xdefaultscannerdevice then begin
		rc:=dsm(@aid,nil,dg_control,dat_identity,msg_getdefault,sid);
		if rc<>twrc_success then begin xcx:='Unable to find TWAIN data source.'; exit; end;
		result:=true;
		exit;
	end;
	rc:=dsm(@aid,nil,dg_control,dat_identity,msg_getfirst,sid);
	while rc=twrc_success do begin
		if xv(sid.productname)=dn then begin result:=true; exit; end;
		rc:=dsm(@aid,nil,dg_control,dat_identity,msg_getnext,sid);
	end;
	xcx:='Unable to find TWAIN data source.';
end;

function  xscanpicture_findsourcemanager:xboolean;
begin
	result:=false;
	dsm:=getprocaddress(lib,xdsmentrystr); if @dsm=nil then begin xcx:='Unable to find TWAIN data source manager.'; exit; end;
	result:=true;
end;

function  xscanpicture_getcapability(c:xinteger):xinteger;
	var p:ptw_onevalue;
begin
	with capability do begin
		result:=-1;
		cap:=c;
		contype:=twon_onevalue;
		hcontainer:=0;
		if dsm(@aid,@sid,dg_control,dat_capability,msg_getcurrent,capability)<>twrc_success then exit;
		p:=globallock(hcontainer); result:=p.item; globalunlock(hcontainer); globalfree(hcontainer);
	end;
end;

function  xscanpicture_getcapabilityenumeration(c:xinteger):enumeration;
	var ce:xinteger; e8:ptw_enumeration8; e16:ptw_enumeration16;
begin
	with capability do begin
		result:=[];
		cap:=c;
		contype:=twon_enumeration;
		hcontainer:=0;
		try
			if dsm(@aid,@sid,dg_control,dat_capability,msg_get,capability)<>twrc_success then exit;
			e8:=globallock(hcontainer); e16:=ptw_enumeration16(e8);
			if e8.itemtype=twty_uint8 then for ce:=0 to e8.numitems-1 do result:=result+[e8.itemlist[ce]];
			if e8.itemtype=twty_uint16 then for ce:=0 to e16.numitems-1 do result:=result+[e16.itemlist[ce]];
			globalunlock(hcontainer);
		finally globalfree(hcontainer); end;
	end;
end;

function  xscanpicture_loadlibrary:xboolean;
begin
	result:=false;
	lib:=loadlibrary(xtwaindllstr); if lib=0 then begin xcx:='Unable to load TWAIN dynamic link library.'; exit; end;
	result:=true;
end;

function  xscanpicture_opensource:xboolean;
begin
	result:=false;
	if dsm(@aid,nil,dg_control,dat_identity,msg_opends,sid)<>twrc_success then begin xcx:='Unable to open TWAIN data source.'; exit; end;
	result:=true;
end;

function  xscanpicture_opensourcemanager:xboolean;
begin
	with aid,version do begin
		result:=false;
		id:=0; majornum:=0; minornum:=0; language:=twlg_usa; country:=twcy_usa;
		info:=xprogramversionstring;
		protocolmajor:=twon_protocolmajor; protocolminor:=twon_protocolminor;
		supportedgroups:=dg_control or dg_image;
		manufacturer:='Perspective Technologies';
		productfamily:='Perspective'; productname:='Perspective';
		if dsm(@aid,nil,dg_control,dat_parent,msg_opendsm,xwindow)<>twrc_success then begin xcx:='Unable to open TWAIN data source manager.'; exit; end;
		result:=true;
	end;
end;

function  xscanpicture_setcapability(c,t,d:xinteger):xboolean;
	var p:ptw_onevalue;
begin
	with capability do begin
		result:=false;
		cap:=c;
		contype:=twon_onevalue;
		hcontainer:=globalalloc(ghnd,sizeof(tw_onevalue));
		try
			p:=globallock(hcontainer);
			p.itemtype:=t;
			p.item:=d;
			globalunlock(hcontainer);
			if dsm(@aid,@sid,dg_control,dat_capability,msg_set,capability)<>twrc_success then exit;
			result:=true;
		finally globalfree(hcontainer); end;
	end;
end;

function  xscanpicture_setcolor:xboolean;
	const colors:array[1..7] of xbyte=(twpt_rgb,twpt_palette,twpt_cmy,twpt_cmyk,twpt_yuv,twpt_yuvk,twpt_ciexyz);
	const grays:array[1..2] of xbyte=(twpt_gray,twpt_bw);
	var cc:xinteger; c,d,g:xinteger; e:enumeration;
begin
	with capability do begin
		result:=false;
		e:=xscanpicture_getcapabilityenumeration(icap_pixeltype); if e=[] then exit;
		d:=-1; c:=-1; g:=-1;
		for cc:=low(grays) to high(grays) do if grays[cc] in e then begin	g:=grays[cc]; break; end;
		for cc:=low(colors) to high(colors) do if colors[cc] in e then begin c:=colors[cc]; break; end;
		if (c>=0) or (xscanning.color) then d:=c else d:=g;
		if d<0 then begin xcx:='Invalid color support.'; exit; end;
		if not xscanpicture_setcapability(icap_pixeltype,twty_uint16,d) then begin xcx:='Unable to set color.'; exit; end;
		result:=true;
	end;
end;

function  xscanpicture_setindicators:xboolean;
begin
	result:=true; xscanpicture_setcapability(cap_indicators,twty_bool,0);
end;

function  xscanpicture_setrectangle:xboolean;
	var i:tw_imagelayout;
begin
	result:=false;
	fillchar(i,sizeof(i),xff);
	i.frame.left:=floattofix32(xscanning.rect.left/xtpi);
	i.frame.top:=floattofix32(xscanning.rect.top/xtpi);
	i.frame.right:=floattofix32(xscanning.rect.right/xtpi);
	i.frame.bottom:=floattofix32(xscanning.rect.bottom/xtpi);
	if dsm(@aid,@sid,dg_image,dat_imagelayout,msg_set,i)<>twrc_success then begin xcx:='Unable to set rectangle.'; exit; end;
	result:=true;
end;

function  xscanpicture_setresolution:xboolean;
begin
	result:=false;
	if not xscanpicture_setcapability(icap_xresolution,twty_fix32,xinteger(floattofix32(xscanning.res))) then begin xcx:='Unable to set x resolution.'; exit; end;
	if not xscanpicture_setcapability(icap_yresolution,twty_fix32,xinteger(floattofix32(xscanning.res))) then begin xcx:='Unable to set y resolution.'; exit; end;
	result:=true;
end;

function  xscanpicture_settransfercount:xboolean;
begin
	result:=false;
	if not xscanpicture_setcapability(cap_xfercount,twty_int16,1) then begin xcx:='Unable to set transfer count.'; exit; end;
	result:=true;
end;

function  xscanpicture_sourceiscompatible:xboolean;
	var p:ptw_onevalue;
begin
	with capability do begin
		if pos('mustek',xv(sid.manufacturer))<>0 then begin result:=true; exit; end;
		result:=false;
		cap:=cap_uicontrollable;
		contype:=twon_dontcare16;
		hcontainer:=0;
		if dsm(@aid,@sid,dg_control,dat_capability,msg_get,capability)<>twrc_success then begin xcx:='Scanner not fully TWAIN compatible.'; exit; end;
		p:=globallock(hcontainer);
		try
			if p.item=0 then begin xcx:='Scanner not fully TWAIN compatible.'; exit; end;
			result:=true;
		finally globalunlock(hcontainer); globalfree(hcontainer); end;
	end;
end;

procedure xscanpicture_transfer;
	var p:tw_pendingxfers; rc:xinteger;
begin
	rc:=dsm(@aid,@sid,dg_image,dat_imagenativexfer,msg_get,hdib);
	case rc of
		twrc_cancel:    begin xcx:='Scanning cancelled due to error.'; globalfree(hdib); hdib:=0; end;
		twrc_xferdone:	;
		twrc_failure:   begin xcx:='Scanning cancelled due to failure.'; hdib:=0; end;
		else						begin xcx:='Scanning cancelled due to unknown error.'; hdib:=0; end;
	end;
	dsm(@aid,@sid,dg_control,dat_pendingxfers,msg_endxfer,p);
	dsm(@aid,@sid,dg_control,dat_pendingxfers,msg_reset,p);
end;

function  xscanpicture_setunits:xboolean;
begin
	result:=false;
	if not xscanpicture_setcapability(icap_units,twty_uint16,twun_inches) then begin xcx:='Unable to set units.'; exit; end;
	result:=true;
end;

procedure xscanpicture_unloadlibrary;
begin
	freelibrary(lib);
end;

begin
	result:=false; p:=xmakepicture; hdib:=0; if s=nil then exit;
	xmessage('Preparing to scan...');
	if not xscanpicture_loadlibrary then exit;
	try
		if not xscanpicture_findsourcemanager then exit;
		if not xscanpicture_opensourcemanager then exit;
		try
			if not xscanpicture_findsource then exit;
			if not xscanpicture_opensource then exit;
			try
				if not xscanpicture_sourceiscompatible then exit;
				if not xscanpicture_setindicators then exit;
				if not xscanpicture_settransfercount then exit;
				if not xscanpicture_setcolor then exit;
				if not xscanpicture_setresolution then exit;
				if not xscanpicture_setunits then exit;
				if not xscanpicture_setrectangle then exit;
				xmessage('Scanning...');
				if not xscanpicture_enablesource then exit;
				// no messages or window activity after this point
				try
					xscanning.inprogress:=true;
					while getmessage(msg,0,0,0) do begin
						event.pevent:=@msg;
						event.twmessage:=msg_null;
						rc:=dsm(@aid,@sid,dg_control,dat_event,msg_processevent,event);
						case event.twmessage of
							msg_xferready:	begin xscanpicture_transfer; break; end;
							msg_closedsreq: break;
						end;
						if rc=twrc_dsevent then continue;
						translatemessage(msg);
						dispatchmessage(msg);
					end;
					xscanning.inprogress:=false;
				finally xscanpicture_disablesource; end;
			finally xscanpicture_closesource; end;
		finally xscanpicture_closesourcemanager; end;
	finally xscanpicture_unloadlibrary; end;
	if hdib=0 then exit;
	bitmap:=globallock(hdib);
	try
		if not xbitmaptopicture(bitmap,p) then exit;
		p.rect:=xscanning.rect;
		result:=true;
	finally globalunlock(hdib); globalfree(hdib); end;
end;

procedure xscrollblock(b:xblock);
	var cp,dp,g,np:xpoint;
begin
	if b=nil then exit;
	with b^,edit^,text do begin
		xshowcursor(xhandcursor);
		cp:=xce.gp;
		while xmouseisdown(xrightbutton) do begin
			np:=xgetmousepoint;
			g:=xgetshiftgrid(colwidth,rowheight);
			if not xmousehasmoved(cp,np,colwidth,g.y) then continue;
			dp:=xcalculatedelta(cp,np,colwidth,g.y);
			xmoveblockorigin(b,dp.x,dp.y*xgetshiftratio(count*rowheight,xheight(clip)));
			xslapblock(b);
			cp:=xmovepoint(cp,dp.x,dp.y);
		end;
		xshowcaret(xcs);
		xshowcursor(xarrowcursor);
	end;
end;

procedure xscrollcabinet(c:xcabinet);
	var cp,dp,np:xpoint;
begin
	if c=nil then exit;
	with c^,drawers^ do begin
		if first=nil then exit;
		xshowcursor(xhandcursor);
		cp:=xce.gp;
		while xmouseisdown(xrightbutton) do begin
			np:=xgetmousepoint;
			if not xmousehasmoved(cp,np,xdrawergrid,xdrawergrid) then continue;
			dp:=xcalculatedelta(cp,np,xdrawergrid,xdrawergrid);
			xmovecabinetorigin(c,dp.x*xgetshiftratio(lastdrawer.head.right,xwidth(body)));
			xslapcabinet(c);
			cp:=xmovepoint(cp,dp.x,dp.y);
		end;
		xshowcursor(xarrowcursor);
	end;
end;

procedure xscrolldrawer(d:xdrawer);
	var cp,dp,np:xpoint;
begin
	if d=nil then exit;
	with d^,folders^ do begin
		if first=nil then exit;
		xshowcursor(xhandcursor);
		cp:=xce.gp;
		while xmouseisdown(xrightbutton) do begin
			np:=xgetmousepoint;
			if not xmousehasmoved(cp,np,xfoldergrid,xfoldergrid) then continue;
			dp:=xcalculatedelta(cp,np,xfoldergrid,xfoldergrid);
			xmovedrawerorigin(d,dp.y*xgetshiftratio(lastfolder.head.bottom,xheight(body)));
			xslapdrawer(d);
			cp:=xmovepoint(cp,dp.x,dp.y);
		end;
		xshowcursor(xarrowcursor);
	end;
end;

procedure xscrollfolder(f:xfolder);
	var cp,dp,np:xpoint;
begin
	if f=nil then exit;
	with f^,pages^ do begin
		if first=nil then exit;
		xshowcursor(xhandcursor);
		cp:=xce.gp;
		while xmouseisdown(xrightbutton) do begin
			np:=xgetmousepoint;
			if not xmousehasmoved(cp,np,xpagegrid,xpagegrid) then continue;
			dp:=xcalculatedelta(cp,np,xpagegrid,xpagegrid);
			xmovefolderorigin(f,dp.y*xgetshiftratio(lastpage.head.bottom,xheight(body)));
			xslapfolder(f);
			cp:=xmovepoint(cp,dp.x,dp.y);
		end;
		xshowcursor(xarrowcursor);
	end;
end;

procedure xscrollpage(p:xpage);
	var cp,dp,np:xpoint; rx,ry:xinteger;
begin
	if p=nil then exit;
	xhidecaret;
	xshowcursor(xhandcursor);
	cp:=xce.gp;
	while xmouseisdown(xrightbutton) do begin
		np:=xgetmousepoint;
		if not xmousehasmoved(cp,np,xzdg,xzdg) then continue;
		dp:=xcalculatedelta(cp,np,xzdg,xzdg);
		rx:=xgetshiftratio(xwidth(p.body),xwidth(xca.clip));
		ry:=xgetshiftratio(xheight(p.body),xheight(xca.clip));
		xmovepageorigin(p,dp.x*rx,dp.y*ry);
		xslappage(p);
		cp:=xmovepoint(cp,dp.x,dp.y);
	end;
	xshowcaret(xcs);
	xshowcursor(xarrowcursor);
end;

function  xscrolltoblockcaret(b:xblock):xboolean;
	var cr,br:xrect; x,y:xtwit;
begin
	result:=false; if (b=nil) or (b.edit=nil) then exit;
	with b^,edit^,text do begin
		cr:=xcaretrectangle(b.edit); br:=xlvbr(b);
		if xrectangleequals(cr,xnilrect) then exit;
		if not xrectangleencloses(b.body,cr) then exit;
		if xrectangleencloses(br,cr) then exit;
		result:=true;
		x:=0; y:=0;
		if cr.left<br.left 			then x:=br.left-cr.left+colwidth*3;
		if cr.top<br.top 				then y:=br.top-cr.top;
		if cr.right>br.right 		then x:=br.right-cr.right-colwidth*3;
		if cr.bottom>br.bottom	then y:=br.bottom-cr.bottom;
		xmoveblockorigin(b,x,y);
	end;
end;

function  xscrolltoblockrectangle(b:xblock; r:xrect):xboolean;
	var dp:xpoint;
begin
	result:=false; if b=nil then exit;
	if xrectangleequals(r,xnilrect) then exit;
	if xrectangleencloses(xlvbr(b),r) then exit;
	result:=true;
	dp:=xcalculatedelta(xgetcenterpoint(r),xgetcenterpoint(xlr(b.clip,b.origin)),10,10);
	xmoveblockorigin(b,dp.x,dp.y);
end;

function  xscrolltocaret(p:xpage):xboolean;
	var cr,pr:xrect; x,y:xtwit;
begin
	result:=false; if (p=nil) or (p.edit=nil) then exit;
	cr:=xcaretrectangle(p.edit); pr:=xlvpr(p);
	if xrectangleequals(cr,xnilrect) then exit;
	if not xrectangleencloses(p.body,cr) then exit;
	if xrectangleencloses(pr,cr) then exit;
	result:=true;
	x:=0; y:=0;
	if cr.left<pr.left 			then x:=pr.left-cr.left+xzdg;
	if cr.top<pr.top 				then y:=pr.top-cr.top+xzdg;
	if cr.right>pr.right 		then x:=pr.right-cr.right-xzdg;
	if cr.bottom>pr.bottom	then y:=pr.bottom-cr.bottom-xzdg;
	xmovepageorigin(p,x,y);
end;

procedure xscrolltodrawer(d:xdrawer);
	var gp:xpoint;
begin
	if d=nil then exit;
	if xdrawerisvisible(d,true) then exit;
	if d.parent=nil then exit;
	with d^,parent^,body do begin
		gp:=xgp(xmp(d.head.left,d.head.top),origin);
		if gp.x<left 		then xmovecabinetorigin(d.parent,left-gp.x);
		if gp.x>=right 	then xmovecabinetorigin(d.parent,right-gp.x-xdrawergrid);
	end;
end;

procedure xscrolltofolder(f:xfolder);
	var gp:xpoint;
begin
	if f=nil then exit;
	if xfolderisvisible(f,true) then exit;
	if f.parent=nil then exit;
	with f^,parent^,body do begin
		gp:=xgp(xmp(f.head.left,f.head.top),origin);
		if gp.y<top 		then xmovedrawerorigin(f.parent,top-gp.y);
		if gp.y>=bottom	then xmovedrawerorigin(f.parent,bottom-gp.y-xfoldergrid);
	end;
end;

procedure xscrolltopage(p:xpage);
	var gp:xpoint;
begin
	if p=nil then exit;
	if xpageisvisible(p,true) then exit;
	if p.parent=nil then exit;
	with p^,parent^,body do begin
		gp:=xgp(xmp(p.head.left,p.head.top),origin);
		if gp.y<top 		then xmovefolderorigin(p.parent,top-gp.y);
		if gp.y>=bottom	then xmovefolderorigin(p.parent,bottom-gp.y-xpagegrid);
	end;
end;

function  xscrolltorectangle(p:xpage; r:xrect):xboolean;
	var ar:xrect; dp,oo:xpoint;
begin
	result:=false; if p=nil then exit;
	if xrectangleequals(r,xnilrect) then exit;
	result:=true;
	oo:=p.origin;	ar:=r;
	while (ar.right>=ar.left) and (ar.bottom>=ar.top) do begin
		p.origin:=oo;
		if xrectangleencloses(xlvpr(p),ar) then exit;
		xmovepage(p,xtopleft); 			if xrectangleencloses(xlvpr(p),ar) then exit;
		xmovepage(p,xtopright); 		if xrectangleencloses(xlvpr(p),ar) then exit;
		xmovepage(p,xbottomleft); 	if xrectangleencloses(xlvpr(p),ar) then exit;
		xmovepage(p,xbottomright); 	if xrectangleencloses(xlvpr(p),ar) then exit;
		ar:=xsr(ar,0,0,-xzdg,-xzdg);
	end;
	dp:=xcalculatedelta(xgetcenterpoint(r),xgetcenterpoint(xlr(xca.clip,p.origin)),10,10);
	dp:=xsnappoint(dp,xzdg);
	xmovepageorigin(p,dp.x,dp.y);
end;

procedure xscrolltoshape(s:xshape);
	var r:xrect;
begin
	if s=nil then exit;
	if s.parent=nil then exit;
	r:=s.rect;
	with s.rect do if s.styp=xtextshape then r:=xmr(left,top,right,top+s.text.font.size);
	if (s.styp<>xtextshape) and (xrectangleintersects(xlvpr(xgetpage(s)),r)) then exit;
	if (s.styp=xtextshape) and (xrectangleencloses(xlvpr(xgetpage(s)),r)) then exit;
	xscrolltorectangle(xpage(xgetpage(s)),r);
end;

procedure xseek(var f:xfile; p:xinteger);
begin
	seek(f,p);
end;

procedure xselectcharacters(s:xshape);
begin
	if s=nil then exit;
	with s^,text do begin
		blocksel:=false;
		anchor:=xmakeposition(1,1);
		caretpos:=xmakeposition(length(rows[count]),count);
		caretwas:=caretpos
	end;
end;

procedure xselectdrawers(d:xdrawers; selected:xboolean);
	var cd:xdrawer;
begin
	if d=nil then exit;
	cd:=d.first; while cd<>nil do begin cd.sel:=selected; cd:=cd.next; end;
end;

function  xselectenclosedshapes(s:xshapes; r:xrect):xboolean;
	var cs:xshape; p:xboolean;
begin
	result:=false; if s=nil then exit;
	r:=xnr(r);
	cs:=s.first;
	while cs<>nil do with cs^ do begin
		p:=sel; xselectshape(cs,was);
		if xrectangleencloses(r,rect) then xselectshape(cs,not sel);
		result:=(p<>sel) or (result);
		cs:=cs.next;
	end;
end;

procedure xselectfolders(f:xfolders; selected:xboolean);
	var cf:xfolder;
begin
	if f=nil then exit;
	cf:=f.first; while cf<>nil do begin cf.sel:=selected; cf:=cf.next; end;
end;

function  xselectintersecteddrawers(d:xdrawers; r:xrect):xboolean;
	var cd:xdrawer; p:xboolean;
begin
	result:=false; if d=nil then exit;
	cd:=d.first; r:=xnr(r);
	while cd<>nil do begin
		p:=cd.sel; cd.sel:=cd.was;
		if xrectangleintersects(r,cd.head) then cd.sel:=not cd.sel;
		result:=(p<>cd.sel) or (result);
		cd:=cd.next;
	end;
end;

function  xselectintersectedfolders(f:xfolders; r:xrect):xboolean;
	var cf:xfolder; p:xboolean;
begin
	result:=false; if f=nil then exit;
	cf:=f.first; r:=xnr(r);
	while cf<>nil do begin
		p:=cf.sel; cf.sel:=cf.was;
		if xrectangleintersects(r,cf.head) then cf.sel:=not cf.sel;
		result:=(p<>cf.sel) or (result);
		cf:=cf.next;
	end;
end;

function  xselectintersectedpages(p:xpages; r:xrect):xboolean;
	var cp:xpage; o:xboolean;
begin
	result:=false; if p=nil then exit;
	cp:=p.first; r:=xnr(r);
	while cp<>nil do begin
		o:=cp.sel; cp.sel:=cp.was;
		if xrectangleintersects(r,cp.head) then cp.sel:=not cp.sel;
		result:=(o<>cp.sel) or (result);
		cp:=cp.next;
	end;
end;

function  xselectintersectedstops(s:xstops; r:xrect):xboolean;
	var cs:xshape; ns:xstop; p:xboolean;
begin
	result:=false; if s=nil then exit;
	ns:=s.first; r:=xnr(r);
	while ns<>nil do begin cs:=ns.shape; ns:=ns.next;
		p:=cs.sel; xselectshape(cs,cs.was);
		if xrectangleintersects(r,cs.rect) then xselectshape(cs,not cs.sel);
		result:=(p<>cs.sel) or (result);
	end;
end;

procedure xselectpages(p:xpages; selected:xboolean);
	var cp:xpage;
begin
	if p=nil then exit;
	cp:=p.first; while cp<>nil do begin cp.sel:=selected; cp:=cp.next; end;
end;

procedure xselectshape(s:xshape; selected:xboolean);
begin
	if s=nil then exit;
	if not s.hidden or not selected then s.sel:=selected;
	if s.styp<>xgroupshape then exit;
	if not selected then xselectshapes(s.shapes,selected);
end;

procedure xselectshapes(s:xshapes; selected:xboolean);
	var cs:xshape;
begin
	if s=nil then exit;
	cs:=s.first; while cs<>nil do begin xselectshape(cs,selected); cs:=cs.next; end;
end;

procedure xselectstops(s:xstops; selected:xboolean);
	var cs:xstop;
begin
	if s=nil then exit;
	cs:=s.first; while cs<>nil do begin xselectshape(cs.shape,selected); cs:=cs.next; end;
end;

function  xselectionrectangle(s:xshape):xrect;
	var rstats:xrowstats; tstats:xtextstats;
begin
	result:=xnilrect; if s=nil then exit;
	with s^,text,tstats,rstats,result do begin
		tstats:=xgettextstatistics(text,xnilpoint,xnilrect);
		if fsr=0 then begin result:=xcaretrectangle(s); exit; end;
		rstats:=xgetrowstatistics(text,fsr);
		left:=rect.left;
		if fsr=lsr then left:=xpositiontopoint(xmemory,text,xmakeposition(fsc,fsr)).x;
		top:=rect.top+(fsr-1)*rowheight;
		right:=rect.right;
		if fsr=lsr then right:=xmin(xpositiontopoint(xmemory,text,xmakeposition(lsc,fsr)).x,rect.right);
		bottom:=rect.top+lsr*rowheight;
	end;
end;

procedure xselectword(s:xshape);
	var cc:xinteger;
begin
	if s=nil then exit;
	with s^,text,caretpos do begin
		blocksel:=false;
		for cc:=col-1 downto 1 do begin
			if (cc>1) and (cc<length(rows[row]))
			and (rows[row][cc] in xsqs) and (xisalphanumeric(rows[row][cc-1]))
			and (xisalphanumeric(rows[row][cc+1])) then continue;
			if xisalphanumeric(rows[row][cc]) then anchor.col:=cc else break;
		end;
		anchor.row:=row;
		for cc:=col to length(rows[row]) do begin
			if (cc>1) and (cc<length(rows[row]))
			and (rows[row][cc] in xsqs) and (xisalphanumeric(rows[row][cc-1]))
			and (xisalphanumeric(rows[row][cc+1])) then continue;
			if xisalphanumeric(rows[row][cc]) then caretpos.col:=cc+1 else break;
		end;
	end;
end;

procedure xsetcaret(s:xshape; p:xpoint);
begin
	if s=nil then exit;
	with s^,text do begin
		caretpos:=xpointtoposition(text,p);
		anchor:=caretpos;
		caretwas:=caretpos;
		s.lastop:=xnoshapeop;
	end;
end;

procedure xsetcliprectangle(d:xdevice; r:xrect);
	var cr:hrgn;
begin
	with r do begin
		left:=left div xfac; top:=top div xfac;
		right:=(right+xbump[d].x) div xfac; bottom:=(bottom+xbump[d].y) div xfac;
	end;
	lptodp(xdcs[d],r,2);
	with r do cr:=createrectrgn(left,top,right,bottom);
	selectcliprgn(xdcs[d],cr);
	deleteobject(cr);
end;

procedure xsetcolors(d:xdevice; b,f:xcolor);
begin
	if xfocus.active then begin
		selectobject(xdcs[d],xfocus.border);
		selectobject(xdcs[d],xfocus.fill);
		exit;
	end;
	selectobject(xdcs[d],xpens[b.pigment,b.mixture]);
	selectobject(xdcs[d],xbrushes[f.pigment,f.mixture]);
end;

procedure xsetdrawerdeepflags(d:xdrawers);
	var cd:xdrawer;
begin
	if d=nil then exit;
	cd:=d.first;
	while cd<>nil do begin cd.deep:=cd.sel; cd:=cd.next; end;
end;

procedure xsetfolderdeepflags(f:xfolders);
	var cf:xfolder;
begin
	if f=nil then exit;
	cf:=f.first;
	while cf<>nil do begin cf.deep:=cf.sel; cf:=cf.next; end;
end;

procedure xsetfont(d:xdevice; f:xfont; m:xmag);
	var sp:xsizeinpixels;
begin
	if (f.face=xnoface) or (f.size=0) or (f.style=xnostyle) or (f.align=xnoalign) then exit;
	if round(f.size/m)=180 then f.size:=round(160*m); // fudge 4 lpi font
	sp:=f.size div xtpp;
	if xfonts[f.face,sp,f.style]=0 then xfonts[f.face,sp,f.style]:=xinitializefont(f);
	if xfonts[f.face,sp,f.style]=0 then begin
		xfinalizefonts;
		xfonts[f.face,sp,f.style]:=xinitializefont(f);
	end;
	if xfonts[f.face,sp,f.style]=0 then exit;
	selectobject(xdcs[d],xfonts[f.face,sp,f.style]);
end;

procedure xsetmemoryorigin(o:xpoint);
begin
	o.x:=o.x div xfac; o.y:=o.y div xfac;
	lptodp(xdcs[xdisplay],o,1); // must use xdisplay
	setviewportorgex(xdcs[xmemory],o.x,o.y,nil);
end;

procedure xsetpagedeepflags(p:xpages);
	var cp:xpage;
begin
	if p=nil then exit;
	cp:=p.first;
	while cp<>nil do begin cp.deep:=cp.sel; cp:=cp.next; end;
end;

procedure xsetselection(s:xshape; b,e:xinteger);
begin
	if s=nil then exit;
	with s^,text do begin
		anchor:=xactp(text,b);
		caretpos:=xactp(text,e);
		caretwas:=caretpos;
		xadjustcaret(s);
	end;
end;

procedure xsetselectionbycolumnandrow(s:xshape; ac,ar,cc,cr:xinteger);
begin
	if s=nil then exit;
	with s^,text do begin
		anchor:=xmakeposition(ac,ar);
		caretpos:=xmakeposition(cc,cr);
		caretwas:=caretpos;
		xadjustcaret(s);
	end;
end;

procedure xsetslice(s:xshape; i:xslice; v:xstring);
begin
	if s=nil then exit;
	with s^ do begin
		slices[i].str:=v;
		if i in [xfslice,xvslice] then xformatshape(s);
		if i=xfslice then text.wrap:=not xiscode(s);
		if i=slice then xsetvalue(text,slices[i].str);
	end;
end;

procedure xsettabname(n:array of xstring);
begin
	xsetvalue(xca.title,xconcatinatenames(n)); xmaketextfitwithellipsis(xca.title);
end;

procedure xsetvalue(var t:xtext; v:xstring);
	var p,s:xinteger;
begin
	with t do begin
		xremoverows(t,1,count);
		v:=v+xcr; p:=1;
		while p<=length(v) do begin
			s:=p; while (p<=length(v)) and (v[p]<>xcr) do inc(p);
			xappendrow(t);
			setlength(rows[count],p-s+1);
			move(v[s],xpchar(rows[count])^,length(rows[count]));
			inc(p); if p>length(v) then continue;
		end;
		xwraptext(t,1,true,false);
		xadjusttextcaret(t);
	end;
end;

function  xshapeisfound(s:xshape; n:xslice; v:xstring; first:xboolean; var b:xinteger):xboolean;
	var c:xinteger; t:xstring;
begin
	result:=false; b:=0; if s=nil then exit;
	with s^,text do begin
		t:=xgetslice(s,n);
		if (editing) and (not first) then c:=xptac(text,caretpos) else c:=1;
		b:=pos(xv(v),xv(copy(t,c,length(t)-c+1)));
		result:=b<>0; if result then b:=c+b-1;
	end;
end;

function  xshapeisonedge(s:xshape):xboolean;
begin
	result:=false; if s=nil then exit;
	result:=xgetedge(s)<>xnoedge;
end;

function  xshapeisvisible(s:xshape; fully:xboolean):xboolean;
begin
	result:=false; if s=nil then exit;
	if s.parent=nil then exit;
	if fully then result:=xrectangleencloses(xlvpr(xgetpage(s)),s.rect);
	if not fully then result:=xrectangleintersects(xlvpr(xgetpage(s)),s.rect);
end;

procedure xshowcaret(s:xshape);
	var o:xpoint; p:xparent; c,cr,r:xrect;
begin
	if s=nil then exit;
	with s^,text do begin
		xgetshapeinformation(s,p,o,c,r); r:=xintersectrectangles(r,c);
		xhidecaret;
		if (not xissimple(s.text)) and (xisselection(s)) then exit;
		cr:=xcaretrectangle(s); if not xrectangleintersects(r,cr) then exit;
		xcarets.current.rect:=xgr(xintersectrectangles(cr,r),o);
		xcarets.current.hidden:=false;
		xdrawcaret;
	end;
end;

procedure xshowcursor(c:xcursor);
begin
	xcursors.current:=c;
	setcursor(xcursors.shapes[c]);
	while showcursor(true)<0 do;
end;

procedure xshrinkrows(var t:xtext);
	var c,cr:xinteger;
begin
	with t do begin
		c:=xmin(xgetrowchunk(t),size);
		dec(size,c);
		for cr:=size+1 to size+c do finalize(rows[cr]);
		reallocmem(rows,size*sizeof(xrow));
	end;
end;

function  xsizearc(a:xarc; dw,dh:xtwit; h:xhandle):xarc;
begin
	result:=a;
	with result,rect do begin
		rect:=xsizerectangle(a.rect,dw,dh,h);
		if right<left then result:=xfliparc(result,xhorz);
		if bottom<top then result:=xfliparc(result,xvert);
		rect:=xnr(rect);
	end;
end;

function  xsizearcproportionately(a:xarc; dw,dh:xextended; h:xhandle):xarc;
begin
	result:=a;
	with result,rect do begin
		rect:=xsizerectangleproportionately(a.rect,dw,dh,h);
		if right<left then result:=xfliparc(result,xhorz);
		if bottom<top then result:=xfliparc(result,xvert);
		rect:=xnr(rect);
	end;
end;

function  xsizecurve(c:xcurve; dw,dh:xtwit; h:xhandle):xcurve;
begin
	result:=xcurve(xsizepolygon(xpolygon(c),dw,dh,h));
end;

function  xsizecurveproportionately(c:xcurve; dw,dh:xextended; h:xhandle):xcurve;
begin
	result:=xcurve(xsizepolygonproportionately(xpolygon(c),dw,dh,h));
end;

function  xsizeellipse(e:xellipse; dw,dh:xtwit; h:xhandle):xellipse;
begin
	result:=e;
	result.rect:=xnr(xsizerectangle(e.rect,dw,dh,h));
end;

function  xsizeellipseproportionately(e:xellipse; dw,dh:xextended; h:xhandle):xellipse;
begin
	result:=e;
	result.rect:=xnr(xsizerectangleproportionately(e.rect,dw,dh,h));
end;

function  xsizepicture(p:xpicture; dw,dh:xtwit; h:xhandle):xpicture;
begin
	result:=p;
	with result,rect do begin
		rect:=xsizerectangle(p.rect,dw,dh,h);
		if right<left then result:=xflippicture(result,xhorz);
		if bottom<top then result:=xflippicture(result,xvert);
		rect:=xnr(rect);
		xadjustpicture(result,true);
	end;
end;

function  xsizepictureproportionately(p:xpicture; dw,dh:xextended; h:xhandle):xpicture;
begin
	result:=p;
	with result,rect do begin
		rect:=xsizerectangleproportionately(p.rect,dw,dh,h);
		if right<left then result:=xflippicture(result,xhorz);
		if bottom<top then result:=xflippicture(result,xvert);
		rect:=xnr(rect);
		xadjustpicture(result,true);
	end;
end;

function  xsizepolygon(n:xpolygon; dw,dh:xtwit; h:xhandle):xpolygon;
	var r:xrect; rw,rh:xextended;
begin
	with n do begin
		result:=n;
		r:=xsizerectangle(rect,dw,dh,h);
		if xwidth(rect)<>10 then rw:=(xwidth(r)-10)/(xwidth(rect)-10) else rw:=0;
		if xheight(rect)<>10 then rh:=(xheight(r)-10)/(xheight(rect)-10) else rh:=0;
		result:=xsizepolygonproportionately(n,rw,rh,h);
	end;
end;

function  xsizepolygonproportionately(n:xpolygon; dw,dh:xextended; h:xhandle):xpolygon;
	var cv:xvertex;
begin
	result:=n;
	with result,rect do begin
		for cv:=1 to count do with vertices[cv] do begin
			case h of
				xtopleft:			begin	x:=round(right-((right-x)*dw)); y:=round(bottom-((bottom-y)*dh)); end;
				xtopright:		begin	x:=round(left+((x-left)*dw)); 	y:=round(bottom-((bottom-y)*dh)); end;
				xbottomleft:	begin	x:=round(right-((right-x)*dw)); y:=round(top+((y-top)*dh)); end;
				xbottomright:	begin	x:=round(left+((x-left)*dw)); 	y:=round(top+((y-top)*dh)); end;
			end;
		end;
		xadjustpolygon(result);
	end;
end;

function  xsizerectangle(r:xrect; dw,dh:xtwit; h:xhandle):xrect;
begin
	result:=r;
	with result do begin
		case h of
			xtopleft:			begin left:=left-dw; 		top:=top-dh; end;
			xtopright:		begin right:=right+dw;	top:=top-dh; end;
			xbottomleft:	begin left:=left-dw; 		bottom:=bottom+dh; end;
			xbottomright:	begin right:=right+dw; 	bottom:=bottom+dh; end;
		end;
	end;
end;

function  xsizerectangleproportionately(r:xrect; dw,dh:xextended; h:xhandle):xrect;
	var nw,nh:xtwit;
begin
	result:=r;
	with result do begin
		nw:=round(((xwidth(result)-10)*dw));	nh:=round(((xheight(result)-10)*dh));
		case h of
			xtopleft:			begin left:=right-nw; top:=bottom-nh; end;
			xtopright:		begin right:=left+nw; top:=bottom-nh; end;
			xbottomleft:	begin left:=right-nw; bottom:=top+nh; end;
			xbottomright:	begin right:=left+nw; bottom:=top+nh; end;
		end;
	end;
end;

procedure xsizeshape(s:xshape; dw,dh:xtwit; h:xhandle);

procedure xsizeshape_group;
	var cs:xshape; br:xrect; rh,rw:xextended;
begin
	br:=xsizerectangle(s.rect,dw,dh,h);
	if (xwidth(s.rect)<>10) then rw:=(xwidth(br)-10)/(xwidth(s.rect)-10) else rw:=0;
	if (xheight(s.rect)<>10) then rh:=(xheight(br)-10)/(xheight(s.rect)-10) else rh:=0;
	cs:=s.shapes.first;
	while cs<>nil do with cs^,rect do begin
		case h of
			xtopleft:			xmoveshape(cs,round((br.right-right)*(1-rw)),round((br.bottom-bottom)*(1-rh)));
			xtopright:    xmoveshape(cs,round((left-br.left)*(rw-1)),round((br.bottom-bottom)*(1-rh)));
			xbottomleft:  xmoveshape(cs,round((br.right-right)*(1-rw)),round((top-br.top)*(rh-1)));
			xbottomright: xmoveshape(cs,round((left-br.left)*(rw-1)),round((top-br.top)*(rh-1)));
		end;
		xsizeshapeproportionately(cs,rw,rh,h);
		cs:=cs.next;
	end;
	xadjustshape(s);
end;

begin
	if s=nil then exit;
	with s^ do case styp of
		xarcshape:        arc:=xsizearc(arc,dw,dh,h);
		xcurveshape:      curve:=xsizecurve(curve,dw,dh,h);
		xellipseshape:		ellipse:=xsizeellipse(ellipse,dw,dh,h);
		xgroupshape:      xsizeshape_group;
		xpictureshape:		picture:=xsizepicture(picture,dw,dh,h);
		xpolygonshape:		polygon:=xsizepolygon(polygon,dw,dh,h);
		xrectangleshape:  rectangle:=xnr(xsizerectangle(rectangle,dw,dh,h));
		xtextshape:       text:=xsizetext(text,dw,dh,h);
	end;
	xadjustshape(s);
end;

procedure xsizeshapeproportionately(s:xshape; dw,dh:xextended; h:xhandle);

procedure xsizeshapeproportionately_group;
	var cs:xshape; br:xrect;
begin
	br:=xsizerectangleproportionately(s.rect,dw,dh,h);
	cs:=s.shapes.first;
	while cs<>nil do with cs^,rect do begin
		case h of
			xtopleft:			xmoveshape(cs,round((br.right-right)*(1-dw)),round((br.bottom-bottom)*(1-dh)));
			xtopright:    xmoveshape(cs,round((left-br.left)*(dw-1)),round((br.bottom-bottom)*(1-dh)));
			xbottomleft:  xmoveshape(cs,round((br.right-right)*(1-dw)),round((top-br.top)*(dh-1)));
			xbottomright: xmoveshape(cs,round((left-br.left)*(dw-1)),round((top-br.top)*(dh-1)));
		end;
		xsizeshapeproportionately(cs,dw,dh,h);
		cs:=cs.next;
	end;
end;

begin
	if s=nil then exit;
	with s^ do case styp of
		xarcshape:        arc:=xsizearcproportionately(arc,dw,dh,h);
		xcurveshape:      curve:=xsizecurveproportionately(curve,dw,dh,h);
		xellipseshape:		ellipse:=xsizeellipseproportionately(ellipse,dw,dh,h);
		xgroupshape:      xsizeshapeproportionately_group;
		xpictureshape:		picture:=xsizepictureproportionately(picture,dw,dh,h);
		xpolygonshape:		polygon:=xsizepolygonproportionately(polygon,dw,dh,h);
		xrectangleshape:  rectangle:=xnr(xsizerectangleproportionately(rectangle,dw,dh,h));
		xtextshape:       text:=xsizetextproportionately(text,dw,dh,h);
	end;
	xadjustshape(s);
end;

procedure xsizeshapes(s:xshapes; dw,dh:xtwit; h:xhandle; selected:xboolean);
	var cs,ns:xshape;
begin
	if s=nil then exit;
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if selected and not cs.sel then continue;
		xsizeshape(cs,dw,dh,h);
	end;
end;

function  xsizetext(var t:xtext; dw,dh:xtwit; h:xhandle):xtext;
begin
	result:=t;
	result.rect:=xnr(xsizerectangle(t.rect,dw,dh,h));
	xwraptext(result,1,true,not xissimple(t));
end;

function  xsizetextproportionately(var t:xtext; dw,dh:xextended; h:xhandle):xtext;
begin
	result:=t;
	result.rect:=xnr(xsizerectangleproportionately(t.rect,dw,dh,h));
	xwraptext(result,1,true,not xissimple(t));
end;

function  xskiptoken(t:xtoktyp):xboolean;
begin
	result:=true;
	if xtok.ttyp=t then begin xgetnexttoken; exit; end;
	result:=false;
	xcompileerror('Expected '''+xtokentypetostring(t)+''' found '''+xtokentostring(xtok)+'''.');
end;

function  xskipword(w:xstring):xboolean;
	var cc:xinteger;
begin
	result:=true;
	if length(w)<=1 then exit;
	for cc:=1 to length(w) do if not (w[cc] in xletters+xsqs) then exit;
	result:=false;
end;

procedure xslapbar;
begin
	xdrawbar(xmemory);
	xblitrectangle(xscreen.head);
end;

procedure xslapblock(b:xblock);
begin
	if b=nil then exit;
	with b^ do begin
		xsetcliprectangle(xmemory,xsr(xca.clip,0,+10,0,-10));
		xdrawrectangle(xmemory,xsr(xca.clip,0,+10,0,-10),xgraycolor,xgraycolor);
		xdrawblock(xmemory,b);
		xblitrectangle(xsr(xca.clip,0,+10,0,-10));
	end;
end;

procedure xslapcabinet(c:xcabinet);
begin
	if c=nil then exit;
	xsetcliprectangle(xmemory,xsr(xca.body,0,+10,0,-10));
	xdrawrectangle(xmemory,xsr(xca.body,0,+10,0,-10),xgraycolor,xgraycolor);
	xdrawcabinet(xmemory,c);
	xblitrectangle(xsr(xca.body,0,+10,0,-10));
end;

procedure xslapdrawer(d:xdrawer);
begin
	if d=nil then exit;
	xsetcliprectangle(xmemory,xsr(xca.body,0,+10,0,-10));
	xdrawrectangle(xmemory,xsr(xca.body,0,+10,0,-10),xgraycolor,xgraycolor);
	xdrawdrawer(xmemory,d);
	xblitrectangle(xsr(xca.body,0,+10,0,-10));
end;

procedure xslaperror;
begin
	xdrawerror(xmemory);
	xblitrectangle(xerr.rect);
end;

procedure xslapfolder(f:xfolder);
begin
	if f=nil then exit;
	xsetcliprectangle(xmemory,xsr(xca.body,0,+10,0,-10));
	xdrawrectangle(xmemory,xsr(xca.body,0,+10,0,-10),xgraycolor,xgraycolor);
	xdrawfolder(xmemory,f);
	xblitrectangle(xsr(xca.body,0,+10,0,-10));
end;

procedure xslaplogo(selected:xboolean);
begin
	xdrawlogo(xmemory,xlogo,xwhitecolor,xblackcolor,true,selected);
	xblitrectangle(xlogo);
end;

procedure xslapmachine;
begin
	xdrawmachine(xmemory);
	xblitrectangle(xscreen.head);
	xblitrectangle(xscreen.body);
end;

procedure xslapmenu(m:xmenu);
begin
  if m=nil then exit;
  xblitbits(xscratch,xmemory,xscreen.rect);
	xdrawmenu(xmemory,m); xdrawitems(xmemory,m);
  xblitbits(xmemory,xdisplay,xscreen.rect);
end;

procedure xslapmessage;
begin
	xdrawmessage(xmemory);
	xblitrectangle(xmsg.rect);
end;

procedure xslappage(p:xpage);
begin
	if p=nil then exit;
	xsetcliprectangle(xmemory,xsr(xca.body,0,+10,0,-10));
	xdrawrectangle(xmemory,xsr(xca.body,0,+10,0,-10),xgraycolor,xgraycolor);
	xdrawpage(xmemory,p);
	xblitrectangle(xsr(xca.body,0,+10,0,-10));
end;

procedure xslappopup(p:xpopup);
begin
	if p=nil then exit;
  xblitbits(xscratch,xmemory,xscreen.rect);
	xdrawpopup(xmemory,p);
  xblitbits(xmemory,xdisplay,xscreen.rect);
end;

procedure xslapshape(s:xshape);
  var i:integer;
begin
	if s=nil then exit;
	xsetcliprectangle(xmemory,xgvsr(s));
	if xgetpage(s)<>nil then xsetmemoryorigin(xgetpage(s).origin);
	xdrawshape(xmemory,s);
	xsetmemoryorigin(xnilpoint);
	//xblitrectangle(xgvsr(s));
  if (xcp<>nil) and (xcp.edit=s) and (s.border.pigment<>xclear) then i:=10 else i:=0; // see 2.1 -> 2.2 release notes
  xblitrectangle(xir(xgvsr(s),i));
end;

procedure xslapworkarea;
begin
	xdrawarea(xmemory,xca);
	case xcv of
		xcabinetview:	xslapcabinet(xcc);
		xdrawerview:  xslapdrawer(xcd);
		xfolderview:  xslapfolder(xcf);
		xpageview:    xslappage(xcp);
	end;
	xblitrectangle(xca.head);
end;

function  xsleep(d:xpointer):xinteger;
	const dx=10; dy=10; font:xfont=(face:xarialface; size:120; style:xboldstyle; align:xspreadalign);
	var c,f,s:xrect; m:xpoint;
begin
	with m do begin
		result:=0; if not xsleeping then begin endthread(0); exit; end;
		s:=xscreen.rect; m:=xmp(dx,dy);
		f:=xpositionrectangle(xmr(0-dx,0-dy,720+dx,720+dy),0,0);
		xsetcliprectangle(xmemory,f);
		xdrawrectangle(xmemory,f,xblackcolor,xblackcolor);
		xdrawlogo(xmemory,xsr(f,+dx,+dy,-dx,-240-dy),xblackcolor,xdkgraycolor,false,false);
		xsetcliprectangle(xmemory,f);
		xeasytext(xmemory,xsr(f,+dx,+600+dy,-dx,-dy),font,xdkgraycolor,xname);
		while xsleeping do begin
			f:=xmoverectangle(f,x,y); c:=xsr(f,+dx,+dy,-dx,-dy);
			if c.left<=s.left 		then begin f:=xmoverectangle(f,c.left-s.left,0); x:=-x; end;
			if c.top<=s.top				then begin f:=xmoverectangle(f,0,c.top-s.top); y:=-y; end;
			if c.right>=s.right 	then begin f:=xmoverectangle(f,c.right-s.right,0); x:=-x; end;
			if c.bottom>=s.bottom then begin f:=xmoverectangle(f,0,c.bottom-s.bottom); y:=-y; end;
			bitblt(xdcs[xdisplay],f.left div xfac,f.top div xfac,xwidth(f) div xfac,xheight(f) div xfac,xdcs[xmemory],0,0,srccopy);
			sleep(10);
		end;
		endthread(0);
	end;
end;

procedure xslicepage(p:xpage; s:xslice);
begin
	if p=nil then exit;
	p.slice:=s;
	xsliceshapes(p.shapes,s);
end;

procedure xsliceshape(s:xshape; c:xslice);
begin
	if s=nil then exit;
	with s^ do begin
		if styp=xgroupshape then begin xsliceshapes(shapes,c); exit; end;
		if (not (styp in [xpictureshape,xtextshape])) or (c=slice) then exit;
		slice:=c; xsetvalue(text,slices[c].str);
	end;
end;

procedure xsliceshapes(s:xshapes; c:xslice);
	var cs:xshape;
begin
	if s=nil then exit;
	cs:=s.first; while cs<>nil do begin xsliceshape(cs,c); cs:=cs.next; end;
end;

procedure xsnapshape(s:xshape; g:xtwit);
	var sp:xpoint;
begin
	if s=nil then exit;
	with s.rect do begin
		sp:=xsnappoint(topleft,g);
		xmoveshape(s,sp.x-left,sp.y-top);
	end;
end;

function  xsnappoint(p:xpoint; g:xtwit):xpoint;
begin
	result:=p;
	if g=0 then exit;
	result.x:=g*round(p.x/g);
	result.y:=g*round(p.y/g);
end;

function  xsnaprectangle(r:xrect; g:xtwit):xrect;
begin
	result.topleft:=xsnappoint(r.topleft,g);
	result.bottomright:=xsnappoint(r.bottomright,g);
end;

procedure xsortchain(c:xpointer; s:xsorttyp; n:xstring; adjust:xboolean);

var a,b:xchains; compare:function(a,b:xobject; n:xstring):xinteger;

procedure xsortchain_merge;
	var ac,cc,nc:xchain;
begin
	repeat
		ac:=b.firstchain;
		nc:=ac.next;
		while nc<>nil do begin cc:=nc; nc:=nc.next;
			if ac.firstrecord=nil then begin ac:=cc; continue; end;
			if cc.firstrecord=nil then continue;
			if compare(ac.firstrecord,cc.firstrecord,n)>0 then ac:=cc;
		end;
		if ac.firstrecord=nil then exit;
		xappendlink(c,xremovelink(ac.firstrecord));
	until xforever;
end;

procedure xsortchain_separate;
	const maxchains=50; var cc:xinteger;
begin
	cc:=maxchains;
	while xchain(c).firstrecord<>nil do begin
		inc(cc); if cc>maxchains then begin xappendlink(a,xcreatechain(a)); cc:=0; end;
		xappendlink(a.lastchain,xremovelink(xchain(c).firstrecord));
	end;
end;

procedure xsortchain_sort;
	var cc:xchain; ar,cr:xrecord;
begin
	cc:=a.firstchain;
	while cc<>nil do begin
		xappendlink(b,xcreatechain(b));
		while cc.firstrecord<>nil do begin
			ar:=cc.firstrecord;
			cr:=ar.next;
			while cr<>nil do begin
				if compare(ar,cr,n)>0 then ar:=cr;
				cr:=cr.next;
			end;
			xappendlink(b.lastchain,xremovelink(ar));
		end;
		cc:=cc.next;
	end;
end;

function  xsortchain_default(a,b:xrecord; n:xstring):xinteger;
begin
	case xtype(a) of
		xdrawerrecord: begin
			result:=xcsas(xdrawer(a).group,xdrawer(b).group); if result<>0 then exit;
			result:=xcsas(xdrawer(a).name,xdrawer(b).name); if result<>0 then exit;
			result:=xcsas(xdrawer(a).version,xdrawer(b).version);
		end;
		xfolderrecord: begin
			result:=xcsas(xfolder(a).name,xfolder(b).name); if result<>0 then exit;
			result:=xcsas(xfolder(a).version,xfolder(b).version);
		end;
	end;
end;

function  xsortchain_group(a,b:xrecord; n:xstring):xinteger;
begin
	if xtype(a)<>xdrawerrecord then begin result:=0; exit; end;
	result:=xcsas(xdrawer(a).group,xdrawer(b).group);
end;

function  xsortchain_horizontal(a,b:xstop; n:xstring):xinteger;
begin
	if a.shape.rect.top<b.shape.rect.top		then begin result:=-1; exit; end;
	if a.shape.rect.top>b.shape.rect.top		then begin result:=+1; exit; end;
	if a.shape.rect.left<b.shape.rect.left	then begin result:=-1; exit; end;
	if a.shape.rect.left>b.shape.rect.left	then begin result:=+1; exit; end;
	result:=0;
end;

function  xsortchain_name(a,b:xrecord; n:xstring):xinteger;
begin
	case xtype(a) of
		xdrawerrecord:	result:=xcsas(xdrawer(a).name,xdrawer(b).name);
		xfolderrecord:  result:=xcsas(xfolder(a).name,xfolder(b).name);
	end;
end;

procedure xsortchain_setlastsort;
	var p:xparent;
begin
	p:=xchain(c).parent;
	case xtype(p) of
		xcabinetrecord: if s=xdefaultsort then xcabinet(p).lastsort:=xgroupsort else xcabinet(p).lastsort:=s;
		xdrawerrecord:  if s=xdefaultsort then xdrawer(p).lastsort:=xnamesort else xdrawer(p).lastsort:=s;
		xfolderrecord:  xfolder(p).lastsort:=n;
	end;
end;

function  xsortchain_special(a,b:xstop; n:xstring):xinteger;
begin
	if a.shape.secx<b.shape.secx then begin result:=-1; exit; end;
	if a.shape.secx>b.shape.secx then begin result:=1; exit; end;
	if a.shape.secy<b.shape.secy then begin result:=-1; exit; end;
	if a.shape.secy>b.shape.secy then begin result:=1; exit; end;
	if a.shape.rect.left<b.shape.rect.left	then begin result:=-1; exit; end;
	if a.shape.rect.left>b.shape.rect.left	then begin result:=1; exit; end;
	if a.shape.rect.top<b.shape.rect.top		then begin result:=-1; exit; end;
	if a.shape.rect.top>b.shape.rect.top		then begin result:=1; exit; end;
	result:=0;
end;

function  xsortchain_user(a,b:xpage; n:xstring):xinteger;
begin
	with xoldfields do begin
		n:=xv(n);
		if (af=0) or (xv(a.fields[af].name)<>n) then af:=xfindfield(a.fields,n);
		if (bf=0) or (xv(b.fields[bf].name)<>n) then bf:=xfindfield(b.fields,n);
		if (af=0) and (bf=0) then begin result:=0; exit; end;
		if af=0 then begin result:=+1; exit; end;
		if bf=0 then begin result:=-1; exit; end;
		if (a.fields[af].dtyp<>b.fields[bf].dtyp) then begin
			result:=xcsas(a.fields[af].value,b.fields[bf].value);
			exit;
		end;
		case a.fields[af].dtyp of
			xnodata:      result:=xcsas(a.fields[af].value,b.fields[bf].value);
			xbooleandata:	result:=xcsab(a.fields[af].value,b.fields[bf].value);
			xdatedata:    result:=xcsad(a.fields[af].value,b.fields[bf].value);
			xnumberdata:  result:=xcsan(a.fields[af].value,b.fields[bf].value);
			xstringdata:  result:=xcsas(a.fields[af].value,b.fields[bf].value);
			xtimedata:    result:=xcsat(a.fields[af].value,b.fields[bf].value);
		end;
	end;
end;

function  xsortchain_version(a,b:xrecord; n:xstring):xinteger;
begin
	case xtype(a) of
		xdrawerrecord:	result:=xcsas(xdrawer(a).version,xdrawer(b).version);
		xfolderrecord:  result:=xcsas(xfolder(a).version,xfolder(b).version);
	end;
end;

function  xsortchain_vertical(a,b:xstop; n:xstring):xinteger;
begin
	if a.shape.rect.left<b.shape.rect.left	then begin result:=-1; exit; end;
	if a.shape.rect.left>b.shape.rect.left	then begin result:=+1; exit; end;
	if a.shape.rect.top<b.shape.rect.top		then begin result:=-1; exit; end;
	if a.shape.rect.top>b.shape.rect.top		then begin result:=+1; exit; end;
	result:=0;
end;

begin
	if c=nil then exit;  if s=xnosort then exit;
	if xrecord(c).rtyp<>xchainrecord then begin xerror('Internal Error 117.'); exit; end;
	case s of
		xdefaultsort:	compare:=@xsortchain_default;
		xgroupsort:		compare:=@xsortchain_group;
		xhorzsort: 		compare:=@xsortchain_horizontal;
		xnamesort: 		compare:=@xsortchain_name;
		xspecialsort:	compare:=@xsortchain_special;
		xusersort:		compare:=@xsortchain_user;
		xversionsort:	compare:=@xsortchain_version;
		xvertsort: 		compare:=@xsortchain_vertical;
	end;
	xsortchain_setlastsort;
	if xchain(c).firstrecord=xchain(c).lastrecord then exit;
	with xoldfields do begin af:=0; bf:=0; end;
	a:=xcreatechain(nil); b:=xcreatechain(nil); n:=xv(n);
	xsortchain_separate;
	xsortchain_sort;
	xsortchain_merge;
	xdestroychains(b,true); xdestroychains(a,true);
	if not adjust then exit;
	case xtype(xchain(c).parent) of
		xcabinetrecord:	xadjustcabinet(xchain(c).parent);
		xdrawerrecord:  xadjustdrawer(xchain(c).parent);
		xfolderrecord:  xadjustfolder(xchain(c).parent);
	end;
end;

procedure xsortrows(s:xshape; sr,er,sc,ec:xinteger);

var ccol,cr:xinteger; counts:array[xchar] of xinteger; fr,temp,tr:xrows;

procedure xsortrows_calculaterunningtotal;
	var cc:xchar;
begin
	for cc:=chr(1) to chr(255) do counts[cc]:=counts[pred(cc)]+counts[cc];
end;

procedure xsortrows_countchararacters;
	var c:xchar; cr:xinteger;
begin
	for cr:=sr to er do begin
		if ccol<=length(fr[cr]) then c:=fr[cr][ccol] else c:=x00;
		inc(counts[c]);
	end;
end;

procedure xsortrows_sort;
	var c:xchar; cr:xinteger;
begin
	for cr:=er downto sr do begin
		if ccol<=length(fr[cr]) then c:=fr[cr][ccol] else c:=x00;
		tr[sr+counts[c]-1]:=fr[cr];
		dec(counts[c]);
	end;
end;

begin
	if s=nil then exit;
	with s^,text do begin
		tr:=rows; getmem(fr,size*sizeof(xrow)); fillchar(fr^,size*sizeof(xrow),x00);
		for cr:=1 to count do fr[cr]:=tr[cr];
		for ccol:=ec downto sc do begin
			temp:=tr; tr:=fr; fr:=temp;
			fillchar(counts,sizeof(counts),x00);
			xsortrows_countchararacters;
			xsortrows_calculaterunningtotal;
			xsortrows_sort;
		end;
		for cr:=1 to count do finalize(fr[cr]); freemem(fr);
		rows:=tr;
	end;
end;

procedure xsquish(var t:xtext; sr,sc,er,ec:xinteger; wrapme:xboolean);
begin
	with t,caretpos do begin
		insert(stringofchar(xsp,sc-length(rows[sr])),rows[sr],length(rows[sr]));
		rows[sr]:=copy(rows[sr],1,sc-1)+copy(rows[er],xmin(ec,length(rows[er])),xmax(length(rows[er])-ec+1,1));
		xremoverows(t,sr+1,er);
		col:=sc; row:=sr; anchor:=caretpos; caretwas:=caretpos;
		if (not wrapme) or (xissimple(t)) then exit;
		xwraptext(t,sr,false,not xissimple(t));
	end;
end;

function  xsr(r:xrect; dl,dt,dr,db:xtwit):xrect;
begin
	result.left:=r.left+dl;
	result.top:=r.top+dt;
	result.right:=r.right+dr;
	result.bottom:=r.bottom+db;
end;

procedure xstartclock(c:xclock);
begin
	xclocks[c].start:=xgetticks;
end;

function  xstb(s:xstring):xboolean;
	const a:array[1..4,1..3] of xstring=(('1','t','y'),('ok','on',''),('yes','',''),('true','',''));
	var ca,cc:xinteger; t:xstring;
begin
	result:=true; s:=xv(s); t:='';
	for cc:=1 to xmin(high(a),length(s)) do begin
		t:=t+s[cc];
		for ca:=low(a[cc]) to high(a[cc]) do if a[cc,ca]=t then exit;
	end;
	result:=false;
end;

function  xstd(s:xstring):xdate;
begin
	xstdwe(s,result);
end;

function  xstdwe(s:xstring; var d:xdate):xboolean;

var day,month,pos,year:xinteger; token:xstring; t:tsystemtime;

procedure xstdwe_gnt;
	const delims=[' ','-','/','.',','];
begin
	token:=xv(xgetnextgenerictoken(s,pos,false,delims));
end;

function  xstdwe_mstiwe(s:xstring; var i:xinteger):xboolean;
	const long:array [1..12] of xstring=('january','february','march','april','may','june','july','august','september','october','november','december');
	const short:array [1..12] of xstring=('jan','feb','mar','apr','may','jun','jul','aug','sep','oct','nov','dec');
	var cm:xinteger;
begin
	result:=false;
	for cm:=1 to high(long) do begin
		i:=cm; if (long[cm]=token) or (short[cm]=token) then exit;
	end;
	result:=true; i:=0;
end;

begin
	result:=true; d:=0; if s='' then exit;
	pos:=1;
	xstdwe_gnt; if token='' then exit;
	if (token[1] in ['0'..'9']) and (xstiwe(token,month)) then exit;
	if (token[1] in ['a'..'z']) and (xstdwe_mstiwe(token,month)) then exit;
	xstdwe_gnt; if token='' then exit;
	if xstiwe(token,day) then exit;
	xstdwe_gnt;
	if token='' then begin getsystemtime(t); year:=t.wyear; end;
	if (token<>'') and (xstiwe(token,year)) then exit;
	if year<=50 then inc(year,2000);
	if (year>50) and (year<=99) then inc(year,1900);
	result:=false;
	try d:=encodedate(year,month,day);
	except on econverterror do begin result:=true; d:=0; end; end;
end;

function  xsti(s:xstring):xinteger;
begin
	result:=strtointdef(s,0);
end;

function  xstiwe(s:xstring; var i:xinteger):xboolean;
	var n:xnumber;
begin
	result:=false; i:=0; if s='' then exit;
	result:=not texttofloat(pchar(s),n,fvcurrency);
	result:=(result) or (abs(n)>xmaxinteger);
	if not result then i:=trunc(n);
end;

function  xstn(s:xstring):xnumber;
begin
	result:=0; if s='' then exit;
	texttofloat(xpchar(s),result,fvcurrency);
end;

function  xstnc(s:xstring):xnumber;
	const ic=[x00..xff]-['+','-','.','0'..'9'];
begin
	s:=xremovecharacters(s,ic);
	result:=0; if s='' then exit;
	texttofloat(xpchar(s),result,fvcurrency);
end;

function  xstncwe(s:xstring; var n:xnumber):xboolean;
	const ic=[x00..xff]-['+','-','.','0'..'9'];
begin
	s:=xremovecharacters(s,ic);
	result:=false; n:=0; if s='' then exit;
	//result:=not texttofloat(pchar(s),n,fvcurrency); // this line blows away Delphi 2.0 Compiler on Windows 2000, below two lines correct problem
  result:=texttofloat(pchar(s),n,fvcurrency);
  result:=not result;
end;

procedure xstopclock(c:xclock);
begin
	with xclocks[c] do inc(value,xgetticks-start);
end;

procedure xstoreaddenda;
begin
	xstoreascii(copy(xlexicon.addenda,3,length(xlexicon.addenda)));
end;

procedure xstorearc(a:xarc);
begin
	with a do begin
		xstorerectangle(rect);
		xstoreextended(angles[1]);
		xstoreextended(angles[2]);
		xstoreboolean(arrows[1]);
		xstoreboolean(arrows[2]);
	end;
end;

procedure xstoreascii(const s:xstring);
begin
	with xbuffer do begin
		if s='' then exit;
		while count+length(s)>=size do xgrowbuffer;
		move(xpchar(s)^,bytes[pos],length(s));
		inc(pos,length(s)); count:=pos-1;
	end;
end;

procedure xstoreblock(b:xblock);
	var cr:xinteger;
begin
	if b=nil then exit;
	with b^,edit^,text do begin
		for cr:=1 to count do begin
			if xissimple(text) then xcleanrow(text,cr);
			while xbuffer.count+length(rows[cr])+1>=xbuffer.size do xgrowbuffer;
			move(rows[cr][1],xbuffer.bytes[xbuffer.pos],length(rows[cr]));
			inc(xbuffer.pos,length(rows[cr]));
			xbuffer.bytes[xbuffer.pos]:=ord(xlf);
			inc(xbuffer.pos);
			xbuffer.count:=xbuffer.pos-1;
		end;
		dec(xbuffer.pos,2);
		dec(xbuffer.count,2);
		xadjusttextcaret(text);
	end;
end;

procedure xstoreboolean(b:xboolean);
begin
	with xbuffer do begin
		while count+sizeof(b)>=size do xgrowbuffer;
		move(b,bytes[pos],sizeof(b));
		inc(pos,sizeof(b)); count:=pos-1;
	end;
end;

procedure xstorebytes(b:xpointer; c:xinteger);
begin
	with xbuffer do begin
		while count+c>=size do xgrowbuffer;
		move(b^,bytes[pos],c);
		inc(pos,c); count:=pos-1;
	end;
end;

procedure xstorecolor(c:xcolor);
begin
	with xbuffer do begin
		while count+sizeof(c)>=size do xgrowbuffer;
		move(c,bytes[pos],sizeof(c));
		inc(pos,sizeof(c)); count:=pos-1;
	end;
end;

procedure xstorecurve(c:xcurve);
begin
	xstorepolygon(xpolygon(c));
end;

procedure xstoreellipse(e:xellipse);
begin
	xstorerectangle(e.rect);
end;

procedure xstoreextended(e:xextended);
begin
	with xbuffer do begin
		while count+sizeof(e)>=size do xgrowbuffer;
		move(e,bytes[pos],sizeof(e));
		inc(pos,sizeof(e)); count:=pos-1;
	end;
end;

procedure xstorefont(f:xfont);
begin
	with xbuffer do begin
		while count+sizeof(f)>=size do xgrowbuffer;
		move(f,bytes[pos],sizeof(f));
		inc(pos,sizeof(f)); count:=pos-1;
	end;
end;

procedure xstoreinteger(i:xinteger);
begin
	with xbuffer do begin
		while count+sizeof(i)>=size do xgrowbuffer;
		move(i,bytes[pos],sizeof(i));
		inc(pos,sizeof(i)); count:=pos-1;
	end;
end;

procedure xstorelexicon;
	var b:xstring; cc:xchar;
begin
	b:='';
	for cc:='a' to 'z' do b:=b+copy(xlexicon.words[cc],3,xmaxinteger);
	xstoreascii(b);
end;

procedure xstorepage(p:xpage);
begin
	if p=nil then exit;
	xstoreinteger(p.level);
	xstorerectangle(p.body);
	xstoreextended(p.scale);
	xstoreinteger(p.lastsid);
	xstoreshapes(p.shapes);
end;

procedure xstorepicture(p:xpicture);

var sized:xboolean;

procedure xstorepicture_crop;
	var acr:xrect; bcp,ccp:xpoint; cr,cw,ncr,ncw,nh,nrw,nw,rw:xinteger; sh,sw:xextended; tbits:xbytes;
begin
	with p,omap,header do begin
		if xrectangleequals(bitmaprect,croprect) then exit;
		bcp:=xgetcenterpoint(bitmaprect); ccp:=xgetcenterpoint(croprect);
		acr:=xmoverectangle(croprect,0,2*(bcp.y-ccp.y));
		if sized then begin
			if (xwidth(rect)-10<=0) or (xheight(rect)-10<=0) then exit;
			if (xwidth(croprect)-10<=0) or (xheight(croprect)-10<=0) then exit;
			sw:=(xwidth(rect)-10)/(xwidth(croprect)-10);
			sh:=(xheight(rect)-10)/(xheight(croprect)-10);
			bcp:=xgetcenterpoint(bitmaprect); ccp:=xgetcenterpoint(croprect);
			acr:=xmoverectangle(xpositionrectangle(rect,0,0),
				round((croprect.left-bitmaprect.left)*sw),
				round(((croprect.top-bitmaprect.top)+(bcp.y-ccp.y)*2)*sh));
		end;
		with acr do begin left:=left div xtpp; top:=top div xtpp; right:=right div xtpp; bottom:=bottom div xtpp; end;
		cw:=3; rw:=xaligntoboundary(biwidth*cw,4);
		nw:=acr.right-acr.left+1; nh:=acr.bottom-acr.top+1;
		ncw:=3; nrw:=xaligntoboundary(nw*ncw,4);
		count:=nrw*nh; getmem(tbits,count); fillchar(tbits^,count,x00);
		ncr:=0;
		for cr:=acr.top to acr.bottom do begin
			move(bits[(cr*rw)+(acr.left*cw)+1],tbits[ncr*nrw+1],nw*ncw);
			inc(ncr);
		end;
		biwidth:=nw; biheight:=nh;
		freemem(bits); bits:=tbits;
	end;
end;

procedure xstorepicture_size;
	var nh,nw:xinteger; sh,sw:xextended; tbits:xbytes; tr:xrect;
begin
	with p,omap,header do begin
		sized:=false;
		if xrectangleencloses(xpositionrectangle(rect,0,0),xpositionrectangle(croprect,0,0)) then begin
			tbits:=bits; getmem(bits,count); move(tbits^,bits^,count);
			exit;
		end;
		if (xwidth(rect)-10<=0) or (xheight(rect)-10<=0) then exit;
		if (xwidth(croprect)-10<=0) or (xheight(croprect)-10<=0) then exit;
		sized:=true;
		sw:=(xwidth(rect)-10)/(xwidth(croprect)-10);
		sh:=(xheight(rect)-10)/(xheight(croprect)-10);
		tr:=xsizerectangleproportionately(bitmaprect,sw,sh,xbottomright);
		nw:=(xwidth(tr)) div xtpp; nh:=(xheight(tr)) div xtpp;
		count:=xaligntoboundary(nw*3,4)*nh;
		getmem(tbits,count);
		xresamplebits(bits,biwidth,biheight,tbits,nw,nh);
		biwidth:=nw; biheight:=nh;
		bits:=tbits;
	end;
end;

begin
	with p,omap,header do begin
		xstorepicture_size;
		xstorepicture_crop;
		bitmaprect:=xmr(0,0,biwidth*xtpp-10,biheight*xtpp-10); croprect:=bitmaprect;
		xstorerectangle(rect);
		xstorerectangle(croprect);
		xstorebytes(@header,sizeof(header));
		xstoreinteger(count);
		xstorebytes(bits,count);
		xstorecolor(color);
		xstoreinteger(brightness);
		freemem(bits);
	end;
end;

procedure xstorepoint(p:xpoint);
begin
	with xbuffer do begin
		while count+sizeof(p)>=size do xgrowbuffer;
		move(p,bytes[pos],sizeof(p));
		inc(pos,sizeof(p)); count:=pos-1;
	end;
end;

procedure xstorepolygon(p:xpolygon);
	var cv:xvertex;
begin
	with p do begin
		xstorerectangle(rect);
		xstoreinteger(count);
		for cv:=1 to count do xstorepoint(vertices[cv]);
		xstoreboolean(arrows[1]);
		xstoreboolean(arrows[2]);
	end;
end;

procedure xstorerectangle(r:xrect);
begin
	with xbuffer do begin
		while count+sizeof(r)>=size do xgrowbuffer;
		move(r,bytes[pos],sizeof(r));
		inc(pos,sizeof(r)); count:=pos-1;
	end;
end;

procedure xstoreshapes(s:xshapes);

var cs:xshape;

procedure xstoreshapes_arc(s:xshape);
begin
	xstorecolor(s.border);
	xstorecolor(s.fill);
	xstorearc(s.arc);
end;

procedure xstoreshapes_curve(s:xshape);
begin
	xstorecolor(s.border);
	xstorecolor(s.fill);
	xstorecurve(s.curve);
end;

procedure xstoreshapes_ellipse(s:xshape);
begin
	xstorecolor(s.border);
	xstorecolor(s.fill);
	xstoreellipse(s.ellipse);
end;

procedure xstoreshapes_group(s:xshape);
begin
	xstoreshapes(s.shapes);
end;

procedure xstoreshapes_picture(s:xshape);
begin
	xstorecolor(s.border);
	xstorecolor(s.fill);
	xstorestring(s.slices[xnslice].str);
	xstorepicture(s.picture);
end;

procedure xstoreshapes_polygon(s:xshape);
begin
	xstorecolor(s.border);
	xstorecolor(s.fill);
	xstorepolygon(s.polygon);
end;

procedure xstoreshapes_rectangle(s:xshape);
begin
	xstorecolor(s.border);
	xstorecolor(s.fill);
	xstorerectangle(s.rectangle);
end;

procedure xstoreshapes_text(s:xshape);
	var cs:xslice;
begin
	xstorecolor(s.border);
	xstorecolor(s.fill);
	xstorecolor(s.pen);
	for cs:=succ(low(xslice)) to high(xslice) do xstorestring(s.slices[cs].str);
	xstoreinteger(ord(s.dtyp));
	xstoretext(s.text);
end;

begin
	if s=nil then exit;
	xstoreinteger(xgetshapecount(s));
	cs:=s.first;
	while cs<>nil do begin
		xstoreinteger(cs.sid);
		xstoreinteger(ord(cs.styp));
		case cs.styp of
			xarcshape:        xstoreshapes_arc(cs);
			xcurveshape:      xstoreshapes_curve(cs);
			xellipseshape:    xstoreshapes_ellipse(cs);
			xgroupshape:			xstoreshapes_group(cs);
			xpictureshape:    xstoreshapes_picture(cs);
			xpolygonshape:    xstoreshapes_polygon(cs);
			xrectangleshape:	xstoreshapes_rectangle(cs);
			xtextshape:       xstoreshapes_text(cs);
		end;
		cs:=cs.next;
	end;
end;

procedure xstoresort(s:xstring);
begin
	xstoreascii(s);
end;

procedure xstorestring(v:xstring);
	var len:xinteger;
begin
	with xbuffer do begin
		len:=length(v);
		if (len>0) and (v[len]=xet) then dec(len);
		while count+sizeof(len)+len>=size do xgrowbuffer;
		move(len,bytes[pos],sizeof(len));
		inc(pos,sizeof(len)); count:=pos-1;
		if len=0 then exit;
		move(v[1],bytes[pos],len);
		inc(pos,len); count:=pos-1;
	end;
end;

procedure xstoretext(var t:xtext);
begin
	with t do begin
		xstorerectangle(rect);
		xstorefont(font);
		xstoreboolean(margin);
		xstoreboolean(wrap);
	end;
end;

function  xstq(s:xstring):xstring;
	var cc:xinteger;
begin
	result:='';
	for cc:=length(s) downto 1 do if s[cc] in xsqs then insert(s[cc],s,cc);
	result:=xsq+s+xsq;
end;

function  xstt(s:xstring):xtime;
begin
	xsttwe(s,result);
end;

function  xsttwe(s:xstring; var t:xtime):xboolean;
	var cc,p:xinteger; h:xstring;
begin
	result:=true; t:=9999; if s='' then exit;
	p:=pos('am',xv(s)); if p=0 then p:=pos('pm',xv(s));
	if p<>0 then begin h:=copy(s,p,length(s)-p+1); delete(s,p,length(s)-p+1); end;
	s:=trim(s); cc:=1;
	while cc<length(s) do begin
		if (s[cc]=xsp) and (s[cc+1]<>xsp) then s[cc]:=':';
		if (cc>1) and (s[cc]=':') and (s[cc-1]=':') then delete(s,cc,1);
		inc(cc);
	end;
	try
		s:=s+h;
		timeseparator:=':';
		t:=strtotime(ansiuppercase(s));
		result:=false;
	except on econverterror do t:=9999; end;
end;

procedure xswitcharea(a:xarea);
begin
	if a=nil then exit;
	xhidecaret;
	xca:=a;
	xrefreshmenus;
end;

function  xsymboltostring(s:xsymbol):xstring;
	const t:array[xsymtyp] of xstring=('unknown','external','folder','global','internal','local','mark','page');
begin
	result:=''; if s=nil then exit;
	result:='type='+t[s.styp];
	if s.scope<>'' then result:=result+'; folder='+s.scope;
	result:=result+'; name='+s.name;
end;

function  xsystemerrormessage(e:xinteger):xstring;
	var cc:xinteger;
begin
	result:=syserrormessage(e)+'.';
	for cc:=length(result) downto 1 do begin
		if result[cc]=xcr then result[cc]:=xsp;
		if result[cc]=xlf then delete(result,cc,1);
	end;
end;

{t}

procedure xtimerprocedure(w:hwnd; m:uint; t:uint; s:dword);
begin
	case xtimer(t) of
		xcarettimer:  xdrawcaret;
		xsleeptimer:  xenque(xmakeevent(xsleepevent));
	end;
end;

function  xtitlecase(s:xstring):xstring;
	var cc:xinteger;
begin
	result:=''; if s='' then exit;
	s[1]:=ansiuppercase(s[1])[1];
	for cc:=2 to length(s) do begin
		if s[cc-1]=xsp then s[cc]:=ansiuppercase(s[cc])[1] else s[cc]:=ansilowercase(s[cc])[1];
	end;
	result:=s;
end;

function  xtokentostring(t:xtoken):xstring;
begin
	with t do begin
		if ttyp=xnotok 			then begin result:='end of source';	exit; end;
		if ttyp=xcommenttok then begin result:='comment'; 			exit; end;
		if ttyp=xidenttok 	then begin result:=str; 						exit; end;
		if ttyp=xlinetok 		then begin result:='end of source'; exit; end;
		if ttyp=xnumtok 		then begin result:=str; exit; end;
		if ttyp=xreturntok	then begin result:='end of source'; exit; end;
		if ttyp=xstrtok 		then begin result:=str; 						exit; end;
		result:=xtokens[ttyp];
	end;
end;

function  xtokentypetostring(t:xtoktyp):xstring;
begin
	if t=xnotok 			then begin result:='end of source';	exit; end;
	if t=xcommenttok	then begin result:='comment'; 			exit; end;
	if t=xidenttok 		then begin result:='identifier'; 		exit; end;
	if t=xlinetok 		then begin result:='end of line'; 	exit; end;
	if t=xreturntok		then begin result:='end of line'; 	exit; end;
	if t=xstrtok 			then begin result:='string'; 				exit; end;
	result:=xtokens[t];
end;

procedure xtrackblock;
	var cp,np:xpoint; s:xboolean;
begin
	if (xcb=nil) or (xcs=nil) then exit;
	xhidecaret;
	cp:=xce.lp; xcs.text.blocksel:=xce.command or (xce.shift and xcs.text.blocksel);
	if xce.shift then xextendselection(xcs,cp) else xsetcaret(xcs,cp);
	xmessage(xgetblockstatus(xcb));
	xslapshape(xcs);
	while xmouseisdown(xleftbutton) do begin
		np:=xgetmousepoint;
		s:=xautoscrollblock(xcb,np);
		np:=xlp(np,xcb.origin);
		if not xmousehasmoved(cp,np,10,10) and not s then continue;
		xextendselection(xcs,np);
		if s then xslapblock(xcb) else xslapshape(xcs);
		xmessage(xgetblockstatus(xcb));
		cp:=np;
	end;
	xadjustselection(xcs);
	xshowcaret(xcs);
end;

procedure xtrackcabinet;
	var r:xrect; f,s:xboolean;
begin
	if xcc=nil then exit;
	with xcc^,r do begin
		f:=true;
		xsavedrawerselections(drawers);
		if xce.drawer<>nil then begin xce.drawer.sel:=not xce.drawer.sel; xslapcabinet(xcc); xmessage(xgetcabinetstatus(xcc)); end;
		topleft:=xce.lp;
		while xmouseisdown(xleftbutton) do begin
			bottomright:=xgetmousepoint;
			s:=xautoscrollcabinet(xcc,bottomright);
			bottomright:=xlimitpoint(bottomright,xsr(body,0,0,-10,-10));
			bottomright:=xlp(bottomright,origin);
			if (not xselectintersecteddrawers(drawers,r)) and (not s) and (not f) then continue;
			xslapcabinet(xcc);
			xmessage(xgetcabinetstatus(xcc));
			f:=false;
		end;
	end;
end;

procedure xtrackdrawer;
	var r:xrect; s:xboolean;
begin
	if xcd=nil then exit;
	with xcd^,r do begin
		xsavefolderselections(folders);
		if xce.folder<>nil then begin xce.folder.sel:=not xce.folder.sel; xslapdrawer(xcd); xmessage(xgetdrawerstatus(xcd)); end;
		topleft:=xce.lp;
		while xmouseisdown(xleftbutton) do begin
			bottomright:=xgetmousepoint;
			s:=xautoscrolldrawer(xcd,bottomright);
			bottomright:=xlimitpoint(bottomright,xsr(body,0,0,-10,-10));
			bottomright:=xlp(bottomright,origin);
			if (not xselectintersectedfolders(folders,r)) and (not s) then continue;
			xslapdrawer(xcd);
			xmessage(xgetdrawerstatus(xcd));
		end;
	end;
end;

procedure xtrackfolder;
	var r:xrect; s:xboolean;
begin
	if xcf=nil then exit;
	with xcf^,r do begin
		xsavepageselections(pages);
		if xce.page<>nil then begin xce.page.sel:=not xce.page.sel; xslapfolder(xcf); xmessage(xgetfolderstatus(xcf)); end;
		topleft:=xce.lp;
		while xmouseisdown(xleftbutton) do begin
			bottomright:=xgetmousepoint;
			s:=xautoscrollfolder(xcf,bottomright);
			bottomright:=xlimitpoint(bottomright,xsr(body,0,0,-10,-10));
			bottomright:=xlp(bottomright,origin);
			if (not xselectintersectedpages(pages,r)) and (not s) then continue;
			xslapfolder(xcf);
			xmessage(xgetfolderstatus(xcf));
		end;
	end;
end;

procedure xtrackhandle(var dw,dh:xtwit);

var ah:xhandle; ap,cp,dp,np,op:xpoint; os,cs:xshape; fr:xrect; s:xboolean;

procedure xtrackhandle_simple;
	var r:xrect;
begin
	xsetcliprectangle(xdisplay,xca.clip);
	xdrawfocusrectangle(xdisplay,xgr(fr,xcp.origin));
	while xmouseisdown(xleftbutton) do begin
		np:=xgetmousepoint;
		s:=xautoscrollpage(xcp,np);
		np:=xlp(np,xcp.origin);
		if not xmousehasmoved(cp,np,xzsg,xzsg) and not s then continue;
		if s then xslappage(xcp) else xdrawfocusrectangle(xdisplay,xgr(fr,xcp.origin));
		xsetcliprectangle(xdisplay,xca.clip);
		dp:=xcalculatedelta(cp,np,xzsg,xzsg);
		cp:=xmovepoint(cp,dp.x,dp.y);
		fr:=xnr(xmr(ap.x,ap.y,cp.x,cp.y));
		case xce.handle of
			xtopleft:     begin dw:=op.x-cp.x; dh:=op.y-cp.y; end;
			xtopright:    begin dw:=cp.x-op.x; dh:=op.y-cp.y; end;
			xbottomleft:  begin dw:=op.x-cp.x; dh:=cp.y-op.y; end;
			xbottomright:	begin dw:=cp.x-op.x; dh:=cp.y-op.y; end;
		end;
		xdrawfocusrectangle(xdisplay,xgr(fr,xcp.origin));
		xmessage(xgetrectanglesizemessage(fr));
		xsetcliprectangle(xdisplay,xca.clip);
	end;
	xdrawfocusrectangle(xdisplay,xgr(fr,xcp.origin));
end;

begin
	dw:=0; dh:=0; if xce.shape=nil then exit;
	os:=xce.shape;
	ah:=xgetanchorhandle(xce.handle);
	ap:=xhandletopoint(ah,os.rect);
	op:=xhandletopoint(xce.handle,os.rect); cp:=xhandletopoint(xce.handle,os.rect);
	dw:=1; dh:=1;
	fr:=xnr(xmr(ap.x,ap.y,cp.x,cp.y));
	if os.styp in [xpictureshape,xgroupshape,xrectangleshape,xtextshape] then begin xtrackhandle_simple; exit; end;
	cs:=xcopyshape(os);
	xsetcliprectangle(xdisplay,xca.clip);
	xdrawfocus(xdisplay,cs,fr,xcp.origin);
	while xmouseisdown(xleftbutton) do begin
		np:=xgetmousepoint;
		s:=xautoscrollpage(xcp,np);
		np:=xlp(np,xcp.origin);
		if not xmousehasmoved(cp,np,xzsg,xzsg) and not s then continue;
		if s then xslappage(xcp) else xdrawfocus(xdisplay,cs,fr,xcp.origin);
		xsetcliprectangle(xdisplay,xca.clip);
		dp:=xcalculatedelta(cp,np,xzsg,xzsg);
		cp:=xmovepoint(cp,dp.x,dp.y);
		fr:=xnr(xmr(ap.x,ap.y,cp.x,cp.y));
		case xce.handle of
			xtopleft:     begin dw:=op.x-cp.x; dh:=op.y-cp.y; end;
			xtopright:    begin dw:=cp.x-op.x; dh:=op.y-cp.y; end;
			xbottomleft:  begin dw:=op.x-cp.x; dh:=cp.y-op.y; end;
			xbottomright:	begin dw:=cp.x-op.x; dh:=cp.y-op.y; end;
		end;
		xdestroyshape(cs);
		cs:=xcopyshape(os);
		xsizeshape(cs,dw,dh,xce.handle);
		xdrawfocus(xdisplay,cs,fr,xcp.origin);
		xmessage(xgetshapesizemessage(cs));
		xsetcliprectangle(xdisplay,xca.clip);
	end;
	xdrawfocus(xdisplay,cs,fr,xcp.origin);
	xdestroyshape(cs);
end;

procedure xtracklimbos;
	var r:xrect; s:xboolean;
begin
	if xcp=nil then exit;
	with xcp^,r do begin
		xsavestopselections(xcp.horzs);
		if xce.shape<>nil then begin xce.shape.sel:=not xce.shape.sel; xslappage(xcp); end;
		topleft:=xce.lp;
		while xmouseisdown(xleftbutton) do begin
			bottomright:=xgetmousepoint;
			s:=xautoscrollpage(xcp,bottomright);
			bottomright:=xlp(bottomright,origin);
			if (not xselectintersectedstops(xcp.horzs,r)) and (not s) then continue;
			xslappage(xcp);
		end;
	end;
end;

function xtracklogo:xboolean;
begin
	result:=true;
	xslaplogo(true);
	while xmouseisdown(xleftbutton) do begin
		if xpir(xlogo,xgetmousepoint)=result then continue;
		result:=not result;
		xslaplogo(result);
	end;
	xslaplogo(false);
end;

function  xtrackmenu:xitem;
	var ci,ni:xitem; cm,nm:xmenu; cp:xpoint;
begin
	result:=nil; if xce.menu=nil then exit;
	xpushcaret;
  xblitbits(xdisplay,xscratch,xscreen.rect);
	cm:=xce.menu; ci:=nil; ni:=nil;
  xopenmenu(cm); xslapmenu(cm);
	while xmouseisdown(xleftbutton) do begin
		cp:=xgetmousepoint;
		nm:=xfindmenubypoint(cp);
		if (nm<>cm) and (nm<>nil) then begin
			xclosemenu(cm); xopenmenu(nm); xslapmenu(nm);
			cm:=nm; ci:=nil;
		end;
		ni:=xfinditembypoint(cm.items,cp);
		if ni=ci then continue;
		if ci<>nil then ci.sel:=false;
		if ni<>nil then ni.sel:=true;
    xslapmenu(cm);
		ci:=ni;
	end;
	if (cm<>nil) and (ci<>nil) and (ci.ityp=xcmditem) then result:=xremovelink(ci);
	xclosemenu(cm);
  xblitbits(xscratch,xdisplay,xscreen.rect);
	xpopcaret;
end;
{
function  xtrackmenu:xitem;
	var ci,ni:xitem; cm,nm:xmenu; cp:xpoint;
begin
	result:=nil; if xce.menu=nil then exit;
	xpushcaret;
	cm:=xce.menu; ci:=nil; ni:=nil;
	xopenmenu(cm); xdrawmenu(xdisplay,cm);
	while xmouseisdown(xleftbutton) do begin
		cp:=xgetmousepoint;
		nm:=xfindmenubypoint(cp);
		if (nm<>cm) and (nm<>nil) then begin
			xclosemenu(cm); xdrawmenu(xdisplay,cm);
			xopenmenu(nm);	xdrawmenu(xdisplay,nm);
			cm:=nm; ci:=nil;
		end;
		ni:=xfinditembypoint(cm.items,cp);
		if ni=ci then continue;
		if ci<>nil then begin ci.sel:=false; xdrawitem(xdisplay,ci); end;
		if ni<>nil then begin ni.sel:=true; xdrawitem(xdisplay,ni); end;
		ci:=ni;
	end;
	if (cm<>nil) and (ci<>nil) and (ci.ityp=xcmditem) then result:=xremovelink(ci);
	xclosemenu(cm); xdrawmenu(xdisplay,cm);
	xpopcaret;
end;
}
function  xtrackpopup(p:xpopup; var v:xstring):xboolean;
	var ci,ni:xitem; cp:xpoint;
begin
	result:=false; v:=''; if p=nil then exit;
	xpushcaret;
  xblitbits(xdisplay,xscratch,xscreen.rect);
	ci:=nil; ni:=nil;
	xopenpopup(p); //xslappopup(p); // causes blinky
	while xmouseisdown(xleftbutton) do begin
		cp:=xgetmousepoint;
		ni:=xfinditembypoint(p.choices,cp);
		if ni=ci then continue;
		if ci<>nil then ci.sel:=false;
		if ni<>nil then ni.sel:=true;
    xslappopup(p);
		ci:=ni;
	end;
	result:=(ci<>nil) and (ci.ityp=xchoiceitem);
	if result then v:=xgetvalue(ci.title);
	xclosepopup(p);
  xblitbits(xscratch,xdisplay,xscreen.rect);
	xpopcaret;
end;
{
function  xtrackpopup(p:xpopup; var v:xstring):xboolean;
	var ci,ni:xitem; cp:xpoint;
begin
	result:=false; v:=''; if p=nil then exit;
	xpushcaret;
	ci:=nil; ni:=nil;
	xopenpopup(p); xdrawpopup(xdisplay,p);
	while xmouseisdown(xleftbutton) do begin
		cp:=xgetmousepoint;
		ni:=xfinditembypoint(p.choices,cp);
		if ni=ci then continue;
		if ci<>nil then begin ci.sel:=false; xdrawitem(xdisplay,ci); end;
		if ni<>nil then begin ni.sel:=true; xdrawitem(xdisplay,ni); end;
		ci:=ni;
	end;
	result:=(ci<>nil) and (ci.ityp=xchoiceitem);
	if result then v:=xgetvalue(ci.title);
	xclosepopup(p); xdrawpopup(xdisplay,p);
	xpopcaret;
end;
}
function  xtrackrubberband:xrect;
	var cp,np:xpoint; s:xboolean;
begin
	result:=xnilrect; if xcp=nil then exit;
	xsaveshapeselections(xcp.shapes);
	cp:=xce.lp;
	result:=xnr(xmr(xce.lp.x,xce.lp.y,cp.x,cp.y));
	xsetcliprectangle(xdisplay,xsr(xca.body,0,+10,0,-10));
	xdrawfocusrectangle(xdisplay,xgr(result,xcp.origin));
	while xmouseisdown(xleftbutton) do begin
		np:=xgetmousepoint;
		s:=xautoscrollpage(xcp,np);
		np:=xlp(np,xcp.origin);
		if not xmousehasmoved(cp,np,10,10) and not s then continue;
		if s then xslappage(xcp) else xdrawfocusrectangle(xdisplay,xgr(result,xcp.origin));
		xsetcliprectangle(xdisplay,xsr(xca.body,0,+10,0,-10));
		result:=xnr(xmr(xce.lp.x,xce.lp.y,np.x,np.y));
		xdrawfocusrectangle(xdisplay,xgr(result,xcp.origin));
		cp:=np;
	end;
	xdrawfocusrectangle(xdisplay,xgr(result,xcp.origin));
end;

procedure xtrackselection;
	var b:xboolean; cp,np:xpoint; o:xinteger; s:xboolean;
begin
	if (xcp=nil) or (xcs=nil) then exit;
	xhidecaret;
	cp:=xce.lp; xcs.text.blocksel:=(xissimple(xcs.text)) and (xce.command or (xce.shift and xcs.text.blocksel));
	b:=xisfunctionpage(xgetpage(xcs)); o:=xcs.text.caretpos.row;
	if xce.shift then xextendselection(xcs,cp) else xsetcaret(xcs,cp);
	if b then xmessage(xgetpagestatus(xcp));
	xslapshape(xcs);
	while xmouseisdown(xleftbutton) do begin
		np:=xgetmousepoint;
		s:=xautoscrollpage(xcp,np);
		np:=xlp(np,xcp.origin);
		if not xmousehasmoved(cp,np,10,10) and not s then continue;
		xextendselection(xcs,np);
		if s then xslappage(xcp) else xslapshape(xcs);
		if b then xmessage(xgetpagestatus(xcp));
		cp:=np;
	end;
	xadjustselection(xcs);
	if (o<>xcs.text.caretpos.row) and (not xisselection(xcs)) then begin
		xindentcode(xcs);
		xslapshape(xcs);
	end;
	xshowcaret(xcs);
end;

function  xtrackshape:xpoint;

var cs,os:xshape; cp,np:xpoint; fr:xrect; s:xboolean;

procedure xtrackshape_simple;
	var o,r:xrect;
begin
	xsetcliprectangle(xdisplay,xca.clip);
	o:=os.rect; r:=o;
	xdrawfocusrectangles(xdisplay,r,fr,xcp.origin);
	while xmouseisdown(xleftbutton) do begin
		np:=xgetmousepoint;
		s:=xautoscrollpage(xcp,np);
		np:=xlp(np,xcp.origin);
		if not xmousehasmoved(cp,np,xzsg,xzsg) and not s then continue;
		if s then xslappage(xcp) else xdrawfocusrectangles(xdisplay,r,fr,xcp.origin);
		xsetcliprectangle(xdisplay,xca.clip);
		result:=xcalculatedelta(cp,np,xzsg,xzsg);
		r:=xmoverectangle(r,result.x,result.y);
		fr:=xmoverectangle(fr,result.x,result.y);
		xdrawfocusrectangles(xdisplay,r,fr,xcp.origin);
		xmessage(xgetrectanglemovemessage(o,r));
		xsetcliprectangle(xdisplay,xca.clip);
		cp:=xmovepoint(cp,result.x,result.y);
	end;
	xdrawfocusrectangles(xdisplay,r,fr,xcp.origin);
	result:=xcalculatedelta(xce.lp,cp,xzsg,xzsg);
end;

begin
	result:=xnilpoint; if xce.shape=nil then exit;
	cp:=xce.lp;
	fr:=xgetboundingrectangle(xcp.shapes,true);
	os:=xfocusshape(xce.shape,cp);
	if os.styp in [xpictureshape,xgroupshape,xrectangleshape,xtextshape] then begin xtrackshape_simple; exit; end;
	cs:=xcopyshape(os);
	xsetcliprectangle(xdisplay,xca.clip);
	xdrawfocus(xdisplay,cs,fr,xcp.origin);
	while xmouseisdown(xleftbutton) do begin
		np:=xgetmousepoint;
		s:=xautoscrollpage(xcp,np);
		np:=xlp(np,xcp.origin);
		if not xmousehasmoved(cp,np,xzsg,xzsg) and not s then continue;
		if s then xslappage(xcp) else xdrawfocus(xdisplay,cs,fr,xcp.origin);
		xsetcliprectangle(xdisplay,xca.clip);
		result:=xcalculatedelta(cp,np,xzsg,xzsg);
		xmoveshape(cs,result.x,result.y);
		fr:=xmoverectangle(fr,result.x,result.y);
		xdrawfocus(xdisplay,cs,fr,xcp.origin);
		xmessage(xgetshapemovemessage(os,cs));
		xsetcliprectangle(xdisplay,xca.clip);
		cp:=xmovepoint(cp,result.x,result.y);
	end;
	xdrawfocus(xdisplay,cs,fr,xcp.origin);
	xdestroyshape(cs);
	result:=xcalculatedelta(xce.lp,cp,xzsg,xzsg);
end;

function  xtrackvertex:xpoint;

var dp,np:xpoint; cs,os:xshape; g:xtwit; s:xboolean;

procedure xtrackvertex_simple;
	var mr,r:xrect;
begin
	if os.picture.omap.bits=nil then exit;
	r:=os.rect; mr:=xgetmaximumcroprectangle(os.picture);
	xsetcliprectangle(xdisplay,xca.clip);
	xdrawfocusrectangle(xdisplay,xgr(r,xcp.origin));
	while xmouseisdown(xleftbutton) do begin
		np:=xgetmousepoint;
		s:=xautoscrollpage(xcp,np);
		np:=xlp(np,xcp.origin);
		if not xmousehasmoved(result,np,g,g) and not s then continue;
		if s then xslappage(xcp) else xdrawfocusrectangle(xdisplay,xgr(r,xcp.origin));
		xsetcliprectangle(xdisplay,xca.clip);
		dp:=xcalculatedelta(result,np,g,g);
		result:=xmovepoint(result,dp.x,dp.y);
		r:=xchangerectanglevertex(r,mr,os.rect,xce.vertex,result,os.mag);
		xdrawfocusrectangle(xdisplay,xgr(r,xcp.origin));
		xmessage(xgetrectanglesizemessage(r));
		xsetcliprectangle(xdisplay,xca.clip);
	end;
	xdrawfocusrectangle(xdisplay,xgr(r,xcp.origin));
end;

begin
	result:=xnilpoint; if xce.shape=nil then exit;
	os:=xce.shape;
	if os.styp=xarcshape then g:=10 else g:=xzsg;
	result:=xvertextopoint(os,xce.vertex);
	if os.styp in [xpictureshape] then begin xtrackvertex_simple; exit; end;
	cs:=xcopyshape(os);
	xsetcliprectangle(xdisplay,xca.clip);
	xdrawfocus(xdisplay,cs,xnilrect,xcp.origin);
	while xmouseisdown(xleftbutton) do begin
		np:=xgetmousepoint;
		s:=xautoscrollpage(xcp,np);
		np:=xlp(np,xcp.origin);
		if not xmousehasmoved(result,np,g,g) and not s then continue;
		if s then xslappage(xcp) else xdrawfocus(xdisplay,cs,xnilrect,xcp.origin);
		xsetcliprectangle(xdisplay,xca.clip);
		dp:=xcalculatedelta(result,np,g,g);
		result:=xmovepoint(result,dp.x,dp.y);
		xchangevertex(cs,xce.vertex,result);
		xdrawfocus(xdisplay,cs,xnilrect,xcp.origin);
		xmessage(xgetshapemessage(cs));
		xsetcliprectangle(xdisplay,xca.clip);
	end;
	xdrawfocus(xdisplay,cs,xnilrect,xcp.origin);
	xdestroyshape(cs);
end;

function  xtti(t:xtwit):xextended;
begin
	result:=t/xtpi;
end;

function  xtts(t:xtime):xstring;
begin
	result:=xformattime(t,'hh:mm:ss');
end;

function  xtype(o:xobject):xrecordtyp;
begin
	result:=xnorecord; if o=nil then exit;
	result:=xrecord(o).rtyp;
end;

function  xtypemismatch(v:xvar; t:xdatatypset):xboolean;
begin
	result:=false;
	if (v=nil) or (v.dtyp=xnodata) or (xnodata in t) then exit;
	result:=not (v.dtyp in t);
	if result then xrunerror('Type mismatch.');
end;

{u}

function  xunfilepage(p:xpage):xboolean;
	var cid:xstring; cp:xinteger; parent:xfolder;
begin
	result:=false; if p=nil then exit;
	if not xpageisfiled(p) then exit;
	cid:=p.cid; if not xlockcabinet(cid) then exit;
	with xindex do try
		if not xopenpage(p) then exit;
		if not xreadpageindex(p.cid,p.did,p.fid) then exit;
		if not xfindpageentry(p.pid,cp) then exit;
		if not xpageiscurrent(p,cp) then exit;
		move(pageindex[cp+1],pageindex[cp],(count-cp)*sizeof(xpageentry));
		dec(count);
		if not xwritepageindex(p.cid,p.did,p.fid) then exit;
		result:=true;
		xdeletefile(xgetpagefilename(p.cid,p.did,p.fid,p.pid));
		p.pid:=0; parent:=p.parent; xremovelink(p); xadjustfolder(parent);
	finally xunlockcabinet(cid); end;
end;

function  xunionrectangles(a,b:xrect):xrect;
begin
	with result do begin
		if a.left<b.left 			then left:=a.left 		else left:=b.left;
		if a.top<b.top 				then top:=a.top 			else top:=b.top;
		if a.right>b.right 		then right:=a.right 	else right:=b.right;
		if a.bottom>b.bottom	then bottom:=a.bottom	else bottom:=b.bottom;
	end;
end;

procedure xunlockcabinet(cid:xstring);
	var n:xlock;
begin
	n:=xfindlock(cid); if n=nil then exit;
	dec(n.count);
	if n.count<>0 then exit;
	xclosefile(n.fcb);
	xioresult;
	xdestroylock(n);
end;

procedure xunlockcabinets;
	var cn,nn:xlock;
begin
	nn:=xlocks.first;
	while nn<>nil do begin cn:=nn; nn:=nn.next;
		xclosefile(cn.fcb);
		xioresult;
		xdestroylock(cn);
	end;
end;

function  xupdatepage(p:xpage):xboolean;

procedure xupdatepage_setflag(s:xshapes);
	var cs,ns:xshape;
begin
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if cs.styp=xgroupshape then xupdatepage_setflag(cs.shapes);
		if cs.styp<>xtextshape then continue;
		cs.calculated:=false;
	end;
end;

procedure xupdatepage_shapes(s:xshapes);
	var cs,ns:xshape;
begin
	ns:=s.first;
	while ns<>nil do begin cs:=ns; ns:=ns.next;
		if cs.styp=xgroupshape then xupdatepage_shapes(cs.shapes);
		if cs.styp<>xtextshape then continue;
		if not xupdateshape(cs) then result:=false;
	end;
end;

begin
	result:=true; if p=nil then begin result:=false; exit; end;
	xsaveedit(p.edit);
	xupdatepage_setflag(p.shapes);
	xupdatepage_shapes(p.shapes);
end;

function  xupdateshape(s:xshape):xboolean;
	var c:xstring;
begin
	with xca^,local do begin
		result:=false; if s=nil then exit;
		if s.styp<>xtextshape then exit;
		result:=true;
		if s.calculated then exit;
		c:=xgetslice(s,xcslice); if c='' then exit;
		s.calculated:=true;
		xdestroyinstructions(s.instrs,false); // not always?
		xpushmachine;
		xexecuteshape(s,xcslice,xparseexpression);
		result:=not abort;
		if not result then xresetmachine;
		if not result then xsetslice(s,xvslice,'') else xsetslice(s,xvslice,xpopasstring(stack));
		xpopmachine;
	end;
end;

function  xuseraborted:xboolean;
begin
	result:=false;
	if (getasynckeystate(vk_end) and $8000)=0 then exit;
	if ((getasynckeystate(vk_control) or getasynckeystate(vk_menu)) and $8000)=0 then exit;
	result:=true; xcx:='Command cancelled.';
end;

function  xuserissure(last:xboolean):xboolean;
	var a:xstring;
begin
	result:=false;
	if not xdialog('Are you quite sure?','no',true,false,last,a) then exit;
	result:=xstb(a);
	if not result then xslapbar;
end;

function  xuserwantstosave(b:xblock):xboolean;
begin
	result:=false;
	if b=nil then exit;
	if not b.edit.modified then exit;
	if xblockisreadonly(b) then exit;
	result:=not xyes('File not saved. Changes will be lost. Continue?','no',true);
end;

{v}

function  xv(s:xstring):xstring;
	var cc:xinteger;
begin
	for cc:=1 to length(s) do if s[cc]=xlf then s[cc]:=xsp;
	if (s<>'') and (s[length(s)]=xet) then delete(s,length(s),1);
	result:=ansilowercase(s);
end;

function  xvertextopoint(s:xshape; v:xvertex):xpoint;

function  xvertextopoint_picture:xpoint;
	var h,w:xtwit;
begin
	with s^,rect do begin
		w:=(xwidth(rect)-10) div 2; h:=(xheight(rect)-10) div 2;
		case v of
			1:	result:=xmp(left,top+h);
			2:  result:=xmp(left+w,top);
			3:  result:=xmp(right,top+h);
			4:  result:=xmp(left+w,bottom);
		end;
	end;
end;

begin
	result:=xnilpoint; if s=nil then exit;
	with s^ do case styp of
		xarcshape:			result:=xgetarcpoint(arc,v);
		xcurveshape:  	result:=curve.vertices[v];
		xpictureshape:	result:=xvertextopoint_picture;
		xpolygonshape:	result:=polygon.vertices[v];
	end;
end;

procedure xviewarea;
begin
	with xca^ do begin
		xclosebelow(xareaview);
		xsettabname([xnamewithspaces]);
		view:=xareaview; block:=nil; cabinet:=nil; drawer:=nil; folder:=nil; page:=nil;
		xrefreshmenus;
	end;
end;

procedure xviewblock(b:xblock);
begin
	if b=nil then exit;
	with xca^ do begin
		xclosebelow(xblockview);
		if block<>b then xviewarea;
		view:=xblockview; cabinet:=nil; drawer:=nil; folder:=nil; page:=nil;
		xrefreshmenus;
		xsettabname([b.name]);
		if block<>b then begin
			block:=b; xadjustblock(b);
			b.origin:=xmp(b.clip.left,b.clip.top);
		end;
	end;
end;

procedure xviewcabinet(c:xcabinet; d:xdrawer);
begin
	if c=nil then exit;
	with xca^ do begin
		xclosebelow(xcabinetview);
		if cabinet<>c then xviewarea;
		view:=xcabinetview; block:=nil; drawer:=nil; folder:=nil; page:=nil;
		xrefreshmenus;
		xsettabname([c.name]);
		if cabinet<>c then begin cabinet:=c; xadjustcabinet(c); c.origin:=c.body.topleft; end;
		if d=nil then exit;
		xscrolltodrawer(d);
		xselectdrawers(c.drawers,false);
		d.sel:=true;
	end;
end;

procedure xviewdrawer(d:xdrawer; f:xfolder);
begin
	if d=nil then exit;
	with xca^ do begin
		xclosebelow(xdrawerview);
		if drawer<>d then xviewcabinet(d.parent,d);
		view:=xdrawerview; block:=nil; folder:=nil; page:=nil;
		xsettabname([d.group,d.name,d.version]);
		xrefreshmenus;
		if drawer<>d then begin drawer:=d; xadjustdrawer(d); d.origin:=d.body.topleft; end;
		if f=nil then exit;
		xscrolltofolder(f);
		xselectfolders(d.folders,false);
		f.sel:=true;
	end;
end;

procedure xviewfolder(f:xfolder; p:xpage);
begin
	if f=nil then exit;
	with xca^ do begin
		xclosebelow(xfolderview);
		if folder<>f then xviewdrawer(f.parent,f);
		view:=xfolderview; block:=nil; page:=nil;
		xsettabname([f.name,f.version]);
		xrefreshmenus;
		if folder<>f then begin folder:=f; xadjustfolder(f); f.origin:=f.body.topleft; end;
		if p=nil then exit;
		xscrolltopage(p);
		xselectpages(f.pages,false);
		p.sel:=true;
	end;
end;

procedure xviewpage(p:xpage; s:xshape; b,e:xinteger);
begin
	if p=nil then exit;
	with xca^ do begin
		xendpageedit(p);
		xclosebelow(xpageview);
		if page<>p then xviewfolder(p.parent,p);
		view:=xpageview; block:=nil;
		if p.parent=nil then xsettabname(['']) else xsettabname([p.parent.name,p.parent.version]);
		xrefreshmenus;
		if page<>p then begin
			page:=p;
			xzoompage(page,mag);
			xmovepage(page,xtopleft);
			xendpageedit(page);
			xadjustcurrentpageformode;
		end;
		if xgetpagetype(p)='function' then xbeginpageedit(p,xfindcode(p.shapes));
		if (s=nil) or (s.styp<>xtextshape) then exit;
		xbeginpageedit(p,s);
		xsetselection(s,b,e);
		xscrolltorectangle(p,xselectionrectangle(s));
	end;
end;

{w}

procedure xwarning(w:xstring);
begin
	xsetvalue(xerr,w);
	xslaperror;
	xblink;
	xshowcursor(xarrowcursor);
	xflushevents;
	while not (xdeque.etyp in xinputevents) do;
	xflushevents;
	xsetvalue(xmsg,'');
end;

function  xwidth(r:xrect):xtwit;
begin
	result:=r.right-r.left+10;
end;

function  xwindowprocedure(w:hwnd; m:uint; wp:wparam; lp:lparam):lresult;

var e:xevent;

procedure xwindowprocedure_wmactivate;
begin
	if loword(wp)=wa_inactive then begin
		e.etyp:=xdeactivateevent;
		xenque(e);
		exit;
	end;
	setfocus(w);
	clipcursor(nil);
	seterrormode(sem_failcriticalerrors);
	systemparametersinfo(spi_setbeep,ord(true),nil,0);
	selectpalette(xdcs[xdisplay],xpalettes[xdisplay],false);
	unrealizeobject(xdcs[xdisplay]); realizepalette(xdcs[xdisplay]);
	selectpalette(xdcs[xmemory],xpalettes[xmemory],false);
	unrealizeobject(xdcs[xmemory]); realizepalette(xdcs[xmemory]);
	e.etyp:=xactivateevent;
	xenque(e);
end;

procedure xwindowprocedure_wmchar;  // normal keys
begin
	if ((getkeystate(vk_control) or getkeystate(vk_menu)) and $8000)<>0 then exit;
	e.etyp:=xcharkeyevent;
	e.ascii:=xchar(wp);
	if not (e.ascii in [xsp..xff]) then exit;
	xenque(e);
end;

procedure xwindowprocedure_wmcreate;
begin
	xwindow:=w;
	xinitializemouse;
	xinitializecursors;
	xinitializecarets;
	xinitializedevicecontexts;
	xinitializecolors;
	xinitializepalettes;
	xinitializepens;
	xinitializebrushes;
	xinitializefocus;
	xinitializefonts;
	xinitializetimers;
	xshowcursor(xarrowcursor);
end;

procedure xwindowprocedure_wmdestroy;
begin
	xfinalizetimers;
	xfinalizefonts;
	xfinalizefocus;
	xfinalizebrushes;
	xfinalizepens;
	xfinalizepalettes;
	xfinalizecolors;
	xfinalizedevicecontexts;
	xfinalizecarets;
	xfinalizecursors;
	xfinalizemouse;
	postquitmessage(0);
end;

procedure xwindowprocedure_wmkeydown; // function and control keys only
begin
	e.dir:=xkeytodirection(wp,e.command,e.shift);
	if wp in [vk_down,vk_left,vk_right,vk_up] then begin e.etyp:=xarrowkeyevent; xenque(e); exit; end;
	if wp in [vk_end,vk_home,vk_next,vk_prior] then begin e.etyp:=xpositionkeyevent; xenque(e); exit; end;
	if wp=vk_back 	then begin e.etyp:=xbackspacekeyevent; xenque(e); exit; end;
	if wp=vk_delete then begin e.etyp:=xdeletekeyevent; xenque(e); exit; end;
	if wp=vk_return then begin e.etyp:=xreturnkeyevent; xenque(e); exit; end;
	if wp=vk_tab 		then begin e.etyp:=xtabkeyevent; xenque(e); exit; end;
	if (lp and $40000000)<>0 then exit; // eliminate autorepeat
	if wp=vk_escape then begin e.etyp:=xescapekeyevent; xenque(e); exit; end;
	if wp=vk_shift 	then begin e.etyp:=xshiftkeyevent; xenque(e); exit; end;
	if (getkeystate(vk_control) and $8000)=0 then exit;
	if wp=187 then wp:=ord('=');
	if wp=188 then wp:=ord('<');
	if wp=190 then wp:=ord('>');
	if not (xchar(wp) in ['0'..'9','A'..'Z','=','<','>']) then exit;
	e.etyp:=xcommandkeyevent;
	e.ascii:=xchar(wp);
	xenque(e);
end;

procedure xwindowprocedure_wmkeyup;
begin
	if wp<>vk_shift then exit;
	e.etyp:=xshiftkeyevent;
	xenque(e);
end;

procedure xwindowprocedure_wmlbuttondoubleclick;
begin
	e.etyp:=xdoubleclickevent;
	e.gp.x:=loword(lp)*xtpp;
	e.gp.y:=hiword(lp)*xtpp;
	e.shift:=(wp and mk_shift)<>0;
	xenque(e);
end;

procedure xwindowprocedure_wmlbuttondown;
begin
	e.etyp:=xclickevent;
	e.gp.x:=loword(lp)*xtpp;
	e.gp.y:=hiword(lp)*xtpp;
	e.shift:=(wp and mk_shift)<>0;
	xenque(e);
end;

procedure xwindowprocedure_wmpaint;
	var p:tpaintstruct;
begin
	beginpaint(w,p);
	endpaint(w,p);
	e.etyp:=xpaintevent;
	xenque(e);
end;

procedure xwindowprocedure_wmrbuttondown;
begin
	e.etyp:=xrightclickevent;
	e.gp.x:=loword(lp)*xtpp;
	e.gp.y:=hiword(lp)*xtpp;
	e.shift:=(wp and mk_shift)<>0;
	xenque(e);
end;

procedure xwindowprocedure_wmsetcursor;
begin
	result:=1;
	e.etyp:=xcursorevent;
	xenque(e);
end;

procedure xwindowprocedure_wmsyscommand;
begin
	if (wp and $fff0)=sc_screensave then exit;
	result:=defwindowproc(w,m,wp,lp);
end;

procedure xwindowprocedure_wmsyskeydown; // alt keys only
begin
	if (getkeystate(vk_menu) and $8000)=0 then exit;
	e.dir:=xkeytodirection(wp,e.command,e.shift);
	if wp in [vk_down,vk_left,vk_right,vk_up] then begin e.etyp:=xarrowkeyevent; xenque(e); exit; end;
	if wp in [vk_end,vk_home,vk_next,vk_prior] then begin e.etyp:=xpositionkeyevent; xenque(e); exit; end;
	if wp=vk_back 	then begin e.etyp:=xbackspacekeyevent; xenque(e); exit; end;
	if wp=vk_delete then begin e.etyp:=xdeletekeyevent; xenque(e); exit; end;
	if wp=vk_return then begin e.etyp:=xreturnkeyevent; xenque(e); exit; end;
	if (lp and $40000000)<>0 then exit; // eliminate autorepeat
	if wp=187 then wp:=ord('=');
	if wp=188 then wp:=ord('<');
	if wp=190 then wp:=ord('>');
	if not (xchar(wp) in ['0'..'9','A'..'Z','=','<','>']) then exit;
	e.etyp:=xcommandkeyevent;
	e.ascii:=xchar(wp);
	xenque(e);
end;

begin
	if xscanning.inprogress then begin result:=defwindowproc(w,m,wp,lp); exit; end;
	result:=0;
	e:=xmakeevent(xnoevent);
	case m of
		wm_activate: 			  xwindowprocedure_wmactivate;
		wm_char:      		  xwindowprocedure_wmchar;
		wm_create:  			  xwindowprocedure_wmcreate;
		wm_destroy: 	 		  xwindowprocedure_wmdestroy;
		wm_keydown:     	  xwindowprocedure_wmkeydown;
		wm_keyup:		     	  xwindowprocedure_wmkeyup;
		wm_lbuttondblclk:   xwindowprocedure_wmlbuttondoubleclick;
		wm_lbuttondown: 	  xwindowprocedure_wmlbuttondown;
		wm_paint:       	  xwindowprocedure_wmpaint;
		wm_rbuttondown: 	  xwindowprocedure_wmrbuttondown;
		wm_setcursor: 			xwindowprocedure_wmsetcursor;
		wm_syscommand:   		xwindowprocedure_wmsyscommand;
		wm_syskeydown:    	xwindowprocedure_wmsyskeydown;
		else								result:=defwindowproc(w,m,wp,lp);
	end;
end;

function  xwordisnew(w:xstring):xboolean;
var
	nw:xstring;
begin
	result:=false; if w='' then exit;
	nw:=xremovepossessive(xv(w));
	result:=(pos(xlf+nw+xsp,xlexicon.words[nw[1]])=0) and (pos(xlf+nw+xsp,xlexicon.addenda)=0);
	if not result then xcx:=''''+w+''' already in lexicon.';
end;

function  xwordisold(w:xstring):xboolean;
begin
	result:=false; if w='' then exit;
	result:=not xwordisnew(w);
	if not result then xcx:=''''+w+''' is not in lexicon.';
end;

function  xwordisvalid(w:xstring):xboolean;
	const maxlen=128; var cc:xinteger;
begin
	result:=false;
	if w='' then exit;
	w:=xv(w);
	if length(w)>maxlen then begin
		xcx:='Word exceeds maximum length of '+xits(maxlen)+' characters.';
		exit;
	end;
	if not (w[1] in ['a'..'z']) then begin
		xcx:='Character '''+w[1]+''' is not allowed as first character in word.';
		exit;
	end;
	for cc:=2 to length(w) do if not (w[cc] in xletters+xsqs) then begin
		xcx:='Character '''+w[cc]+''' is not allowed in word.';
		exit;
	end;
	result:=true;
end;

procedure xwraptext(var t:xtext; sr:xinteger; all,fixcaret:xboolean);

var apos,cpos:xinteger; done:xboolean;
var cc,cr,er,fc,lc,os,sw:xinteger; mw:xtwit; s:xstring; sz:xinteger; tm:ttextmetric; w:tabc;

procedure xwraptext_splitrow(c:xinteger);
begin
	with t do begin
		if c>length(rows[cr]) then exit;
		if cr+1>count then begin xappendrow(t); inc(er); end;
		rows[cr+1]:=copy(rows[cr],c,xmaxinteger)+rows[cr+1];
		delete(rows[cr],c,xmaxinteger);
	end;
end;

procedure xwraptext_suckfromnextrow;
	var cc,r:xinteger; s:xstring; sucked:xboolean;
begin
	with t do begin
		sucked:=false; r:=cr+1;
		repeat
			if r>er then break;
			if rows[cr][length(rows[cr])]=xcr then break;
			cc:=1;
			while (cc<=length(rows[r])) and (not (rows[r][cc] in [xcr,xsp,xtb])) do inc(cc);
			s:=rows[cr]+copy(rows[r],1,cc);
			sz:=gettabbedtextextent(xdcs[xmemory],@s[1],length(s)-1,1,tabsize);
			if loword(sz)*xfac>mw+w.abca then begin done:=(cr>=os) and (not sucked) and (not all); break; end;
			sucked:=true;
			rows[cr]:=s; delete(rows[r],1,cc);
			if length(rows[r])<>0 then continue;
			xremoverows(t,r,r); dec(er);
		until xforever;
	end;
end;

begin
	// have to -1 sr for following:
	// |many are the ... of the           |
	// |righteous;but                     |
	// a xsp after the ';' should move 'righteous' up to row 1 but sr equals 2
	// have to +1 er for similar reasons regarding paragraphs
	with t,font do begin
		if not wrap then exit;
		if fixcaret then begin apos:=xptac(t,anchor); cpos:=xptac(t,caretpos); end;
		er:=count;
		os:=sr; if sr>1 then dec(sr);
		xsetfont(xmemory,xmf(face,trunc(size/mag),style,align),1.0);
		gettextmetrics(xdcs[xmemory],tm);
		mw:=xwidth(xzoomrectangle(rect,1/mag))-xtextmargin*2;
		if (font.face=xcourierface) or (font.style=xboldstyle) then dec(mw,tm.tmavecharwidth*xfac);
		if xisoneline(t) then mw:=xmaxinteger div 2;
		settextjustification(xdcs[xmemory],0,0); settextcharacterextra(xdcs[xmemory],0);

		cr:=sr; done:=false;
		repeat
			if (done) or (cr>er) then break;
			cc:=1; fc:=cc;
			getcharabcwidths(xdcs[xmemory],ord(rows[cr][fc]),ord(rows[cr][fc]),w); w.abca:=w.abca*xfac;
			while (cc<=length(rows[cr])) and (not (rows[cr][cc] in [xcr,xsp,xtb])) do inc(cc);
			inc(cc);
			repeat
				if (cc>1) and (rows[cr][cc-1]=xcr) then xwraptext_splitrow(cc);
				if cc>=length(rows[cr]) then begin xwraptext_suckfromnextrow; break; end;
				sw:=cc;
				while (cc<=length(rows[cr])) and (not (rows[cr][cc] in [xcr,xsp,xtb])) do inc(cc);
				sz:=gettabbedtextextent(xdcs[xmemory],@rows[cr][fc],cc-fc,1,tabsize);
				inc(cc); if (loword(sz)*xfac<=mw+w.abca) then continue;
				xwraptext_splitrow(sw);
				break;
			until xforever;
			inc(cr);
		until xforever;

		if fixcaret then begin caretpos:=xactp(t,cpos); anchor:=xactp(t,apos); caretwas:=caretpos; end;
	end;
end;

procedure xwriteaddenda;
begin
	xresetbuffer;
	xstoreaddenda;
	xwritefile(xgetaddendafilename);
end;

function  xwriteblock(b:xblock):xboolean;
begin
	result:=false; if b=nil then exit;
	xresetbuffer;
	xstoreblock(b);
	if not xwritefile(b.name) then exit;
	result:=true;
end;

function  xwritedrawerentry(cid:xstring; rid:xinteger; d:xdrawerentry):xboolean;
begin
	result:=xwriteentry(xgetdrawerindexname(cid),rid,sizeof(xdrawerentry),d);
end;

function  xwritedrawerindex(cid:xstring):xboolean;
begin
	result:=xwriteindex(xgetdrawerindexname(cid),sizeof(xdrawerentry));
end;

function  xwriteentry(path:xstring; rid,rlen:xinteger; const e):xboolean;
	var fcb:file;
begin
	xassignfile(fcb,path);
	xreset(fcb,rlen);
	xseek(fcb,rid);
	xblockwrite(fcb,e,1);
	xclosefile(fcb);
	result:=not xioerror(xioresult);
end;

function  xwritefile(path:xstring):xboolean;
	var fcb:file;
begin
	with xbuffer do begin
		xassignfile(fcb,path);
		xrewrite(fcb,1);
		xblockwrite(fcb,bytes^,count);
		xclosefile(fcb);
		result:=not xioerror(xioresult);
	end;
end;

function  xwritefolderentry(cid:xstring; did,rid:xinteger; f:xfolderentry):xboolean;
begin
	result:=xwriteentry(xgetfolderindexname(cid,did),rid,sizeof(xfolderentry),f);
end;

function  xwritefolderindex(cid:xstring; did:xinteger):xboolean;
begin
	result:=xwriteindex(xgetfolderindexname(cid,did),sizeof(xfolderentry));
end;

function  xwriteindex(path:xstring; rlen:xinteger):xboolean;
	var fcb:file;
begin
	with xindex do begin
		xassignfile(fcb,path);
		xrewrite(fcb,rlen);
		xblockwrite(fcb,entries^,count);
		xclosefile(fcb);
		result:=not xioerror(xioresult);
	end;
end;

function  xwritepage(p:xpage):xboolean;
begin
	result:=false; if p=nil then exit;
	p:=xcopypage(p,true);
	try
		xnormalizepage(p,1/p.mag,60,xvslice);
		xresetbuffer;
		xstorepage(p);
		if not xwritefile(xgetpagefilename(p.cid,p.did,p.fid,p.pid)) then exit;
		result:=true;
	finally xdestroypage(p); end;
end;

function  xwritepageentry(cid:xstring; did,fid,rid:xinteger; p:xpageentry):xboolean;
begin
	result:=xwriteentry(xgetpageindexname(cid,did,fid),rid,sizeof(xpageentry),p);
end;

function  xwritepageindex(cid:xstring; did,fid:xinteger):xboolean;
begin
	result:=xwriteindex(xgetpageindexname(cid,did,fid),sizeof(xpageentry));
end;

function  xwritesort(f:xfolder; s:xstring):xboolean;
begin
	result:=false; if f=nil then exit;
	xresetbuffer;
	xstoresort(s);
	if not xwritefile(xgetsortfilename(f.cid,f.did,f.fid)) then exit;
	result:=true;
end;

{x}

{y}

function  xyes(p,d:xstring; last:xboolean):xboolean;
	var a:xstring;
begin
	result:=false;
	if not xdialog(p,d,true,false,last,a) then exit;
	result:=xstb(a);
	if not result then xslapbar;
end;

function  xyuvtorgb(c:xyuv):xrgb;
	var t,y,u,v:xinteger;
begin
	with result do begin
		y:=c.y; u:=c.u; v:=c.v;
		if (u=0) and (v=0) then begin r:=y; g:=y; b:=y; exit; end; // grayscale
		dec(u,128); dec(v,128);
		r:=xlimit(round(y+1.40200*v),0,255);
		g:=xlimit(round(y-0.34414*u-0.71414*v),0,255);
		b:=xlimit(round(y+1.77200*u),0,255);
	end;
end;

{z}

function  xzdg:xtwit;
begin
	result:=trunc(120*xca.mag);
end;

function  xzoomarc(a:xarc; z:xextended):xarc;
begin
	result:=a; if z=1.0 then exit;
	result.rect:=xzoomrectangle(a.rect,z);
	result.mag:=result.mag*z;
end;

function  xzoomcurve(c:xcurve; z:xextended):xcurve;
begin
	result:=xcurve(xzoompolygon(xpolygon(c),z));
end;

function  xzoomellipse(e:xellipse; z:xextended):xellipse;
begin
	result:=e; if z=1.0 then exit;
	result.rect:=xzoomrectangle(e.rect,z);
end;

function  xzoomfont(f:xfont; z:xextended):xfont;
begin
	result:=f; if z=1.0 then exit;
	result.size:=round(f.size*z);
end;

function  xzoommargin(var t:xtext):xtwit;
begin
	if t.margin then result:=trunc(xtextmargin*t.mag) else result:=0;
end;

procedure xzoompage(p:xpage; z:xextended);
begin
	if p=nil then exit;
	if z=1.0 then exit;
	with p^ do begin
		body:=xzoomrectangle(body,z);
		xzoomshapes(shapes,z);
		mag:=mag*z;
		origin:=xzoompoint(origin,z);
		p.dup.offset:=xzoompoint(p.dup.offset,z);
	end;
end;

function  xzoompicture(p:xpicture; z:xextended):xpicture;
begin
	result:=p; if z=1.0 then exit;
	result.rect:=xzoomrectangle(p.rect,z);
	result.mag:=result.mag*z;
	xadjustpicture(result,true);
end;

function  xzoompoint(p:xpoint; z:xextended):xpoint;
begin
	result:=p; if z=1.0 then exit;
	result.x:=round(p.x*z);
	result.y:=round(p.y*z);
end;

function  xzoompolygon(n:xpolygon; z:xextended):xpolygon;
	var cv:xvertex;
begin
	result:=n; if z=1.0 then exit;
	with result do begin
		for cv:=1 to count do with vertices[cv] do begin
			x:=round(x*z);
			y:=round(y*z);
		end;
		mag:=mag*z;
		xadjustpolygon(result);
	end;
end;

function  xzoomrectangle(r:xrect; z:xextended):xrect;
begin
	result:=r; if z=1.0 then exit;
	result.left:=round(r.left*z);
	result.top:=round(r.top*z);
	result.right:=round(r.right*z);
	result.bottom:=round(r.bottom*z);
end;

procedure xzoomshape(s:xshape; z:xextended);
begin
	if s=nil then exit;
	if z=1.0 then exit;
	s.mag:=s.mag*z;
	with s^ do case styp of
		xarcshape:       	arc:=xzoomarc(arc,z);
		xcurveshape:      curve:=xzoomcurve(curve,z);
		xellipseshape:    ellipse:=xzoomellipse(ellipse,z);
		xgroupshape:      xzoomshapes(shapes,z);
		xpictureshape:		picture:=xzoompicture(picture,z);
		xpolygonshape:    polygon:=xzoompolygon(polygon,z);
		xrectangleshape:  rectangle:=xzoomrectangle(rectangle,z);
		xtextshape:       text:=xzoomtext(text,z);
	end;
	xadjustshape(s);
end;

procedure xzoomshapes(s:xshapes; z:xextended);
	var cs:xshape;
begin
	if s=nil then exit;
	if z=1.0 then exit;
	cs:=s.first; while cs<>nil do begin xzoomshape(cs,z); cs:=cs.next; end;
end;

function  xzoomtext(var t:xtext; z:xextended):xtext;
begin
	result:=t; if z=1.0 then exit;
	result.font:=xzoomfont(result.font,z);
	result.rect:=xzoomrectangle(result.rect,z);
	result.mag:=result.mag*z;
	xadjusttext(result);
end;

function  xzpg:xtwit;
begin
	result:=trunc(360*xca.mag);
end;

function  xzsg:xinteger;
begin
	result:=trunc(xca.snap*xca.mag);
end;

initialization

	randomize;
	xinitializememorymanager;
	xinitializestrings;
	xinitializecommandline;
	xinitializebuffers;
	xinitializelocks;
	xinitializeconfiguration;
	xenque(xmakeevent(xstartupevent));
	xinitializewindows;
	xinitializescreen;
	xinitializelexicon;
	xinitializeclipboards;
	xinitializeareas;
	xinitializemenus;
	xinitializetemplates;

finalization

	xfinalizetemplates;
	xfinalizemenus;
	xfinalizeareas;
	xfinalizeclipboards;
	xfinalizelexicon;
	xfinalizescreen;
	xfinalizewindows;
	xfinalizeconfiguration;
	xfinalizelocks;
	xfinalizebuffers;
	xfinalizecommandline;
	xfinalizestrings;
  xfinalizememorymanager;

end.


