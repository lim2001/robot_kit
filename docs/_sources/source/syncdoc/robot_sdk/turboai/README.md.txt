# TurboAI 

## #TurboAI Overview

The TurboAI toolkit consists of both offline(on host) and runtime(on device) tools.<br>
TurboAITools is the offline tools set of TurboAI, which does model conversion, quantization, optimization and encryption as well. It runs completely on host PC.<br>
Meanwhie, TurboAIRT is the runtime part of TurboAI, which loads the converted model of TurboAITools and does inference on target device SoC.<br>

You should log on [Orbbec file server](http://10.10.20.190:5000) and access [TurboAI toolkit] here (/QH/01_remote/项目/TurboAI/Release).

![TurboAI Architecture](./TurboAI-流程图.jpg)

## Author

Orbbec HPC Team <br>
You can contact us by email: gutao@orbbec.com.

## Release Notes

### TurboAI v0.0.1

TurboAI v0.0.1 is the first release and it is for Orbbec internal use only. <br>
It provides the following contents:

* 3rd party tools and libraries from SoC vendors, such as SNPE toolkit and libraries from Qualcomm
* Documents and scripts to install and use the TurboAI toolkit
* Example codes to run Unet and deeplabv3 networks

### Supported Platforms

Host: Linux x64 <br>
Device: Qualcomm SoC, such as QCS6490, SM870 <br>

See detailed documents in TurboAITools and TurboAIRT sub-folders.
