<?xml version="1.0" encoding="UTF-8"?>
<package schemaVersion="1.6" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema-instance" xs:noNamespaceSchemaLocation="PACK.xsd">
  <vendor>tensorflow</vendor>
  <name>tensorflow-lite-micro</name>
  <description>Deep learning framework for on-device inference.</description>
  <!-- web download link -->
  <url>https://github.com/MDK-Packs/Pack/raw/master/TensorFlow/</url>
  <license>LICENSE</license>
  <releases>
    <release version="%{RELEASE_VERSION}%" date="%{RELEASE_DATE}%">
      TensorFlow %{RELEASE_VERSION}%
    </release>
  </releases>

  <taxonomy>
    <description Cclass="Machine Learning">Software Components for Machine Learning</description>
  </taxonomy>

  <conditions>
    <condition id="CMSIS-NN">

    </condition>
    <condition id="Kernel Utils">
      <require Cclass="Machine Learning" Cgroup="TensorFlow" Csub="Kernel Utils" />
    </condition>
  </conditions>

  <components>
    <component Cclass="Machine Learning" Cgroup="TensorFlow" Csub="Kernel" Cvariant="Reference" Cversion="%{RELEASE_VERSION}%" condition="Kernel Utils">
      <description>TensorFlow Lite Micro Library</description>
      <RTE_Components_h>
        <!-- the following content goes into file 'RTE_Components.h' -->
        #define RTE_ML_TF_LITE     /* TF */
      </RTE_Components_h>
      <Pre_Include_Global_h>
        // enabling global pre includes 
        #define TF_LITE_STATIC_MEMORY 1
      </Pre_Include_Global_h>
      <files>
        %{KERNEL_FILES_REFERENCE}%
        <file category="include" name="./"/>
      </files>
    </component>
    <component Cclass="Machine Learning" Cgroup="TensorFlow" Csub="Kernel" Cvariant="CMSIS-NN" Cversion="%{RELEASE_VERSION}%" condition="Kernel Utils" >
      <description>TensorFlow Lite Micro Library</description>
      <RTE_Components_h>
        <!-- the following content goes into file 'RTE_Components.h' -->
        #define RTE_ML_TF_LITE     /* TF */
      </RTE_Components_h>
      <Pre_Include_Global_h>
        // enabling global pre includes 
        #define TF_LITE_STATIC_MEMORY 1
      </Pre_Include_Global_h>
      <files>
        %{KERNEL_FILES_CMSIS}%
        <file category="include" name="./"/>
      </files>
    </component>
    <component Cclass="Machine Learning" Cgroup="TensorFlow" Csub="Kernel" Cvariant="Ethos-U" Cversion="%{RELEASE_VERSION}%" condition="Kernel Utils">
      <description>TensorFlow Lite Micro Library</description>
      <RTE_Components_h>
        <!-- the following content goes into file 'RTE_Components.h' -->
        #define RTE_ML_TF_LITE     /* TF */
      </RTE_Components_h>
      <Pre_Include_Global_h>
        // enabling global pre includes 
        #define TF_LITE_STATIC_MEMORY 1
      </Pre_Include_Global_h>
      <files>
         %{KERNEL_FILES_ETHOS}%
        <file category="include" name="./"/>
      </files>
    </component>
     <!-- this component can be merged into the Kernel components, when duplicate module name issue is solved elsewhere -->
    <component Cclass="Machine Learning" Cgroup="TensorFlow" Csub="Kernel Utils" Cversion="%{RELEASE_VERSION}%">
      <description>TensorFlow Lite Micro Library</description>
      <files>
        <file category="sourceCpp" name="tensorflow/lite/kernels/kernel_util.cc"/>
      </files>
    </component>
    <component Cclass="Machine Learning" Cgroup="TensorFlow" Csub="Testing" Cversion="%{RELEASE_VERSION}%">
      <description>TensorFlow Lite Micro Library</description>
      <RTE_Components_h>
        <!-- the following content goes into file 'RTE_Components.h' -->
        #define RTE_ML_TF_LITE     /* TF */
      </RTE_Components_h>
      <files>
        %{TEST_FILES}%
        <file category="include" name="./"/>
      </files>
    </component>

  </components>
</package>

