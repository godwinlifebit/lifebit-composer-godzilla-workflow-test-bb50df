nextflow.enable.dsl=2

include { fastqc_1 } from './modules/fastqc_1/module.nf'
include { downsample_1 } from './modules/downsample_1/module.nf'

workflow {
input1 = Channel.fromPath(params.fastqc_1.fastq)
fastqc_1(input1)
downsample_1(fastqc_1.out.output1)
}
