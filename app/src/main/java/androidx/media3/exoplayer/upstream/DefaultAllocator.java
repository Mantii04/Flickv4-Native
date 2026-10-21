package androidx.media3.exoplayer.upstream;

import P3.v;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.upstream.Allocator;
import java.util.Arrays;

@UnstableApi
/* loaded from: classes.dex */
public final class DefaultAllocator implements Allocator {
    private static final int AVAILABLE_EXTRA_CAPACITY = 100;
    private int allocatedCount;
    private Allocation[] availableAllocations;
    private int availableCount;
    private final int individualAllocationSize;
    private final byte[] initialAllocationBlock;
    private int targetBufferSize;
    private final boolean trimOnReset;

    public DefaultAllocator(boolean z6, int i2) {
        this(z6, i2, 0);
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public synchronized Allocation allocate() {
        Allocation allocation;
        try {
            this.allocatedCount++;
            int i2 = this.availableCount;
            if (i2 > 0) {
                Allocation[] allocationArr = this.availableAllocations;
                int i7 = i2 - 1;
                this.availableCount = i7;
                allocation = (Allocation) v.checkNotNull(allocationArr[i7]);
                this.availableAllocations[this.availableCount] = null;
            } else {
                allocation = new Allocation(new byte[this.individualAllocationSize], 0);
                int i8 = this.allocatedCount;
                Allocation[] allocationArr2 = this.availableAllocations;
                if (i8 > allocationArr2.length) {
                    this.availableAllocations = (Allocation[]) Arrays.copyOf(allocationArr2, allocationArr2.length * 2);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return allocation;
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public int getIndividualAllocationLength() {
        return this.individualAllocationSize;
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public synchronized int getTotalBytesAllocated() {
        return this.allocatedCount * this.individualAllocationSize;
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public synchronized void release(Allocation allocation) {
        Allocation[] allocationArr = this.availableAllocations;
        int i2 = this.availableCount;
        this.availableCount = i2 + 1;
        allocationArr[i2] = allocation;
        this.allocatedCount--;
        notifyAll();
    }

    public synchronized void reset() {
        if (this.trimOnReset) {
            setTargetBufferSize(0);
        }
    }

    public synchronized void setTargetBufferSize(int i2) {
        boolean z6 = i2 < this.targetBufferSize;
        this.targetBufferSize = i2;
        if (z6) {
            trim();
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public synchronized void trim() {
        try {
            int i2 = 0;
            int max = Math.max(0, Util.ceilDivide(this.targetBufferSize, this.individualAllocationSize) - this.allocatedCount);
            int i7 = this.availableCount;
            if (max >= i7) {
                return;
            }
            if (this.initialAllocationBlock != null) {
                int i8 = i7 - 1;
                while (i2 <= i8) {
                    Allocation allocation = (Allocation) v.checkNotNull(this.availableAllocations[i2]);
                    if (allocation.data == this.initialAllocationBlock) {
                        i2++;
                    } else {
                        Allocation allocation2 = (Allocation) v.checkNotNull(this.availableAllocations[i8]);
                        if (allocation2.data != this.initialAllocationBlock) {
                            i8--;
                        } else {
                            Allocation[] allocationArr = this.availableAllocations;
                            allocationArr[i2] = allocation2;
                            allocationArr[i8] = allocation;
                            i8--;
                            i2++;
                        }
                    }
                }
                max = Math.max(max, i2);
                if (max >= this.availableCount) {
                    return;
                }
            }
            Arrays.fill(this.availableAllocations, max, this.availableCount, (Object) null);
            this.availableCount = max;
        } catch (Throwable th) {
            throw th;
        }
    }

    public DefaultAllocator(boolean z6, int i2, int i7) {
        v.checkArgument(i2 > 0);
        v.checkArgument(i7 >= 0);
        this.trimOnReset = z6;
        this.individualAllocationSize = i2;
        this.availableCount = i7;
        this.availableAllocations = new Allocation[i7 + 100];
        if (i7 <= 0) {
            this.initialAllocationBlock = null;
            return;
        }
        this.initialAllocationBlock = new byte[i7 * i2];
        for (int i8 = 0; i8 < i7; i8++) {
            this.availableAllocations[i8] = new Allocation(this.initialAllocationBlock, i8 * i2);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public synchronized void release(Allocator.AllocationNode allocationNode) {
        while (allocationNode != null) {
            try {
                Allocation[] allocationArr = this.availableAllocations;
                int i2 = this.availableCount;
                this.availableCount = i2 + 1;
                allocationArr[i2] = allocationNode.getAllocation();
                this.allocatedCount--;
                allocationNode = allocationNode.next();
            } catch (Throwable th) {
                throw th;
            }
        }
        notifyAll();
    }
}
