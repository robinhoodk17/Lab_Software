var defaultradius=25;
var subTitleofImage="no";
var radius="";
var theVolume="";
var rmBack ="Linear";
var blotscale=1;
var blotName="",blotinitName="",Linter=600,Hinter=120,xSizeBlot=0,ySizeBlot=0;
var resultFolderName="Results Documents";
var Topmarge=10,Botommarge=10,Leftmarge=10,Rightmarge=10;
var paletteName="Protein Array Analyzer Palette",winName2= "Analysed Protein Array",folderpath="",endPalette="",nomSavedPalette="",gridModelName="";
var workingI="working blot",workingID,tempclip;
var largeline=1,Lpalette=0,Hpalette=0,largbuton=60, hautbuton=25,distBord=15,disthaut=5;
var Hdisplay=40,xDisplay,yDisplay,larDisplay,livedisplay=1;
var palette=0,reponse=0,cancel=0,analyseIt=0;
var dyn=0,cursorok=0,KindofArea="";
var blotx1,blotx2,bloty1,bloty2;
var interx1,interx2,intery1,intery2;
var cancelx1,cancelx2,cancely1,cancely2;
var colboxOriY,kindofColoBox="",SelectedColor="";
var analysex1,analysex2,analysey1,analysey2;
var enhX1, enhY1, enhX2, enhY2, enhenceChoice=0,sat=0,incresat=0.2;
var lutX1,lutX2,lutY1,lutY2,lutChoice=0,lutDisplay="LUT: Grey";
var resX1,resX2,resY1,resY2;
var sizex1,sizex2,sizey1,sizey2;
var box1x,box1y;
var box2x,box2y;
var box3x,box3y;
var box4x,box4y;
// cursor variables and settings 
var addMx1,addMy1,addMx2,addMy2;
var rmMx1,rmMy1,rmMx2,rmMy2;
var erMx1,erMy1,erMx2,erMy2;
var mesurx1,mesury1,mesurx2,mesury2;
var x,  y, w=-1, h=-1, xx, yy, px = newArray(6), py = newArray(6);
var selectionRayon=17,increment=1,xmes,ymes;
var selectionColor="magenta",initselectionColor="",initiate=0;
var r, g, b;
var ForGColor="cyan", initForGColor="";
var BackGColor="", initBackGColor="";
// single measurement variables and graphic interface elements
var addMx1,addMy1,addMx2,addMy2;
var rmMx1,rmMy1,rmMx2,rmMy2;
var erMx1,erMy1,erMx2,erMy2;
var mesurx1,mesury1,mesurx2,mesury2;
var measurementTab="Measurements - Tab";
var measurementTabEXL;
var resultListSize=0;
var mes=newArray(200);
var mesX=newArray(200);
var mesY=newArray(200);
var mesRadius=newArray(200);
// grid variables
var alteuu=0,lastmesnumber=0;
var nbcol=14,nbline=10;
var nbcolX1,nbcolX2,nbcolY1,nbcolY2;
var nblineX1,nblineX2,nblineY1,nblineY2;
var HLboxX1, HLboxY1,HLboxX2, HLboxY2,HLX=0,HLY=0,statutHL=0;
var HRboxX1, HRboxY1,HRboxX2, HRboxY2,HRX=0,HRY=0,statutHR=0;
var LLboxX1, LLboxY1,LLboxX2, LLboxY2,LLX=0,LLY=0,statutLL=0; 
var LRX=0,LRY=0;
var ansvers1,ansvers2;
var showmes=0,showrep=0,showgrid=0;
var DotStatus = "Single";
var GridStatus=1;
var singX1=0,singX2=0,singY1=0;
var gridCx1=0,gridCx2=0,gridCy1=0,gridCy2;
var endx1=0, endx2=0, endy1=0, endy2=0;
var ImaDemo="";
var Ax=0,XhorizontalOrd=0,Ay=0,YhorizontalOrd=0,spaceX=0,spaceY=0,deltaspaceY=0,deltaspaceY=0;
var windowTabName="Grid Measurements Table",nameOfGridTab="["+windowTabName+"]";
var gridcol=0,gridline=0;
var Red="", Green="", Blue="", color ="", previousColor="";
var gridModelName="Grid Modelled";
var gridModelStatus=0;
var errorNetMessage ="Error: ";
var onlinedoclink = "http://image.bio.methods.free.fr/ImageJ/?Protein-Array-Analyzer-for-ImageJ.html";
var onlinedocWhatsNewlink = "http://image.bio.methods.free.fr/ImageJ/?Protein-Array-Analyzer-for-ImageJ-What-s-New&lang=en";
var urllist = "http://image.bio.methods.free.fr/ij/ijupdatetest/ListOfMacros.txt";// to check the internet access
var demoimagelink1 ="http://rsb.info.nih.gov/ij/images/Dot_Blot.jpg",demoimagename1="Dot_Blot.jpg";
var demoimagelink2 ="http://image.bio.methods.free.fr/ij/ijmacro/dotblot/Dot_Blot-ScionNIH_Image.tif.zip",demoimagename2="Dot_Blot-scion_NIH.tif";
var demoimagelink3 ="http://image.bio.methods.free.fr/ij/ijmacro/prtarray/PA inj.tif.zip",demoimagename3="PA inj.tif";
var demoimagelink4 ="http://image.bio.methods.free.fr/ij/ijmacro/prtarray/PA.tif.zip",demoimagename4="PA.tif";
var demoimagelink5 ="http://image.bio.methods.free.fr/ij/ijmacro/prtarray/PB.tif.zip",demoimagename5="PB.tif";
var demoimagelink6 ="http://image.bio.methods.free.fr/ij/ijmacro/prtarray/pbs inj.tif.zip",demoimagename6="pbs inj.tif";
var demoimagelink7 ="http://image.bio.methods.free.fr/ij/ijmacro/prtarray/pbs.tif.zip",demoimagename7="pbs.tif";
var demoimagelink8 ="http://image.bio.methods.free.fr/ij/ijmacro/prtarray/PC.tif.zip",demoimagename8="PC.tif";
var demoimagelink9 ="http://image.bio.methods.free.fr/ij/ijmacro/prtarray/Demo-Master-Table.xls",demoimagename9="Demo-Master-Table.xls";
// multi pattern variable
var countArrayExcell=0,firstCompilTabLine = "",compiledExcel="", nColArrayMax=0, nLineArrayMax=0,keyTab="-Grid Measurements Table.xls";
var GlobalExcelCompileWindow= "Master Table",GlobalExcelCompile="["+GlobalExcelCompileWindow+"]";
var pathOfOrigin="",firstSizex=0,firstSizey=0,arraySeparator="",masterFolderName="Master Results Documents",masterinitName="",selectedDir="";
var showMasterInit=1, methodChoice=0;
var controlCases=newArray(16), internNormCases= newArray(16), controlMeanValue=0, normMeanValue=0;
var GlobalExcelCompileWindowNorm= "Master Table - Norm",GlobalExcelCompileNorm="["+GlobalExcelCompileWindowNorm+"]";
// draw pattern
var nbArrays=0, nbMasterCol=0, firstMasterLine="",SingleModelName="", cercleOption=1, showRefLocOption=1; 
var ArrayModelData=newArray(6), masterImageinit="Master - Initial",masterImageNorm="Master - Normalized",margewx=10, margewy=20,nrawChoice=0,nraw; // if nrawChoice=0 : nb columns auto

var xx = requires152e(); // check version at install time
function requires152e() {requires("1.52e"); return 0; }

var installx = testinstal ();

// leave slot between ImageJ tools, and allow user interaction
macro "  Tool-1 - " {
	if (palette==1 && getTitle == paletteName  && dyn ==1 && cancel==0 && reponse ==0) {
		if (isOpen(paletteName)) {
			if (isKeyDown("alt")) {alteuu=1; } else {alteuu=0;}
			goGraphInt ();
		}
	}
	if (palette==0 && getTitle ==paletteName  && dyn ==1 && cancel==1 && reponse ==1) {
		palette=0;cursorok=1;		
		if (isOpen(paletteName)) {
			selectImage (paletteName);
			close ();	
			if (isOpen(blotName)) {selectImage(blotName);close ();}
			if (isOpen(gridModelName)) {selectImage(gridModelName);close ();}
			if (isOpen(measurementTab)) {selectWindow(measurementTab);print(measurementTabEXL, "\\Close");}
			if (isOpen(windowTabName)) {selectWindow(windowTabName);print(nameOfGridTab, "\\Close");}
		}
		if (initselectionColor != "") {setColorComponent (initForGColor,initBackGColor,initselectionColor);}
	}
	if (palette==1 && (getTitle !=paletteName ||  ! isOpen(paletteName)) && dyn ==1 && cancel==0 && reponse ==0) {
		palette=0;cursorok=0;
		if (isOpen(paletteName)) {
			selectImage (paletteName);
			close ();	
			showMessage("No user ansvers from the \""+paletteName+"\". \nThe tool has been unselected.");
		}
		if (isOpen(blotName)) {selectImage(blotName);close ();}
		if (initselectionColor != "") {setColorComponent (initForGColor,initBackGColor,initselectionColor);}
	}
	if (palette==0 && getTitle ==paletteName  && dyn ==1 && cancel==0 && reponse ==1 && analyseIt==0 && cursorok==1) {
		locationCursor (1);
		analyseIt=0;reponse=0;cursorok=0;palette=1;
	}
} 

var mCmds = newMenu("Array Analysis Menu Tool",newArray("Array Analysis","-","Save Results Documents","Save Results Documents at Image Location","-","Close Results Documents"));
macro "Array Analysis Menu Tool - C000C111Db5C111C222Db2C222D78C222C333D28D7bC333C444D2bC444D7eC444C555D68C555D2eDf8C555D25C555C666D38C666D22C666D6bC666DfbC666D75C666D72C666C777D3bC777D6eC777D3eC777C888Df5C888D35C888Df2C888D32D65C888Db3C888D2dC888D62C888C999D7dC999CaaaD23CaaaDc5CaaaD6dDc2CaaaDb4CbbbD3dD79CbbbD29CbbbDb8CbbbD27CbbbD2aCbbbD73CbbbDbbCbbbD77CbbbD33Da5CbbbD24D2cD7aDb6CcccDa2CcccD7cCcccD74CcccD39CcccDf3CcccD69CcccD26D63CcccD67CcccD37D3aCcccD6aCdddDf7Df9CdddD3cCdddD36CdddD34D64CdddD6cD76DfaCdddD18Df4CdddD1bCdddD15CdddDb1CdddD12D1eD21D66Dc3CdddDa3CeeeD1dD71Df6DfcCeeeD31Dc8CeeeD13Db9CeeeD61Da4CeeeD17D19D1aD48D88Da8Db7DcbDe8CeeeD14D16D4bD8bDc4CeeeD02D0bD1cD42D45D58Da6DabDc6CeeeD00D03D04D05D08D0dD4eD5bD82D85D8eDbaDe5DebCeeeD06D07D09D10D11D43D52D55De2CeeeD01D0aD0cD0eD20D4dD5eCeeeD30D44D47D49D4aD4cD5dDf1CeeeD46D53D54D57D59D5aD5cCeeeD41D51D56D60D8dDa1DbcCeeeD40D50D83D84D89D8cCfffD87D8aDa9Dc1CfffD70D81D86Da0Db0CfffD92D95D98D9bDa7DaaCfffD90D91D93D94D96D97D99D9aD9cD9dDc9De3CfffD80D9eDacDc7De4De7DeaCfffDc0DcaDd2Dd3Dd4Dd5Dd6De1De6De9CfffDd0De0CfffD7fDadDaeDd1Dd7Dd9DdaDdbCfffD2fDd8CfffDccDecDf0CfffD3fD6fCfffDdcCfffD1fCfffD0fD4fD5fD8fD9fCfffDafDbdDbeDbfDcdDceDcfDddDdeDdfDedDeeDefDfdDfeDff"{
	cmd = getArgument();
	if (cmd !="-" && cmd =="Array Analysis") {doBlotAnalyse();}
	if (cmd == "Save Results Documents at Image Location") {SaveDocRes(folderpath);}
	if (cmd == "Save Results Documents") {SaveDocRes("--");}
	if (cmd == "Close Results Documents") {CloseDocRes();}
}

var arrayCmds = newMenu("Group Pattern Menu Tool",newArray("Masterize from Analysis Repertories","Import Master Table","-","Draw \"Master - Initial\"","Draw \"Master - Normalized\"","-","Set Internal Control and References","-","Master Options Settings","-","Save Master Documents","Save Master Documents at Parent Folder Location","-","Close Master Documents"));

macro "Group Pattern Menu Tool - C000D00D01D02D03D04D05D06D07D08D09D0aD0bD0cD0dD0eD10D13D14D17D18D1bD1cD2bD30D33D34D37D3bD40D41D42D43D44D45D46D47D48D49D4aD4bD4cD4dD4eD50D53D54D57D58D5bD5cD6bD70D73D74D77D7bD80D81D82D83D84D86D87D88D89D8aD8bD8cD8dD8eD90D93D94D97D98D9bD9cD9eDb0Db3Db4Db7DbbDc0Dc2Dc3Dc4Dc6Dc7Dc8DcaDcbDccDcdDceDd0Dd2Dd3Dd4Dd6Dd7Dd8DdaDdbDdcDf0Df4Df7DfbDfcC001D78D85DabDbcDebDecDf3C860Dd5C006D3cD96C005D68D7cDf8Cf70D25D26D29D35D36Ca55D99C102Dc1Ce40DfaC605Da4Cfb0Da5Da6Db5Db6Df5CfffDddDdeDedDeeDfdDfeC004D27D38D5eD60Da7DadDaeDb8DbdDbeDc5Dc9De7Ce30De9DeaDf9C20aD69D6aD79Cc04D12C88aD91C302De3Cf60D2aD39D3aC60dD2cCff3De1De2C002D5aC108D1eD52C712D64C70eD6dD6eD7dD7eC104D67C90bD2dCfc0De5De6Df6C30aD7aCf90D21D22D31D32Da9Db9DbaCfffD65D66D75D76Da1Db1Db2C402Da3Ca0cD3dCff4Df1Df2C107D59C504De0Cc36D15C60aDe8C509D24Cd24D19Cd8eD55C80dD1aD62D72C003D63D9aD9dDacC409D51C880Dd1C204D23C90cD2eD3eD56C40cD5dC602Da0Cc45D11C909Da8C70dD1dC406D20C722Dd9Ca0bD16C30bD6cD92C604De4C90dD61D71C80aD28Cf80DaaCffeDa2C863D95" {
	cmd = getArgument();
	if (cmd !="-" && cmd == "Masterize from Analysis Repertories") {	
		if (! is("Batch Mode")) setBatchMode(true);
		compileArrayTabs ();
		if (showMasterInit ==1) masterizeImages ("init");
		normalize (methodChoice);
		masterizeImages ("norm");
		setBatchMode("exit and display" );
		if (showMasterInit ==1) if(isOpen (masterImageinit)) selectImage(masterImageinit);
		if (isOpen (masterImageNorm)) selectImage(masterImageNorm);
		if (isOpen (masterImageinit)) {
			selectImage (masterImageinit);
			setLocation(30,140);
		}
		if (isOpen (masterImageinit)) {
			selectImage (masterImageNorm);
			setLocation(((screenWidth/2)+30),140);
		}
	}	
	if (cmd !="-" && cmd == "Set Internal Control and References") {
		getUserRefDots (1);
	}	
	if (cmd !="-" && cmd == "Master Options Settings") {
		setOptionsMaster ();
		setBatchMode("exit and display" );
	}	
	if (cmd !="-" && cmd == "Import Master Table") {
		importeMasterTable ();
		setBatchMode("exit and display" );
	}
	if (cmd !="-" && cmd == "Draw \"Master - Initial\"") {masterInit ();}	
	if (cmd !="-" && cmd == "Draw \"Master - Normalized\"") {masterNormalized ();}
	if (cmd == "Save Master Documents at Parent Folder Location") {SaveMastRes(selectedDir);}
	if (cmd == "Save Master Documents") {SaveMastRes("--");}
	if (cmd == "Close Master Documents") {CloseMastRes();}		
}

macro "Abort \(Download\/Erase Cursor\) Action Tool - C810Dc2Df7Ca55D42D51Ce20D7dD8cDd6CfffD88Da7Cd20DadCfedD3eD55D5bDa9Dc1Ce40D63De6CfffD00D01D03D04D05D06D07D08D09D0aD0cD0dD0eD0fD10D11D14D1cD1dD1eD1fD20D21D22D2fD31D3fD40D66D6aDaaDb0Db5DbbDc0De0DefDf0Df1Df2Df3DfdDfeDffC811Da1Dd3Cc77D1bD6cCe20Dc7CfffD23D65D79DdfCc31D68Da4CeffDeeCd52D27D4dC910D7fD8fDbfDf9Cd64D4bD75Db7Dc6Ce30D39D47D48D74D85Da3CfffD13D30Da6Dd0De1Cc20DacDbdDdaDdbCfffD98Cd42D28D52D5eDe5Ca21D71D81D91DcaCfecD5aD67D69D96Cf30D3aD3bD94Db3Cc32D25D2bD34D9bCfffD12D50D70D80D87D89D90D99Da0Db6Dd1De2Cf63D64D72D82Db2DbeC910D9fDafDecDf8Cb66D17D19D1aDa8Ce20D37D49Dd7Dd8CeffD6bD77D97Cd20D6dD7cDc9CffeD4fD60D7aD9aDbaCf52D35D44D53D6eC821D5fD61De4DfbCebbD15DbcDcbDcfDdeCf30D58D73D83D93Cd41D3cD95De7CfffD2eD78Cf53Dc3DcdDd4DebCa20D6fDccCc75D18D24D5cD7bD8aCf30D36D84Cd30D46D59D8bDd5CfffD02D0bD2dD41D76Cf42D26D8eD9eDdcCa32D2cD3dD4eDb9CfedD56Da5Dd2DedDfcCe31D2aD57D5dDeaCc41D43D4cD86DaeCf63D62D92Da2C810DddDf6DfaCa66D16D33Ce30Dc8Cd20D8dD9cD9dDd9CfeeD32DabDe3Df4Cd51D29D7eC822Db1Df5Cea7Db4Dc5Ce30D4aDb8De9Cd40D38Dc4De8Cd53D45D54C911Dce" {
	ereaseCursor ();
	abortProcess ();
}

var dCmds = newMenu("On Line Documentation & Demo Menu Tool",newArray ("Open On Line Documentation","What\'s New","-","Download\/Open a Set of 6 Demo Protein Array Images","Download\/Open a Demo Master Table","-","Download\/Open Demo Dot Blot Images \(28 and 96 wells\)"));
macro "On Line Documentation & Demo Menu Tool - C000D89D8dD96D9dDa5Da6Db3Db4Db5Db6DbdC06fD12D13D14D15D16D17D18D19D1aD1bD1cD1dD1eC0f3D32D33D34D35D36D37D38D39D3aD3bD3cD3dD3eD3fCeeeD80C444DbeDcfC73fD01Cfd0D42D43D44D45D46D47D48D49D4aD4bD4cD4dD4eCfffD7cD7fD8fD91D98Dc1DceDd1Dd3DdeDdfDe0De1De2De3De4De5De6De7De8De9DeaDebDecDedDeeDefDf0Df1Df2Df3Df4Df5Df6Df7Df8Df9DfaDfbDfcDfdDfeDffC222C0feD22D23D24D25D26D27D28D29D2aD2bD2cD2dD2eC888D88CfffD71D90DcbDd0Dd2Dd4Dd5Dd6DdcCf74D50CcccD9fCbbbD97Da0Dc2C000Da4Db2C06fD11D1fC0f4D31CeeeD70D75D81D84D92D93Dc0Dc8Dd7DdaDdbCf40D51D52D53D54D55D56D57D58D59D5aD5bD5cD5dD5eD5fCa7fD00Cfd0D41D4fC444D95DbaDc9C0ffD21D2fC4f6D30CfffD7bCf88D62D63D64D65D6bD6cCeeeD72D73D74DabDbbDccDd8Cf89D6dC666Da7C84fD02D03D04D05D06D07D08D09D0aD0bD0cD0dD0eC333D86D87D8aD99D9cDb9DbcCaaaD8eDa1Dc3Dc4Dc5Dc6CeddD76Cf89D61D66D6aD6eD6fC222DadDcdC48fD10Cfd4D40C4ffD20CaaaDacDcaDddCfaaD60C555Da2C73fD0fC333D9bDa3Da9Db1C999D7dCdddD7aD83Da8Dc7CbbbDb8C111D9aDb7CaaaD8bCf99D67D68D69C777D8cDaaCdeeD82D85C999DafCdddDd9C766D79C555DaeC999D78CcccD7eD94C888D9eC777DbfC666Db0Ca99D77"{	
	cmd = getArgument();
	if (cmd!="-" && cmd == "Open On Line Documentation") {
		netTest ();
		doc ();
	}
	if (cmd!="-" && cmd == 	"What\'s New") {
		netTest ();	
		whatsNew ();
	}
	
	if (cmd!="-" && cmd == "Download\/Open Demo Dot Blot Images \(28 and 96 wells\)") {
		downloadStatus=1;
		downloadStatus=OpenImageLink(demoimagelink1,demoimagename1,0,downloadStatus,"");
		downloadStatus=OpenImageLink(demoimagelink2,demoimagename2,0,downloadStatus,"");
		infoPath ("dot blot","");
	}	
	if (cmd!="-" && cmd == "Download\/Open a Set of 6 Demo Protein Array Images") {
		downloadStatus=1;
		downloadStatus=OpenImageLink(demoimagelink3,demoimagename3,0,downloadStatus,"ProteinArrayDemo");
		downloadStatus=OpenImageLink(demoimagelink4,demoimagename4,0,downloadStatus,"ProteinArrayDemo");
		downloadStatus=OpenImageLink(demoimagelink5,demoimagename5,0,downloadStatus,"ProteinArrayDemo");
		downloadStatus=OpenImageLink(demoimagelink6,demoimagename6,0,downloadStatus,"ProteinArrayDemo");
		downloadStatus=OpenImageLink(demoimagelink7,demoimagename7,0,downloadStatus,"ProteinArrayDemo");
		downloadStatus=OpenImageLink(demoimagelink8,demoimagename8,0,downloadStatus,"ProteinArrayDemo");
		infoPath ("protein array","ProteinArrayDemo");
	}
	if (cmd!="-" && cmd == "Download\/Open a Demo Master Table") {
		openDistantTable (demoimagelink9,demoimagename9,0,1,"ProteinArrayDemo");
	}
}

