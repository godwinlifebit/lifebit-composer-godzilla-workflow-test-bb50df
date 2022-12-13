nextflow.enable.dsl=2

include { fastqc_1 } from './modules/fastqc_1/module.nf'
include { downsample_1 } from './modules/downsample_1/module.nf'
include { gunzip_1 } from './modules/gunzip_1/module.nf'
include { bamcmp_1 } from './modules/bamcmp_1/module.nf'
include { downsample_2 } from './modules/downsample_2/module.nf'

workflow {
input1 = Channel.fromPath(params.fastqc_1.fastq)
input2 = Channel.fromPath(params.bamcmp_1.meta_sample_contaminant).splitCsv(sep: ';').map { row -> tuple(evaluate(row[0]), row[1], row[2]) }
fastqc_1(input1)
bamcmp_1(input2)
gunzip_1(fastqc_1.out.output1)
downsample_1(fastqc_1.out.output1)
downsample_2(gunzip_1.out.output1)
}
