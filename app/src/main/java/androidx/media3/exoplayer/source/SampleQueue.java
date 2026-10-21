package androidx.media3.exoplayer.source;

import P3.v;
import android.os.Looper;
import androidx.media3.common.C;
import androidx.media3.common.DataReader;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.upstream.Allocator;
import java.io.IOException;
import java.util.Objects;
import u0.C1665f;
import v0.p0;
import v0.q0;
import v0.r0;

@UnstableApi
/* loaded from: classes.dex */
public class SampleQueue implements r0 {
    static final int SAMPLE_CAPACITY_INCREMENT = 1000;
    private static final String TAG = "SampleQueue";
    private int absoluteFirstIndex;
    private DrmSession currentDrmSession;
    private Format downstreamFormat;
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    private final DrmSessionManager drmSessionManager;
    private boolean isLastSampleQueued;
    private int length;
    private boolean loggedUnexpectedNonSyncSample;
    private boolean pendingSplice;
    private int readPosition;
    private int relativeFirstIndex;
    private final SampleDataQueue sampleDataQueue;
    private long sampleOffsetUs;
    private Format unadjustedUpstreamFormat;
    private Format upstreamFormat;
    private boolean upstreamFormatAdjustmentRequired;
    private UpstreamFormatChangedListener upstreamFormatChangeListener;
    private long upstreamSourceId;
    private final SampleExtrasHolder extrasHolder = new SampleExtrasHolder();
    private int capacity = 1000;
    private long[] sourceIds = new long[1000];
    private long[] offsets = new long[1000];
    private long[] timesUs = new long[1000];
    private int[] flags = new int[1000];
    private int[] sizes = new int[1000];
    private q0[] cryptoDatas = new q0[1000];
    private final SpannedData<SharedSampleMetadata> sharedSampleMetadata = new SpannedData<>(new p(0));
    private long startTimeUs = Long.MIN_VALUE;
    private long largestDiscardedTimestampUs = Long.MIN_VALUE;
    private long largestQueuedTimestampUs = Long.MIN_VALUE;
    private boolean upstreamFormatRequired = true;
    private boolean upstreamKeyframeRequired = true;
    private boolean allSamplesAreSyncSamples = true;

    public static final class SampleExtrasHolder {
        public q0 cryptoData;
        public long offset;
        public int size;
    }

    public static final class SharedSampleMetadata {
        public final DrmSessionManager.DrmSessionReference drmSessionReference;
        public final Format format;

        private SharedSampleMetadata(Format format, DrmSessionManager.DrmSessionReference drmSessionReference) {
            this.format = format;
            this.drmSessionReference = drmSessionReference;
        }
    }

    public interface UpstreamFormatChangedListener {
        void onUpstreamFormatChanged(Format format);
    }

    public SampleQueue(Allocator allocator, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.sampleDataQueue = new SampleDataQueue(allocator);
    }

    private synchronized boolean attemptSplice(long j7) {
        if (this.length == 0) {
            return j7 > this.largestDiscardedTimestampUs;
        }
        if (getLargestReadTimestampUs() >= j7) {
            return false;
        }
        discardUpstreamSampleMetadata(this.absoluteFirstIndex + countUnreadSamplesBefore(j7));
        return true;
    }