macro "About \"Protein Array Analyzer\" Action Tool - C000D84Cb9fD25De7CaaaD14D2dDa0DafDecDfaCedfD49D4aD4bD4cD58D68D9bDb9DbaDbbDbcC889D2cDebCddfD52CcccD0bD22CeeeD00D03D0cD0fD10D1fD20D2fD30D40Dc0Dd0DdfDe0DefDf0Df1Df2Df3DfcDfeDffC666D07D70CdcfD34D35Dc4CbacD86D91CfefD6bD6dD7cD8cD8dD8eD9cD9dDadC97aDd3De5CedfD99CeeeD01D02D04D0dD0eD11D12D1eD21D3fDcfDd1De1De2DeeDf4DfdCfefD7dC545D94Da5CdbeDa4Da7CbabD05D50DaeCfefD7eC98aD32Da1CecfD39D3aD3bD46D48D57D67Da8Db6Db8Dc9DcaDcbDccCdcdD81C878D1bD60D65CdcfD29D36D38D47D77Db7Dc8Dd9DdaCcbcD7aDbfDc1De3C98bD16D24D75DeaCedfD56D66D73D76D83D93Da3C212D7bD88D96D97CcaeD26D3cDdbCaaaD3eD5fCfdfD59C889D15D1aD78Dc2CdcfD45Db4Db5Dc6CdddD13D31D4fDdeDedDfbC777D09D7fD85D90Df7CeceDbdCbadD18D55Db2De9Ca9aD5eDcdDceDdcC656D08D64D80D87D8bCdbfD28D2aD37Dc7Dd8CbbbD1cD42Dd2Df5CfdfD5aD5bD5cD5dD69D6aD6cD9aDa9DabDacC999D0aD41DddDf6CdddD1dD2eD9eDb0C888D06D4eD6fD9fDf9CcbdD54D71D98Dc3Ca9dD17D19Dd4De6C000D74D79D95CcafDd5Dd6De8CedfD62D72D92C889D51Db1DbeCedfD53D63Da2CdcdD6eC777D8fDf8CdcfD43D44Db3Dc5CbadD2bD33C99aD23De4C545D89Da6CcbfD27Dd7CbabD61CedfD82DaaC98aD3dCdceD4dD8a" {
	about1 ();
}

macro "Version and Update Infos Action Tool - CcccD5fD6fD7fD8fD9fC78bD17D19D2aD33D37D3bD42D4cD75D95DceDd5Dd9De6Df7Df9CddeDa3C36bD27D28D3aD57D58D59D66D76D77D86D87Da7Db8Dd6De8De9CeeeD00D01D02D04D06D07D08D09D0bD0dD0fD10D11D12D14D1bD1dD1fD20D21D22D2dD30D31D32D40D46D47D48D49D50D5bD60D70D71D72D74D7dD80D81D82D84D8dD90D91D92D94D9dDa0Da1Da2Da4Db0Db1DbbDc0Dc1Dc6Dc7Dc8Dc9Dd0Dd1Dd2De0De1De2DedDf0Df1Df2Df4DfbDfdDffC8beD3cD3dD4dD5aD6aD79D7aD7bD85D8bD9aDaaDc3Dc4Dd3Dd4CeeeD03D05D0aD0cD0eD13D15D1cD1eD23D2eD3eD4aD55D6cD73D7cD7eD83D8cD8eD93D9cD9eDb5DcaDdeDe3DeeDf3Df5DfcDfeC559D18D26D34D35D36D41D51D61DafDbfDcfDdaDdbDddDeaDf8CcddD2fD5cD6dD6eDabDb2Db4Dc2DefC99bD16D24D39D45D54D56D64D65Da5DacDb6DbcDcbDd7DecDfaCdefD67D8aC59dD29D2bD68D69D78D88D96D97D98D99Da6Da8Da9Db9De5De7CacdD1aD2cD38D4bD4eD5dD5eD6bD89D9bDb3DbaDc5Dd8De4Df6C348D25D43D44Db7DccDdcDebCcccD3fD4fDdf" {
	VersionInfos ();
}



///////////////// Functions ////////////////////

function locationCursor (curs) {
	// set the location of the cursor and kind of cursor (single analyse or grid landmark setting)
	display ("");
	if (curs == 1) {
		if (x ==0) {ereaseCursor ();initiate=1;}
		checkInitColor ();
		getCursorLoc(x, y, z, flags);
		if (initiate ==1) {makeCursor(x,y,w,h,1);initiate=0;}
		xstart=x; ystart=y;
		w = getWidth(); h = getHeight();
		x2=x; y2=y;
		while (flags&16!=0) {
			getCursorLoc(x, y, z, flags);
			if (x!=x2 || y!=y2) {
				makeCursor(x,y,w,h,1);
			}
			x2=x; y2=y;
			wait(10);
		};
		if (initselectionColor != "") {setColorComponent (initForGColor,initBackGColor,initselectionColor);}
	} 
	// when the cursor is set
	if (x!=xstart || y!=ystart) {
		measureCircle ();
		display ("Blot Cursor coordinates: x="+ floor (xx-blotx1) + " \("+ floor (xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+floor (yy-bloty1)*blotscale +"\)"+ "\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\)"+ " " + kindofColoBox + " "+ SelectedColor);
		if (statutHL ==1 || statutHR ==1 || statutLL ==1) {
			ansvers2=1;
			HautDroite (0,0,1);
			BasGauche (0,0,1);
			HautGauche (0,0,1);
		}
		palette=1;dyn=1;reponse=0;cancel=0;cursorok=0;
		setTool(10);
	}
} 

function makeCursor(x,y,w,h,undo) {
	if (undo == 1) run("Undo");
	showStatus("Target: x image="+ x + " \(x blot="+(x-blotx1) +"\) " +", y image="+y + " \(y blot="+ (y-bloty1)+"\)");
	xori=blotx1;yori=bloty1;w=blotx2;h=bloty2;
	if ((x-selectionRayon) < blotx1) {x=blotx1+selectionRayon;}
	if ((y-selectionRayon) < bloty1) {y=bloty1+selectionRayon;}
	if ((x+selectionRayon) >=  blotx2) {x=blotx2-1-selectionRayon;}
	if ((y+selectionRayon) >=  bloty2) {y=bloty2-1-selectionRayon;}
	if (livedisplay ==1) display ("Blot Cursor coordinates: x="+ floor(x-blotx1) + " \("+ floor(x-blotx1)*blotscale +"\) " +", y="+floor(y-bloty1) + " \("+ floor(y-bloty1)*blotscale +"\)"+"\n" + "\("+KindofArea + "\)" + " " + radius +kindofColoBox + " "+ SelectedColor);
	px[0]=xori; py[0]=y;
	px[1]=w; py[1]=y;
	px[2]=x; py[2]=y;
	px[3]=x; py[3]=yori;
	px[4]=x; py[4]=h;
	px[5]=x; py[5]=y;
	setupUndo();
	makeSelection("polgon", px, py);
	setLineWidth(1);
	// set the grid landmark selection color
	if (statutHL ==1 || statutHR ==1 || statutLL ==1)  {
		setColor (220,220,0);
		setColorComponent (ForGColor,BackGColor,selectionColor);
	} 
	else {
		setColorComponent (ForGColor,BackGColor,selectionColor);
		getColorValues(ForGColor); setColor (r,g,b);
	}
	drawOval((x-selectionRayon),(y-selectionRayon),2*selectionRayon,2*selectionRayon);
	xx=x; yy=y;
}

function makeCircle(x,y,w,h,undo,radius) {
	setLineWidth(1);
	drawOval((x-radius),(y-radius),2*radius,2*radius);
}

function makeLine(x1,y1,x2,y2) {
	if (x1>blotx1 && x1 < blotx2 && y1 >bloty1 && y1 <bloty2 && x2 < blotx2 && x2 > blotx1 && y2 <bloty2 && y2 >bloty1) {
		setLineWidth(1);
		drawLine(floor(x1),floor(y1),floor(x2),floor(y2));
	}
}

function ChangeSize (CSize) {
	if ((selectionRayon+CSize)>4) selectionRayon=selectionRayon+CSize;
	measureCircle ();
	KindofArea="Interface";radius="radius="+toString(selectionRayon)+ " \("+toString(selectionRayon*2)+"\)";
	display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\)" + " " + radius+ kindofColoBox + " "+ SelectedColor);
}

function measureCircle () {
	makeWork (); // create-select the batch working image
	xmes=xx-blotx1;
	ymes=yy-bloty1;
	makeOval((xmes*blotscale-selectionRayon*blotscale),(ymes*blotscale-selectionRayon*blotscale),2*selectionRayon*blotscale,2*selectionRayon*blotscale);
	getStatistics(area, mean);
	volume = floor (area*mean);
	theVolume=toString(volume);
	selectImage (paletteName);
	setBatchMode(false);
}

function addvalue (clickx, clicky) {
	if (clickx > addMx1 && clickx < addMx2 && clicky > addMy1 && clicky <addMy2) {
		DotStatus = "Single";
		if (theVolume != "") {
			resultListSize=resultListSize+1;
			lastmesnumber=resultListSize;
			if (! isOpen(measurementTab))   {
				measurementTabEXL="["+measurementTab + "]";
				run("New... ", "name="+measurementTabEXL+" type=Table");
				print(measurementTabEXL, "\\Headings:Number\t X coordinate\tY coordinate\tIntegrated Area\tRadius\t");
				selectWindow (measurementTab);
				setLocation(0,Hpalette+138);
				selectImage (paletteName);
			} 
			if (resultListSize > 0) {
				mes[resultListSize-1]=theVolume;
				mesX[resultListSize-1]=xmes*blotscale; mesY[resultListSize-1]=ymes*blotscale;
				mesRadius[resultListSize-1]=selectionRayon;
				printrayon=toString (mesRadius[resultListSize-1]+ " \("+ (blotscale*mesRadius[resultListSize-1])+"\)");
				print(measurementTabEXL, (resultListSize) + "\t" + mesX[resultListSize-1] + "\t" + mesY[resultListSize-1] + "\t" + mes[resultListSize-1] + "\t" + printrayon + "\t");
			}
		test3cursor ();
		KindofArea="Interface";
		display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)"+ "\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\)"+  ": One added value " + kindofColoBox + " "+ SelectedColor);
		}
	updateSingleStatusInfo ();
	}
}

function rmvalue (clickx, clicky) {
	if (clickx > rmMx1 && clickx < rmMx2 && clicky > rmMy1 && clicky <rmMy2) {
		DotStatus = "Single";
		if (isOpen (measurementTab)  ) {
			if (alteuu == 1 && lastmesnumber != 0 ) {resultListSize=lastmesnumber;}
			if (resultListSize > 0) {
				print(measurementTabEXL, "\\Clear");
				if (alteuu == 0 && resultListSize >0) {lastmesnumber=resultListSize;resultListSize=resultListSize-1;}
					for (i=0; i<resultListSize; i++) {
						printrayon=toString (mesRadius[i]+ " \("+ (blotscale*mesRadius[i])+"\)");
						print(measurementTabEXL,  (i+1) + "\t" +mesX[i] + "\t" + mesY[i]  + "\t" + mes[i] + "\t" + printrayon+ "\t");
					}
				test3cursor (); 
			}
		}
		updateSingleStatusInfo ();
		if (alteuu == 1 && lastmesnumber != 0) {
			KindofArea="Interface";
			display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\)" + " " + radius +  ": Restored measurement " + kindofColoBox + " "+ SelectedColor);
		}
		if (alteuu == 0 && lastmesnumber != 0) {
			KindofArea="Interface";
			display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\)" + " " + radius +  ": Erased measurement " + kindofColoBox + " "+ SelectedColor);
		}
	}
}

function erMeasurement (clickx, clicky) {
	if (clickx > erMx1 && clickx < erMx2 && clicky > erMy1 && clicky < erMy2) {
		DotStatus = "Single";
		if ( isOpen(measurementTab))   {
			if (alteuu == 0 && resultListSize >0) {
				lastmesnumber=resultListSize;
				Dialog.create("User Choice");
				Dialog.addChoice("Delete the measurements ?", newArray("No","Yes") ,"no");
				Dialog.show();
				choix=Dialog.getChoice();
				if (choix == "Yes") {print(measurementTabEXL, "\\Clear");resultListSize=0;resetblot (1,1,1,1);}
			}
			if (alteuu == 1) {
				resultListSize=lastmesnumber;
			}
			test3cursor (); 
		}
		updateSingleStatusInfo ();
		if (alteuu == 0) {
			KindofArea="Interface";
			display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\)" + " " + radius +  ": Erased Measurement(s) " + kindofColoBox + " "+ SelectedColor);
		}
		if (alteuu == 1) {
			KindofArea="Interface";
			display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\)" + " " + radius +  ": Restored Measurement(s) " + kindofColoBox + " "+ SelectedColor);
		}
	}
}

function restaureMes () {
	DotStatus = "Single";
	if ( isOpen(measurementTab))   {
		if (lastmesnumber != 0 ) {
			print(measurementTabEXL, "\\Clear");
			for (i=0; i<resultListSize; i++) {
				printrayon=toString (mesRadius[i]+ " \("+ (blotscale*mesRadius[i])+"\)");
				print(measurementTabEXL,  (i+1) + "\t" +mesX[i] + "\t" + mesY[i]  + "\t" + mes[i] +  "\t"+ printrayon +"\t");
			}
		}
	}
	updateSingleStatusInfo ();
}

function showMesure (clickx,clicky) {		
	if (clickx > mesurx1 && clickx < (mesurx1+mesurx2) && clicky > mesury1 && clicky < (mesury1+mesury2/2)) {
		DotStatus = "Single";
		test3cursor (); 
		updateSingleStatusInfo ();
		KindofArea="Interface";
		display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\)" + " " + radius +  ": Single measure mode " + kindofColoBox + " "+ SelectedColor);
	}
}

function circleAutoSize (clickx,clicky) {


	if (clickx > sizex1 && clickx < (sizex1+sizex2-24) && clicky > sizey1 && clicky < (sizey1+sizey2)) {
		run("Undo");
		run("Select None");
		makeTemps (0);
		makeWork ();
		run("Make Binary");
		run("Set Measurements...", "area center fit redirect=None decimal=0");
		run("Clear Results");
		run("Analyze Particles...", "size=0-Infinity circularity=0.00-1.00 show=Nothing");
		close ();
		nmes=nResults;
		if (nmes >0) {
			elipselist=newArray(nmes);
			elipselistx=newArray(nmes);
			elipselisty=newArray(nmes);
			for (a=0 ; a< nmes ; a++) {
				elipselist[a]=getResult("Major", a);
				elipselistx[a]=getResult("XM", a);
				elipselisty[a]=getResult("YM", a);
			}	
			sort (elipselist,elipselistx,elipselisty);
			pertinantnumber=(elipselist.length-1);
			pertinantvalue=xSizeBlot/10;
			perttest=elipselist[elipselist.length-1];
			pertinantnumber = pertinantnumber-1;
			if (pertinantnumber <0) {
				showMessage ("Pertinant circle radius can't be found. 17 is set as default value");
				selectionRayon=17;
			} else {
				xauto=floor (elipselistx[pertinantnumber]);
				yauto=floor (elipselisty[pertinantnumber]);
				//print ("xauto= " + xauto);
				//print ("yauto= " + yauto);
				//fixed bug autosize with > 1.50 (08-09-2018)
				if (isOpen (workingI)) {
					selectImage(workingI);
					close();
				}
				selectionRayon=floor (elipselist[pertinantnumber]/blotscale/2+1);
				setBatchMode(false);
				test3cursor (); // origin of the bug palette
				makeCursor((xauto/blotscale+blotx1),(yauto/blotscale+bloty1),w,h,1);
				measureCircle ();
				KindofArea="Interface";radius="Auto Radius="+toString(selectionRayon)+ " \("+toString(selectionRayon*2)+"\)";
				display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\)" + " " + radius+ kindofColoBox + " "+ SelectedColor);
				x=xauto/blotscale+blotx1;y=yauto/blotscale+bloty1;
			} 
		}
	}
}

function updateSingleStatusInfo () {
	// update the single statut interface
	setBatchMode(true);
	setColor (90,90,130);
	fillRect ((singX1+1), (singY1+1), (singX2-2), 15);
	fillRect (gridCx1+1, gridCy1+1, gridCx2-2, gridCy2/2);
	fillRect (gridCx1+1, gridCy1+gridCy2/2+2, gridCx2-2, gridCy2/2-2);
	if (DotStatus == "Single") {setColor(0,220,0);} else {setColor(220,0,0);}
	setJustification("center");
	setFont("SansSerif", 12,"antialiased");
	drawString("Measurements:", singX1+1+(singX2)/2,singY1+15) ;
	if (DotStatus == "Grid") {setColor(0,220,0);} else {setColor(220,0,0);}
	setJustification("center");
	drawString("Grid:", gridCx1+1+(gridCx2)/2,gridCy1+15);
	if (gridModelStatus == 1) {setColor(0,220,0);} else {setColor(220,0,0);}
	setJustification("center");
	drawString("Model", gridCx1+1+(gridCx2)/2,gridCy1+32);
}

function showGrid (clickx,clicky) {		
	if (clickx > gridCx1 && clickx < (gridCx1+gridCx2) && clicky > gridCy1 && clicky < (gridCy1+gridCy2/2)) {
		DotStatus = "Grid";
		test3cursor (); 
		updateSingleStatusInfo ();
		KindofArea="Interface";
		display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\)" + " " + radius + ": Grid measure mode " + kindofColoBox + " "+ SelectedColor);
	}
}

function showModel (clickx,clicky) {
	if (clickx > gridCx1 && clickx < (gridCx1+gridCx2) && clicky > (gridCy1 +gridCy2/2+2) && clicky < (gridCy1+gridCy2)) {
		if (gridModelStatus==0) { gridModelStatus =1;}
		else {if (gridModelStatus==1) gridModelStatus =0;}
		if (gridModelStatus==0) { if (isOpen(gridModelName)) {selectImage(gridModelName);close ();}}
		DotStatus = "Grid";
		test3cursor (); 
		updateSingleStatusInfo ();
		KindofArea="Interface";
		if (gridModelStatus==1) display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  ": Model selected "+ kindofColoBox + " "+ SelectedColor);
		if (gridModelStatus==0) display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  ": Model unselected "+ kindofColoBox + " "+ SelectedColor);
	}
}

// Derived from http://rsb.info.nih.gov/ij/macros/SortDemo.txt
// author Wayne Rasband

function sort(a,b,c) {quickSort(a,b,c, 0, lengthOf(a)-1);}

function quickSort(a,b,c, from, to) {
      i = from; j = to;
      center = a[(from+to)/2];
      do {
		while (i<to && center>a[i]) i++;
		while (j>from && center<a[j]) j--;
		if (i<j) {
			temp=a[i]; a[i]=a[j]; a[j]=temp;
			temp=b[i];b[i]=b[j]; b[j]=temp;
			temp=c[i];c[i]=c[j]; c[j]=temp;
		}
		if (i<=j) {i++; j--;}
      } while(i<=j);
      if (from<j) quickSort(a,b,c, from, j);
      if (i<to) quickSort(a,b,c, i, to);
}

function ereaseCursor () {
	run("Undo");
	run("Select None");
	if (initselectionColor != "") {setColorComponent (initForGColor,initBackGColor,initselectionColor);}
}

function makeTemps (option) {
	setBatchMode(true);
	if (option == 1 && isOpen(tempclip)) {
		selectImage (tempclip);
		run("Select All");
		run("Copy");
	} else {
		if (! isOpen(tempclip)) {
			newImage(workingI,"8-bit Black",xSizeBlot,ySizeBlot,1);
			run("Paste");
			run("Select None");
			tempclip =getImageID();
		}
	}
}

function makeWork () {
	setBatchMode(true);
	if (! isOpen(workingID)) {
		newImage(workingI,"8-bit Black",xSizeBlot,ySizeBlot,1);
		run("Paste");
		run("Select None");
		workingID =getImageID();
	}
}

function OpenImageLink(link,name,question1,question2,subFolder) {
	// Check if already downloaded.
	downloadStatus=1;
	demoimalocation = getDirectory("startup");	
	ImaDemoSubFolder = demoimalocation+ "Downloaded Demo Images" + File.separator;
	if (subFolder != "") ImaDemoSubFolder = ImaDemoSubFolder + subFolder + File.separator;	
	fildestination = ImaDemoSubFolder + name;
	call("ij.io.OpenDialog.setDefaultDirectory", fildestination);
	if (File.exists(fildestination)) {
		if (question1 ==1 ) showMessageWithCancel ("The \"" + name + "\" has already been downloaded. Open it?");
		open(fildestination);
		call("ij.io.OpenDialog.setDefaultDirectory", fildestination);
	} else {
		netTest ();
		if (question2 ==1 ) showMessageWithCancel ("ImageJ will download demo images. Continue?");
		run("URL...", "url=["+link+"]");
		imageid = getImageID();
		// Create a <Downloaded Demo Images> repertory in ImageJ folder.
		ImaDemoFolder = demoimalocation+"Downloaded Demo Images"+File.separator;
		File.makeDirectory(ImaDemoFolder);
		if (!File.exists(ImaDemoFolder)) exit("Unable to create directory, something wrong in the ImageJ folder");
		// Create a sub optional subfolder in the  <Downloaded Demo Images> repertory
		File.makeDirectory(ImaDemoSubFolder);
		if (!File.exists(ImaDemoSubFolder)) exit("Unable to create directory, something wrong in the ImageJ folder");		
		selectImage(imageid);
		save(""+ImaDemoSubFolder+""+ name +"");
		downloadStatus=0;
	}
	return downloadStatus;
}

