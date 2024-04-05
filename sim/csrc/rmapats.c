// file = 0; split type = patterns; threshold = 100000; total count = 0.
#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include "rmapats.h"

void  hsG_0__0 (struct dummyq_struct * I1290, EBLK  * I1284, U  I685);
void  hsG_0__0 (struct dummyq_struct * I1290, EBLK  * I1284, U  I685)
{
    U  I1548;
    U  I1549;
    U  I1550;
    struct futq * I1551;
    struct dummyq_struct * pQ = I1290;
    I1548 = ((U )vcs_clocks) + I685;
    I1550 = I1548 & ((1 << fHashTableSize) - 1);
    I1284->I727 = (EBLK  *)(-1);
    I1284->I731 = I1548;
    if (I1548 < (U )vcs_clocks) {
        I1549 = ((U  *)&vcs_clocks)[1];
        sched_millenium(pQ, I1284, I1549 + 1, I1548);
    }
    else if ((peblkFutQ1Head != ((void *)0)) && (I685 == 1)) {
        I1284->I733 = (struct eblk *)peblkFutQ1Tail;
        peblkFutQ1Tail->I727 = I1284;
        peblkFutQ1Tail = I1284;
    }
    else if ((I1551 = pQ->I1191[I1550].I745)) {
        I1284->I733 = (struct eblk *)I1551->I744;
        I1551->I744->I727 = (RP )I1284;
        I1551->I744 = (RmaEblk  *)I1284;
    }
    else {
        sched_hsopt(pQ, I1284, I1548);
    }
}
#ifdef __cplusplus
extern "C" {
#endif
void SinitHsimPats(void);
#ifdef __cplusplus
}
#endif
