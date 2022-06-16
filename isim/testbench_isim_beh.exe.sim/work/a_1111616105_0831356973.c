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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Archi Labs/Lab 9 - MIPS Processor/regfile.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_0774719531;

int ieee_p_0774719531_sub_378705076_2162500114(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1111616105_0831356973_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(17, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4040);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(18, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(18, ng0);
    t3 = (t0 + 1832U);
    t7 = *((char **)t3);
    t3 = (t0 + 1672U);
    t8 = *((char **)t3);
    t3 = (t0 + 6648U);
    t9 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t8, t3);
    t10 = (t9 - 31);
    t11 = (t10 * -1);
    t12 = (32U * t11);
    t13 = (0U + t12);
    t14 = (t0 + 4136);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 32U);
    xsi_driver_first_trans_delta(t14, t13, 32U, 0LL);
    goto LAB6;

}

static void work_a_1111616105_0831356973_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6616U);
    t3 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t2, t1);
    t4 = (t3 == 0);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t1 = (t0 + 6616U);
    t3 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t5, t1);
    t12 = (t3 - 31);
    t13 = (t12 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t3);
    t14 = (32U * t13);
    t15 = (0 + t14);
    t6 = (t2 + t15);
    t7 = (t0 + 4200);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);

LAB3:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6632U);
    t3 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t2, t1);
    t4 = (t3 == 0);
    if (t4 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 6632U);
    t3 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t5, t1);
    t12 = (t3 - 31);
    t13 = (t12 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t3);
    t14 = (32U * t13);
    t15 = (0 + t14);
    t6 = (t2 + t15);
    t7 = (t0 + 4264);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);

LAB6:    t1 = (t0 + 4056);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(23, ng0);
    t5 = (t0 + 7825);
    t7 = (t0 + 4200);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 32U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB3;

LAB5:    xsi_set_current_line(26, ng0);
    t5 = (t0 + 7857);
    t7 = (t0 + 4264);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 32U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB6;

}


extern void work_a_1111616105_0831356973_init()
{
	static char *pe[] = {(void *)work_a_1111616105_0831356973_p_0,(void *)work_a_1111616105_0831356973_p_1};
	xsi_register_didat("work_a_1111616105_0831356973", "isim/testbench_isim_beh.exe.sim/work/a_1111616105_0831356973.didat");
	xsi_register_executes(pe);
}
