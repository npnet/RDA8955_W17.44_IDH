/* Copyright (C) 2016 RDA Technologies Limited and/or its affiliates("RDA").
* All rights reserved.
*
* This software is supplied "AS IS" without any warranties.
* RDA assumes no responsibility or liability for the use of the software,
* conveys no license or title under any patent, copyright, or mask work
* right to the product. RDA reserves the right to make changes in the
* software without notification.  RDA also make no representation or
* warranty that such application will be suitable for the specified use
* without further testing or modification.
*/



#ifndef _TGT_MCD_CFG_H_
#define _TGT_MCD_CFG_H_

#include "cs_types.h"

#ifdef DUAL_TFLASH_SUPPORT
#include "mcd_config.h"

EXTERN_C_START

// =============================================================================
// tgt_GetMcdConfig
// -----------------------------------------------------------------------------
/// This function is used by MCD to get access to its configuration structure.
/// This is the only way MCD can get this information.
// =============================================================================
PUBLIC CONST MCD_CONFIG_STRUCT_T* tgt_GetMcdConfig(VOID);
EXTERN_C_END
#else
typedef struct MCD_CONFIG_STRUCT_T TGT_MCD_CONFIG_T;


// =============================================================================
// tgt_GetMcdConfig
// -----------------------------------------------------------------------------
/// This function is used by MCD to get access to its configuration structure.
/// This is the only way MCD can get this information.
// =============================================================================
PUBLIC CONST TGT_MCD_CONFIG_T* tgt_GetMcdConfig(VOID);
#endif

#endif // _TGT_MCD_CFG_H_

