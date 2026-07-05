
# Build and Installation of NVIDIA NCCL

This repository contains bash scripts for build and installation of the 
[NVIDIA Collective Communication Library (NCCL)](https://developer.nvidia.com/nccl).


## Overview

The `bin` directory contains the following bash scripts:

```text
bin/
├── build.sh                # Build NCCL library and tools.
└── install.sh              # Install NCCL library and tools in the local file system.
```

**NOTE**: Build of the **NVIDIA NCCL** library and tools requires that **NVIDIA CUDA Toolkit** is installed in the system.
The installation of **NVIDIA CUDA Toolkit** can be found here [ed_nvidia_cuda](https://github.com/embed-dsp/ed_nvidia_cuda)


## Build

Enter the `bin` directory and edit the `build.sh` script and make sure that the 
path to the sourcing of the CUDA environment is set correctly.

Type the following command:

```sh
./build.sh
```


## Local Installation

Enter the `bin` directory and edit the `install.sh` script and make sure that the 
`owner:group` is set correctly for the `chown` command.

Type the following command:

```sh
./install.sh
```

The **NVIDIA NCCL** library is installed in the local file system in `/opt/nvidia/nccl`:

```text
/opt/nvidia/nccl/
├── bin
│   ├── ncclparam
│   └── ncclras
├── include
│   ├── nccl_device
│   │   ├── barrier.h
│   │   ├── comm.h
│   │   ├── coop.h
│   │   ├── core.h
│   │   ├── gin
│   │   │   ├── gdaki
│   │   │   │   ├── doca_gpunetio
│   │   │   │   │   ├── common
│   │   │   │   │   │   ├── doca_gpunetio_verbs_def.h
│   │   │   │   │   │   └── doca_gpunetio_verbs_dev.h
│   │   │   │   │   ├── device
│   │   │   │   │   │   ├── doca_gpunetio_dev_verbs_common.cuh
│   │   │   │   │   │   ├── doca_gpunetio_dev_verbs_counter.cuh
│   │   │   │   │   │   ├── doca_gpunetio_dev_verbs_cq.cuh
│   │   │   │   │   │   ├── doca_gpunetio_dev_verbs_onesided.cuh
│   │   │   │   │   │   └── doca_gpunetio_dev_verbs_qp.cuh
│   │   │   │   │   └── doca_gpunetio_device.h
│   │   │   │   ├── gin_gdaki_device_host_common.h
│   │   │   │   └── gin_gdaki.h
│   │   │   ├── gin_device_api.h
│   │   │   ├── gin_device_common.h
│   │   │   ├── gin_device_host_common.h
│   │   │   ├── gpi
│   │   │   │   ├── gin_gpi_device_host_common.h
│   │   │   │   └── gin_gpi.h
│   │   │   └── proxy
│   │   │       ├── gin_proxy_device_host_common.h
│   │   │       └── gin_proxy.h
│   │   ├── gin_barrier.h
│   │   ├── gin.h
│   │   ├── gin_win_stub.h
│   │   ├── impl
│   │   │   ├── barrier__funcs.h
│   │   │   ├── barrier__types.h
│   │   │   ├── comm__funcs.h
│   │   │   ├── comm__types.h
│   │   │   ├── core__funcs.h
│   │   │   ├── core__types.h
│   │   │   ├── gin_barrier__funcs.h
│   │   │   ├── gin_barrier__types.h
│   │   │   ├── gin__funcs.h
│   │   │   ├── gin__types.h
│   │   │   ├── ll_a2a__funcs.h
│   │   │   ├── ll_a2a__types.h
│   │   │   ├── lsa_barrier__funcs.h
│   │   │   ├── lsa_barrier__types.h
│   │   │   ├── multimem__funcs.h
│   │   │   ├── ptr__funcs.h
│   │   │   ├── ptr__types.h
│   │   │   ├── reduce_copy__funcs.h
│   │   │   ├── reduce_copy__impl.h
│   │   │   ├── reduce_copy__types.h
│   │   │   ├── vector__funcs.h
│   │   │   └── vector__types.h
│   │   ├── ll_a2a.h
│   │   ├── lsa_barrier.h
│   │   ├── net_device.h
│   │   ├── ptr.h
│   │   ├── reduce_copy.h
│   │   └── utility.h
│   ├── nccl_device.h
│   └── nccl.h
└── lib
    ├── libnccl.so -> libnccl.so.2
    ├── libnccl.so.2 -> libnccl.so.2.30.7
    ├── libnccl.so.2.30.7
    ├── libnccl_static.a
    └── pkgconfig
        └── nccl.pc
```