function openDistantTable (link,name,question1,question2,subFolder) {
	// Check if already downloaded.
	downloadStatus=1;
	demoimalocation = getDirectory("startup");	
	ImaDemoSubFolder = demoimalocation+ "Downloaded Demo Images" + File.separator;
	if (subFolder != "") ImaDemoSubFolder = ImaDemoSubFolder + subFolder + File.separator;	
	fildestination = ImaDemoSubFolder + name;
	call("ij.io.OpenDialog.setDefaultDirectory", fildestination);
	if (! File.exists(fildestination)) {
		netTest ();
		if (question2 ==1 ) showMessageWithCancel ("ImageJ will download a demo master table. Continue?");		
		// get the distant content
		tabContent = File.openUrlAsString(link);
		// Create a <Downloaded Demo Images> repertory in ImageJ folder.
		ImaDemoFolder = demoimalocation+"Downloaded Demo Images"+File.separator;
		File.makeDirectory(ImaDemoFolder);
		if (!File.exists(ImaDemoFolder)) exit("Unable to create directory, something wrong in the ImageJ folder");
		// Create a sub optional subfolder in the  <Downloaded Demo Images> repertory
		File.makeDirectory(ImaDemoSubFolder);
		if (!File.exists(ImaDemoSubFolder)) exit("Unable to create directory, something wrong in the ImageJ folder");
		// make/save the table
		thetab = File.open(fildestination);
		print (thetab,tabContent);
		File.close(thetab);		
		downloadStatus=0;
	}
	call("ij.io.OpenDialog.setDefaultDirectory", fildestination);
	if (File.exists(fildestination)) {
		if (question1 ==1 ) showMessageWithCancel ("The \"" + name + "\" table has already been downloaded. Open it?");
		openTab (fildestination,GlobalExcelCompileWindow);
		call("ij.io.OpenDialog.setDefaultDirectory", fildestination);
		if (isOpen (GlobalExcelCompileWindow)) {
			selectWindow (GlobalExcelCompileWindow);
			setLocation(0,97);
		}
	}
	return downloadStatus;
}


function UndoLast () {run("Undo");}

//////////////////
// graphic interface
//////////////////

function goGraphInt () {
	kindofColoBox="";SelectedColor="";radius="";
	clickx=0;clicky=0;
	reponse=0;cancel=0;dyn =0;
	if (! isOpen(paletteName)) {reponse=1;cancel=1;}
	getCursorLoc(clickx, clicky, z, flags);
	// test color boxes for cross hair
	testcolor= coloBoxes(0,1,clickx,clicky,"crosshair",0);
	if (testcolor != "") {
		kindofColoBox="crosshair";SelectedColor=testcolor;selectionColor=SelectedColor;
		KindofArea="Interface";
		ereaseCursor ();
		test3cursor ();
		makeCursor(x,y,w,h,1);
		display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\)" + " " + radius + kindofColoBox + " "+ SelectedColor);
	}
	// test color boxes for circle
	testcolor= coloBoxes(0,1,clickx,clicky,"circle",0);
	if (testcolor != "") {
		kindofColoBox="circle";SelectedColor=testcolor;ForGColor=SelectedColor;
		KindofArea="Interface";
		ereaseCursor ();
		test3cursor ();
		makeCursor(x,y,w,h,1);
		display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\)" + " " + radius + kindofColoBox + " "+ SelectedColor);
	}
	// test the circle size
	boxstatut=adjustBoxes(box1x,box1y,0,1,clickx,clicky);
	if (boxstatut == 2) {
		//if (statutHL !=1 && statutHR !=1 && statutLL !=1) {ChangeSize (-1);test3cursor ();gridAnalyse ();}
		if (statutHL !=1 && statutHR !=1 && statutLL !=1) {ChangeSize (-1);test3cursor ();measureCircle ();gridAnalyse ();}
	} 
	if (boxstatut == 3) {
		//if (statutHL !=1 && statutHR !=1 && statutLL !=1) {ChangeSize (1);test3cursor ();gridAnalyse ();}
		if (statutHL !=1 && statutHR !=1 && statutLL !=1) {ChangeSize (1);test3cursor ();measureCircle ();gridAnalyse ();}
	} 
	// test the histogram normalisation
	enhenceHisto (clickx,clicky);
	// test the lut choice for blot preview
	lutanvers=checkLUT (clickx,clicky);
	if (lutanvers ==1) {		
		applyLut ();
		test3cursor (); 
		measureCircle ();
		KindofArea ="Interface";
		display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  lutDisplay + radius+ kindofColoBox + " "+ SelectedColor);
	}
	// test the saturation level for histogram normalisation
	boxstatut=adjustBoxes(box2x,box2y,0,1,clickx,clicky);
	if (boxstatut == 2) {satHisto (-incresat);} 
	if (boxstatut == 3) {satHisto (incresat);} 	
	// test the reset blot preview
	if (checkClean (clickx,clicky)==1) {
		resetblot (0,0,0,1);
		test3cursor ();
		KindofArea ="Interface";
		display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  " Initial Blot Preview "+ kindofColoBox + " "+ SelectedColor);
	}
	// test the autosize cursor
	if (statutHL !=1 && statutHR !=1 && statutLL !=1) {circleAutoSize (clickx,clicky);}
	// test the result table management
	addvalue (clickx,clicky);
	rmvalue (clickx, clicky);
	erMeasurement (clickx, clicky);
	showMesure (clickx,clicky);
	// adjust the number of columns of the grid
	boxstatut=adjustBoxes(box3x,box3y,0,1,clickx,clicky);
	if (boxstatut == 2) {DotStatus = "Grid";setColNumber (-1);}	if (boxstatut == 3) {DotStatus = "Grid";setColNumber (1);}
	// adjust the number of lines of the grid
	boxstatut=adjustBoxes(box4x,box4y,0,1,clickx,clicky);
	if (boxstatut == 2) {DotStatus = "Grid";setLineNumber (-1);}
	if (boxstatut == 3) {DotStatus = "Grid";setLineNumber (1);}
	// check for the 3 angle limiting the grid
	HautDroite (clickx,clicky,0);
	BasGauche (clickx,clicky,0);
	HautGauche (clickx,clicky,0);
	// test the grid box
	showGrid (clickx,clicky);
	// test the model box
	showModel (clickx,clicky);
	// cancel !!rajouter la reinitialisation du foreground color?
	if (Cancel (clickx,clicky) == 1) {cancel=1;reponse=1;palette=0;}
	// end, finish analysis
	endQuit (clickx,clicky);
	// location of the click into the blot area
	if (Blot (clickx,clicky) == 1) {KindofArea="Dot blot";reponse =1; palette=0;analyseIt=0;cursorok=1;} else {KindofArea="Interface";}
	// check for the erease drawing
	if (eraseDraw (clickx,clicky) ==1) {
		resetblot (1,1,1,1);
	}
	dyn =1;
}

function getBlotSample () {
	run("Select None");
	selectImage (blotName);
	run("Duplicate...", "title=temp");
	run("Invert");
	makeRectangle(0,0,xSizeBlot,ySizeBlot);
	run("Copy");run("Select None");close ();
}

function resetblot (saturation,enh,lut,curs) {
	// reset the visualisations settings: if saturation, enh, lut != 0 user settings are kept
	if (saturation==0) sat=0;
	if (enh==0) enhenceChoice=0;
	if (lut ==0) lutChoice=0;
	applyLut ();
	if (curs ==1) makeCursor(x,y,w,h,1);
}

function blotForPalette () {
	makeTemps (0);
	makeWork ();
	if ( isOpen(workingID)) {
		selectImage (workingID);
		run("Size...", "width=["+xSizeBlot/blotscale+"] height=["+ySizeBlot/blotscale+"]  interpolate");
		run("Select All");run("Copy");close ();
		selectImage(paletteName);
		run("Paste");run("Select None");
	}
	makeTemps (1);
	selectImage(paletteName);
}

function coloBoxes(draw,detect,clickx,clicky,kind,update) {
	if (kind == "crosshair") ori=40+interx1;
	if (kind == "circle") ori=Linter/2+20+interx1;
	colboxOriY=yDisplay-25;
	xcolorbox=20;ycolorbox=10;spcol=(Linter-8*xcolorbox)/48;
	setLineWidth(largeline);detectcol=-1;democolor="";
	for (a=0;a<8;a++) {
		setColor(255,0,93);
		if (detect==1) {
			if (clicky >colboxOriY && clicky < (colboxOriY+ycolorbox)) {
				if (clickx > (a*xcolorbox+a*spcol+spcol)+ori && clickx < ((a*xcolorbox+a*spcol+spcol)+xcolorbox)+ ori)  {detectcol=a;kindofColoBox=kind;}
			}
		}		
		if (draw==1) {setLineWidth(largeline);drawRect ((a*xcolorbox+a*spcol+spcol)+ori, colboxOriY, xcolorbox, ycolorbox);}
		if (a==0) {getColorValues ("red");if (detect==1 && detectcol==0) {democolor ="red";}}
		if (a==1) {getColorValues ("green");if (detect==1 && detectcol==1) {democolor ="green";}}
		if (a==2) {getColorValues ("blue");if (detect==1 && detectcol==2) {democolor ="blue";}}
		if (a==3) {getColorValues ("cyan");if (detect==1 && detectcol==3) {democolor ="cyan";}}
		if (a==4) {getColorValues ("yellow");if (detect==1 && detectcol==4) {democolor ="yellow";}}
		if (a==5) {getColorValues ("magenta");if (detect==1 && detectcol==5) {democolor ="magenta";}}
		if (a==6) {getColorValues ("black");if (detect==1 && detectcol==6) {democolor ="black";}}
		if (a==7) {getColorValues ("white");if (detect==1 && detectcol==7) {democolor ="white";}}
		if (draw==1) {setColor(r, g, b);fillRect ((a*xcolorbox+a*spcol+spcol+1) +ori, colboxOriY+1 , (xcolorbox-2), (ycolorbox-2));}
	}
	// draw graphique legend
	if (update==1) {
		getColorValues(ForGColor); setColor (r,g,b);
		setLineWidth(largeline);
		drawOval((Linter-16+interx1-22),(colboxOriY-3),16,16);
		drawOval((interx1+Linter/2-8),(colboxOriY-3),16,16);
		getColorValues(selectionColor); setColor (r,g,b);
		drawLine((Linter/2+interx1),(colboxOriY-8),(Linter/2+interx1),(colboxOriY+18));
		drawLine((Linter/2-14+interx1),(colboxOriY+5),(Linter/2+14+interx1),(colboxOriY+5));
		drawLine((30+interx1),(colboxOriY-8),(30+interx1),(colboxOriY+18));
		drawLine((30+interx1-11),(colboxOriY+5),(30+interx1+11),(colboxOriY+5));
	}
	return democolor;
}

function adjustBoxes(xbx,ybx,draw,detect,clickx,clicky) {
	xadjustbox=14;yadjustbox=25;
	setLineWidth(1);status=0;
	if (detect==1) {
		if (clicky >(ybx) && clicky < (ybx+yadjustbox/2-1) && clickx > (xbx) && clickx < (xbx+xadjustbox)) {status=3;}
		if (clicky >(ybx+yadjustbox/2) && clicky < (ybx+yadjustbox) && clickx > xbx && clickx < (xbx+xadjustbox)) {status=2;}
	}
	if (draw==1) {
		setColor(100,50,50);fillRect ((xbx+1), (ybx+1), (xadjustbox-1), (yadjustbox-1));run("Select None");
		setColor(255,0,93);drawRect (xbx, ybx, xadjustbox, yadjustbox); run("Select None");
		drawLine ((xbx), (ybx+yadjustbox/2-1), (xbx+xadjustbox-1), (ybx+yadjustbox/2-1));
		setFont("SansSerif", 15,"antialiased");setColor(0,255,0);
		setJustification("left");
		drawString("-",(xbx+3),(ybx+27));
		drawString("+",(xbx+1),(ybx+15));
	}
	return status;
}

function enhenceHisto (clickx,clicky) {
	// normalize the histogram, taking account the saturation level, and lut choices
	if (clickx > enhX1 && clickx < enhX1+enhX2-20 &&  clicky > enhY1 && clicky < enhY1+enhY2) {
		run("Undo");
		makeTemps (0);
		makeWork ();	
		if (enhenceChoice ==0) {
			run("Enhance Contrast", "saturated=["+sat+"] normalize");
			enhenceChoice =1;
		} else {enhenceChoice =0;}
		if (lutChoice==0) run("Grays");
		if (lutChoice==1) {run("Grays");run("Invert");}
		if (lutChoice==2) {run("Fire");}
		if (lutChoice==3) {if (File.exists(getDirectory("imagej")+"luts/royal.lut")) {run("royal");} else {run("Spectrum");}}
		run("Size...", "width=["+xSizeBlot/blotscale+"] height=["+ySizeBlot/blotscale+"]  interpolate");
		run("Select All");run("Copy");
		selectImage (paletteName);
		makeRectangle (blotx1, bloty1, xSizeBlot/blotscale, ySizeBlot/blotscale);
		run("Paste");
		run("Select None");	
		makeTemps (1);
		selectImage (paletteName);
		setBatchMode(false);
		test3cursor ();
		KindofArea= "Interface";
		measureCircle ();
		if (enhenceChoice == 1) {histo="Normalized Contrast Sat="+d2s(sat,2)+"%";} else {histo="Initial Contrast";}
		display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  histo + radius+ kindofColoBox + " "+ SelectedColor);
	}
}

function checkClean (clickx,clicky) {
	// locate click for supress visuals improvements
	statut=0;
	if (clickx > resX1 && clickx < (resX1+ resX2) && clicky > resY1 && clicky < (resY1+resY2)) {statut=1;} 
	return statut;
}

function Cancel (clickx,clicky) {
	// locate click for cancel the analysis
	testcancel=0;
	if (clickx > cancelx1 && clickx < cancelx2 &&  clicky > cancely1 && clicky < cancely2) {testcancel=1;}
	return testcancel;	
}

function Blot (clickx,clicky) {
	// locate the actions into the blot area
	if (clickx >= blotx1   && clickx < blotx2  &&  clicky >= bloty1  && clicky < bloty2) {testpal=1;} else {testpal=0;} return testpal;
} 

function eraseDraw (clickx,clicky) {
	// locate click for erease the drawings onto blot area
	testErase=0;
	if (clickx > analysex1 && clickx < analysex2 &&  clicky > analysey1-4 && clicky < analysey2+4) {testErase=1;}
	return testErase;
}

function endQuit (clickx,clicky) {
	if (clickx > endx1 && clickx < (endx2+endx1) &&  clicky > endy1 && clicky < endy1+endy2) {
		palette=0;cursorok=0;dyn=0;
		if (isOpen(paletteName)) {
			selectImage (paletteName);
			makeRectangle (blotx1, bloty1, xSizeBlot/blotscale, ySizeBlot/blotscale);
			run("Crop");
			rename(blotinitName+ "-Grph");
			endPalette=getTitle;
			showMessage("End of analyse");
		}
		if (initselectionColor != "") {setColorComponent (initForGColor,initBackGColor,initselectionColor);}
	}
}

function updateThePalette () {
	if (isOpen(paletteName)) {
		selectImage(paletteName);
	}
	setBatchMode(true);
	run("Select None");
	coloBoxes(1,0,0,0,"crosshair",1);
	coloBoxes(1,0,0,0,"circle",1);
	// update-refresh the single measures
	if (showmes ==1) {
		run("Undo");
		run("Select None");
		if ( isOpen(measurementTab))   {
			if (lastmesnumber != 0 ) {
				resetblot (1,1,1,0);
				setBatchMode(true);
				restaureMes ();
				setColorComponent (ForGColor,BackGColor,selectionColor);
				getColorValues(ForGColor); setColor (r,g,b);
				for (i=0; i<resultListSize; i++) {
					makeCircle((mesX[i]/blotscale+blotx1),(mesY[i]/blotscale+bloty1),w,h,0, mesRadius[i]);
				}
				makeCursor(x,y,w,h,1);
			}
		}
		makeCursor(x,y,w,h,1);
	}
	// update-refresh the grid limits
	if (showrep ==1) {
		resetblot (1,1,1,0);
		if (LLX !=0 && LLY !=0) {
			setColor(0,255,0);
			if (updateRefCircle(LLX,LLY) == 1) {
				makeCircle((LLX+blotx1),(LLY+bloty1),w,h,0,(selectionRayon));
			} else {
				LLX=0; LLY=0;   LRX=0; LRY=0;
				updateThePalette ();
				showMessage("Setting mistake 1","Out of blot area, \"Low Left\" grid cursor has been reinitialized. \nIt is incompatible with the circle RADIUS and\/or LINES and \nCOLUMNS numbers set");
			}
		}
		if (HRX !=0 && HRY !=0) {
			setColor(0,255,0);
			if (updateRefCircle(HRX,HRY) == 1) {
				makeCircle((HRX+blotx1),(HRY+bloty1),w,h,0,(selectionRayon));
			} else {
				HRX=0; HRY=0;   LRX=0; LRY=0;
				updateThePalette ();
				showMessage("Setting mistake 2","Out of blot area, \"High Right\" grid cursor has been reinitialized. \nIt is incompatible with the circle RADIUS and\/or LINES and \nCOLUMNS numbers set");			
			}
		}
		if (HLX !=0 && HLY !=0) {
			setColor(0,255,0);
			if (updateRefCircle(HLX,HLY) == 1) {
				makeCircle((HLX+blotx1),(HLY+bloty1),w,h,0,(selectionRayon));
			} else {
				HLX=0;  HLY=0;   LRX=0; LRY=0;
				updateThePalette ();
				showMessage("Setting mistake 3","Out of blot area, \"High Left\" grid cursor has been reinitialized. \nIt is incompatible with the circle RADIUS and\/or LINES and \nCOLUMNS numbers set");
			}
		}

		// check for the grid ref cursors positions (limits) regarding the circle radius changing
		if (LRX >0 && LRY >0 && HLX >0 && HRX >0 && LLX>0 ) {
			if (updateRefCircle(LRX,LRY) == 1) {
				dxc= ((HRX-HLX)/(nbcol-1));
				dyc= ((LLY-HLY)/(nbline-1));
				// grid lines calculations. make grid measure tab
				if (GridStatus ==1) makeGridTab (); // for grid tab
				for (i=0; i< nbline; i++) {
					setColor(128,128,128);
					makeLine ((((HLY+bloty1+i*dyc)-YhorizontalOrd)/Ay) ,((HLX+blotx1)*Ax+XhorizontalOrd+i*dyc),(((HLY+bloty1+i*dyc)-YhorizontalOrd)/Ay+(HRX-HLX)),((HRX+blotx1)*Ax+XhorizontalOrd+i*dyc));
					setColorComponent (ForGColor,BackGColor,selectionColor);
					getColorValues(ForGColor); setColor (r,g,b);
					lineTitles=" L"+ (i+1); // for grid tab
					for (k=0; k < nbcol; k++) {
						xx=(((HLY+bloty1+i*dyc)-YhorizontalOrd)/Ay +dxc*k);
						yy=((HLX+ dxc*k+blotx1)*Ax+XhorizontalOrd +dyc*i);
						if ((i !=0 || k != 0) && ( i != (nbline-1) || k != (nbcol-1)) && ( i != 0 || k != (nbcol-1)) && ( i != (nbline-1) || k != 0)) {
							makeCircle(xx,yy,w,h,0,selectionRayon);
						}
						if (GridStatus ==1) {
							measureCircle (); // for grid tab
							lineTitles=lineTitles+ "\t" + theVolume; // for grid tab
						}
					}
					if (GridStatus ==1) {if (lineTitles != "") print(nameOfGridTab,  lineTitles); }// for grid tab
				}
				for (i=0; i< nbcol; i++) {
					setColor(128,128,128);
					makeLine((HLX+blotx1+i*dxc),((HLX+ dxc*i+blotx1)*Ax+XhorizontalOrd),(LLX+blotx1+i*dxc),((HLX+ dxc*i+blotx1)*Ax+XhorizontalOrd +(LLY-HLY)));
				}
				// yellow guide lines
				setColor(255,255,0);
				makeLine ((((HLY+bloty1)-YhorizontalOrd)/Ay) ,((HLX+blotx1)*Ax+XhorizontalOrd),(((HLY+bloty1)-YhorizontalOrd)/Ay+(HRX-HLX)),((HRX+blotx1)*Ax+XhorizontalOrd));
				makeLine((HLX+blotx1),((HLX+blotx1)*Ax+XhorizontalOrd),(LLX+blotx1),((HLX+blotx1)*Ax+XhorizontalOrd +(LLY-HLY)));
				setColor(0,255,0);
				makeCircle((LRX+blotx1),(LRY+bloty1),w,h,0,(selectionRayon));
			} else {
				LRX=0; LRY=0;
				if (HLX >0 && HRX >0 && LLX>0) {
					HRX=0;HRY=0;LLX=0;LLY=0; 
					updateThePalette ();
					showMessage("Setting mistake","These grid cursors settings give the \"low\-right\" dot partially out of the blot area.\nhight\-right and low\-left cursors have been reinitialized.");
				} 
			}
		} 
		statutHL =0; statutHR =0; statutLL =0;  
		testCursButtonColor (0,0,0,1,"none");
		run("Select None");
		// draw the model
		if (gridModelStatus ==1) makeModel ();
	}
	setBatchMode("exit and display");
	setLocation (0,97);
	run("View 100%");
}

