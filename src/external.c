#include <string.h>

#include "external.h"
#include "lstring.h"
#include "rxmvsext.h"
#include "rxtso.h"
#include "irx.h"

int
callExternalFunction(char *functionName)
{

    int rc, ii;

    RX_SVC_PARAMS      svcParams;
    RX_EXT_PARAMS_R1  linkParamsR1;
    RX_EXT_PARAMS_R15 linkParamsR15;

    char moduleName[8];
    struct efpl _efpl;
    byte *tmp = (byte *) &_efpl;

    struct argtable_entry argtableEntries[10];
    struct evalblock *_evalblock_ptr = malloc(256 + sizeof(struct evalblock));

    bzero(_evalblock_ptr, 256 + sizeof(struct evalblock));
    memset(argtableEntries, 0xFF, sizeof(argtableEntries));

    _evalblock_ptr->evalblock_evpad1 = 0x00;
    _evalblock_ptr->evalblock_evpad2 = 0x00;
    _evalblock_ptr->evalblock_evlen  = 0x80000000;
    _evalblock_ptr->evalblock_evsize = (256 + sizeof(struct evalblock)) / 8;

    _efpl.efplcom  = 0;
    _efpl.efplbarg = 0;
    _efpl.efplearg = 0;
    _efpl.efplfb   = 0;

    // FIX FOR PL/1 => PL/1 is skipping 2 bytes for length field
    tmp = tmp - 2;

    _efpl.efplarg  = &argtableEntries;
    _efpl.efpleval = &_evalblock_ptr;

    memset(moduleName, ' ', 8);
    strncpy(moduleName, functionName, strnlen(functionName, 8));

    for (ii = 0; ii < 5; ii++) {
        //argtableEntries[ii].argtable_argstring_ptr = LSTR(*plsVarValue);
        //argtableEntries[ii].argtable_argstring_length = LLEN(*plsVarValue);
    }

    linkParamsR1.ptr[0] = tmp;
    linkParamsR1.ptr[0] = (void *) (((int)linkParamsR1.ptr[0]) | 0x80000000);

    linkParamsR15.moduleName = moduleName;
    linkParamsR15.dcbAddress = 0;

    svcParams.SVC = 6;
    svcParams.R0  = (unsigned int)  getEnvBlock();
    svcParams.R1  = (unsigned int) &linkParamsR1;
    svcParams.R15 = (unsigned int) &linkParamsR15;

    printf("FOO> CALLING THE EXTERNAL FUNCTION\n");

    call_rxsvc(&svcParams);
    rc = svcParams.R15;

    printf("FOO> EXTERNAL FUNCTION RETURNED WITH RC(%d)\n", rc);

    if (_evalblock_ptr->evalblock_evlen > 0) {
        char result[256 + 1];
        bzero(result, sizeof(result));

        strncpy(result, (char *)&_evalblock_ptr->evalblock_evdata,
                _evalblock_ptr->evalblock_evlen);

        setVariable("RESULT", result);
    }

}