    private synchronized void commitSample(long j7, int i2, long j8, int i7, q0 q0Var) {
        try {
            int i8 = this.length;
            if (i8 > 0) {
                int relativeIndex = getRelativeIndex(i8 - 1);
                v.checkArgument(this.offsets[relativeIndex] + ((long) this.sizes[relativeIndex]) <= j8);
            }
            this.isLastSampleQueued = (536870912 & i2) != 0;
            this.largestQueuedTimestampUs = Math.max(this.largestQueuedTimestampUs, j7);
            int relativeIndex2 = getRelativeIndex(this.length);
            this.timesUs[relativeIndex2] = j7;
            this.offsets[relativeIndex2] = j8;
            this.sizes[relativeIndex2] = i7;
            this.flags[relativeIndex2] = i2;
            this.cryptoDatas[relativeIndex2] = q0Var;
            this.sourceIds[relativeIndex2] = this.upstreamSourceId;
            if (this.sharedSampleMetadata.isEmpty() || !this.sharedSampleMetadata.getEndValue().format.equals(this.upstreamFormat)) {
                Format format = (Format) v.checkNotNull(this.upstreamFormat);
                DrmSessionManager drmSessionManager = this.drmSessionManager;
                this.sharedSampleMetadata.appendSpan(getWriteIndex(), new SharedSampleMetadata(format, drmSessionManager != null ? drmSessionManager.preacquireSession(this.drmEventDispatcher, format) : DrmSessionManager.DrmSessionReference.EMPTY));
            }
            int i9 = this.length + 1;
            this.length = i9;
            int i10 = this.capacity;
            if (i9 == i10) {
                int i11 = i10 + 1000;
                long[] jArr = new long[i11];
                long[] jArr2 = new long[i11];
                long[] jArr3 = new long[i11];
                int[] iArr = new int[i11];
                int[] iArr2 = new int[i11];
                q0[] q0VarArr = new q0[i11];
                int i12 = this.relativeFirstIndex;
                int i13 = i10 - i12;
                System.arraycopy(this.offsets, i12, jArr2, 0, i13);
                System.arraycopy(this.timesUs, this.relativeFirstIndex, jArr3, 0, i13);
                System.arraycopy(this.flags, this.relativeFirstIndex, iArr, 0, i13);
                System.arraycopy(this.sizes, this.relativeFirstIndex, iArr2, 0, i13);
                System.arraycopy(this.cryptoDatas, this.relativeFirstIndex, q0VarArr, 0, i13);
                System.arraycopy(this.sourceIds, this.relativeFirstIndex, jArr, 0, i13);
                int i14 = this.relativeFirstIndex;
                System.arraycopy(this.offsets, 0, jArr2, i13, i14);
                System.arraycopy(this.timesUs, 0, jArr3, i13, i14);
                System.arraycopy(this.flags, 0, iArr, i13, i14);
                System.arraycopy(this.sizes, 0, iArr2, i13, i14);
                System.arraycopy(this.cryptoDatas, 0, q0VarArr, i13, i14);
                System.arraycopy(this.sourceIds, 0, jArr, i13, i14);
                this.offsets = jArr2;
                this.timesUs = jArr3;
                this.flags = iArr;
                this.sizes = iArr2;
                this.cryptoDatas = q0VarArr;
                this.sourceIds = jArr;
                this.relativeFirstIndex = 0;
                this.capacity = i11;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private int countUnreadSamplesBefore(long j7) {
        int i2 = this.length;
        int relativeIndex = getRelativeIndex(i2 - 1);
        while (i2 > this.readPosition && this.timesUs[relativeIndex] >= j7) {
            i2--;
            relativeIndex--;
            if (relativeIndex == -1) {
                relativeIndex = this.capacity - 1;
            }
        }
        return i2;
    }

    public static SampleQueue createWithDrm(Allocator allocator, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return new SampleQueue(allocator, (DrmSessionManager) v.checkNotNull(drmSessionManager), (DrmSessionEventListener.EventDispatcher) v.checkNotNull(eventDispatcher));
    }

    public static SampleQueue createWithoutDrm(Allocator allocator) {
        return new SampleQueue(allocator, null, null);
    }

    private synchronized long discardSampleMetadataTo(long j7, boolean z6, boolean z7) {
        Throwable th;
        try {
            try {
                int i2 = this.length;
                if (i2 != 0) {
                    long[] jArr = this.timesUs;
                    int i7 = this.relativeFirstIndex;
                    if (j7 >= jArr[i7]) {
                        if (z7) {
                            try {
                                int i8 = this.readPosition;
                                if (i8 != i2) {
                                    i2 = i8 + 1;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                throw th;
                            }
                        }
                        int findSampleBefore = findSampleBefore(i7, i2, j7, z6);
                        if (findSampleBefore == -1) {
                            return -1L;
                        }
                        return discardSamples(findSampleBefore);
                    }
                }
                return -1L;
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    private synchronized long discardSampleMetadataToEnd() {
        int i2 = this.length;
        if (i2 == 0) {
            return -1L;
        }
        return discardSamples(i2);
    }

    private long discardSamples(int i2) {
        this.largestDiscardedTimestampUs = Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(i2));
        this.length -= i2;
        int i7 = this.absoluteFirstIndex + i2;
        this.absoluteFirstIndex = i7;
        int i8 = this.relativeFirstIndex + i2;
        this.relativeFirstIndex = i8;
        int i9 = this.capacity;
        if (i8 >= i9) {
            this.relativeFirstIndex = i8 - i9;
        }
        int i10 = this.readPosition - i2;
        this.readPosition = i10;
        if (i10 < 0) {
            this.readPosition = 0;
        }
        this.sharedSampleMetadata.discardTo(i7);
        if (this.length != 0) {
            return this.offsets[this.relativeFirstIndex];
        }
        int i11 = this.relativeFirstIndex;
        if (i11 == 0) {
            i11 = this.capacity;
        }
        return this.offsets[i11 - 1] + this.sizes[r6];
    }

    private long discardUpstreamSampleMetadata(int i2) {
        int writeIndex = getWriteIndex() - i2;
        boolean z6 = false;
        v.checkArgument(writeIndex >= 0 && writeIndex <= this.length - this.readPosition);
        int i7 = this.length - writeIndex;
        this.length = i7;
        this.largestQueuedTimestampUs = Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(i7));
        if (writeIndex == 0 && this.isLastSampleQueued) {
            z6 = true;
        }
        this.isLastSampleQueued = z6;
        this.sharedSampleMetadata.discardFrom(i2);
        int i8 = this.length;
        if (i8 == 0) {
            return 0L;
        }
        return this.offsets[getRelativeIndex(i8 - 1)] + this.sizes[r9];
    }

    private int findSampleAfter(int i2, int i7, long j7, boolean z6) {
        for (int i8 = 0; i8 < i7; i8++) {
            if (this.timesUs[i2] >= j7) {
                return i8;
            }
            i2++;
            if (i2 == this.capacity) {
                i2 = 0;
            }
        }
        if (z6) {
            return i7;
        }
        return -1;
    }

    private int findSampleBefore(int i2, int i7, long j7, boolean z6) {
        int i8 = -1;
        for (int i9 = 0; i9 < i7; i9++) {
            long j8 = this.timesUs[i2];
            if (j8 > j7) {
                break;
            }
            if (!z6 || (this.flags[i2] & 1) != 0) {
                if (j8 == j7) {
                    return i9;
                }
                i8 = i9;
            }
            i2++;
            if (i2 == this.capacity) {
                i2 = 0;
            }
        }
        return i8;
    }

    private long getLargestTimestamp(int i2) {
        long j7 = Long.MIN_VALUE;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int relativeIndex = getRelativeIndex(i2 - 1);
        for (int i7 = 0; i7 < i2; i7++) {
            j7 = Math.max(j7, this.timesUs[relativeIndex]);
            if ((this.flags[relativeIndex] & 1) != 0) {
                return j7;
            }
            relativeIndex--;
            if (relativeIndex == -1) {
                relativeIndex = this.capacity - 1;
            }
        }
        return j7;
    }

    private int getRelativeIndex(int i2) {
        int i7 = this.relativeFirstIndex + i2;
        int i8 = this.capacity;
        return i7 < i8 ? i7 : i7 - i8;
    }

    private boolean hasNextSample() {
        return this.readPosition != this.length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(SharedSampleMetadata sharedSampleMetadata) {
        sharedSampleMetadata.drmSessionReference.release();
    }

    private boolean mayReadSample(int i2) {
        DrmSession drmSession = this.currentDrmSession;
        if (drmSession == null || drmSession.getState() == 4) {
            return true;
        }
        return (this.flags[i2] & 1073741824) == 0 && this.currentDrmSession.playClearSamplesWithoutKeys();
    }

    private void onFormatResult(Format format, FormatHolder formatHolder) {
        Format format2 = this.downstreamFormat;
        boolean z6 = format2 == null;
        DrmInitData drmInitData = format2 == null ? null : format2.drmInitData;
        this.downstreamFormat = format;
        DrmInitData drmInitData2 = format.drmInitData;
        DrmSessionManager drmSessionManager = this.drmSessionManager;
        formatHolder.format = drmSessionManager != null ? format.copyWithCryptoType(drmSessionManager.getCryptoType(format)) : format;
        formatHolder.drmSession = this.currentDrmSession;
        if (this.drmSessionManager == null) {
            return;
        }
        if (z6 || !Objects.equals(drmInitData, drmInitData2)) {
            DrmSession drmSession = this.currentDrmSession;
            DrmSession acquireSession = this.drmSessionManager.acquireSession(this.drmEventDispatcher, format);
            this.currentDrmSession = acquireSession;
            formatHolder.drmSession = acquireSession;
            if (drmSession != null) {
                drmSession.release(this.drmEventDispatcher);
            }
        }
    }

    private synchronized int peekSampleMetadata(FormatHolder formatHolder, C1665f c1665f, boolean z6, boolean z7, SampleExtrasHolder sampleExtrasHolder) {
        try {
            c1665f.waitingForKeys = false;
            if (!hasNextSample()) {
                if (!z7 && !this.isLastSampleQueued) {
                    Format format = this.upstreamFormat;
                    if (format == null || (!z6 && format == this.downstreamFormat)) {
                        return -3;
                    }
                    onFormatResult((Format) v.checkNotNull(format), formatHolder);
                    return -5;
                }
                c1665f.setFlags(4);
                c1665f.timeUs = Long.MIN_VALUE;
                return -4;
            }
            Format format2 = this.sharedSampleMetadata.get(getReadIndex()).format;
            if (!z6 && format2 == this.downstreamFormat) {
                int relativeIndex = getRelativeIndex(this.readPosition);
                if (!mayReadSample(relativeIndex)) {
                    c1665f.waitingForKeys = true;
                    return -3;
                }
                c1665f.setFlags(this.flags[relativeIndex]);
                if (this.readPosition == this.length - 1 && (z7 || this.isLastSampleQueued)) {
                    c1665f.addFlag(C.BUFFER_FLAG_LAST_SAMPLE);
                }
                c1665f.timeUs = this.timesUs[relativeIndex];
                sampleExtrasHolder.size = this.sizes[relativeIndex];
                sampleExtrasHolder.offset = this.offsets[relativeIndex];
                sampleExtrasHolder.cryptoData = this.cryptoDatas[relativeIndex];
                return -4;
            }
            onFormatResult(format2, formatHolder);
            return -5;
        } catch (Throwable th) {
            throw th;
        }
    }

    private void releaseDrmSessionReferences() {
        DrmSession drmSession = this.currentDrmSession;
        if (drmSession != null) {
            drmSession.release(this.drmEventDispatcher);
            this.currentDrmSession = null;
            this.downstreamFormat = null;
        }
    }

    private synchronized void rewind() {
        this.readPosition = 0;
        this.sampleDataQueue.rewind();
    }

    private synchronized boolean setUpstreamFormat(Format format) {
        try {
            this.upstreamFormatRequired = false;
            if (Objects.equals(format, this.upstreamFormat)) {
                return false;
            }
            if (this.sharedSampleMetadata.isEmpty() || !this.sharedSampleMetadata.getEndValue().format.equals(format)) {
                this.upstreamFormat = format;
            } else {
                this.upstreamFormat = this.sharedSampleMetadata.getEndValue().format;
            }
            boolean z6 = this.allSamplesAreSyncSamples;
            Format format2 = this.upstreamFormat;
            this.allSamplesAreSyncSamples = z6 & MimeTypes.allSamplesAreSyncSamples(format2.sampleMimeType, format2.codecs);
            this.loggedUnexpectedNonSyncSample = false;
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized long discardSampleMetadataToRead() {
        int i2 = this.readPosition;
        if (i2 == 0) {
            return -1L;
        }
        return discardSamples(i2);
    }

    public final void discardTo(long j7, boolean z6, boolean z7) {
        this.sampleDataQueue.discardDownstreamTo(discardSampleMetadataTo(j7, z6, z7));
    }

    public final void discardToEnd() {
        this.sampleDataQueue.discardDownstreamTo(discardSampleMetadataToEnd());
    }

    public final void discardToRead() {
        this.sampleDataQueue.discardDownstreamTo(discardSampleMetadataToRead());
    }

    public final void discardUpstreamFrom(long j7) {
        if (this.length == 0) {
            return;
        }
        v.checkArgument(j7 > getLargestReadTimestampUs());
        discardUpstreamSamples(this.absoluteFirstIndex + countUnreadSamplesBefore(j7));
    }

    public final void discardUpstreamSamples(int i2) {
        this.sampleDataQueue.discardUpstreamSampleBytes(discardUpstreamSampleMetadata(i2));
    }

    @Override // v0.r0
    public /* bridge */ /* synthetic */ void durationUs(long j7) {
        p0.a(this, j7);
    }

    @Override // v0.r0
    public final void format(Format format) {
        Format adjustedUpstreamFormat = getAdjustedUpstreamFormat(format);
        this.upstreamFormatAdjustmentRequired = false;
        this.unadjustedUpstreamFormat = format;
        boolean upstreamFormat = setUpstreamFormat(adjustedUpstreamFormat);
        UpstreamFormatChangedListener upstreamFormatChangedListener = this.upstreamFormatChangeListener;
        if (upstreamFormatChangedListener == null || !upstreamFormat) {
            return;
        }
        upstreamFormatChangedListener.onUpstreamFormatChanged(adjustedUpstreamFormat);
    }

    public Format getAdjustedUpstreamFormat(Format format) {
        return (this.sampleOffsetUs == 0 || format.subsampleOffsetUs == Long.MAX_VALUE) ? format : format.buildUpon().setSubsampleOffsetUs(format.subsampleOffsetUs + this.sampleOffsetUs).build();
    }

    public final int getFirstIndex() {
        return this.absoluteFirstIndex;
    }

    public final synchronized long getFirstTimestampUs() {
        return this.length == 0 ? Long.MIN_VALUE : this.timesUs[this.relativeFirstIndex];
    }

    public final synchronized long getLargestQueuedTimestampUs() {
        return this.largestQueuedTimestampUs;
    }

    public final synchronized long getLargestReadTimestampUs() {
        return Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(this.readPosition));
    }

    public final int getReadIndex() {
        return this.absoluteFirstIndex + this.readPosition;
    }

    public final synchronized int getSkipCount(long j7, boolean z6) {
        Throwable th;
        try {
            try {
                int relativeIndex = getRelativeIndex(this.readPosition);
                if (!hasNextSample() || j7 < this.timesUs[relativeIndex]) {
                    return 0;
                }
                if (j7 <= this.largestQueuedTimestampUs || !z6) {
                    int findSampleBefore = findSampleBefore(relativeIndex, this.length - this.readPosition, j7, true);
                    if (findSampleBefore == -1) {
                        return 0;
                    }
                    return findSampleBefore;
                }
                try {
                    return this.length - this.readPosition;
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public final synchronized Format getUpstreamFormat() {
        return this.upstreamFormatRequired ? null : this.upstreamFormat;
    }

    public final int getWriteIndex() {
        return this.absoluteFirstIndex + this.length;
    }

    public final void invalidateUpstreamFormatAdjustment() {
        this.upstreamFormatAdjustmentRequired = true;
    }

    public final synchronized boolean isLastSampleQueued() {
        return this.isLastSampleQueued;
    }

    public synchronized boolean isReady(boolean z6) {
        Format format;
        boolean z7 = true;
        if (hasNextSample()) {
            if (this.sharedSampleMetadata.get(getReadIndex()).format != this.downstreamFormat) {
                return true;
            }
            return mayReadSample(getRelativeIndex(this.readPosition));
        }
        if (!z6 && !this.isLastSampleQueued && ((format = this.upstreamFormat) == null || format == this.downstreamFormat)) {
            z7 = false;
        }
        return z7;
    }

    public void maybeThrowError() throws IOException {
        DrmSession drmSession = this.currentDrmSession;
        if (drmSession != null && drmSession.getState() == 1) {
            throw ((DrmSession.DrmSessionException) v.checkNotNull(this.currentDrmSession.getError()));
        }
    }

    public final synchronized long peekSourceId() {
        try {
        } catch (Throwable th) {
            throw th;
        }
        return hasNextSample() ? this.sourceIds[getRelativeIndex(this.readPosition)] : this.upstreamSourceId;
    }

    public void preRelease() {
        discardToEnd();
        releaseDrmSessionReferences();
    }

    public int read(FormatHolder formatHolder, C1665f c1665f, int i2, boolean z6) {
        int peekSampleMetadata = peekSampleMetadata(formatHolder, c1665f, (i2 & 2) != 0, z6, this.extrasHolder);
        if (peekSampleMetadata == -4 && !c1665f.isEndOfStream()) {
            boolean z7 = (i2 & 1) != 0;
            if ((i2 & 4) == 0) {
                if (z7) {
                    this.sampleDataQueue.peekToBuffer(c1665f, this.extrasHolder);
                } else {
                    this.sampleDataQueue.readToBuffer(c1665f, this.extrasHolder);
                }
            }
            if (!z7) {
                this.readPosition++;
            }
        }
        return peekSampleMetadata;
    }

    public void release() {
        reset(true);
        releaseDrmSessionReferences();
    }

    public final void reset() {
        reset(false);
    }

    @Override // v0.r0
    public /* bridge */ /* synthetic */ int sampleData(DataReader dataReader, int i2, boolean z6) throws IOException {
        return p0.b(this, dataReader, i2, z6);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0055  */
    @Override // v0.r0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sampleMetadata(long r12, int r14, int r15, int r16, v0.q0 r17) {
        /*
            r11 = this;
            boolean r1 = r11.upstreamFormatAdjustmentRequired
            if (r1 == 0) goto Lf
            androidx.media3.common.Format r1 = r11.unadjustedUpstreamFormat
            java.lang.Object r1 = P3.v.checkNotNull(r1)
            androidx.media3.common.Format r1 = (androidx.media3.common.Format) r1
            r11.format(r1)
        Lf:
            r1 = r14 & 1
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L17
            r4 = r3
            goto L18
        L17:
            r4 = r2
        L18:
            boolean r5 = r11.upstreamKeyframeRequired
            if (r5 == 0) goto L21
            if (r4 != 0) goto L1f
            goto L61
        L1f:
            r11.upstreamKeyframeRequired = r2
        L21:
            long r5 = r11.sampleOffsetUs
            long r5 = r5 + r12
            boolean r7 = r11.allSamplesAreSyncSamples
            if (r7 == 0) goto L50
            long r7 = r11.startTimeUs
            int r7 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r7 >= 0) goto L2f
            goto L61
        L2f:
            if (r1 != 0) goto L50
            boolean r1 = r11.loggedUnexpectedNonSyncSample
            if (r1 != 0) goto L4c
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r7 = "Overriding unexpected non-sync sample for format: "
            r1.<init>(r7)
            androidx.media3.common.Format r7 = r11.upstreamFormat
            r1.append(r7)
            java.lang.String r1 = r1.toString()
            java.lang.String r7 = "SampleQueue"
            androidx.media3.common.util.Log.w(r7, r1)
            r11.loggedUnexpectedNonSyncSample = r3
        L4c:
            r1 = r14 | 1
            r3 = r1
            goto L51
        L50:
            r3 = r14
        L51:
            boolean r1 = r11.pendingSplice
            if (r1 == 0) goto L62
            if (r4 == 0) goto L61
            boolean r1 = r11.attemptSplice(r5)
            if (r1 != 0) goto L5e
            goto L61
        L5e:
            r11.pendingSplice = r2
            goto L62
        L61:
            return
        L62:
            androidx.media3.exoplayer.source.SampleDataQueue r1 = r11.sampleDataQueue
            long r1 = r1.getTotalBytesWritten()
            long r7 = (long) r15
            long r1 = r1 - r7
            r7 = r16
            long r7 = (long) r7
            long r1 = r1 - r7
            r9 = r5
            r4 = r1
            r1 = r9
            r0 = r11
            r6 = r15
            r7 = r17
            r0.commitSample(r1, r3, r4, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.source.SampleQueue.sampleMetadata(long, int, int, int, v0.q0):void");
    }

    public final synchronized boolean seekTo(int i2) {
        rewind();
        int i7 = this.absoluteFirstIndex;
        if (i2 >= i7 && i2 <= this.length + i7) {
            this.startTimeUs = Long.MIN_VALUE;
            this.readPosition = i2 - i7;
            return true;
        }
        return false;
    }

    public final void setSampleOffsetUs(long j7) {
        if (this.sampleOffsetUs != j7) {
            this.sampleOffsetUs = j7;
            invalidateUpstreamFormatAdjustment();
        }
    }

    public final void setStartTimeUs(long j7) {
        this.startTimeUs = j7;
    }

    public final void setUpstreamFormatChangeListener(UpstreamFormatChangedListener upstreamFormatChangedListener) {
        this.upstreamFormatChangeListener = upstreamFormatChangedListener;
    }

    public final synchronized void skip(int i2) {
        boolean z6;
        if (i2 >= 0) {
            try {
                if (this.readPosition + i2 <= this.length) {
                    z6 = true;
                    v.checkArgument(z6);
                    this.readPosition += i2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        z6 = false;
        v.checkArgument(z6);
        this.readPosition += i2;
    }

    public final void sourceId(long j7) {
        this.upstreamSourceId = j7;
    }

    public final void splice() {
        this.pendingSplice = true;
    }

    public void reset(boolean z6) {
        this.sampleDataQueue.reset();
        this.length = 0;
        this.absoluteFirstIndex = 0;
        this.relativeFirstIndex = 0;
        this.readPosition = 0;
        this.upstreamKeyframeRequired = true;
        this.startTimeUs = Long.MIN_VALUE;
        this.largestDiscardedTimestampUs = Long.MIN_VALUE;
        this.largestQueuedTimestampUs = Long.MIN_VALUE;
        this.isLastSampleQueued = false;
        this.sharedSampleMetadata.clear();
        if (z6) {
            this.unadjustedUpstreamFormat = null;
            this.upstreamFormat = null;
            this.upstreamFormatRequired = true;
            this.allSamplesAreSyncSamples = true;
        }
    }

    @Override // v0.r0
    public /* bridge */ /* synthetic */ void sampleData(ParsableByteArray parsableByteArray, int i2) {
        p0.c(this, parsableByteArray, i2);
    }

    @Deprecated
    public static SampleQueue createWithDrm(Allocator allocator, Looper looper, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        drmSessionManager.setPlayer(looper, PlayerId.UNSET);
        return new SampleQueue(allocator, (DrmSessionManager) v.checkNotNull(drmSessionManager), (DrmSessionEventListener.EventDispatcher) v.checkNotNull(eventDispatcher));
    }

    @Override // v0.r0
    public final int sampleData(DataReader dataReader, int i2, boolean z6, int i7) throws IOException {
        return this.sampleDataQueue.sampleData(dataReader, i2, z6);
    }

    @Override // v0.r0
    public final void sampleData(ParsableByteArray parsableByteArray, int i2, int i7) {
        this.sampleDataQueue.sampleData(parsableByteArray, i2);
    }

    public final synchronized boolean seekTo(long j7, boolean z6) {
        SampleQueue sampleQueue;
        long j8;
        int findSampleBefore;
        try {
            try {
                rewind();
                int relativeIndex = getRelativeIndex(this.readPosition);
                if (!hasNextSample() || j7 < this.timesUs[relativeIndex] || (j7 > this.largestQueuedTimestampUs && !z6)) {
                    return false;
                }
                if (this.allSamplesAreSyncSamples) {
                    sampleQueue = this;
                    j8 = j7;
                    findSampleBefore = sampleQueue.findSampleAfter(relativeIndex, this.length - this.readPosition, j8, z6);
                } else {
                    sampleQueue = this;
                    j8 = j7;
                    findSampleBefore = sampleQueue.findSampleBefore(relativeIndex, sampleQueue.length - sampleQueue.readPosition, j8, true);
                }
                if (findSampleBefore == -1) {
                    return false;
                }
                sampleQueue.startTimeUs = j8;
                sampleQueue.readPosition += findSampleBefore;
                return true;
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }
}
