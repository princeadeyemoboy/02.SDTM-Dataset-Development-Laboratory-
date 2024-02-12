/*Property of Clip Lab of Cytel. For use by Clip Lab students only.*/
/*Copyright � 2014, Cytel Statistical Software & Services Pvt. Ltd.*/
/*All Rights Reserved. Copying in any form is prohibited.*/
/*--------------------------------------------------------------------------------------
STUDY					: 
PROGRAM					: initial.sas 
SAS VERSION				: University Edition
DESCRIPTION				: This program is to setup libnames/filenames. 
AUTHOR					: Olamide Adeyemo
DATE COMPLETED			: 16/May/2023
PROGRAM INPUT			: DM.sas7bdat,lab.sas7bdat
PROGRAM OUTPUT			: LB.sas,LB.sas7bdat.
PROGRAM LOG				: &workpath\09out_logs\demo01.log
EXTERNAL MACROS CALLED	: None
EXTERNAL CODE CALLED	: initial.sas

LIMITATIONS				: None

PROGRAM ALGORITHM:
	Step 01: Setup macro variables, drive, project and protocol.            
   	Step 02: Define filename/libname for protocol.  
	Step 03: Define global options.
	Step 04: Include format files. 

REVISIONS: 					
	1. DD/MM/YYYY - Name (First Last) - Description of revision 1
	2. DD/MM/YYYY - Name (First Last) - Description of revision 2
----------------------------------------------------------------------------------------*/

*----------------------------------------------------------------*;
*- Step 01: Setup macro variables, drive, project and protocol. -*;
*----------------------------------------------------------------*;

%let cydrive      =/home/;                 					*- Drive name  -*;			            
                                                              
%let project      = u63305369/02.SDTM Dataset Development(Laboratory);  *- Project name -*;	

%let workpath     = &cydrive/&project/work;  			

*%let graphdir    = &workpath\12out_graphics;
*%let listdir     = &workpath\10out_listings;
%let logdir      = &workpath/04out_log;
%let program    = &workpath/06pgm_analysis;

*------------------------------------------------------------*;
*- Step 02: Global macro library filenames and libnames. 	-*;
*- Please update filename statements as per your need		-*;
*- Please add libname statements here						-*;
*------------------------------------------------------------*;	
filename  ffile1 "&workpath/";	
filename  ffile2 "&workpath/";

libname rawdata "&workpath/02data_raw";					*- Libname name for raw datasets -*;	
libname anadata "&workpath/05Output";			*- Libname name for analysis datasets -*;

*----------------------------*;
*- Step 03: Global options. -*;
*----------------------------*;
options VALIDVARNAME=UPCASE spool compress=yes;						

*--------------------------------------------------------------------------------*;
*- Step 04: Include format files. 											 	-*;
*- Please comment the following include statement if you don't have format file.-*;
*--------------------------------------------------------------------------------*;
/*%inc "&workpath\08pgm_analysis\formats.sas";*/

