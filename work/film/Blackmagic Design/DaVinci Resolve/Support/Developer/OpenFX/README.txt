Updated as of 15 April 2016
---------------------------

In this package, you can find the following subdirectories:

1. GainPlugin   - Sample OpenFX plugin using the CUDA and OpenCL render support
2. OpenFX-1.3   - Contains the header files from the OpenFX package
3. Support      - Contains the header and source files from the OpenFX C++ wrapper package

In the GainPlugin directory, the following project files are provided:

1. GainPlugin.xcodeproj                     - Xcode project file
2. GainPlugin.sln and GainPlugin.vcxproj    - Visual Studio solution and project files
3. Makefile                                 - Makefile for command line compilation

After compilation, it will generate a directory named "GainPlugin.ofx.bundle". In order for Resolve to register this plugin, this
directory needs to be copied to "/Library/OFX/Plugins" on the Mac OSX platform. On the Linux platform, this directory needs to be
copied to "/usr/OFX/Plugins"

On the Windows platform, the directory named "GainPlugin.ofx.bundle" is generated in the Debug/Release directory. This directory
needs to be copied to "C:\Program Files\Common Files\OFX\Plugins".

Other than the project files, there are four other files containing the source code for the plugin:

1. GainPlugin.h       - Contains the plugin factory class declaration
2. GainPlugin.cpp     - Contains the plugin factory class definition, plugin definition and the image processing algorithm
3. CudaKernel.cu      - Contains the CUDA kernel and the function to call the CUDA kernel
4. OpenCLKernel.cpp   - Contains the OpenCL kernel and the function to call the OpenCL kernel
5. MetalKernel.mm     - Contains the Metal kernel and the function to call the Metal kernel

This sample OpenFX plugin is capable of processing the images using the GPU (with CUDA or OpenCL or Metal) or the CPU. Other than
the CUDA, OpenCL and Metal kernel implementation in CudaKernel.cu, OpenCLKernel.cpp and MetalKernel respectively, the rest of the
plugin implementation details are in GainPlugin.cpp.

In the first part of GainPlugin.cpp, there is a list of constants providing the details of the plugin. These are used to provide
the information to the user when this plugin is selected.

In the next part, it creates a subclass of OFX::ImageProcessor. It has four virtual methods (processImagesCUDA, processImagesOpenCL,
processImagesMetal and multiThreadProcessImages) that can be overridden with your own implementation of processing algorithm on the
GPU and CPU.

Next, it creates a sublcass of OFX::ImageEffect. In the constructor, the handle to the input clips, output clips and required
parameters are setup. Then, there are four virtual methods that are overridden. GainPlugin::render() must be overridden and is the
plugin's render function. GainPlugin::isIdentity() is used to indicate if processing is necessary with the given parameter set and
rendering arguments. GainPlugin::changedParam() is called when a parameter has changed its value. GainPlugin::changedClip() is called
when a clip has just changed.

GainPlugin::setupAndProcess() is called by GainPlugin::render(). It is used to setup all the parameters before invoking the image
processor. Depending on the selected mode, the appropriate virtual methods (processImagesCUDA, processImagesOpenCL, processImagesMetal
and multiThreadProcessImages) will be invoked.

For the GainPluginFactory class, there are three virtual methods (describe, describeInContext and createInstance) that must be overridden.
GainPluginFactory::describe() is used to describe the plugin. For example, the supported bit depth and whether OpenCL, CUDA and Metal
render capability is supported. GainPluginFactory::describeInContext() is used to describe the requirements of the clips and the
parameters for the plugin.

Finally, OFX::Plugin::getPluginIDs() is required to register the plugin.