function makeGridTab () {
	if (gridcol==0) gridcol=nbcol;
	if (gridline==0) gridline= nbline;
	colTitles=""; lineTitles="";
	for (i=1; i<= nbcol; i++) {
		colTitles=colTitles+ " C"+i +"\t";
	}
	if (isOpen(windowTabName) && ((gridcol != nbcol) || (gridline !=nbline))) {
		selectWindow (windowTabName); run("Close");
		gridcol=nbcol;gridline= nbline;
	}
	// built the table
	if (!isOpen(windowTabName)) {
		run("New... ", "name="+nameOfGridTab+" type=Table");
		print(nameOfGridTab, "\\Headings:Lin.\/Col.\t" + colTitles);
		selectWindow (windowTabName);
		setLocation(Lpalette+11,97);
	}
	print(nameOfGridTab, "\\Clear");
	selectImage (paletteName);
}

 function makeModel () {
	setBatchMode(true);
	wellValue=0;maxValue=0;
	if (nbcol > 0 && nbline >0 && HLX >0 && HRX >0 && LLX > 0 && LRX >0 && isOpen(windowTabName )) {
		selectWindow(windowTabName);
   		gridResults = getInfo();		
		// get the highest value
		for (i=1; i<= nbcol; i++) {
			for (j=1; j<= nbline; j++) {
				colval=" C" +i; lineval =" L"+j;
				wellValue=getWellValue (colval,lineval);
				maxValue=maxOf(maxValue,wellValue);
			}
		}
		// create the model window
		spacerModel=10; wellModel=20;
		if (! isOpen(gridModelName)) {
			makeModelWindow(spacerModel,wellModel);
		}
		selectImage (gridModelName);
		xmodel=((nbcol+1)*wellModel+(nbcol+1)*spacerModel);
		ymodel=((nbline+2)*wellModel+(nbline+2)*spacerModel);
		curentModelx=getWidth();
		curentModely=getHeight();
		if (curentModely != ymodel || curentModelx != xmodel) {
			close ();
			makeModelWindow(spacerModel,wellModel);
		}
		selectImage (gridModelName);
		if (lutChoice==1) {run("Grays");}
		if (lutChoice==2) {run("Fire");}
		if (lutChoice==3) {if (File.exists(getDirectory("imagej")+"luts/royal.lut")) {run("royal");} else {run("Spectrum");}}
		setColor (0);
		fillRect(0, (wellModel+spacerModel), xmodel, ymodel-(wellModel+spacerModel));
		for (i=1; i<= nbcol; i++) {
			setColor(255,255,255);setJustification("center");setFont("SansSerif", 10,"bold");
			ecriture = "C"+toString(i);
			drawString(ecriture,((i)*wellModel+i*spacerModel+(wellModel/2+2)), (2*wellModel+spacerModel));run("Select None");
		}
		for (i=1; i<= nbline; i++) {
			setColor(255,255,255);setJustification("center");setFont("SansSerif", 10,"bold");
			ecriture = "L"+toString(i);
			drawString(ecriture,(wellModel/2+spacerModel/2), ((i+2)*wellModel+(i+1)*spacerModel)-2);run("Select None");
		}
		for (i=1; i<= nbcol; i++) {
			for (j=1; j<= nbline; j++) {
				colval=" C" +i; lineval =" L"+j;
				wellValue=getWellValue (colval,lineval);
				wellValueRescaled=round(parseFloat(wellValue)*255/maxValue);
				if (wellValueRescaled <= 255) setColor(wellValueRescaled);
				fillOval(((i)*wellModel+i*spacerModel), ((j+1)*wellModel+(j+1)*spacerModel), wellModel, wellModel);
			}
		}
		setBatchMode(false);
		selectImage (paletteName);
	}
}

function makeModelWindow (spacerModel,wellModel) {
	setBatchMode(false);
	newImage(gridModelName, "8-bit ramp", ((nbcol+1)*wellModel+(nbcol+1)*spacerModel), ((nbline+2)*wellModel+(nbline+2)*spacerModel), 1);
	setLocation(Lpalette+11,348);
	setBatchMode(true);
}

function getMaxValue(gridValues) {
	max=gridValues[0];
	for (i=0;i<gridValues.length;i++) {max=maxOf(max,gridValues[i]);}
	return max;
}	

function getWellValue (Coltab,Linetab) {
	val=-1;
	ansversGridCol=columnLabelList (Coltab);
	ansversGridLine=lineLabelList (Linetab);
	if (ansversGridCol  >0 && ansversGridLine >0) {
   		lines = split(gridResults, "\n");
		colums =split(lines[ansversGridLine], ",\t");
		val= colums[ansversGridCol];
	} else {exit("model can\'t be made from the \""+GlobalExcelCompileWindow + "\"");}
	return val;
}

// return the number of the column who's title is in kind
function columnLabelList (kind) {
	columnNumber=-1;
   	lines = split(gridResults, "\n");
  	headings = lines[0];
	titlesofcolumns = split(headings, ",\t");
	for (a=0; a<titlesofcolumns.length; a++) {if (titlesofcolumns[a] == kind) columnNumber=a;}
	return columnNumber;
}

//return the number of the line who's title is in kind
function lineLabelList (kind) {
	lineNumber=-1;
	if (nbline > 0 && isOpen(windowTabName)) {
   		lines = split(gridResults, "\n");
		for (a=0; a<lines.length; a++) {
			linea=split(lines[a], ",\t");
			if (linea[0] == kind) lineNumber=a;
		}
	}
	return lineNumber;
}

function drawPalette () {
	// draw a palette containing the blot preview and analysis graphical interface
	setBatchMode(true);
	if (isOpen(paletteName)) exit ("A \"" +paletteName+ "\" window is already opened.\nFirst, close it before run a new analysis.") ;
	setBatchMode(true);
	getBlotSample ();
	setLineWidth(largeline);
	Hpalette=ySizeBlot/blotscale+Topmarge+Botommarge+Hinter;Lpalette=Linter;
	if ((xSizeBlot /blotscale+Leftmarge+Rightmarge) > Linter) Lpalette=(xSizeBlot /blotscale +Leftmarge+Rightmarge);
	blotx1=floor ((Lpalette-xSizeBlot/blotscale)/2); blotx2= floor (blotx1+xSizeBlot/blotscale);
	bloty1=floor (Topmarge);bloty2=floor (bloty1+ySizeBlot/blotscale);
	run("Line Width...", "line="+largeline+"");
	interx1=(Lpalette-Linter)/2;interx2=(interx1+Linter);
	intery2=(Hpalette-Botommarge); intery1=(intery2-Hinter);
	// cancel and analyse buttons coodinates
	cancelx1=(interx1+distBord); cancelx2=(cancelx1+largbuton);
	cancely1=(intery2 - disthaut-hautbuton); cancely2=(cancely1+hautbuton);
	analysex1= (interx2-distBord-largbuton); analysex2=(analysex1+largbuton);
	analysey1= intery2-(disthaut)-(hautbuton); analysey2=(analysey1+hautbuton);
	newImage(paletteName,"RGB Black",Lpalette,Hpalette,1);
	setForegroundColor(32,0,93);
	run("Select All");run("Fill");run("Select None");
	setColor(255,0,93);
	setLineWidth(largeline);
	drawRect (blotx1-1, bloty1-1, xSizeBlot/blotscale+2, ySizeBlot/blotscale+2); run("Select None");
	makeRectangle (blotx1, bloty1, xSizeBlot/blotscale, ySizeBlot/blotscale);
	blotForPalette ();
	setLocation(5, 105);
	setColor(255,0,0);// button cancel
	setLineWidth(largeline);
	drawRect ( cancelx1, cancely1-5, largbuton, hautbuton+9);run("Select None");
	setColor(255,255,20);// button analyse
	setLineWidth(largeline);
	drawRect (analysex1, analysey1-5, largbuton, hautbuton+9);run("Select None");
	setColor(80,90,120);
	fillRect (cancelx1+1, cancely1-4, largbuton-2, hautbuton+7);
	fillRect (analysex1+1,  analysey1-4, largbuton-2, hautbuton+7);
	setFont("SansSerif", 12,"bold");setColor(255,20,20);
	drawString("Cancel",(cancelx1+9),(cancely1+19));run("Select None");
	setColor(255,255,20);setJustification("center");setFont("SansSerif", 12,"antialiased");
	drawString("Erase\nDrawings",(analysex1+31),(analysey1+11));run("Select None");
	xDisplay= cancelx2+4;yDisplay=cancely1-8;
	larDisplay= analysex1-cancelx2-8;
	setColor(140,140,180);
	setLineWidth(largeline);
	drawRect ( xDisplay, yDisplay, larDisplay, Hdisplay);run("Select None");
	display (" ");
	setColor(140,140,180);
	setLineWidth(largeline);
	drawRect (cancelx1, yDisplay-35, (analysex1+largbuton-cancelx1), 32);run("Select None");
	setColor(90,90,130);
	fillRect (cancelx1+1, yDisplay-34, (analysex1+largbuton-cancelx1-2), 30);
	coloBoxes(1,0,0,0,"crosshair",1);
	coloBoxes(1,0,0,0,"circle",1);
	ax=interx1+20;ay=colboxOriY-37;ar=16;
	sizex1=cancelx1;sizex2=3*ar-1;sizey1=ay-7;sizey2=ar+15;
	setColor(140,140,180);
	setLineWidth(largeline);
	drawRect (sizex1, sizey1, sizex2, ar+15);
	setColor (90,90,130);
	fillRect (sizex1+1, sizey1+1, sizex2-2, sizey2-2);
	box1x=interx1+(3*ar-4);box1y=ay-4;
	getColorValues("magenta"); setColor (r,g,b);
	drawOval(ax,ay,ar,ar);
	getColorValues("yellow"); setColor (r,g,b);
	drawLine(ax+ar/2+1,ay+(ar/2),ax+ar+1,ay+(ar/2));
	drawLine((ax+ar/2+1),(ay+ar/2-3),(ax+ar/2+1),(ay+ar/2+3));
	drawLine((ax+ar+1),(ay+ar/2-3),(ax+ar+1),(ay+ar/2+3));
	adjustBoxes(box1x,box1y,1,0,0,0);
	enhX1=ax+45; enhX2=45;
	enhY1=ay-7;enhY2=ar+15;
	box2x=enhX1+27;
	box2y=box1y;
	setColor(140,140,180);
	setLineWidth(largeline);
	drawRect (enhX1, enhY1, enhX2, enhY2);
	setColor (90,90,130);
	fillRect (enhX1+1, enhY1+1, enhX2-2, enhY2-2);
	setColor (0,250,200);
	drawLine(enhX1+1,enhY1+28,enhX1+3,enhY1+17);
	drawLine(enhX1+3,enhY1+17,enhX1+6,enhY1+28);
	drawLine(enhX1+6,enhY1+28,enhX1+9,enhY1+20);
	drawLine(enhX1+9,enhY1+20,enhX1+12,enhY1+28);
	drawLine(enhX1+12,enhY1+28,enhX1+23,enhY1+28);
	setColor (0,250,0);
	drawLine(enhX1+1,enhY1+15,enhX1+6,enhY1+3);
	drawLine(enhX1+6,enhY1+3,enhX1+12,enhY1+15);
	drawLine(enhX1+12,enhY1+15,enhX1+18,enhY1+7);
	drawLine(enhX1+18,enhY1+7,enhX1+23,enhY1+15);
	adjustBoxes(box2x,box2y,1,0,0,0);
	lutX1=enhX1+enhX2+3; lutX2=50;
	lutY1=enhY1; lutY2=enhY2;
	setColor(140,140,180);
	setLineWidth(largeline);
	drawRect (lutX1, lutY1, lutX2, lutY2);
	setColor (90,90,130);
	fillRect (lutX1+1, lutY1+1, lutX2-2, lutY2-2);
	makeSampleLut (0,lutX1+2,lutY1+2);
	makeSampleLut (1,lutX1+14,lutY1+2);
	makeSampleLut (2,lutX1+26,lutY1+2);
	makeSampleLut (3,lutX1+38,lutY1+2);
	resX1=lutX1+lutX2+3; resX2=30;
	resY1=lutY1; resY2=lutY2;
	setColor(140,140,180);
	setLineWidth(largeline);
	drawRect (resX1, resY1, resX2, resY2);
	setColor (90,90,130);
	fillRect (resX1+1, resY1+1, resX2-2, resY2-2);
	getColorValues("yellow"); setColor (r,g,b);
	ax=resX1+resX2/2-9;ay=(resY1+resY2/2-8);
	drawOval(ax,ay,ar,ar);
	getColorValues("green"); setColor (r,g,b);
	setLineWidth(largeline+1);
	drawLine(ax+1,ay+ar/2+3,ax-3,ay+(ar/2-4));
	drawLine(ax+1,ay+ar/2+3,ax+4,ay+(ar/2-4));
	drawLine(ax+ar,ay+ar/2-5,ax+ar-4,ay+(ar/2+3));
	drawLine(ax+ar,ay+ar/2-5,ax+ar+3,ay+(ar/2+3));
	setLineWidth(largeline);
	singX1=resX1+resX2+3; singX2=100;
	singY1=lutY1; singY2=resY2;
	mesurx1=singX1; mesury1=singY1; mesurx2=singX2; mesury2=singY2;
	addMx1= singX1+2;
	addMy1= singY1+16;
	addMx2= singX1+30;
	addMy2= singY1+singY2-1;
	rmMx1= addMx2;
	rmMy1= addMy1;
	rmMx2= singX1+singX2-15;
	rmMy2= addMy2;
	erMx1= rmMx2;
	erMy1= rmMy1;
	erMx2= singX1+singX2-2;
	erMy2= rmMy2;
	setColor(140,140,180);
	setLineWidth(largeline);
	drawRect (singX1, singY1, singX2, singY2);
	setColor (90,90,130);
	fillRect (singX1+1, singY1+1, singX2-2, singY2-2);
	setColor(140,140,180);
	drawLine (singX1, addMy1, erMx2+1, addMy1);
	drawLine (singX1+singX2-15, addMy1, rmMx2, addMy2);
	drawLine (addMx2, addMy1, addMx2, addMy2);
	setFont("SansSerif", 12,"antialiased");
	setColor(220,220,0);
	setJustification("center");
	drawString("Measurements:", singX1+1+(singX2)/2,singY1+15);
	setColor(220,220,0);
	setJustification("left");
	drawString("Add   Remove", singX1+2,singY1+31) ;
	setColor(220,0,0);
	setLineWidth(2);
	drawLine (singX1+singX2-2, singY1+18, singX1+singX2-13, singY1+singY2-2);
	drawLine (singX1+singX2-2, singY1+singY2-2, singX1+singX2-13, singY1+18);
	setLineWidth(largeline);
	nbcolX1=singX1+singX2+3;
	nbcolX2=50;
	nbcolY1=singY1;
	nbcolY2=singY2;
	setColor(140,140,180);
	setLineWidth(largeline);
	drawRect (nbcolX1, nbcolY1, nbcolX2, nbcolY2);
	setColor (90,90,130);
	fillRect (nbcolX1+1, nbcolY1+1, nbcolX2-2, nbcolY2-2);
	setColor(140,140,180);
	box3x=nbcolX1+nbcolX2-17;box3y=nbcolY1+3;
	adjustBoxes(box3x,box3y,1,0,0,0);
	setColor(80,80,120);
	fillRect (nbcolX1+1, (nbcolY1+15), nbcolX2-19, 15);
	setFont("SansSerif", 12,"antialiased");setColor(220,220,0);setJustification("center");
	drawString("nCol.", nbcolX1+1+(nbcolX2-17)/2,nbcolY1+15) ;
	setColor(255,200,50);setFont("SansSerif", 12,"bold");
	drawString(toString(nbcol), nbcolX1+1+(nbcolX2-17)/2,nbcolY1+31) ;
	nblineX1=nbcolX1+nbcolX2+3;
	nblineX2=50;
	nblineY1=nbcolY1;
	nblineY2=nbcolY2;
	setColor(140,140,180);
	setLineWidth(largeline);
	drawRect (nblineX1, nblineY1, nblineX2, nblineY2);
	setColor (90,90,130);
	fillRect (nblineX1+1, nblineY1+1, nblineX2-2, nblineY2-2);
	setColor(140,140,180);
	box4x=nblineX1+nblineX2-17;box4y=nblineY1+3;
	adjustBoxes(box4x,box4y,1,0,0,0);
	setColor(80,80,120);
	fillRect (nblineX1+1, (nblineY1+15), nblineX2-19, 15);
	setFont("SansSerif", 12,"antialiased");setColor(220,220,0);setJustification("center");
	drawString("nLin.", nblineX1+1+(nblineX2-17)/2,nblineY1+15) ;
	setColor(255,200,50);setFont("SansSerif", 12,"bold");
	drawString(toString(nbline), nblineX1+1+(nblineX2-17)/2,nblineY1+31) ;
	HLboxX1=nblineX1+nblineX2+3;
	HLboxX2=30;
	HLboxY1=nblineY1;
	HLboxY2= nblineY2;
	setColor(140,140,180);
	setLineWidth(largeline);
	drawRect (HLboxX1, HLboxY1, HLboxX2, HLboxY2);
	setColor (90,90,130);
	fillRect (HLboxX1+1, HLboxY1+1, HLboxX2-2, HLboxY2-2);
	setColor (255,20,20);
	HLcurs ();
	HRboxX1=HLboxX1+HLboxX2+3;
	HRboxX2=30;
	HRboxY1=HLboxY1;
	HRboxY2= HLboxY2;
	setColor(140,140,180);
	setLineWidth(largeline);
	drawRect (HRboxX1, HLboxY1, HRboxX2, HLboxY2);
	setColor (90,90,130);
	fillRect (HRboxX1+1, HRboxY1+1, HRboxX2-2, HRboxY2-2);
	setColor (255,20,20);
	HRcurs ();
	LLboxX1=HRboxX1+HRboxX2+3;
	LLboxX2=30;
	LLboxY1=HRboxY1;
	LLboxY2= HRboxY2;
	setColor(140,140,180);
	setLineWidth(largeline);
	drawRect (LLboxX1, LLboxY1, LLboxX2, LLboxY2);
	setColor (90,90,130);
	fillRect (LLboxX1+1, LLboxY1+1, LLboxX2-2, LLboxY2-2);
	setColor (255,20,20);
	LLcurs ();
	gridCx1=LLboxX1+LLboxX2+3;
	gridCx2=40;
	gridCy1=LLboxY1;
	gridCy2=LLboxY2;
	setColor (90,90,130);
	fillRect (gridCx1+1, gridCy1+1, gridCx2-2, gridCy2-2);
	setColor(140,140,180);
	setLineWidth(largeline);
	drawRect (gridCx1, gridCy1, gridCx2, gridCy2);
	drawLine(gridCx1, (gridCy1+gridCy2/2), gridCx1+gridCx2-1, (gridCy1+gridCy2/2));
	setFont("SansSerif", 12,"antialiased");
	setColor(220,220,0);
	setJustification("center");
	drawString("Grid:", gridCx1+1+(gridCx2)/2,gridCy1+15);
	drawString("Model", gridCx1+1+(gridCx2)/2,gridCy1+32);
	setColor(140,140,180);
	endx1=gridCx1+gridCx2+3; endx2=(Lpalette-distBord-endx1); endy1=gridCy1; endy2=gridCy2;
	drawRect (endx1,endy1,endx2, endy2);
	setColor (90,90,130);
	fillRect (endx1+1, endy1+1, endx2-2, endy2-2);
	setFont("SansSerif", 12,"bold");
	setColor(255,150,0);
	setJustification("center");
	drawString("END:\nQuit", endx1+(endx2)/2,endy1+15);
	setColor (255,20,20);
	setBatchMode("exit and display");
	setLocation (0,97);
	run("View 100%");
}

function makeSampleLut (kindlut,xl,yl) {
	makeTemps (0);
	newImage("lut", "8-bit Ramp", 27, 10, 1);
	run("Rotate 90 Degrees Left");
	if (kindlut==0) {run("Grays");}
	if (kindlut==1) {run("Grays");run("Invert");}
	if (kindlut==2) {run("Fire");}
	if (kindlut==3) {if (File.exists(getDirectory("imagej")+"luts/royal.lut")) {run("royal");} 
		else {showMessage ("The \"royal\" LUT isn't available in this ImageJ configuration.\nUpdate LUTs to install it. \"spectrum\" LUT will be used.");run("Spectrum");}
	}
	run("Select All");
	run("Copy");
	close();
	selectImage (paletteName);
	makeRectangle(xl,yl,10,27);
	run("Paste");
	run("Select None");
	makeTemps (1);
	selectImage (tempclip); close ();
	selectImage (paletteName);
}

function applyLut () {
	run("Undo");
	setBatchMode(true);
	makeTemps (0);
	makeWork ();	
	run("Grays");
	if (enhenceChoice ==1)	{run("Enhance Contrast", "saturated=["+sat+"] normalize");}
	if (lutChoice==1) {run("Grays");run("Invert");}
	if (lutChoice==2) {run("Fire");}
	if (lutChoice==3) {if (File.exists(getDirectory("imagej")+"luts/royal.lut")) {run("royal");} else {run("Spectrum");}}
	run("Size...", "width=["+xSizeBlot/blotscale+"] height=["+ySizeBlot/blotscale+"]  interpolate");
	run("Select All");run("Copy");
	run("Grays");
	selectImage (paletteName);
	makeRectangle (blotx1, bloty1, xSizeBlot/blotscale, ySizeBlot/blotscale);
	run("Paste");
	run("Select None");
	makeTemps (1);
	selectImage (paletteName);
	setBatchMode(false);
}

function checkLUT (clickx,clicky) {
	test=0;
	if (clicky >= (lutY1+2) && clicky < (lutY1 + lutY2-1)) {
		if (clickx >= (lutX1+2) && clickx < (lutX1+2 +10)) {
			lutChoice=0; lutDisplay="LUT: Grey";test=1;		}
		if (clickx >= (lutX1+14) && clickx < (lutX1+14 +10)) {
			lutChoice=1; lutDisplay="LUT: Invert Grey";test=1;
		}
		if (clickx >= (lutX1+26) && clickx < (lutX1+26 +10)) {
			lutChoice=2; lutDisplay="LUT: Fire";applyLut ();test=1;
		}
		if (clickx >= (lutX1+38) && clickx < (lutX1+38 +10)) {
			lutChoice=3;applyLut ();test=1;
			if (File.exists(getDirectory("imagej")+"luts/royal.lut")) {lutDisplay="LUT: Royal";} else {lutDisplay="LUT: Spectrum";}
		}
	}
	return test;
}

