package androidx.media3.exoplayer.source;

import P3.v;
import androidx.media3.common.DataReader;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.upstream.Allocation;
import androidx.media3.exoplayer.upstream.Allocator;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import u0.C1663d;
import u0.C1665f;
import v0.q0;

/* loaded from: classes.dex */
class SampleDataQueue {
    private static final int INITIAL_SCRATCH_SIZE = 32;
    private final int allocationLength;
    private final Allocator allocator;
    private AllocationNode firstAllocationNode;
    private AllocationNode readAllocationNode;
    private final ParsableByteArray scratch;
    private long totalBytesWritten;
    private AllocationNode writeAllocationNode;

    public static final class AllocationNode implements Allocator.AllocationNode {
        public Allocation allocation;
        public long endPosition;
        public AllocationNode next;
        public long startPosition;

        public AllocationNode(long j7, int i2) {
            reset(j7, i2);
        }

        public AllocationNode clear() {
            this.allocation = null;
            AllocationNode allocationNode = this.next;
            this.next = null;
            return allocationNode;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator.AllocationNode
        public Allocation getAllocation() {
            return (Allocation) v.checkNotNull(this.allocation);
        }

        public void initialize(Allocation allocation, AllocationNode allocationNode) {
            this.allocation = allocation;
            this.next = allocationNode;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator.AllocationNode
        public Allocator.AllocationNode next() {
            AllocationNode allocationNode = this.next;
            if (allocationNode == null || allocationNode.allocation == null) {
                return null;
            }
            return allocationNode;
        }

        public void reset(long j7, int i2) {
            v.checkState(this.allocation == null);
            this.startPosition = j7;
            this.endPosition = j7 + i2;
        }

        public int translateOffset(long j7) {
            return ((int) (j7 - this.startPosition)) + this.allocation.offset;
        }
    }

    public SampleDataQueue(Allocator allocator) {
        this.allocator = allocator;
        int individualAllocationLength = allocator.getIndividualAllocationLength();
        this.allocationLength = individualAllocationLength;
        this.scratch = new ParsableByteArray(32);
        AllocationNode allocationNode = new AllocationNode(0L, individualAllocationLength);
        this.firstAllocationNode = allocationNode;
        this.readAllocationNode = allocationNode;
        this.writeAllocationNode = allocationNode;
    }

    private void clearAllocationNodes(AllocationNode allocationNode) {
        if (allocationNode.allocation == null) {
            return;
        }
        this.allocator.release(allocationNode);
        allocationNode.clear();
    }

    private static AllocationNode getNodeContainingPosition(AllocationNode allocationNode, long j7) {
        while (j7 >= allocationNode.endPosition) {
            allocationNode = allocationNode.next;
        }
        return allocationNode;
    }

    private void postAppend(int i2) {
        long j7 = this.totalBytesWritten + i2;
        this.totalBytesWritten = j7;
        AllocationNode allocationNode = this.writeAllocationNode;
        if (j7 == allocationNode.endPosition) {
            this.writeAllocationNode = allocationNode.next;
        }
    }

    private int preAppend(int i2) {
        AllocationNode allocationNode = this.writeAllocationNode;
        if (allocationNode.allocation == null) {
            allocationNode.initialize(this.allocator.allocate(), new AllocationNode(this.writeAllocationNode.endPosition, this.allocationLength));
        }
        return Math.min(i2, (int) (this.writeAllocationNode.endPosition - this.totalBytesWritten));
    }

    private static AllocationNode readData(AllocationNode allocationNode, long j7, ByteBuffer byteBuffer, int i2) {
        AllocationNode nodeContainingPosition = getNodeContainingPosition(allocationNode, j7);
        while (i2 > 0) {
            int min = Math.min(i2, (int) (nodeContainingPosition.endPosition - j7));
            byteBuffer.put(nodeContainingPosition.allocation.data, nodeContainingPosition.translateOffset(j7), min);
            i2 -= min;
            j7 += min;
            if (j7 == nodeContainingPosition.endPosition) {
                nodeContainingPosition = nodeContainingPosition.next;
            }
        }
        return nodeContainingPosition;
    }

    private static AllocationNode readEncryptionData(AllocationNode allocationNode, C1665f c1665f, SampleQueue.SampleExtrasHolder sampleExtrasHolder, ParsableByteArray parsableByteArray) {
        long j7 = sampleExtrasHolder.offset;
        int i2 = 1;
        parsableByteArray.reset(1);
        AllocationNode readData = readData(allocationNode, j7, parsableByteArray.getData(), 1);
        long j8 = j7 + 1;
        byte b7 = parsableByteArray.getData()[0];
        boolean z6 = (b7 & 128) != 0;
        int i7 = b7 & Byte.MAX_VALUE;
        C1663d c1663d = c1665f.cryptoInfo;
        byte[] bArr = c1663d.f20232a;
        if (bArr == null) {
            c1663d.f20232a = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        AllocationNode readData2 = readData(readData, j8, c1663d.f20232a, i7);
        long j9 = j8 + i7;
        if (z6) {
            parsableByteArray.reset(2);
            readData2 = readData(readData2, j9, parsableByteArray.getData(), 2);
            j9 += 2;
            i2 = parsableByteArray.readUnsignedShort();
        }
        int i8 = i2;
        int[] iArr = c1663d.f20235d;
        if (iArr == null || iArr.length < i8) {
            iArr = new int[i8];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = c1663d.f20236e;
        if (iArr3 == null || iArr3.length < i8) {
            iArr3 = new int[i8];
        }
        int[] iArr4 = iArr3;
        if (z6) {
            int i9 = i8 * 6;
            parsableByteArray.reset(i9);
            readData2 = readData(readData2, j9, parsableByteArray.getData(), i9);
            j9 += i9;
            parsableByteArray.setPosition(0);
            for (int i10 = 0; i10 < i8; i10++) {
                iArr2[i10] = parsableByteArray.readUnsignedShort();
                iArr4[i10] = parsableByteArray.readUnsignedIntToInt();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = sampleExtrasHolder.size - ((int) (j9 - sampleExtrasHolder.offset));
        }
        q0 q0Var = (q0) Util.castNonNull(sampleExtrasHolder.cryptoData);
        c1663d.set(i8, iArr2, iArr4, q0Var.f20514b, c1663d.f20232a, q0Var.f20513a, q0Var.f20515c, q0Var.f20516d);
        long j10 = sampleExtrasHolder.offset;
        int i11 = (int) (j9 - j10);
        sampleExtrasHolder.offset = j10 + i11;
        sampleExtrasHolder.size -= i11;
        return readData2;
    }

    private static AllocationNode readSampleData(AllocationNode allocationNode, C1665f c1665f, SampleQueue.SampleExtrasHolder sampleExtrasHolder, ParsableByteArray parsableByteArray) {
        if (c1665f.isEncrypted()) {
            allocationNode = readEncryptionData(allocationNode, c1665f, sampleExtrasHolder, parsableByteArray);
        }
        if (!c1665f.hasSupplementalData()) {
            c1665f.ensureSpaceForWrite(sampleExtrasHolder.size);
            return readData(allocationNode, sampleExtrasHolder.offset, c1665f.data, sampleExtrasHolder.size);
        }
        parsableByteArray.reset(4);
        AllocationNode readData = readData(allocationNode, sampleExtrasHolder.offset, parsableByteArray.getData(), 4);
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        sampleExtrasHolder.offset += 4;
        sampleExtrasHolder.size -= 4;
        c1665f.ensureSpaceForWrite(readUnsignedIntToInt);
        AllocationNode readData2 = readData(readData, sampleExtrasHolder.offset, c1665f.data, readUnsignedIntToInt);
        sampleExtrasHolder.offset += readUnsignedIntToInt;
        int i2 = sampleExtrasHolder.size - readUnsignedIntToInt;
        sampleExtrasHolder.size = i2;
        c1665f.resetSupplementalData(i2);
        return readData(readData2, sampleExtrasHolder.offset, c1665f.supplementalData, sampleExtrasHolder.size);
    }

    public void discardDownstreamTo(long j7) {
        AllocationNode allocationNode;
        if (j7 == -1) {
            return;
        }
        while (true) {
            allocationNode = this.firstAllocationNode;
            if (j7 < allocationNode.endPosition) {
                break;
            }
            this.allocator.release(allocationNode.allocation);
            this.firstAllocationNode = this.firstAllocationNode.clear();
        }
        if (this.readAllocationNode.startPosition < allocationNode.startPosition) {
            this.readAllocationNode = allocationNode;
        }
    }

    public void discardUpstreamSampleBytes(long j7) {
        v.checkArgument(j7 <= this.totalBytesWritten);
        this.totalBytesWritten = j7;
        if (j7 != 0) {
            AllocationNode allocationNode = this.firstAllocationNode;
            if (j7 != allocationNode.startPosition) {
                while (this.totalBytesWritten > allocationNode.endPosition) {
                    allocationNode = allocationNode.next;
                }
                AllocationNode allocationNode2 = (AllocationNode) v.checkNotNull(allocationNode.next);
                clearAllocationNodes(allocationNode2);
                AllocationNode allocationNode3 = new AllocationNode(allocationNode.endPosition, this.allocationLength);
                allocationNode.next = allocationNode3;
                if (this.totalBytesWritten == allocationNode.endPosition) {
                    allocationNode = allocationNode3;
                }
                this.writeAllocationNode = allocationNode;
                if (this.readAllocationNode == allocationNode2) {
                    this.readAllocationNode = allocationNode3;
                    return;
                }
                return;
            }
        }
        clearAllocationNodes(this.firstAllocationNode);
        AllocationNode allocationNode4 = new AllocationNode(this.totalBytesWritten, this.allocationLength);
        this.firstAllocationNode = allocationNode4;
        this.readAllocationNode = allocationNode4;
        this.writeAllocationNode = allocationNode4;
    }

    public long getTotalBytesWritten() {
        return this.totalBytesWritten;
    }

    public void peekToBuffer(C1665f c1665f, SampleQueue.SampleExtrasHolder sampleExtrasHolder) {
        readSampleData(this.readAllocationNode, c1665f, sampleExtrasHolder, this.scratch);
    }

    public void readToBuffer(C1665f c1665f, SampleQueue.SampleExtrasHolder sampleExtrasHolder) {
        this.readAllocationNode = readSampleData(this.readAllocationNode, c1665f, sampleExtrasHolder, this.scratch);
    }

    public void reset() {
        clearAllocationNodes(this.firstAllocationNode);
        this.firstAllocationNode.reset(0L, this.allocationLength);
        AllocationNode allocationNode = this.firstAllocationNode;
        this.readAllocationNode = allocationNode;
        this.writeAllocationNode = allocationNode;
        this.totalBytesWritten = 0L;
        this.allocator.trim();
    }

    public void rewind() {
        this.readAllocationNode = this.firstAllocationNode;
    }

    public int sampleData(DataReader dataReader, int i2, boolean z6) throws IOException {
        int preAppend = preAppend(i2);
        AllocationNode allocationNode = this.writeAllocationNode;
        int read = dataReader.read(allocationNode.allocation.data, allocationNode.translateOffset(this.totalBytesWritten), preAppend);
        if (read != -1) {
            postAppend(read);
            return read;
        }
        if (z6) {
            return -1;
        }
        throw new EOFException();
    }

    private static AllocationNode readData(AllocationNode allocationNode, long j7, byte[] bArr, int i2) {
        AllocationNode nodeContainingPosition = getNodeContainingPosition(allocationNode, j7);
        int i7 = i2;
        while (i7 > 0) {
            int min = Math.min(i7, (int) (nodeContainingPosition.endPosition - j7));
            System.arraycopy(nodeContainingPosition.allocation.data, nodeContainingPosition.translateOffset(j7), bArr, i2 - i7, min);
            i7 -= min;
            j7 += min;
            if (j7 == nodeContainingPosition.endPosition) {
                nodeContainingPosition = nodeContainingPosition.next;
            }
        }
        return nodeContainingPosition;
    }

    public void sampleData(ParsableByteArray parsableByteArray, int i2) {
        while (i2 > 0) {
            int preAppend = preAppend(i2);
            AllocationNode allocationNode = this.writeAllocationNode;
            parsableByteArray.readBytes(allocationNode.allocation.data, allocationNode.translateOffset(this.totalBytesWritten), preAppend);
            i2 -= preAppend;
            postAppend(preAppend);
        }
    }
}
