//BRXVSMKY JOB CLASS=A,MSGCLASS=H,REGION=8192K,
//         NOTIFY=&SYSUID
//*
//*RELEASE   SET '{version}'
//* ... BREXX          Version {version} Build Date {date}
//* ... INSTALLER DATE {date}
//* -----------------------------------------------------------------
//* READ STUDENT VSAM FILE VIA KEY
//* -----------------------------------------------------------------
//*
//BATCH EXEC RXTSO,BREXX='BREXX',
//         EXEC='@STUDENK',
//         SLIB='BREXX.CURRENT.SAMPLES'
//SYSPRINT DD  SYSOUT=*,
//             DCB=(RECFM=FBA,LRECL=133,BLKSIZE=133)
//SYSUDUMP DD  SYSOUT=*
//
