//HFIVKY0G JOB ('EUDD,INTL'),'VELLU',NOTIFY=&SYSUID,
//             MSGLEVEL=(1,1),MSGCLASS=X,CLASS=A
/*JOBPARM  L=9999,S=CWCC
//*
//*********************************************************************
//*                                                                   *
//*  MEMBER = CWXTJCLC                                                *
//*                                                                   *
//*  THIS IS SAMPLE JCL TO EXECUTE COBOL PROGRAM CWXTCOB              *
//*                                                                   *
//*  PLEASE MAKE THE FOLLOWING CHANGES TO THIS JCL BEFORE             *
//*  SUBMITTING THE JOB FOR EXECUTION:                                *
//*                                                                   *
//*  1. CHANGE THE JOBNAME TO YOUR TSOID+1 CHARACTER                  *
//*  2. CHANGE &APP TO YOUR INITIALS FOLLOWED BY THE NUMBER 1         *
//*     I.E. BRIAN WESTERHOLT = BAW1  DAVE KARTZMAN - DGK1            *
//*     IF YOU DO NOT HAVE A MIDDLE INITIAL, USE AN X, I.E. BXW1      *
//*     THIS SHOULD MATCH THE APP NAME YOU USED IN ISPWSHDR AND       *
//*     ISPWDD                                                        *
//*                                                                   *
//*********************************************************************
//*
//*   EXECUTE CWXTCOB IN BATCH
//*
//CWXTCOB  EXEC PGM=CWXTCOB,PARM=00003
//*
//STEPLIB  DD  DISP=SHR,DSN=SALESSUP.VKY1.DEV1.LOAD
//         DD  DISP=SHR,DSN=SALESSUP.VKY1.QA1.LOAD
//         DD  DISP=SHR,DSN=SALESSUP.VKY1.STG.LOAD
//         DD  DISP=SHR,DSN=SALESSUP.VKY1.PRD.LOAD
//*
//EMPFILE  DD  DISP=SHR,DSN=SYS2.CW.&CWGAXT..SLXTSAMP(CWXTDATA)
//RPTFILE  DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//