function satHisto (variation) {
	if ((sat+variation) >= 0) {
		sat = sat+variation; 
		enhenceChoice=1;
		if (sat<0.001) sat=0;
	}
	applyLut ();
	test3cursor ();
	measureCircle ();
	KindofArea ="Interface";
	if (enhenceChoice == 1) {histo="Normalized Contrast Sat="+ d2s(sat,2)+"%";} else {histo="Initial Contrast";}
	display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  histo + radius+ kindofColoBox + " "+ SelectedColor);
}

function setColNumber (incrValue) {
	if ((nbcol + incrValue) > 1) {
		nbcol=nbcol+incrValue;
		setBatchMode(true);
		updatGridRef (0,1,0);
		setColor(80,80,120);
		fillRect (nbcolX1+1, (nbcolY1+15), nbcolX2-19, 15);
		setColor(255,200,50);setFont("SansSerif", 12,"bold");setJustification("center");
		drawString(toString(nbcol), nbcolX1+1+(nbcolX2-17)/2,nbcolY1+31) ;
		KindofArea="Interface";
		if (incrValue > 0) display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  ": One added column "+ kindofColoBox + " "+ SelectedColor);
		if (incrValue < 0) display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  ": One suppressed column "+ kindofColoBox + " "+ SelectedColor);
	}
	updateSingleStatusInfo ();
}

function setLineNumber (incrValue) {
	if ((nbline + incrValue) > 1) {
		nbline=nbline+incrValue;
		setBatchMode(true);
		updatGridRef (0,1,0);
		setColor(80,80,120);
		fillRect (nblineX1+1, (nblineY1+15), nblineX2-19, 15);
		setColor(255,200,50);setFont("SansSerif", 12,"bold");setJustification("center");
		drawString(toString(nbline), nblineX1+1+(nblineX2-17)/2,nblineY1+31) ;
		KindofArea="Interface";
		if (incrValue > 0) display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  ": One added line "+ kindofColoBox + " "+ SelectedColor);
		if (incrValue < 0) display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  ": One suppressed line "+ kindofColoBox + " "+ SelectedColor);
	}
	updateSingleStatusInfo ();
}

function display (ecriture) {
	setBatchMode(true);
	setColor(80,80,120);
	fillRect (xDisplay+1, yDisplay+1, larDisplay-2, Hdisplay-2);
	setColor(220,220,0);
	setFont("SansSerif", 12,"antialiased");
	setJustification("center");
	drawString(ecriture, xDisplay+1+(larDisplay-2)/2,yDisplay+18) ;
	setJustification("left");
}

function checkInitColor () {
	// get and store initial foreground, background and selection colors
	if (initselectionColor == "") {
		initselectionColor=getSelectionColors(call("ij.gui.Roi.getColor")); 
		if (selectionColor == "") selectionColor=initselectionColor;
	}
	if (initForGColor == "") {
		initForGColor = getColorSetting("foreground"); 
		if (ForGColor  == "") ForGColor= initForGColor;
	}
	if (initBackGColor == "") {
		initBackGColor =getColorSetting("background");
		if (BackGColor == "") BackGColor = initBackGColor;
	}
}

function setColorComponent (forg,bacg,sel) {
	// set the foreground, background and selection colors 
	run("Colors...", "foreground=["+forg+"] background=["+bacg+"] selection=["+sel+"]");
}

function getColorValues(ColorName) {
	// specific to foreground color 
	if (ColorName == "yellow") {r =255 ; g =255 ; b =0;}
	if (ColorName == "red") {r =255 ; g =0 ; b =0;}
	if (ColorName == "green") {r =0 ; g =255 ; b =0;}
	if (ColorName == "blue") {r =0 ; g =0 ; b =255;}
	if (ColorName == "magenta") {r =255 ; g =0 ; b =255;}
	if (ColorName == "cyan") {r =0 ; g =255 ; b =255;}
	if (ColorName == "orange") {r =255 ; g =200 ; b =0;}
	if (ColorName == "black") {r =0 ; g =0 ; b =0;}
	if (ColorName == "white") {r =255 ; g =255 ; b =255;}
}

function getColorSetting(KindColor) {
	// specific to background and foreground colors
	// get the current red, green and blue values 
	setBatchMode(true);
	newImage("Test Image color", "RGB White", 1, 1, 1);
	testimage=getImageID();
	// derived from  Wayne Rasband code
 	value = getPixel(0,0);
	if (KindColor == "background") {makeRectangle(0,0,1,1);run("Clear");run("Select None");}
	if (KindColor == "foreground") {fillRect(0,0,1,1);}
 	color = getPixel(0,0);
 	setPixel(0,0, value);
	red = (color>>16)&0xff; // extract red byte (bits 23-17)
	green = (color>>8)&0xff; // extract green byte (bits 15-8)
	blue = color&0xff ; // extract blue byte (bits 7-0)
	colorName=getColorName(toString(red),toString(green),toString(blue));
	getColorValues(ForGColor); setColor (r,g,b);
	if (isActive(testimage) ==1) {close ();setBatchMode(false);}
	return colorName;
} 

function getSelectionColors (color) {
	// specific to color selection
	// decodes a color in the form "java.awt.Color[r=255,g=255,b=0]"
	red = substring(color, (indexOf(color, "r=")+2), (indexOf(color, "g=")-1));
	green=  substring(color, (indexOf(color, "g=")+2), (indexOf(color, "b=")-1));
	blue=  substring(color, (indexOf(color, "b=")+2), indexOf(color, "]"));
	colorName=getColorName(red,green,blue);
	return colorName;
}

function getColorName(r,g,b) {
	ColorName="";
	if (r=="255" && g=="255" && b=="0") ColorName ="yellow";
	if (r=="255" && g=="0" && b=="0") ColorName ="red";
	if (r=="0" && g=="255" && b=="0") ColorName ="green";
	if (r=="0" && g=="0" && b=="255") ColorName ="blue";
	if (r=="255" && g=="0" && b=="255") ColorName ="magenta";
	if (r=="0" && g=="255" && b=="255") ColorName ="cyan";
	if (r=="255" && g=="200" && b=="0") ColorName ="orange";
	if (r=="0" && g=="0" && b=="0") ColorName ="black";
	if (r=="255" && g=="255" && b=="255") ColorName ="white";
	return ColorName;
}

function HautGauche (clickx,clicky,ansvers) {
	if (ansvers == 0) {
		if (clickx > HLboxX1 && clickx < (HLboxX1+HLboxX2) && clicky > HLboxY1 && clicky < (HLboxY1+HLboxY2)) {
			if (DotStatus == "Single") resetblot (1,1,1,0);
			DotStatus = "Grid";
			setBatchMode(true);
			updateSingleStatusInfo ();
			updatGridRef (0,1,0);
			ansvers1=0;ansvers2=0;
			statutHL=1;statutHR=0;statutLL=0;
			ereaseCursor ();
			makeCursor((HLX+blotx1),(HLY+bloty1),w,h,1);
			testCursButtonColor (0,0,0,1,"HL");
			testCursButtonColor (1,0,0,0,"HL");
			if (HLX !=0 && HLY !=0) {ansvers1=1;} else {ansvers1 = 0;}
			KindofArea ="Interface";
			display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  ": High left dot setting "+ kindofColoBox + " "+ SelectedColor);
		}
	}
	if (ansvers == 1) {
		if (statutHL == 1) {
			ereaseCursor ();
			statutHL = 0;
			tempHLX=HLX;tempHLY=HLY;
			HLX= xx-blotx1; HLY=yy-bloty1;
			testCursButtonColor (0,0,1,0,"HL");
			KindofArea ="Interface";
			updatGridRef (0,1,0);
			display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  ": Grid measure mode "+ kindofColoBox + " "+ SelectedColor);
			if (gridTest (1) == 0) {HLX=tempHLX;HLY=tempHLY;updatGridRef (0,1,0);HautGauche ((HLboxX1+2),(HLboxY1+2),0);}
		}
	}
}

function HautDroite (clickx,clicky,ansvers) {
	if (ansvers == 0) {
		if (clickx > HRboxX1 && clickx < (HRboxX1+HRboxX2) && clicky > HRboxY1 && clicky < (HRboxY1+HRboxY2)) {
			if (DotStatus == "Single") resetblot (1,1,1,0);
			DotStatus = "Grid";
			setBatchMode(true);
			updateSingleStatusInfo ();
			updatGridRef (0,1,0);
			ansvers1=0;ansvers2=0;
			statutHR=1;statutHL=0;statutLL=0;
			ereaseCursor ();
			makeCursor((HRX+blotx1),(HRY+bloty1),w,h,1);
			testCursButtonColor (0,0,0,1,"HR");
			testCursButtonColor (1,0,0,0,"HR");
			if (HRX !=0 && HRY !=0) {ansvers1=1;} else {ansvers1 = 0;}
			KindofArea="Interface";
			display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  ": High right dot setting "+ kindofColoBox + " "+ SelectedColor);
		}
	}
	if (ansvers == 1) {
		if (statutHR == 1) {
			ereaseCursor ();
			statutHR = 0;
			tempHRX=HRX; tempHRY=HRY;
			HRX= xx-blotx1; HRY=yy-bloty1;
			testCursButtonColor (0,0,1,0,"HR");
			KindofArea ="Interface";
			updatGridRef (0,1,0);
			display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  ": Grid measure mode "+ kindofColoBox + " "+ SelectedColor);
			if (gridTest (1) == 0) {HRX=tempHRX;HRY=tempHRY;updatGridRef (0,1,0);HautDroite ((HRboxX1+2),(HRboxY1+2),0);}
		}
	}
}

function BasGauche (clickx,clicky,ansvers) {
	if (ansvers == 0) {
		if (clickx > LLboxX1 && clickx < (LLboxX1+LLboxX2) && clicky > LLboxY1 && clicky < (LLboxY1+LLboxY2)) {
			if (DotStatus == "Single") resetblot (1,1,1,0);
			DotStatus = "Grid";
			setBatchMode(true);
			updatGridRef (0,1,0);
			updateSingleStatusInfo ();
			ansvers1=0;ansvers2=0;
			statutLL=1;statutHR=0;statutHL=0;
			ereaseCursor ();
			makeCursor((LLX+blotx1),(LLY+bloty1),w,h,1);
			testCursButtonColor (0,0,0,1,"LL");
			testCursButtonColor (1,0,0,0,"LL");
			if (LLX !=0 && LLY !=0) {ansvers1=1;} else {ansvers1 = 0;}
			KindofArea="Interface";
			display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  ": Low left dot setting "+ kindofColoBox + " "+ SelectedColor);
		}
	}
	if (ansvers == 1) {
		if (statutLL == 1) {
			ereaseCursor ();
			statutLL=0;
			tempLLX=LLX; tempLLY=LLY;
			LLX= xx-blotx1; LLY=yy-bloty1;
			testCursButtonColor (0,0,1,0,"LL");
			KindofArea ="Interface";
			updatGridRef (0,1,0);
			display ("Blot Cursor coordinates: x="+ floor(xx-blotx1) + " \("+ floor(xx-blotx1)*blotscale +"\) " +", y="+floor(yy-bloty1) + " \("+ floor(yy-bloty1)*blotscale +"\)" +"\n" +"Integrated Area=" + theVolume+" "+ "\("+KindofArea + "\) " +  ": Grid measure mode "+ kindofColoBox + " "+ SelectedColor);
			if (gridTest (1) == 0) {LLX=tempLLX;LLY=tempLLY;updatGridRef (0,1,0);BasGauche ((LLboxX1+2),(LLboxY1+2),0);}
		}	
	}
}

function updatGridRef (showM,showR,showG) {
	showmes=showM;showrep=showR;showgrid=showG;
	gridAnalyse ();
	updateThePalette ();
	showmes=0;showrep=0;showgrid=0;
}

function updateRefCircle (testxcercle,testycercle) {
	possible=1;
	if (testxcercle > 0 && testycercle >0) {
		if ((testxcercle-selectionRayon) < 0) {possible=0;}
		if ((testycercle-selectionRayon) < 0) {possible=0;}
		if ((testxcercle+selectionRayon) >=  (xSizeBlot/blotscale)) {possible=0;}
		if ((testycercle+selectionRayon) >=  (ySizeBlot/blotscale)) {possible=0;}
	}
	return possible;
}

function testCursButtonColor (oneclick,move,unclick,update,kind) {
	if (statutHR == 1 && kind !="none") {setColor (255,255,20);HRcurs ();}
	if (statutHR == 0 && ansvers1==0 &&  ansvers2==1 && kind == "HR") {setColor (20,255,20);HRcurs ();}
	if (statutHL == 1 && kind !="none") {setColor (255,255,20);HLcurs ();}
	if (statutHL == 0 && ansvers1==0 &&  ansvers2==1 && kind == "HL") {setColor (20,255,20);HLcurs ();}
	if (statutLL == 1 && kind !="none") {setColor (255,255,20);LLcurs ();}
	if (statutLL == 0 && ansvers1==0 &&  ansvers2==1 && kind == "LL") {setColor (20,255,20); LLcurs ();}
	if (update ==1 && kind !="none") {
		if (kind =="LL") {
			if (HRX !=0 && HRY !=0) {setColor (20,255,20);HRcurs ();} else {setColor (255,20,20);HRcurs ();}
			if (HLX !=0 && HLX !=0) {setColor (20,255,20);HLcurs ();} else {setColor (255,20,20);HLcurs ();}
		}
		if (kind =="HL") {
			if (HRX !=0 && HRY !=0) {setColor (20,255,20);HRcurs ();} else {setColor (255,20,20);HRcurs ();}
			if (LLX !=0 && LLX !=0) {setColor (20,255,20);LLcurs ();} else {setColor (255,20,20);LLcurs ();}
		}	
		if (kind =="HR") {
			if (HLX !=0 && HLX !=0) {setColor (20,255,20);HLcurs ();} else {setColor (255,20,20);HLcurs ();}
			if (LLX !=0 && LLX !=0) {setColor (20,255,20);LLcurs ();} else {setColor (255,20,20);LLcurs ();}
		}
	}
	if (kind =="none") {
		if (HRX !=0 && HRY !=0) {setColor (20,255,20);HRcurs ();} else {setColor (255,20,20);HRcurs ();}
		if (HLX !=0 && HLX !=0) {setColor (20,255,20);HLcurs ();} else {setColor (255,20,20);HLcurs ();}
		if (LLX !=0 && LLX !=0) {setColor (20,255,20);LLcurs ();} else {setColor (255,20,20);LLcurs ();} 
	}
}

function LLcurs () {
	drawLine (LLboxX1+1, LLboxY1+LLboxY2-8, LLboxX1+LLboxX2-2, LLboxY1+LLboxY2-8);
	drawLine (LLboxX1+6, LLboxY1+1, LLboxX1+6, LLboxY1+LLboxY2-2);
}

function HLcurs () {
	drawLine (HLboxX1+1, HLboxY1+5, HLboxX1+HLboxX2-2, HLboxY1+5);
	drawLine (HLboxX1+6, HLboxY1+1, HLboxX1+6, HLboxY1+HLboxY2-2);
}

function HRcurs () {
	drawLine (HRboxX1+1, HRboxY1+5, HRboxX1+HRboxX2-2, HRboxY1+5);
	drawLine (HRboxX1+HRboxX2-6, HRboxY1+1, HRboxX1+HRboxX2-6, HRboxY1+HRboxY2-2);
}

function test3cursor () {
	//print ("DotStatus= " + DotStatus);
	// check for the single measure or grid analysis graphic update
	if (DotStatus == "Grid") {
		updatGridRef (0,1,0);
	}
	if (DotStatus == "Single") {		
		statutHL =0; statutHR =0; statutLL =0;  
		updatGridRef (1,0,0);
	}
}

function gridTest (message) {
	testgrid=1;
	if (HLX >= HRX && HLX != 0 && HRX != 0 && testgrid != 0) {if (message ==1) {showMessage ("High Left dot must be at the left of the High Right dot");} testgrid=0;}
	if (HLY >= LLY && HLY != 0 && LLY != 0 && testgrid != 0) {if (message ==1) {showMessage ("High Left dot must be above the Low Left dot");} testgrid=0;}
	if (HRY >= LLY && HRY != 0 && LLY != 0 && testgrid != 0) {if (message ==1) {showMessage ("High Right dot must be above the Low Left dot");} testgrid=0;}
	if (LLX >= HRX && LLX != 0 && HRX != 0 && testgrid != 0) {if (message ==1) {showMessage ("Low Left dot must be at the left of the High Right dot");} testgrid=0;}
	return testgrid;
}

function gridAnalyse () {
	Ax=0;XhorizontalOrd=0;Ay=0;YhorizontalOrd=0;spaceX=0;spaceY=0;deltaspaceY=0;deltaspaceY=0;
	testgrid = 1;
	if (gridTest (0) != 0) {
		alphaX =  atan2 ((HRY - HLY),(HRX - HLX));
		spaceX =  ((HRX - HLX)/cos(alphaX));
		deltaspaceX = floor (spaceX / (nbcol-1));
		deltaspaceX2 = deltaspaceX -2*selectionRayon;
		alphaY =  atan2 ((LLY - HLY),(LLX - HLX));
		spaceY =  ((LLX - HLX)/cos(alphaY));
		if (floor(alphaY*(180/PI)) ==90) {spaceY=LLY - HLY;}
		deltaspaceY = floor (spaceY / (nbline-1));
		deltaspaceY2 = deltaspaceY -2*selectionRayon;
		delX=sin (PI/2 -alphaY) * spaceY;
		LRX=floor (HRX+delX);
		delY=sin (alphaX) * spaceX;
		LRY=floor (LLY+delY);
		if (deltaspaceX2 <1) {
			if (HRX>0 && HLX>0 ) {
				showMessage("Setting mistake","Horizontal number of dots  \(\"nCol.\"\) incompatible with this circle radius \n\(\"High Right\" grid cursor have been reinitialized\)");
				HRX=0; HRY=0;
				//HLX=0;  HLY=0;
				LRX=0; LRY=0;
				testgrid=0;
			}
		}
		if (deltaspaceY2 <1) {
			if (LLX>0 && HLX>0 ) {
				showMessage("Setting mistake","Vertical number of dots \(\"nLin.\"\) incompatible with this circle radius \n\(\"Low Left\" grid cursor have been reinitialized\)");
				//HLX=0; HLY=0;
				LLX=0;  LLY=0;
				LRX=0; LRY=0;
				testgrid=0;
			}
		}
		if (testgrid==1) {
			Ax=tan (alphaX);
			XhorizontalOrd=(HLY+bloty1)-((HLX+blotx1) * tan (alphaX));
			Ay=tan (alphaY);
			YhorizontalOrd=(HLY+bloty1)-((HLX+blotx1) * tan (alphaY));
		}
	}
}

function doBlotAnalyse() {
	// prepare the initial image to the analysis
	CloseMastRes(); // clean from table and
	var windowTabName="Grid Measurements Table",nameOfGridTab="["+windowTabName+"]"; // avoid mistake when prt array analyzer used before

	DotStatus = "Single";
	enhenceChoice=0;sat=0;
	checkInitColor ();
	if (isOpen(measurementTab)) { 
			selectWindow(measurementTab);
			print(measurementTabEXL, "\\Clear");
			xmes=0;ymes=0;theVolume="";resultListSize=0;lastmesnumber=0;
	} 
	if (isOpen(windowTabName)) { 
			selectWindow(windowTabName);
			print(nameOfGridTab, "\\Clear");
	}
	Ax=0;XhorizontalOrd=0;Ay=0;YhorizontalOrd=0;spaceX=0;spaceY=0;deltaspaceY=0;deltaspaceY=0;
	xmes=0;ymes=0;theVolume="";resultListSize=0;lastmesnumber=0;
	blotscale=0;
	blotName=getTitle; blotinitName=blotName;
	folderpath =getDirectory("image");
	HRX=0;HLX=0;LLX=0;HRY=0;HLY=0;LLY=0;
	LRX=0;LRY=0;
	if (blotName == winName2 || blotName == paletteName) {
		if (blotName == winName2) exit ("Analyse doesn't work onto \""+ winName2 + "\" windows.");
		if (blotName == paletteName) exit ("Analyse doesn't work onto \""+ paletteName + "\" windows.");
	}
	if (bitDepth() !=8) {showMessageWithCancel ("Conversion into 8 bit will be performed."); run("8-bit");}
	xSizeBlot=getWidth(); ySizeBlot=getHeight();
	subTitleofImage= getInfo("image.subtitle");
	if (lastIndexOf (blotName, "-DA") > 0) {exit ("Start from the original image (without the \"-DA\" suffix).");}
	if (lastIndexOf(blotName, ".") > 0) {
		blotinitName=substring(blotName, 0, lastIndexOf(blotName, "."));
		blotName= substring(blotName, 0, lastIndexOf(blotName, ".")); 
	}
	blotName= blotName + "-DA";
	run("Duplicate...", "title=["+blotName+"]");
	if (indexOf(subTitleofImage, "(inverting LUT)") > 0) {;run("Grays");run("Invert");}
	Dialog.create("Pre-treatment Choices \(2D Rolling Ball\)");
	Dialog.addChoice("Subtract Background ?", newArray ("None","Linear","Paraboloid"), rmBack);
	Dialog.addNumber("Radius for 2D Rolling Ball subtract background ?", defaultradius, 0, 3, "");
	Dialog.show();
	rmBack=Dialog.getChoice();
	defaultradius=Dialog.getNumber(); 
	if (rmBack != "None") {
		if (rmBack =="Linear") {run("Subtract Background...", "rolling=["+defaultradius+"] light");}
		if (rmBack =="Paraboloid") {run("Subtract Background...", "rolling=["+defaultradius+"] light sliding");}
	}
	if (xSizeBlot+Leftmarge+Rightmarge > screenWidth ||  ySizeBlot > (screenHeight - Hinter-Topmarge-Botommarge-70-100)) {
		test=(screenHeight - Hinter-Topmarge-Botommarge-70-100);
		a=ySizeBlot;
		while (a > test) {
			blotscale=(blotscale+2);
			a=floor(a/blotscale);
		}
		showMessageWithCancel ("The size of the image \""+ blotName + "\" is too high for the screen resolution.\nIt will be rescaled for visualisation \(divided by a factor "+blotscale+"\).");
	}
	if (blotscale == 0) blotscale=1;
	test=xSizeBlot;
	while ( (test/blotscale/2 - floor (test/blotscale/2)) !=0 ) {test=test-1;} // x impair showMessage ("x impair:" + test);
	xSizeBlot=test;
	test=ySizeBlot;
	while ((test/blotscale/2 - floor (test/blotscale/2)) !=0 ) {test=test-1;}  // y impair showMessage ("y impair:" + test);
	ySizeBlot=test;
	drawPalette ();
	palette=1;dyn=1;reponse=0;cancel=0;cursok=0;
	applyLut ();
	setTool(10);
}

