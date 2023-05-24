/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/Documents/ControladorDemuxProj/ControladorDemuxDisplay.vhd";



static void work_a_2471071165_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    unsigned char t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 5248);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 5152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t1 = (t0 + 8580);
    t7 = xsi_mem_cmp(t1, t5, 2U);
    if (t7 == 1)
        goto LAB6;

LAB11:    t8 = (t0 + 8582);
    t10 = xsi_mem_cmp(t8, t5, 2U);
    if (t10 == 1)
        goto LAB7;

LAB12:    t11 = (t0 + 8584);
    t13 = xsi_mem_cmp(t11, t5, 2U);
    if (t13 == 1)
        goto LAB8;

LAB13:    t14 = (t0 + 8586);
    t16 = xsi_mem_cmp(t14, t5, 2U);
    if (t16 == 1)
        goto LAB9;

LAB14:
LAB10:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 5248);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(82, ng0);
    t17 = (t0 + 2792U);
    t18 = *((char **)t17);
    t17 = (t0 + 8588);
    t20 = 1;
    if (2U == 2U)
        goto LAB19;

LAB20:    t20 = 0;

LAB21:    if (t20 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 5248);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB17:    goto LAB5;

LAB7:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 8590);
    t3 = 1;
    if (2U == 2U)
        goto LAB28;

LAB29:    t3 = 0;

LAB30:    if (t3 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 5248);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB26:    goto LAB5;

LAB8:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 8592);
    t3 = 1;
    if (2U == 2U)
        goto LAB37;

LAB38:    t3 = 0;

LAB39:    if (t3 != 0)
        goto LAB34;

LAB36:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 5248);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB35:    goto LAB5;

LAB9:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 8594);
    t3 = 1;
    if (2U == 2U)
        goto LAB46;

LAB47:    t3 = 0;

LAB48:    if (t3 != 0)
        goto LAB43;

LAB45:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 5248);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB44:    goto LAB5;

LAB15:;
LAB16:    xsi_set_current_line(83, ng0);
    t24 = (t0 + 5248);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t24);
    goto LAB17;

LAB19:    t21 = 0;

LAB22:    if (t21 < 2U)
        goto LAB23;
    else
        goto LAB21;

LAB23:    t22 = (t18 + t21);
    t23 = (t17 + t21);
    if (*((unsigned char *)t22) != *((unsigned char *)t23))
        goto LAB20;

LAB24:    t21 = (t21 + 1);
    goto LAB22;

LAB25:    xsi_set_current_line(89, ng0);
    t9 = (t0 + 5248);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB26;

LAB28:    t21 = 0;

LAB31:    if (t21 < 2U)
        goto LAB32;
    else
        goto LAB30;

LAB32:    t6 = (t2 + t21);
    t8 = (t1 + t21);
    if (*((unsigned char *)t6) != *((unsigned char *)t8))
        goto LAB29;

LAB33:    t21 = (t21 + 1);
    goto LAB31;

LAB34:    xsi_set_current_line(95, ng0);
    t9 = (t0 + 5248);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB35;

LAB37:    t21 = 0;

LAB40:    if (t21 < 2U)
        goto LAB41;
    else
        goto LAB39;

LAB41:    t6 = (t2 + t21);
    t8 = (t1 + t21);
    if (*((unsigned char *)t6) != *((unsigned char *)t8))
        goto LAB38;

LAB42:    t21 = (t21 + 1);
    goto LAB40;

LAB43:    xsi_set_current_line(101, ng0);
    t9 = (t0 + 5248);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB44;

LAB46:    t21 = 0;

LAB49:    if (t21 < 2U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t6 = (t2 + t21);
    t8 = (t1 + t21);
    if (*((unsigned char *)t6) != *((unsigned char *)t8))
        goto LAB47;

LAB51:    t21 = (t21 + 1);
    goto LAB49;

}

static void work_a_2471071165_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(134, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 5312);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5168);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2471071165_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2471071165_3212880686_p_0,(void *)work_a_2471071165_3212880686_p_1};
	xsi_register_didat("work_a_2471071165_3212880686", "isim/tb_controlador_demux_display_isim_beh.exe.sim/work/a_2471071165_3212880686.didat");
	xsi_register_executes(pe);
}
