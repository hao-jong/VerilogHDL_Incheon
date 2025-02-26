#line 2 "lop-config.dts"
/dts-v1/;
/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                lop_0 {
                        compatible = "system-device-tree-v1,lop,load";
                        load = "assists/baremetal_validate_comp_xlnx.py";
                };

                lop_1 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/FPGA_project/zynq_basic_system_sw/zynq_basys_plat/zynq_fsbl/zynq_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "ps7_cortexa9_0 C:/Xilinx/Vitis/2024.1/data/embeddedsw/lib/sw_services/xilffs_v5_2/src C:/FPGA_project/zynq_basic_system_sw/.wsdata/.repo.yaml";
                };

                lop_2 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/FPGA_project/zynq_basic_system_sw/zynq_basys_plat/zynq_fsbl/zynq_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "ps7_cortexa9_0 C:/Xilinx/Vitis/2024.1/data/embeddedsw/lib/sw_services/xilrsa_v1_8/src C:/FPGA_project/zynq_basic_system_sw/.wsdata/.repo.yaml";
                };

        };
    };