function SaveDocRes(path) {
	if (path != "") {
		if (dyn ==1) dyn=0;
		if (isOpen(windowTabName) || isOpen(measurementTab) || isOpen(endPalette) || isOpen(gridModelName) ) {
			a=0;
			if (path == "--") path=getDirectory("Choose Master Destination Directory ");
			thepath = path+blotinitName+"_"+resultFolderName + File.separator;
			while ( File.exists(thepath) ) {
				if (a != 0) thepath = path+blotinitName+"_"+resultFolderName+ "-"+ toString (a)+ File.separator; 
				a ++;
			}
			File.makeDirectory(thepath);
			if (!File.exists(thepath)) exit("Unable to create directory, something wrong in the ImageJ folder");
			saveTab (thepath,windowTabName,blotinitName);
			saveTab (thepath,measurementTab,blotinitName);
			if (isOpen(blotName)) {
				setBatchMode(true);
				selectImage(blotName);
				nom=blotName+".tif";
				run("Duplicate...", "title=["+nom+"]");
				save(""+thepath+""+ nom  +"");close();
			}
			if (isOpen(gridModelName))  {
				setBatchMode(true);
				selectImage(gridModelName);
				nomSavedModel=blotinitName+"-"+gridModelName+".tif";
				run("Duplicate...", "title=["+nomSavedModel+"]");
				save(""+thepath+""+ nomSavedModel  +"");close();
			}
			if (isOpen(endPalette))  {
				setBatchMode(true);
				selectImage(endPalette);
				nomSavedPalette=endPalette+".tif";
				run("Duplicate...", "title=["+nomSavedPalette+"]");
				save(""+thepath+""+ nomSavedPalette  +"");close();
			}
		} else {showMessage ("No document found");}
	if (isOpen(paletteName)) {selectImage (paletteName);dyn=1;}
	}
}

function CloseDocRes () {
	if (! is("Batch Mode")) setBatchMode(true);
	if (isOpen(endPalette))  {selectImage(endPalette);close ();}
	if (isOpen(blotName)) {selectImage(blotName);close ();}
	if (isOpen(gridModelName)) {selectImage(gridModelName);close ();}
	if (isOpen(measurementTab)) {selectWindow(measurementTab);print(measurementTabEXL, "\\Close");}
	if (isOpen(windowTabName)) {selectWindow(windowTabName);print(nameOfGridTab, "\\Close");}
}

// ---- function for multi pattern analysis - proteine array analysis -----

function compileArrayTabs () {
	nColArrayMax=0; nLineArrayMax=0;firstSizex=0;firstSizey=0;
	selectedDir = getDirectory("Choose a Directory ");
	if (! is("Batch Mode")) setBatchMode(true);
	// get the parent folder's name
	masterinitName=File.getName(selectedDir);
	countArrayExcell = 0; // number of .xls file to compile
	countArrayExcelFiles (selectedDir);
	incremcountExcell = 0;	fileProcessed=""; 
	if (countArrayExcell > 0) {
		compiledExcel="";firstCompilTabLine="";
		processArrayExcellFiles(selectedDir);		
		// test ident size
		if (firstSizey == -1) showMessageWithCancel ("The tables of analysis contained in this folder have not the same size (number of lines is different). \nIt is absolutly not recommended !");
		if (firstSizex == -1) showMessageWithCancel ("The tables of analysis contained in this folder have not the same size (number of columns is different). \nIt is absolutly not recommended !");
		firstCompilTabLine="Array Name"+"\t"+firstCompilTabLine+"\t"+ "Origin Tab Path";		
		cases=split(firstCompilTabLine, ",\t");nbcurentcases= cases.length;
		// check if already open and with the same size
		if (isOpen(GlobalExcelCompileWindow)) {
			selectWindow(GlobalExcelCompileWindow);
			MasterNormResults = getInfo();
			lines=split(MasterNormResults, "\n");
			cases=split(lines[0], ",\t");
			nbcasesN= cases.length;
			if (nbcasesN == nbcurentcases) {
				print(GlobalExcelCompile, "\\Clear");
			} else {
				print(GlobalExcelCompile, "\\Close");
			}
		}
		// built the table
		if (!isOpen(GlobalExcelCompileWindow)) {
			run("New... ", "name="+GlobalExcelCompile+" type=Table");
			selectWindow (GlobalExcelCompileWindow);
			setLocation(0,97);
		}		
		print(GlobalExcelCompile, "\\Headings:"+firstCompilTabLine+"");
		print(GlobalExcelCompile,compiledExcel);
		print(GlobalExcelCompile,"\n"); // added the 16-07-2014 to fix a bug intruced in ImageJ in 1.4.8 version
	} else {exit ("No Excel results file in this folder");}
}

// get number of grid measurement tables
function countArrayExcelFiles(selectedDir) {	
	list = getFileList(selectedDir);
	for (i=0; i<list.length; i++) {
		if (endsWith(list[i], "/") ) {
			countArrayExcelFiles(""+selectedDir+list[i]);
		} else {
			path = selectedDir+list[i];
			if (endsWith(path, keyTab)) {
				countArrayExcell++;
			}
		}		
	}
}

// enumerate excell files for reading
function processArrayExcellFiles(selectedDir) {
	list = getFileList(selectedDir); longestHeadline=0;
	for (i=0; i<list.length; i++) {
		if (endsWith(list[i], "/"))
			processArrayExcellFiles(""+selectedDir+list[i]);
		else {
			showProgress(incremcountExcell++, countArrayExcell);
			path = selectedDir+list[i];
			if (endsWith(path, keyTab)) {
				if (longestHeadline > nColArrayMax) {firstCompilTabLine = "";}
				pathOfOrigin=path;
				processArrayExcellFile(path);
				longestHeadline=nColArrayMax;
				fileProcessed=fileProcessed + path+ "\n";				
			}
		}
	}
}

// read excell file returning first line as column names, and lines 
function processArrayExcellFile(path) {
	narrayCol=0; narrayLin=0;
	lineseparator = "\n";
    lines=split(File.openAsString(path), lineseparator);
 	headings = lines[0];
 	narrayLin = lines.length;
 	if (narrayLin > nLineArrayMax) nLineArrayMax = narrayLin;
 	if (firstSizey ==0) firstSizey=nLineArrayMax;
 	if (firstSizey >0 &&  firstSizey != narrayLin) {firstSizey = -1;}
	titlesOfColumns = split(headings, ",\t");
	narrayCol=titlesOfColumns.length;
	if (firstSizex ==0) firstSizex=narrayCol;
 	if (firstSizex >0  &&  firstSizex != narrayCol) {firstSizex = -1;}
	if (firstCompilTabLine == "") {	
	// when a higer column number is found
		if (narrayCol > nColArrayMax) nColArrayMax = narrayCol;
		for (i=0; i < (titlesOfColumns.length ); i++) {
			firstCompilTabLine=firstCompilTabLine+ titlesOfColumns [i];
			if ( i < (titlesOfColumns.length )-1) {firstCompilTabLine=firstCompilTabLine+ "\t";}
		}
	}
	nameofA=File.getName(pathOfOrigin);
	index2=indexOf(nameofA, keyTab);
	nameofA=substring(nameofA, 0,index2);	
	for (i=1; i< (lines.length); i++) {
		newLineTab=nameofA+"\t"+lines[i]+"\t"+ pathOfOrigin;
		compiledExcel = compiledExcel+ newLineTab +"\n";
	}
	compiledExcel=compiledExcel+arraySeparator+"\n";
}

// close master documents
function CloseMastRes () {
	if (! is("Batch Mode")) setBatchMode(true);
	if (isOpen(GlobalExcelCompileWindow)) {selectWindow(GlobalExcelCompileWindow);print(GlobalExcelCompile, "\\Close"); }
	if (isOpen(GlobalExcelCompileWindowNorm)) {selectWindow(GlobalExcelCompileWindowNorm);print(GlobalExcelCompileNorm, "\\Close"); }
	if (isOpen(masterImageinit))  {selectWindow(masterImageinit); close ();}
	if (isOpen(masterImageNorm))  {selectWindow(masterImageNorm); close ();}
}

function SaveMastRes(path) {
	if (! is("Batch Mode")) setBatchMode(true);
	if (path != "") {
		if (isOpen(GlobalExcelCompileWindow) || isOpen(GlobalExcelCompileWindowNorm) || isOpen(masterImageinit) || isOpen(masterImageNorm)) {
			a=0;
			if (path == "--") path=getDirectory("Choose Master Destination Directory ");
			thepath = path+masterinitName+"_"+masterFolderName + File.separator;
			while ( File.exists(thepath) ) {
				if (a != 0) thepath = path+masterinitName+"_"+masterFolderName+ "-"+ toString (a)+ File.separator; 
				a ++;
			}
			File.makeDirectory(thepath);
			if (!File.exists(thepath)) exit("Unable to create directory, something wrong in the ImageJ folder");
			if (isOpen(GlobalExcelCompileWindow)) {saveTab (thepath,GlobalExcelCompileWindow,masterinitName);}
			if (isOpen(GlobalExcelCompileWindowNorm)) {saveTab (thepath,GlobalExcelCompileWindowNorm,masterinitName);}			
			if (isOpen(masterImageinit))  {
				selectImage(masterImageinit);
				nomSavedPalette=masterinitName + "-" + masterImageinit +".tif";
				run("Duplicate...", "title=["+nomSavedPalette+"]");
				save(""+thepath+""+ nomSavedPalette  +"");close();
			}
			if (isOpen(masterImageNorm))  {
				selectImage(masterImageNorm);
				nomSavedPalette=masterinitName + "-" + masterImageNorm +".tif";
				run("Duplicate...", "title=["+nomSavedPalette+"]");
				save(""+thepath+""+ nomSavedPalette  +"");close();
			}
		} else {showMessage ("No Master Document Found");}
	}
}

// saving a tab as excel type file
function saveTab (path,WinTab,nameinit) {
	if (isOpen(WinTab)) {
		if (path == "") {
			selectWindow (WinTab);
			run("Input/Output...", "jpeg=75 gif=-1 file=.xls");
			saveAs("Text");
		}
		if (path != "") {
			a=0; 
			selectWindow(WinTab);
			thepath = path+nameinit+"-"+WinTab+".xls";
			while ( File.exists(thepath) ) {
				if (a != 0) thepath = path+nameinit+"-"+WinTab+ "-" + toString (a) +".xls";	a ++;
			}	
			saveAs("Text", thepath);
		}
	}
}

// for menu "masterize init" image
function masterInit () {
	masterizeImages ("init");setBatchMode("exit and display" ); 
	if (isOpen (masterImageinit)) {
		selectImage (masterImageinit);
		setLocation(30,140);
	}
}
// for menu "masterize norm" 
function masterNormalized () {
	normalize (methodChoice) ;
	masterizeImages ("norm");setBatchMode("exit and display" );
	if (isOpen (masterImageinit)) {
		selectImage (masterImageNorm);
		setLocation(((screenWidth/2)+30),140);
	}
}

function masterizeImages (kind) {
	if (! is("Batch Mode")) setBatchMode(true);
	if (kind == "init") tableNameToRead = GlobalExcelCompileWindow;
	if (kind == "norm") tableNameToRead = GlobalExcelCompileWindowNorm;
	lutChoice=2;
	compiledArray=GetNbArray (tableNameToRead);

	nbArrayFound=compiledArray.length/6;
	listIdForMasterWin=newArray (nbArrayFound);
	minMod=0; maxMod=0; 


	// look for the maximum spot value 
	for (a=1; a<(nbArrayFound+1); a++) {
	 	block = compiledArray [((a-1) *6)+5];	
	 	lines=split(block, "\n");
	 	for (i=1; i<lines.length; i++) {
			cases=split(lines[i], ",\t");
			for (j=2; j<(cases.length-1); j++) {
				newCase= (parseFloat(cases[j]));
				maxMod=maxOf(maxMod,newCase);
			}
		}
	}
	
//	showMessage ("la");setBatchMode("exit and display"); exit;
	// separate blocks for sequential single array modelling
	for (i=1; i<(nbArrayFound+1); i++) {
	 	for (j=0; j<6; j++) {
	 		ArrayModelData [j]= compiledArray [((i-1) *6)+j];	 		
	 	}
		if (kind == "init") idSingleModel=makeSingleModel (ArrayModelData,-1,-1,i);
		if (kind == "norm") idSingleModel=makeSingleModel (ArrayModelData,-1,maxMod,i);
		listIdForMasterWin[i-1]=idSingleModel;
	}
	if (kind == "init") builtMatsterWindow (listIdForMasterWin, masterImageinit);
	if (kind == "norm") builtMatsterWindow (listIdForMasterWin, masterImageNorm);
}

function builtMatsterWindow (listIdForMasterWin,masterImageName) {
	maxX=0; maxY=0;
	for (i=0; i<(nbArrayFound); i++) { 
		selectImage (listIdForMasterWin[i]);
		imageName=getTitle();
		curentModelx=getWidth();
		curentModely=getHeight();
		maxX=maxOf(maxX,curentModelx);
		maxY=maxOf(maxY,curentModely);
	}
	nbArrayFound=listIdForMasterWin.length;
	if (nrawChoice ==0) {nraw = round(sqrt(nbArrayFound));} else {nraw=nrawChoice;}
	if (nbArrayFound < nraw) nraw=nbArrayFound;
	xw=maxX; yw=maxY;	
	// if more than one array in the master
	nlinew= round(nbArrayFound/nraw);
	if ((nlinew  * nraw) < nbArrayFound) nlinew ++;
	xw=maxX*nraw + (nraw + 1)*margewx;
	// built the empty master image
	yw= nlinew * maxY + (nlinew+1)*margewy;	
	if (isOpen(masterImageName)) {
		selectImage (masterImageName);
		xS=getWidth(); yS=getHeight();
		if (xS != xw || yS != yw) {
			selectImage (masterImageName);
			close ();
		}
	}  
	if (! isOpen(masterImageName)) {newImage(masterImageName, "RGB", xw, yw, 1);}
	setBackgroundColor(0, 37, 93);
	run("Select All");run("Clear", "slice");run("Select None");
	// print the array in there cases
	xdraw=0; ydraw=0; countCases=0; xcase=0; ycase=0;
	for (i=0; i<(nbArrayFound); i++) { 
		if (xcase==nraw) {xcase=0 ; ycase++;}
		xdraw=(xcase*maxX + xcase*margewx) + margewx;
		ydraw=(ycase*maxY + ycase*margewy) + margewy;
		selectImage (listIdForMasterWin[i]);
		nomDim=getTitle();
		// if this array has lower size than max array size
		curentModelx=getWidth();
		curentModely=getHeight();
		run("Select All");
		run("Copy");
		close ();
		if (curentModelx < maxX || curentModely <maxX) {
			newImage("temp", "RGB", maxX, maxY, 1);
			run("Select All");run("Clear", "slice");run("Select None");
			makeRectangle(0, 0, curentModelx, curentModely);
			run("Paste");run("Select None");
			run("Select All");run("Copy"); close();
		}
		selectImage (masterImageName);
		makeRectangle(xdraw, ydraw, maxX, maxY);
		run("Paste");
		run("Select None");
		setForegroundColor(0, 255, 0);
		setFont("SansSerif", 17,"antialiased");
		setJustification("center");
		drawString(nomDim, (xdraw+(maxX/2)), ydraw+maxY+margewy);
		xcase ++;			
	}
}

function GetNbArray (tableNameToRead) {
	if ( isOpen(tableNameToRead )) {
		selectWindow(tableNameToRead);
   		MasterGridResults = getInfo();	
   		// to get nb column and lines
   		Masterlines = split(MasterGridResults, "\n");
   		firstMasterLine=Masterlines[0];
   		colums =split(firstMasterLine, "\t");
   		nbMasterCol= (colums.length-3 );   		
   		nbTotMasterlin =(Masterlines.length-1);
   		nbArrays=0;
   		// get the array number
    	for (a=0; a<Masterlines.length; a++) {
   			ligne=Masterlines[a];
   			colonnes=split(ligne, ",\t");
   			if (testColumnEmpty(colonnes) ==0) nbArrays ++;
    	}
		var masterArrayArray=newArray (6*nbArrays);
		compteArray=1; recompLines="";
    	for (a=1; a<Masterlines.length; a++) {
    		ligne=Masterlines[a]; 
    		colonnes=split(ligne, ",\t");
    		nbcol=(colonnes.length-3 );   
    		//print (nbArrays);
    		masterArrayArray [((compteArray-1)*6)]=compteArray;
    		// series of block from 6 cases, each block corresponding to an array:
    		// case 1: number of array // case 2: name of array // case 3: number of columns // case 4: number of lines // case 5: paht of original file for the array data // case 6: contents of the array
    		if (testColumnEmpty(colonnes) ==1) masterArrayArray [((compteArray-1)*6)+1]=colonnes[0];     		
    		if (nbcol >= 0) masterArrayArray [((compteArray-1)*6)+2]=nbcol;
    		if (testColumnEmpty(colonnes) ==1) {testLine=1;} else {testLine=0;}
    		masterArrayArray [((compteArray-1)*6)+3]=masterArrayArray [((compteArray-1)*6)+3]+testLine;
    		if (testColumnEmpty(colonnes) ==1) masterArrayArray [((compteArray-1)*6)+4]=colonnes[(colonnes.length-1)];
     		if (testColumnEmpty(colonnes) ==1) recompLines=recompLines+ligne+"\n";
    		if (testColumnEmpty(colonnes) ==1) masterArrayArray [((compteArray-1)*6)+5]=firstMasterLine +"\n"+ recompLines;
 			if (testColumnEmpty(colonnes) ==0) {compteArray ++; recompLines="";}
 		}
  	} else {
  		exit ("No master table found");
  	}
	return masterArrayArray;
}

// test colonne empty to avoid errors due to change in ImageJ v1.47j (added june 2013)
function testColumnEmpty(colonne) {
	test=1;
   if (lengthOf(colonnes)==0)
       test=0;
    else if (colonnes[0]=="")
       test=0;
	return test
}

//draw control and norm landmark on the normalized master
function repairControl (maxMod,xC,yC,xxC,yyC,numArray) {
	testRef=0; typeRef=0; testarray=0; curentArray=0; 
	xxC=xxC+1; yyC=yyC+1;xC=xC-1;yC=yC-1;setLineWidth(1);
	if (maxMod != -1) {
		for (i=0; i< (controlCases.length/4); i++) {		
			checkRef= controlCases[(i*4)+1] + controlCases[(i*4)+2];
			checkCurent = colval + lineval;
			if (checkRef == checkCurent) {
				curentArray=controlCases[(i*4)];
				testRef = 1; typeRef=1;
			}
		}
		for (i=0; i< (internNormCases.length/4); i++) {					
			checkRef= internNormCases[(i*4)+1] + internNormCases[(i*4)+2];
			checkCurent = colval + lineval;
			if (checkRef == checkCurent) {
				curentArray=internNormCases[(i*4)];
				testRef = 1; typeRef=2;
			}
		}
	}				
	if (cercleOption == 1 && testRef ==0) {
		setColor(64, 64, 64);
		drawOval(xC, yC, xxC, yyC);
	}
	// draw norm landmarks for method 2
	if (testRef == 1 && maxMod != -1 && showRefLocOption ==1 && methodChoice ==2) {
		if (typeRef == 2) {setColor(0, 255, 0); drawOval(xC, yC, xxC, yyC); }// draw control
		if (typeRef == 1) {setColor(0, 255, 255); drawOval(xC, yC, xxC, yyC);}// draw positive reference
	}	
	if (testRef == 1 && maxMod != -1 && showRefLocOption ==0 && methodChoice ==2 && cercleOption == 1) {
		setColor(64, 64, 64);
		drawOval(xC, yC, xxC, yyC);
	}
	// draw norm landmarks for method 1	
	if (numArray == curentArray) testarray = 1;
	if (testRef == 1 && maxMod != -1 && showRefLocOption ==1 && methodChoice ==1 && testarray == 1) {
		if (typeRef == 2) {setColor(0, 255, 0); drawOval(xC, yC, xxC, yyC);}// draw control
		if (typeRef == 1) {setColor(0, 255, 255); drawOval(xC, yC, xxC, yyC);}// draw positive reference
	} else {	
		if (cercleOption == 1 && (methodChoice ==1 || methodChoice ==0)) {
			setColor(64, 64, 64);
			drawOval(xC, yC, xxC, yyC);
		}	
	}
}

