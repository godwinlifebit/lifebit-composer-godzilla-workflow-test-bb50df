# Godzilla.Workflow.Test

## Description

This is just for test purposes only

## Components

The present workflow is composed by the following unique components (Note that some components may be repeated):

### lifebitai_fastqc

**Description**: Quality control assessment of FastQ files using FastQC.\
**Inputs**: 1\
**Outputs**: 1\
**Parameters**: 0\
**Authors**: @odiogosilva

### lifebitai_downsample

**Description**: Downsamples FastQ samples.\
**Inputs**: 1\
**Outputs**: 1\
**Parameters**: 1\
**Authors**: 

### lifebit_gunzip

**Description**: Compresses the provided files with Gunzip.\
**Inputs**: 1\
**Outputs**: 1\
**Parameters**: 0\
**Authors**: 

### nf-core_bamcmp

**Description**: Bamcmp (Bam Compare) is a tool for assigning reads between a primary genome and a contamination genome. For instance, filtering out mouse reads from patient derived xenograft mouse models (PDX).\
**Inputs**: 1\
**Outputs**: 3\
**Parameters**: 0\
**Authors**: @kmurat1, @sppearce

## Inputs

- `--fastqc_1.fastq`: FastQ files, which can be compressed or uncompressed
- `--bamcmp_1.meta_sample_contaminant`: 
## Parameters

### Required



### Optional

- `--downsample_1.ratio`: Provide the desired estimated coverage as a ratio (e.g.: 50X)
    - **Component**: downsample_1 
    - Type: number
    - Default: `50` 

- `--downsample_2.ratio`: Provide the desired estimated coverage as a ratio (e.g.: 50X)
    - **Component**: downsample_2 
    - Type: number
    - Default: `50` 

