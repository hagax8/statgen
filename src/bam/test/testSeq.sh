ERROR=false

# Sam To Sam
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.sam --out results/seqNoOpt.sam 2> results/seqNoOpt.sam.log && diff results/seqNoOpt.sam expected/seqOrig.sam && diff results/seqNoOpt.sam.log expected/seq.log \
&& \
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.sam --out results/seqOrig.sam 2> results/seqOrig.sam.log --useOrigSeq && diff results/seqOrig.sam expected/seqOrig.sam && diff results/seqOrig.sam.log expected/seq.log \
&& \
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.sam --out results/seqBases.sam 2> results/seqBases.sam.log --useBases && diff results/seqBases.sam expected/seqBases.sam && diff results/seqBases.sam.log expected/seq.log \
&& \
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.sam --out results/seqEquals.sam 2> results/seqEquals.sam.log --useEquals && diff results/seqEquals.sam expected/seqEquals.sam && diff results/seqEquals.sam.log expected/seq.log \
&& \
# Bam to Sam
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.bam --out results/seqNoOptBam.sam 2> results/seqNoOptBam.sam.log && diff results/seqNoOptBam.sam expected/seqOrig.sam && diff results/seqNoOptBam.sam.log expected/seq.log \
&& \
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.bam --out results/seqOrigBam.sam 2> results/seqOrigBam.sam.log --useOrigSeq && diff results/seqOrigBam.sam expected/seqOrig.sam && diff results/seqOrigBam.sam.log expected/seq.log \
&& \
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.bam --out results/seqBasesBam.sam 2> results/seqBasesBam.sam.log --useBases && diff results/seqBasesBam.sam expected/seqBases.sam && diff results/seqBasesBam.sam.log expected/seq.log \
&& \
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.bam --out results/seqEqualsBam.sam 2> results/seqEqualsBam.sam.log --useEquals && diff results/seqEqualsBam.sam expected/seqEquals.sam && diff results/seqEqualsBam.sam.log expected/seq.log \
&& \
# Sam To Bam
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.sam --out results/seqNoOpt.bam 2> results/seqNoOpt.bam.log && diff results/seqNoOpt.bam expected/seqOrig.bam && diff results/seqNoOpt.bam.log expected/seq.log \
&& \
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.sam --out results/seqOrig.bam 2> results/seqOrig.bam.log --useOrigSeq && diff results/seqOrig.bam expected/seqOrig.bam && diff results/seqOrig.bam.log expected/seq.log \
&& \
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.sam --out results/seqBases.bam 2> results/seqBases.bam.log --useBases && diff results/seqBases.bam expected/seqBases.bam && diff results/seqBases.bam.log expected/seq.log \
&& \
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.sam --out results/seqEquals.bam 2> results/seqEquals.bam.log --useEquals && diff results/seqEquals.bam expected/seqEquals.bam && diff results/seqEquals.bam.log expected/seq.log \
&& \
# Bam To Bam
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.bam --out results/seqNoOptBam.bam 2> results/seqNoOptBam.bam.log && diff results/seqNoOptBam.bam expected/seqOrig.bam && diff results/seqNoOptBam.bam.log expected/seq.log \
&& \
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.bam --out results/seqOrigBam.bam 2> results/seqOrigBam.bam.log --useOrigSeq && diff results/seqOrigBam.bam expected/seqOrig.bam && diff results/seqOrigBam.bam.log expected/seq.log \
&& \
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.bam --out results/seqBasesBam.bam 2> results/seqBasesBam.bam.log --useBases && diff results/seqBasesBam.bam expected/seqBases.bam && diff results/seqBasesBam.bam.log expected/seq.log \
&& \
../../bin/bam convert --refFile testFiles/chr1_partial.fa --in testFiles/testFilter.bam --out results/seqEqualsBam.bam 2> results/seqEqualsBam.bam.log --useEquals && diff results/seqEqualsBam.bam expected/seqEquals.bam && diff results/seqEqualsBam.bam.log expected/seq.log

if [ $? -ne 0 ]
then
    ERROR=true
fi

if($ERROR == true)
then
  exit 1
fi