// Draw a single modelled array from its values contains in the array "arrayForSingleModel"
function makeSingleModel (arrayForSingleModel,minMod,maxMod,numArray) {
	wellValue=0;maxValue=0;
	nbcol=arrayForSingleModel[2]; nbline=arrayForSingleModel[3];blocValues=arrayForSingleModel[5]; SingleModelName=arrayForSingleModel[1];
	SingleModelName="Array N-"+arrayForSingleModel[0]+ ": "+arrayForSingleModel[1];
	if (nbcol > 0 && nbline >0) {
		for (i=1; i<= nbcol; i++) {
			for (j=1; j<= nbline; j++) {
				colval=" C" +i; lineval =" L"+j;
				wellValue=getWellValueB (colval,lineval,blocValues);
				maxValue=maxOf(maxValue,wellValue);
			}
		}
		// create the model window
		spacerModel=10; wellModel=20;
		if ( isOpen(SingleModelName)) {selectImage(SingleModelName); close ();}
		makeSingleModelWindow(spacerModel,wellModel,SingleModelName,nbcol,nbline);
		selectImage (SingleModelName);
		xmodel=((nbcol+1)*wellModel+(nbcol+1)*spacerModel);
		ymodel=((nbline+2)*wellModel+(nbline+2)*spacerModel);
		curentModelx=getWidth();
		curentModely=getHeight();
		if (lutChoice==1) {run("Grays");}
		if (lutChoice==2) {run("Fire");}
		if (lutChoice==3) {if (File.exists(getDirectory("imagej")+"luts/royal.lut")) {run("royal");} else {run("Spectrum");}}
		setColor (0);
		fillRect(0, (wellModel+spacerModel), xmodel, ymodel-(wellModel+spacerModel));
		for (i=1; i<= nbcol; i++) {
			setColor(255,255,255);setJustification("center");setFont("SansSerif", 10,"bold");
			ecriture = "C"+toString(i);
			drawString(ecriture,((i)*wellModel+i*spacerModel+(wellModel/2+2)), (2*wellModel+spacerModel));run("Select None");
		}
		for (i=1; i<= nbline; i++) {
			setColor(255,255,255);setJustification("center");setFont("SansSerif", 10,"bold");
			ecriture = "L"+toString(i);
			drawString(ecriture,(wellModel/2+spacerModel/2), ((i+2)*wellModel+(i+1)*spacerModel)-2);run("Select None");
		}
		// draw dots
		for (i=1; i<= nbcol; i++) {
			for (j=1; j<= nbline; j++) {
				colval=" C" +i; lineval =" L"+j;
				wellValue=getWellValueB (colval,lineval,blocValues);
				if (maxMod == -1) wellValueRescaled=round(parseFloat(wellValue)*255/maxValue);
				if (maxMod != -1) wellValueRescaled=round(parseFloat(wellValue)*255/maxMod);
				if (wellValueRescaled > 255) wellValueRescaled = 255;
				if (wellValueRescaled <0) wellValueRescaled = 0;
				if (wellValueRescaled <= 255) setColor(wellValueRescaled);
				fillOval(((i)*wellModel+i*spacerModel), ((j+1)*wellModel+(j+1)*spacerModel), wellModel, wellModel);
			}
		}
		run("RGB Color");
		// draw landmarks
		for (i=1; i<= nbcol; i++) {
			for (j=1; j<= nbline; j++) {
				colval=" C" +i; lineval =" L"+j;
				repairControl (maxMod,((i)*wellModel+i*spacerModel),((j+1)*wellModel+(j+1)*spacerModel),wellModel,wellModel,numArray);
			}
		}
		idmodel=getImageID();run("Select None");
	}
	return idmodel;
}

// built an empty single array modelled image
function makeSingleModelWindow (spacerModel,wellModel,SingleModelName,nbcol,nbline) {
	newImage(SingleModelName, "8-bit ramp", ((nbcol+1)*wellModel+(nbcol+1)*spacerModel), ((nbline+2)*wellModel+(nbline+2)*spacerModel), 1);
}

// return the value contained in an array with line titles, and column titles
function getWellValueB (Coltab,Linetab,blocValues) {
	val=-1;
	ansversGridCol=columnLabelListB (blocValues,Coltab);
	ansversGridLine=lineLabelListB (blocValues,Linetab);
	if (ansversGridCol  >0 && ansversGridLine >0) {
   		lines = split(blocValues, "\n");
		colums =split(lines[ansversGridLine], ",\t");
		val= colums[ansversGridCol];
	} else {exit("model can\'t be made from the \""+GlobalExcelCompileWindow + "\". Try other normalization references.");}
	
	// !!!! add in the next version " May be it it not a master table of try other normalization references.
	return val;
}

// return the number of the column who's title is in kind (ex: C1)
function columnLabelListB (blocValues,kind) {
	columnNumber=-1;
   	lines = split(blocValues, "\n");
  	headings = lines[0];
	titlesofcolumns = split(headings, ",\t");
	for (a=0; a<titlesofcolumns.length; a++) {if (titlesofcolumns[a] == kind) columnNumber=a;}
	return columnNumber;
}

//return the number of the line who's title is in kind (ex: L1
function lineLabelListB (blocValues,kind) {
	lineNumber=-1;
   		lines = split(blocValues, "\n");
		for (a=0; a<lines.length; a++) {
			linea=split(lines[a], ",\t");
			if (linea[1] == kind) lineNumber=a;
		}
	return lineNumber;
}

//return the number of the line who's title is in kind (ex: L1
function lineLabelListBTest (blocValues,kind) {
	lineNumber=-1;
//Array.print(blocValues);

print ("character chain of block :");
print (blocValues);
print ("  ");
print ("kind = "+ kind);


   		lines = split(blocValues, "\n");
   		
   		print ("splited chain of block :");
		Array.print(lines);

		for (a=0; a<lines.length; a++) {
			linea=split(lines[a], ",\t");
			
			print (" ");
			print ("line "+ a + " :");
			Array.print(linea);
			if (linea[1] == kind) lineNumber=a;
		}
print ("number of lines with kind = " + lineNumber);		
setBatchMode("exit and display");
exit
	return lineNumber;

}

// normalyser function: read a master init table, returns the values in a array of 6xn block, where each block corresponds
// to an array (N- aray, ..., lines) cf GetNbArray (tableNameToRead) function

// setting options
function setOptionsMaster () {
	nrawChoice=nraw;testcolonne=nrawChoice; 	
	testinit=showMasterInit;
	testcercleoption=cercleOption;
	testshowRefLocOption=showRefLocOption;
	choiceA="Normalize according the max of the master";
	choiceB="References used as global normalization of the master";
	choiceC="References used for normalization of each array of the master";
	if (methodChoice == 0) normchoix=choiceA;
	if (methodChoice == 1) normchoix=choiceB;
	if (methodChoice == 2) normchoix=choiceC;
	testnormchoix = normchoix;
	normChoices=newArray(3);
	normChoices[0]=choiceA; normChoices[1]=choiceB; normChoices[2]=choiceC;
	Dialog.create("Master Option Settings");
	Dialog.addNumber("Number of columns for the master images", nraw, 0, 2," column(s)");
	Dialog.addChoice("Normalization method", normChoices,normchoix);
	Dialog.addCheckbox("Show master with max array normalization \(inital representation\)", showMasterInit);
	Dialog.addCheckbox("Show dots limits on master", cercleOption);
	Dialog.addCheckbox("Show internal references on master", showRefLocOption);
	Dialog.show();
	nrawChoice=Dialog.getNumber();
	normchoix=Dialog.getChoice();
	showMasterInit=Dialog.getCheckbox();
	cercleOption=Dialog.getCheckbox();
	showRefLocOption=Dialog.getCheckbox();
	// redraw masters
	dessine=0;
	if (testcolonne != nrawChoice) {
		normalize(methodChoice);
		if ( showMasterInit == 1) masterizeImages ("init");
		masterizeImages ("norm");setBatchMode("exit and display" );
		dessine=1;
		if (isOpen (masterImageinit)) {
			selectImage (masterImageinit);
			setLocation(30,140);
		}
		if (isOpen (masterImageinit)) {
			selectImage (masterImageNorm);
			setLocation(((screenWidth/2)+30),140);
		}
	}
	if(showMasterInit ==0) {
		if (isOpen (masterImageinit)) {selectImage (masterImageinit); close ();}
	}
	if (testinit != showMasterInit) {
		if (showMasterInit ==1) {masterizeImages ("init");setBatchMode("exit and display" );}
	}
	if (testnormchoix != normchoix) {
		if (normchoix==choiceA) methodChoice=0;
		if (normchoix==choiceB) methodChoice=1;
		if (normchoix==choiceC) methodChoice=2;
		normalize(methodChoice);
		if ( showMasterInit == 1) {masterizeImages ("init");}
		masterizeImages ("norm");
		setBatchMode("exit and display" );
		dessine=1;
	}	
	if (testcercleoption != cercleOption) {
		if (dessine == 0) {
			masterizeImages ("norm");setBatchMode("exit and display" );
			dessine=1;
		}
	}
	if (testshowRefLocOption != showRefLocOption) {
		if (dessine == 0) {
			masterizeImages ("norm");setBatchMode("exit and display" );
			dessine=1;
		}
	}
}

function getUserRefDots (showDia) {

	tableNameToRead = GlobalExcelCompileWindow;
	listOfBlocs=GetNbArray (tableNameToRead);
	// list of arrays:
	nbarray= listOfBlocs.length / 6;
	listOfArrays=newArray (nbarray+1);
	listOfArrays[0]="-";
	for (i=0; i< nbarray; i++) listOfArrays [i+1]="Array "+(i+1);
	// list of cases
	if (isOpen(tableNameToRead)) {
		selectWindow(tableNameToRead);		
		MasterResults = getInfo();
		lines=split(MasterResults, "\n");
		cases=split(lines[0], ",\t");
		nbcurentcases= cases.length -3;	
	} 	
	listOfCases=newArray (nbcurentcases);
	for (i=0; i< nbcurentcases; i++) {
		listOfCases [i]=" C"+(i+1);
	}
	// list of lines
	maxofline=0;
	for (i=0; i< nbarray; i++) {
		paquet=listOfBlocs [ i*6+5];
		currentlines=split(paquet, "\n");
		nbcurrentlines=currentlines.length;
		maxofline = maxOf(maxofline, nbcurrentlines);	
	}
	nbcurentcases= maxofline-1;
	listOfLines=newArray(nbcurentcases);
	for (i=0; i< nbcurentcases; i++) {
		listOfLines [i]=" L"+(i+1);
	}
	// list of references
	listOfReferences= newArray ((controlCases.length/4)+(internNormCases.length/4)+1);
	nlist=0;
	for (i=0; i< (controlCases.length/4); i++) {
		listOfReferences [nlist] = "Control " + (i+1);
		nlist ++;
	}
	for (i=0; i< (internNormCases.length/4); i++) {
		listOfReferences [nlist] = "Reference " + (i+1);
		nlist ++;
	}
	listOfReferences [nlist] = "Supress";		
	listOfControl=""; listOfRef="";
	// get the list of current values
	for (i=0; i< (controlCases.length/4); i++) {	
		listOfControl = listOfControl + " Cont. N-"+ (i+1) + " Array N-" + controlCases[(i*4)] + " | Col=" + controlCases[(i*4)+1] + " | Lin=" + controlCases[(i*4)+2] + " |\n" ;
	}
	for (i=0; i< (internNormCases.length/4); i++) {	
		listOfRef = listOfRef + " Ref. N-"+ (i+1) + " array N-" + internNormCases[(i*4)] + " | Col=" + internNormCases[(i*4)+1] + " | Lin=" + internNormCases[(i*4)+2] + " |\n" ;
	}
	ansArray="-"; ansCol=""; ansLin=""; ansDest="";
	while (ansArray == "-" ) {
		Dialog.create("References Management");
		Dialog.addChoice("N-Array", listOfArrays);
		Dialog.addChoice("Column", listOfCases);
		Dialog.addChoice("Line", listOfLines);
		Dialog.addMessage("Choose an assignment:\n") ;
		Dialog.addChoice("", listOfReferences);
		Dialog.addMessage("\nCurrent References:\n");
		Dialog.addMessage(listOfControl);
		Dialog.addMessage(listOfRef);
		Dialog.show();	
		ansArray=Dialog.getChoice();
		ansCol=Dialog.getChoice();
		ansLin=Dialog.getChoice();
		ansDest=Dialog.getChoice();
	}
	// analyse answers
	ansArrayF=0; numControl=0; numReference=0;
	// convert ansArray
	keyCar="Array ";
	if (ansArray != "-") {		
		ansArray=substring(ansArray, (indexOf(ansArray, keyCar)+lengthOf(keyCar)), lengthOf(ansArray));
		ansArrayF=parseFloat(ansArray);
	}	
	keyCar="Control ";
	if (startsWith(ansDest,keyCar )) {
		ansDest=substring(ansDest, (indexOf(ansDest, keyCar)+lengthOf(keyCar)), lengthOf(ansDest));
		numControl=parseFloat(ansDest);
		controlCases[(numControl-1)*4] = ansArrayF;
		controlCases[(numControl-1)*4+1] = ansCol;
		controlCases[(numControl-1)*4+2] = ansLin;
	}
	keyCar="Reference ";
	if (startsWith(ansDest, keyCar )) {
		ansDest=substring(ansDest, (indexOf(ansDest, keyCar)+lengthOf(keyCar)), lengthOf(ansDest));
		numReference=parseFloat(ansDest);		
		redondTest=redondance (ansArrayF,ansCol,ansLin);
		if (redondTest == 0) {
			internNormCases[(numReference-1)*4] = ansArrayF;
			internNormCases[(numReference-1)*4+1] = ansCol;
			internNormCases[(numReference-1)*4+2] = ansLin;
		}
	}	
	if (ansDest == "Supress") {
		for (i=0; i< (internNormCases.length/4); i++) {
			if ((internNormCases[i*4] == ansArrayF) && (toString(internNormCases[i*4+1]) == toString(ansCol)) && (toString(internNormCases[i*4+2]) == toString(ansLin))) {
				internNormCases[i*4]=0; internNormCases[i*4+1]=0; internNormCases[i*4+2]=0;
			}
		}
		for (i=0; i< (controlCases.length/4); i++) {
			if ((controlCases[i*4] == ansArrayF) && (toString(controlCases[i*4+1]) == toString(ansCol)) && (toString(controlCases[i*4+2]) == toString(ansLin))) {
				controlCases[i*4]=0; controlCases[i*4+1]=0; controlCases[i*4+2]=0;
			}
		}
	}
	if (methodChoice == 0) methodChoice = 2;
	normalize (methodChoice);
	masterizeImages ("norm");setBatchMode("exit and display" );
}

function redondance (ansArrayF,ansCol,ansLin) {
	redondanceval=0;
	for (i=0; i< (internNormCases.length/4); i++) {
		if ((internNormCases[i*4] == ansArrayF) && (toString(internNormCases[i*4+1]) == toString(ansCol)) && (toString(internNormCases[i*4+2]) == toString(ansLin))) redondanceval=1;
		if ((toString(internNormCases[i*4+1]) == toString(ansCol)) && (toString(internNormCases[i*4+2]) == toString(ansLin))) redondanceval=1;
	}	
	for (i=0; i< (controlCases.length/4); i++) {
		if ((controlCases[i*4] == ansArrayF) && (toString(controlCases[i*4+1]) == toString(ansCol)) && (toString(controlCases[i*4+2]) == toString(ansLin))) redondanceval=1;
		if ((toString(controlCases[i*4+1]) == toString(ansCol)) && (toString(controlCases[i*4+2]) == toString(ansLin))) redondanceval=1;
	}
	return redondanceval;
}

function normalize (method) {
	// read a master init table
	tableNameToRead = GlobalExcelCompileWindow;
	compiledArrayNorm=GetNbArray (tableNameToRead);	
	if (method == 1) getNorm1Values (compiledArrayNorm);		
	if (method != 0) compiledArrayNorm= calculateNormalizedTable (compiledArrayNorm,method);
	nbArrayFound=compiledArrayNorm.length/6;	
	// get current initial values, and size x of the table:
	if (isOpen(tableNameToRead)) {
		selectWindow(tableNameToRead);		
		MasterResults = getInfo();
		lines=split(MasterResults, "\n");
		cases=split(lines[0], ",\t");
		nbcurentcases= cases.length;		
	} else { exit "no master table found";}
	if (isOpen(GlobalExcelCompileWindowNorm)) {
		selectWindow(GlobalExcelCompileWindowNorm);
		MasterNormResults = getInfo();
		lines=split(MasterNormResults, "\n");
		cases=split(lines[0], ",\t");
		nbcasesN= cases.length;
		if (nbcasesN == nbcurentcases) {
			print(GlobalExcelCompileNorm, "\\Clear");
		} else {
			print(GlobalExcelCompileNorm, "\\Close");
		}
	}
	// built the table
	if (!isOpen(GlobalExcelCompileWindowNorm)) {
		run("New... ", "name="+GlobalExcelCompileNorm+" type=Table");
		selectWindow (GlobalExcelCompileWindowNorm);		
		setLocation((screenWidth/2),97);
	}	
	// find the headings
	FirstArray= compiledArrayNorm [5];
	LinesFirstArray=split(FirstArray, "\n");
	headingsN=LinesFirstArray[0];
	print(GlobalExcelCompileNorm, "\\Headings:"+ headingsN);
	for (i=1; i<(nbArrayFound+1); i++) {
	 	ArrayNormData= compiledArrayNorm [((i-1) *6)+5];
	 	LinesCurrentArray=split(ArrayNormData, "\n");
	 	for (j=1; j<(LinesCurrentArray.length); j++) {
	 		print(GlobalExcelCompileNorm,  LinesCurrentArray[j]);	 		
		}
		print(GlobalExcelCompileNorm,  "\n");
	}
}

// calculates the mean value of the normalization array values
// each value are in the 4th interval position (3,7 ...)
function calcNormMeanValues (arrayToCalc) {
	nval=0; sumValueCalc=0; meanValueCalc=0;
	for (a=0; a< arrayToCalc.length; a+=4) {		
		if (arrayToCalc[a] > 0) {
			nval ++;
			sumValueCalc=sumValueCalc+arrayToCalc[(a+3)];
			meanValueCalc=sumValueCalc/nval;				
		}
	}	
	return meanValueCalc;
}

function getValueFromMastertable (nbarray,xarray,yarray,blocs) {
	valueFromMaster =0;
	blocCible= blocs [((nbarray-1) *6)+5];
	valueFromMaster = getWellValueB (xarray,yarray,blocCible);
	return valueFromMaster;
}

function getNorm1Values (blocs) {
	nbArrays=blocs.length/6;
	Coltab=0; Linetab=0;	
	// get the control values, method 1
	nbRef=controlCases.length/4;
	for (a=0; a< nbRef; a++) {
		narray = controlCases[(a*4)];
		Coltab = controlCases[(a*4)+1];
		Linetab = controlCases[(a*4)+2];
		if (Coltab != 0  && Linetab != 0 && (narray <= nbArrays)) {			
			valeur=getValueFromMastertable (narray,Coltab,Linetab,blocs);
			controlCases[(a*4)+3] = valeur;
		}
	}	
	// get the control positive values
	nbRef=internNormCases.length/4;
	for (a=0; a< nbRef; a++) {
		narray = internNormCases[(a*4)];
		Coltab = internNormCases[(a*4)+1];
		Linetab = internNormCases[(a*4)+2];
		if (Coltab != 0  && Linetab != 0) {			
			valeur=getValueFromMastertable (narray,Coltab,Linetab,blocs);
			internNormCases[(a*4)+3] = valeur;
		}
	}
}

// get the values of the normalization cases in the array values "arrayToCalc"
// each value are in the 4th interval position (3,7 ...)
function getInternalValueArray (bloc,arrayToCalc) {
	nval=0; sumValueCalc=0; meanValueCalc=0;
	nbRef=arrayToCalc.length/4;
	for (a=0; a< nbRef; a++) {
		Coltab = arrayToCalc[(a*4)+1];
		Linetab = arrayToCalc[(a*4)+2];
		if (Coltab != 0  && Linetab != 0) {
			valeur=getWellValueB (Coltab,Linetab,bloc);
			arrayToCalc[(a*4)+3] = valeur;
		}
	}
}

// calculates the normalized table from an init table
function calculateNormalizedTable (compiledArrayNorm,method) {
	nbArrayFound=compiledArrayNorm.length/6;
	// extract the data for each array
	for (i=1; i<(nbArrayFound+1); i++) {
	 	ArrayNormData= compiledArrayNorm [((i-1) *6)+5];
	 	calculNorm= calcArray (ArrayNormData,method);
	 	compiledArrayNorm [((i-1) *6)+5]=calculNorm;
	 }
	 return compiledArrayNorm;
}

function calcArray (bloc,method) {
	if (method==1) {
		// calculates the mean values af internal references array		
		controlMeanValue = calcNormMeanValues(controlCases);
		normMeanValue = calcNormMeanValues(internNormCases);
	}
	 if (method == 2) {
	 	// get the references values:
	 	getInternalValueArray(bloc,controlCases);
	 	getInternalValueArray(bloc,internNormCases);
	 	// calculates the mean values af internal references array
		controlMeanValue = calcNormMeanValues(controlCases);
		normMeanValue = calcNormMeanValues(internNormCases);
	 }
	lines=split(bloc, "\n");
	newbloc= lines[0] + "\n";
	for (i=1; i<lines.length; i++) {
		cases=split(lines[i], ",\t");
		newLine=cases[0] + "\t" + cases[1];	
		for (j=2; j<(cases.length-1); j++) {
			newCase= d2s (((parseFloat(cases[j]) - controlMeanValue)/normMeanValue),3);
			newLine=newLine+ "\t" + newCase;
		}
		// reconstruct the line
		newLine=newLine+ "\t" + cases[(cases.length-1)];
		// reconstruct the bloc
		newbloc=newbloc +  newLine + "\n";
	}
	return newbloc;
}

// import master table
function importeMasterTable () {
  	path = File.openDialog("Select a master table file");
  	name = File.getName(path); 	
	selectedDir=File.getParent(path) +File.separator;
	masterinitName=File.getName(selectedDir);
	if (endsWith(name, ".xls")) {name=substring(name, 0, indexOf(name, ".xls"));} else {exit ("This file doesn't seam to be an Excel type file.");}
 	openTab (path,GlobalExcelCompileWindow);
 	if (isOpen (GlobalExcelCompileWindow)) {
		selectWindow (GlobalExcelCompileWindow);
		setLocation(0,97);
	}
 	normalize(methodChoice);
	if ( showMasterInit == 1) {masterizeImages ("init");}
	masterizeImages ("norm");setBatchMode("exit and display" );
}

