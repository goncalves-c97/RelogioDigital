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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_0581773004_3212880686_init();
    work_a_1446367043_3212880686_init();
    work_a_0991355388_3212880686_init();
    work_a_3562711603_3212880686_init();
    work_a_0429466605_3212880686_init();
    work_a_1601670197_3212880686_init();
    work_a_3108208417_3212880686_init();
    work_a_2506449027_3212880686_init();
    work_a_3911666377_3212880686_init();
    work_a_0745403839_3212880686_init();
    work_a_4265571813_3212880686_init();
    work_a_2471071165_3212880686_init();
    work_a_2604711310_3212880686_init();
    work_a_1903677004_3212880686_init();
    work_a_1174969117_3212880686_init();
    work_a_2313535624_3212880686_init();
    work_a_3401600975_3212880686_init();
    work_a_0240981267_3212880686_init();
    work_a_2709386603_2372691052_init();


    xsi_register_tops("work_a_2709386603_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