function openTab (path,name) {
	undoErease="";windowTabName=name;
	lines=split(File.openAsString(path), "\n");
	if (lines.length < 2) { exit ("This file doesn't seam to contain data");}
  	headings = lines[0];
	titlesOfColumns = split(headings, ",\t");
	nameOfStatTab="["+windowTabName+"]";
	if (isOpen(windowTabName)) {
		showMessageWithCancel ("This operation will close the already opened \""+name+ "\" table");
		selectWindow(windowTabName) ;run("Close");
	}	
	firstLine="";
	for (i=0; i < (titlesOfColumns.length ); i++) {
		firstLine=firstLine+ titlesOfColumns [i];
		if ( i < (titlesOfColumns.length )-1) {firstLine=firstLine+ "\t";}
	}
	toPrint="";
	for (i=1; i < (lines.length ); i++) {
		toPrint=toPrint+lines[i]+"\n";
	}
	run("New... ", "name="+nameOfStatTab+" type=Table");
	print(nameOfStatTab, "\\Headings:"+firstLine+"");
	print(nameOfStatTab,toPrint);
	print(GlobalExcelCompile,"\n"); // added the 16-07-2014 to fix a bug intruced in ImageJ in 1.4.8 version
}

function infoPath (kind,subDemoFolder) {
	demoimalocation = getDirectory("startup");	
	ImaDemoSubFolder = demoimalocation+ "Downloaded Demo Images" + File.separator;
	commentaire = "The " + kind + " demo images are located on the hard disk at this place:\n" + ImaDemoSubFolder + subDemoFolder;
	showMessage (commentaire);
	title1 = "Info for the Demo Images Location";
	title2 = "["+title1+"]";
	f = title2;
	if (isOpen(title1)) {
		print(f, "\\Update:"); // clears the window
  		print(f, commentaire);
		selectWindow (title1);
	} else {
		run("New... ", "name="+title2+" type=[Text File] width=80 height=16");
  		print(f, commentaire);
	}
}

// end of array code lines //

function netTest () {
	if (indexOf (File.openUrlAsString(urllist), errorNetMessage) >0) exit("You need an internet access to run this function.");
}

function abortProcess () {setKeyDown("Esc");}

function about1() {
	about="";
	about=about+"\n			                                        -- Protein Array Analyzer --";
	about=about +"\n\nAuthor: Gilles Carpentier"+"\nFaculte des Sciences et Technologie, Universite Paris Est Creteil Val de Marne, France.";
	about=about+"\n----------------------------------------------------------------------------------------------------";
	about=about+"\n* Description:";
	about=about+"\n";
	about=about+"\n   This toolset allows easy analyse of multiple patterns of protein arrays, using a graphical interface helper  ";
	about=about+"\n   Update 1.1.b - 3 September 2014
	about=about+"\n----------------------------------------------------------------------------------------------------";
	about=about+"\n\n* ImageJ Menu Tool Bar:
	about=about+"\n";
	about=about+"\n   - The \"Array Analysis Menu\" regroups analysis functions of single protein array images:";
	about=about+"\n         - \"Array Analysis\" displays the graphical interface required to analyse an opened protein array image.";
	about=about+"\n         - \"Save Results Documents\" saves every document concerning one analysis (model, tabs, images) into";
	about=about+"\n           a folder at the user choiced master repertory.";
	about=about+"\n         - \"Save Results Documents at Image Location\" saves every document concerning one analysis";
	about=about+"\n           (model, tabs, images) into a folder placed at the protein array image repertory.";
	about=about+"\n         - \"Close Results Documents\" closes every document concerning one analysis \(models, tabs, images\).
	about=about+"\n   - The \"Group Pattern Menu\" regroups tabs and analysed images management functions:";
	about=about+"\n         - \"Masterize from Analysis Repertories\" allows to user to choose a repertory containing some protein";
	about=about+"\n           array analysis folders which will be summarized into master table and modelled images."
	about=about+"\n         - \"Import Master Table\" imports a user selected, previously saved master table, and builds the corresponding";
	about=about+"\n           master modelled image.";	
	about=about+"\n         - \"Draw \"Master - Initial\"\" draws the master modelled image corresponding to an opened master table,";
	about=about+"\n           using the maximum value of each array as normalization \(it corresponds to the initial aspect returned";
	about=about+"\n           by the \"Array Analysis\" item\).";
	about=about+"\n         - \"Draw \"Master - Normalized\"\" calculates the normalized master table and draws the master modelled ";
	about=about+"\n           image corresponding, from an opened master table, using the current normalization options.";
	about=about+"\n         - \"Set Internal Control and References\" opens a dialog box to set up to 4 controls and 4 references. When";
	about=about+"\n           more than one control or reference are choosen, the mean value is used for normalization.";
	about=about+"\n         - \"Master Options Settings\" menu:";	
	about=about+"\n                - \"Number of columns for the master images\" sets the number of columns in which are arranged the";
	about=about+"\n           	   modelled protein arrays. The initial setting optimizes this value to the size of the screen and the protein";
 	about=about+"\n           	   array number.";
	about=about+"\n         	   - \"Normalization method\" allows to choose between 3 methods of normalization:";
	about=about+"\n                    - \"Normalize according to the min\/max of the master\".";
	about=about+"\n                    - \"References used as global normalization of the master\": normalizes using specified spots in the";
	about=about+"\n                      master choosen by the \"Set Internal Control and References\" menu. Specified spots are used for all";
	about=about+"\n                      the master values. Normalized dots display is optimized in the color scale according to the min\/max";
	about=about+"\n                      value of the normalized master.";
	about=about+"\n                    - \"References used for normalization of each array of the master\": normalizes using specified spots";
	about=about+"\n                      in the master choosen by the \"Set Internal Control and References\" menu. Selected spots are used";
	about=about+"\n                      in each individual modelled protein array. Normalized dots display is optimized in the color scale ";
	about=about+"\n                      according to the min\/max value of the normalized master.";
	about=about+"\n         	   - \"Show master with max array normalization \(initial representation\)\" activates-deactivates the";
	about=about+"\n                  systematic display of a master image presenting the modelled protein array models in their initial";
	about=about+"\n                  aspects \(individual normalization according the max value of each array\).";
	about=about+"\n                - \"Show dots limits on master\" activates-deactivates the automatic entourage of spots by a grey circle.";
	about=about+"\n                - \"Show internal references on master\" activates-deactivates the choosen internal control and references";
	about=about+"\n                  in cyan \(control\(s\)\) and green \(reference\(s\)\).";	
	about=about+"\n         - \"Save Master Documents\" saves every document concerning one analysis \(master tables and images\) into";
	about=about+"\n           a folder at the user choiced repertory.";
	about=about+"\n         - \"Save Master Documents at Parent Folder Location\"  saves every document concerning one analysis";
	about=about+"\n           \(master tables and images\) into a folder placed at the parent repertory of the masterized protein";
	about=about+"\n           array analysis.";	
	about=about+"\n         - \"Close Master Documents\"  closes all documents concerning one analysis \(master tables and images\).";
	about=about+"\n   - Click on the \"Abort Process\" ImageJ tool bar icon to cancel demo downloading or erase the palette's cursor.";
	about=about+"\n   - \"On Line Documentation & Demo Menu\", on line ressources: documentation, demo images of protein arrays ";	
	about=about+"\n      and dot blot from different sizes and a master table for training.";	
	about=about+"\n   - Click on the \"Version and Update Infos\" ImageJ tool bar icon to look for new versions.";
	about=about+"\n";
	about=about+"\n* Graphical Interface:";
	about=about+"\n";
	about=about+"\n     Once activated, the \"Array Analysis\" selection builds a graphical interface \"Palette\" containing a protein array ";
	about=about+"\n     preview. Here are the \"clickable\" available actions:";
	about=about+"\n     - Volume measurement using the composite cursor:";
	about=about+"\n         - Activate the measurement cursor by staying clicked and moving into the dot blot preview area. Cursor";
	about=about+"\n          ploted and real coordinates are dynamically showed into the display area. The measured volume is available";
	about=about+"\n          when unclicked.";
	about=about+"\n     - Customize the composite cursor aspect:";
	about=about+"\n         - Optimize the visual aspect by choosing appropriate colors for the circle and the cross hair of the cursor"; 
	about=about+"\n         componants,  using the colored rectangles.";
	about=about+"\n         - Find a pertinant circle radius by clicking onto the circle containing radius icone. Adjust the cursor circle";
	about=about+"\n         size using the \"+\" and \"-\" subbuttons.";
	about=about+"\n     - Optimize the protein array preview:";
	about=about+"\n         - Normalize the histogram from the \"stretch curve\" icon. Adjust the saturation level using the \"+\" and \"-\""; 
	about=about+"\n         subbuttons."; 
	about=about+"\n         - Choose the appropriate Look Up Table \(LUT\) by clicking into the LUT ramps icone. Restore the initial preview"; 
	about=about+"\n         properties with the counterclockwise symbol.";
	about=about+"\n     - Single measurements recording in a tab:";
	about=about+"\n         - Click \"Add\" to generate a tab with the current value given by the cursor, \"Remove\" to delete it. \(CTRL click";
	about=about+"\n         undo the delete action\).";
	about=about+"\n         - Erase all the measurements of the tab by the red \"X\". This action in undo by \"CTRL click\".";
	about=about+"\n     - Grid measurements mode:";
	about=about+"\n         - Adjust the column \(\"nCol.\"\) and the line \(\"nLin.\"\) numbers, corresponding to the total or sub-area to analyse.";
	about=about+"\n         - Set the three required dots forming angle \(hight-left, hight-right and low-left\) using the three green cross";
	about=about+"\n          hair icones. Marks can be adjusted, by re-selecting the appropriate cross hair icone";
	about=about+"\n         - Get a modelled image of the grid analysis by clicking on \"Model\".";
	about=about+"\n";
	about=about+"\n     - Shift between the grid measurements mode and the single measurements mode can be performed by clicking";
	about=about+"\n     onto \"Measurements:\" and \"Grid:\"."; 
	about=about+"\n     - \"Cancel\" box closes every thing concerning one analysis, including the Palette.";
	about=about+"\n     - \"Erase\" box removes every drawed dot contours. They can be redrawed by clicking onto \"Measurements:\" or \"Grid:\"." ;
	about=about+"\n";
	about=about+"\n     - Activate \"End: Quit\" to finish an analyse \(deactivates the Palette, keeping an image or the current drawings\). " ;
	about=about+"\n";
	about=about+"\n";
	about=about+"\n----------------------------------------------------------------------------------------------------";

	// from PrintToTextWindow macro available at the http://rsbweb.nih.gov/ij/macros/PrintToTextWindow.txt
	// author: Wayne Rasband
	title1 = "Info for the Protein Array Analyzer";
	title2 = "["+title1+"]";
	f = title2;
	if (isOpen(title1)) {
		print(f, "\\Update:"); // clears the window
  		print(f, about);
		selectWindow (title1);
	} else {
		run("New... ", "name="+title2+" type=[Text File] width=80 height=16");
  		print(f, about);
	}
}

function doc () {
	netTest ();
	showMessageWithCancel  ("A notice is avaible online. Open it with your default web browser?");
	run("URL...", "url=["+onlinedoclink +"]");
}

function whatsNew () {
	netTest ();
	showMessageWithCancel  ("An update description is avaible online. Open it with your default web browser?");
	run("URL...", "url=["+onlinedocWhatsNewlink +"]");
}



// --- End of code of the macro project ---//
// ----------------------------------//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// -------------------*** Additionnal code for on line update resources ***-----------------------------
//Developer info
//Kind:Toolset
//Title:"Protein Array Analyzer" 
//Version:1.1.c
//Date:27 September 2018
//Origin:Image.Bio.Methods
//NotUpdateThisFile
//End info


function VersionInfos () {
	// variables for on line update resources
	beginsign="//Developer info";endsign="//End info"; 
	kind="toolsets/"; 
	urlrep="http://image.bio.methods.free.fr/ij/ijmacro/prtarray/";
	name="Protein Array Analyzer.txt"; 
	namedev="Protein Array Analyzer.txt"; 
	favoritefoldername= "Macros";

	version=versionMessage();
	if (indexOf(version, "install it?" ) > 0 ) {
		macrotext=getdistantmacro (namedev,urlrep);macrolocal="";
		macropath=getDirectory("macros")+kind+namedev;
		if (File.exists(macropath)) {macrolocal=File.openAsString(macropath);}
		if (macrotext != macrolocal) {
			//perfom the installation
			Dialog.create("New version installation option");
			Dialog.addMessage(version);
			Dialog.addCheckbox("Install a Plugin Shortcut?", 0);
			Dialog.addMessage("(This option provides a shortcut in the plugins -> macros menu of ImageJ, making easier\nthe next use of the new installed version).");
			Dialog.show();
			plugin= Dialog.getCheckbox();
			f= File.open(macropath);
			print (f,macrotext);
			File.close(f);
			if (plugin ==1) {InstallPluginsStarter(namedev);}
			message="The installation of the "+giveDevInfo (macrotext,1)+ " "+ giveDevInfo (macrotext,2)+ "is completed.";
			message=message+"\nThis new version will be available from the \"Toolsets\" menu tool \">>\" at the right of the ImageJ tool bar.";
			message=message+ "\nDo you want to run it?";
			showMessageWithCancel(message);
			run("Install...", "install=["+macropath+"]");
		}
	} else {showMessage (version); // comment without installation available}
}

function versionMessage() {	
	version="";
	if (getDirectory("startup") == 0) exit ("Unable to find the startup directory, something wrong in the ImageJ folder");
	if (getDirectory("macros") == 0) exit ("Unable to find the macros directory, something wrong in the ImageJ folder");
	MacroPath=getDirectory("macros");thismacropath=MacroPath+kind+name;
	if (! File.exists(thismacropath)) exit ("This macro has to be recorded under the name of \"" +name+"\"\ninto the \"macros/"+kind+"\" folder of ImageJ.");
	macrotext=File.openAsString(thismacropath);
	macrotextdistant=getdistantmacro (namedev,urlrep);
	version="";macrolocal="";
	version=version + "\n \nThis version of the " + giveDevInfo (macrotext,1) + " " + giveDevInfo (macrotext,2);
	version=version + "is provided by the " + giveDevInfo (macrotext,5)+ " web site.";
	version=version + "\nVersion number: " + giveDevInfo (macrotext,3)+ " - " + giveDevInfo (macrotext,4) +".";	
	if (macrotextdistant !="" ) {
		new=giveDevInfo (macrotextdistant,3);old=giveDevInfo (macrotext,3);
		if (new > old) {
			macropath=getDirectory("macros")+kind+namedev;
			if (File.exists(macropath)) {macrolocal=File.openAsString(macropath);}
			if (macrotextdistant != macrolocal) {
				update="\n \nA new version "+new+ " is available on the "  +giveDevInfo (macrotextdistant,5)+ " web site: ";
				update=update+ "\n \nDo you want to install it?";
			} else {
				update ="\n \nThe new "+new+" latest version called \"" +namedev+ "\" provided by \nthe "+giveDevInfo (macrotextdistant,5) +" web site has already be installed";
				update = update+ " in the \"" +kind+ "\" repertory \nof ImageJ.";
			}
		} else {
			update="No new version available.";
		}
		version=version +"\n" + update ;
	} 
	return version; 
}

function giveDevInfo (text,n) {
	lines=split(text,"\n");
	if ( (indexOf(text, beginsign)<0) || (indexOf(text, endsign)<0) ) exit ("Not upgradable macro code.");
	for (i=0; lines[i] != endsign; i ++) {}
	for (j=i; lines[j] != beginsign; j --) {}
	infotext=newArray(i-j-1);
	for (i=0; i < infotext.length; i ++) {infotext[i]=lines[i+j+1];}
	info=infotext[n-1]; signature=":";
	cut = indexOf(info, signature);
	info = substring(info,(cut+lengthOf(signature)),lengthOf(info));
	return info;
}

// Function giving the content of a distant macro (name) located at the distant repertory (urlrep).
// updated for the version 1.41i
function getdistantmacro (name,urlrep) {
	macrotextnih=""; erNetMessage ="Error: ";
	testlink = "http://rsb.info.nih.gov/ij/macros/Arrays.txt";
	if (indexOf (File.openUrlAsString(testlink), erNetMessage) < 0) {
		distantmacrolink = urlrep + name;
		if (indexOf(distantmacrolink, " ") > -1) {
			while (indexOf(distantmacrolink, " ") > -1) {
				distantmacrolink=substring(distantmacrolink, 0, (indexOf(distantmacrolink, " ")))+"%20"+substring(distantmacrolink, (indexOf(distantmacrolink, " ")+1),lengthOf(distantmacrolink) );
			}
		}
		showStatus("Internet link...");
		macrotextnih =File.openUrlAsString(distantmacrolink);
		showStatus("");
	} else { showMessage ("No internet connection to looks for new version.");}
	return macrotextnih;
}

function InstallPluginsStarter(macroname) {
	// from MacroPluginShortcutsTool.txt
	codestarter = "run\(\"Install...\", \"install=[\"+getDirectory(\"macros\")+\""+kind+ macroname + "\]\"\);";
	if (getDirectory("plugins") == "") exit ("Unable to find the Plugins directory; something wrong in the ImageJ folder.");
	if (endsWith(macroname, ".txt") || endsWith(macroname, ".ijm")) pluginname = substring(macroname, 0, (lengthOf(macroname)-4));
	StarterDir = getDirectory("plugins")+favoritefoldername+File.separator;
	File.makeDirectory(StarterDir);
	if (!File.exists(StarterDir)) exit ("Unable to create "+favoritefoldername+" Macros directory, something wrong in the ImageJ folder.");
	starterplugin = StarterDir + pluginname +"_ .ijm";
	f= File.open(StarterDir + pluginname +"_ .ijm");
	print (f,codestarter);
	File.close(f);
	showMessage ("The plugin shortcut \"" +pluginname+ "\" will be available after\nImageJ restarting, in the \"Plugins->" + favoritefoldername + "\" menu.");
}

// update names and shorcuts

function testinstal () {
	nomdetool =  "Protein Array Analyzer.txt";
	nomdedev = "Protein Array Analyzer-dev.txt";
	locdev ="toolsets";
	destidev= "toolsets";
	pluginfoldername= "Macros";
	endinstall (nomdetool,nomdedev,locdev,destidev,pluginfoldername);
	return nomdetool;
}

function endinstall (nomdetool,nomdedev,locdev,destidev,folderplugin) {
	pluginname =""; Starter =""; delshortcut=0; movedev=0; installation=0;
	var kind="toolsets/"; 
	var favoritefoldername= "Macros";
	//move the nomdedev at locdev ij repertory to the destidev ij repertoty, and rename it as nomdetool
	if (getDirectory("startup") == 0) exit ("Unable to find the startup directory, something wrong in the ImageJ folder");
	if (getDirectory("macros") == 0) exit ("Unable to find the macros directory, something wrong in the ImageJ folder");	
	MacroPath=getDirectory("macros");
	macropath1=MacroPath+locdev +File.separator+nomdedev;
	macropath2=MacroPath+kind+nomdetool;
	if ( File.exists(macropath1)) {movedev=File.rename(macropath1, macropath2); } 		
	// removed old plugin shortcuts, image.bio.methods folder, and install nomdetool plugin shortcut.
	removeOldShortcuts (folderplugin, nomdedev, "");
	removeOldShortcuts ("My Favorite Macros", nomdedev, "");
	removeOldShortcuts ("My Favorite Macros", nomdetool, "toolsets");
	removeOldShortcuts ("Image.Bio.Methods", nomdetool, "");
	removeOldShortcuts ("Image.Bio.Methods", nomdedev, "");
	if (File.isDirectory(getDirectory("plugins")+"Image.Bio.Methods"+File.separator)) {path=getDirectory("plugins")+"Image.Bio.Methods"+File.separator;a=File.delete(path);}
	// archive the original tool
	UpdatedMacro=newArray(1); UpdatedMacro [0]=nomdetool; macrosfolder=MacroPath+locdev +File.separator;
	oripath=MacroPath+locdev +File.separator+nomdetool;
	if (File.exists(oripath)) {
		code=File.openAsString(oripath);
		if (indexOf (code,"NotUpdateThisFile") < 0 ) {
			archmacros(UpdatedMacro,macrosfolder,"Archived Tools");
			if (File.exists(oripath)) deloriginal =File.delete(oripath);
		}
	}	
	// create the plugin shortcut
	findcode="";
	if (endsWith(nomdetool, ".txt") || endsWith(nomdetool, ".ijm")) pluginname2 = substring(nomdetool, 0, (lengthOf(nomdetool)-4));
	pathstartertest= getDirectory("plugins")+folderplugin+File.separator+pluginname2 +"_ .ijm";
	if ( File.exists(pathstartertest)) findcode= File.openAsString(pathstartertest);
	if (indexOf (findcode,kind) < 0 && indexOf (findcode,nomdetool) < 0) {InstallPluginsStarter(nomdetool);installation=1;}
	// install the new macro
	if (installation ==1) {if (File.exists(macropath2)) {run("Install...", "install=["+macropath2+"]");}}
}

function removeOldShortcuts (nomDeFolder, nomDeDev, filter) {
	if (getDirectory("plugins") == "") exit ("Unable to find the Plugins directory; something wrong in the ImageJ folder.");
	if (endsWith(nomDeDev, ".txt") || endsWith(nomDeDev, ".ijm")) pluginname = substring(nomDeDev, 0, (lengthOf(nomDeDev)-4));
	Starter = getDirectory("plugins")+nomDeFolder+File.separator+pluginname +"_ .ijm";
	if (File.exists(Starter)) {
		if (filter != "") {
			findcode= File.openAsString(Starter);
			if (indexOf (findcode,filter) < 0) delshortcut =File.delete(Starter);	
		} else {delshortcut =File.delete(Starter);}
	}
}	
// *** End of additionnal code for on line update ressources ***


