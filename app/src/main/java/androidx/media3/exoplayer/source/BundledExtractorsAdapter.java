package androidx.media3.exoplayer.source;

import P3.v;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;
import v0.C;
import v0.D;
import v0.I;
import v0.c0;

@UnstableApi
/* loaded from: classes.dex */
public final class BundledExtractorsAdapter implements ProgressiveMediaExtractor {
    private C extractor;
    private D extractorInput;
    private final I extractorsFactory;

    public BundledExtractorsAdapter(I i2) {
        this.extractorsFactory = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$init$0(C c7) {
        return c7.getUnderlyingImplementation().getClass().getSimpleName();
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void disableSeekingOnMp3Streams() {
        C c7 = this.extractor;
        if (c7 == null) {
            return;
        }
        C underlyingImplementation = c7.getUnderlyingImplementation();
        if (underlyingImplementation instanceof O0.e) {
            ((O0.e) underlyingImplementation).disableSeeking();
        }
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public long getCurrentInputPosition() {
        D d7 = this.extractorInput;
        if (d7 != null) {
            return d7.getPosition();
        }
        return -1L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x004e, code lost:
    
        if (r1.getPosition() != r11) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0051, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0079, code lost:
    
        if (r1.getPosition() != r11) goto L23;
     */
    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void init(androidx.media3.common.DataReader r8, android.net.Uri r9, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r10, long r11, long r13, v0.F r15) throws java.io.IOException {
        /*
            r7 = this;
            v0.u r1 = new v0.u
            r2 = r8
            r3 = r11
            r5 = r13
            r1.<init>(r2, r3, r5)
            r7.extractorInput = r1
            v0.C r8 = r7.extractor
            if (r8 == 0) goto Lf
            return
        Lf:
            v0.I r8 = r7.extractorsFactory
            v0.C[] r8 = r8.createExtractors(r9, r10)
            int r10 = r8.length
            Q3.s r10 = com.google.common.collect.ImmutableList.builderWithExpectedSize(r10)
            int r11 = r8.length
            r12 = 0
            r13 = 1
            if (r11 != r13) goto L25
            r8 = r8[r12]
            r7.extractor = r8
            goto L83
        L25:
            int r11 = r8.length
            r14 = r12
        L27:
            if (r14 >= r11) goto L7f
            r0 = r8[r14]
            boolean r2 = r0.sniff(r1)     // Catch: java.lang.Throwable -> L3a java.io.EOFException -> L6f
            if (r2 == 0) goto L3d
            r7.extractor = r0     // Catch: java.lang.Throwable -> L3a java.io.EOFException -> L6f
            P3.v.checkState(r13)
            r1.resetPeekPosition()
            goto L7f
        L3a:
            r0 = move-exception
            r8 = r0
            goto L5b
        L3d:
            java.util.List r0 = r0.getSniffFailureDetails()     // Catch: java.lang.Throwable -> L3a java.io.EOFException -> L6f
            r10.addAll(r0)     // Catch: java.lang.Throwable -> L3a java.io.EOFException -> L6f
            v0.C r0 = r7.extractor
            if (r0 != 0) goto L53
            long r5 = r1.getPosition()
            int r0 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r0 != 0) goto L51
            goto L53
        L51:
            r0 = r12
            goto L54
        L53:
            r0 = r13
        L54:
            P3.v.checkState(r0)
            r1.resetPeekPosition()
            goto L7c
        L5b:
            v0.C r9 = r7.extractor
            if (r9 != 0) goto L67
            long r9 = r1.getPosition()
            int r9 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r9 != 0) goto L68
        L67:
            r12 = r13
        L68:
            P3.v.checkState(r12)
            r1.resetPeekPosition()
            throw r8
        L6f:
            v0.C r0 = r7.extractor
            if (r0 != 0) goto L53
            long r5 = r1.getPosition()
            int r0 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r0 != 0) goto L51
            goto L53
        L7c:
            int r14 = r14 + 1
            goto L27
        L7f:
            v0.C r11 = r7.extractor
            if (r11 == 0) goto L89
        L83:
            v0.C r8 = r7.extractor
            r8.init(r15)
            return
        L89:
            androidx.media3.exoplayer.source.UnrecognizedInputFormatException r11 = new androidx.media3.exoplayer.source.UnrecognizedInputFormatException
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            java.lang.String r13 = "None of the available extractors ("
            r12.<init>(r13)
            java.lang.String r13 = ", "
            P3.r r13 = P3.r.on(r13)
            com.google.common.collect.ImmutableList r8 = com.google.common.collect.ImmutableList.copyOf(r8)
            androidx.media3.exoplayer.source.k r14 = new androidx.media3.exoplayer.source.k
            r15 = 1
            r14.<init>(r15)
            java.util.List r8 = com.google.common.collect.B.transform(r8, r14)
            java.lang.String r8 = r13.join(r8)
            r12.append(r8)
            java.lang.String r8 = ") could read the stream."
            r12.append(r8)
            java.lang.String r8 = r12.toString()
            java.lang.Object r9 = P3.v.checkNotNull(r9)
            android.net.Uri r9 = (android.net.Uri) r9
            com.google.common.collect.ImmutableList r10 = r10.build()
            r11.<init>(r8, r9, r10)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.source.BundledExtractorsAdapter.init(androidx.media3.common.DataReader, android.net.Uri, java.util.Map, long, long, v0.F):void");
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public int read(c0 c0Var) throws IOException {
        return ((C) v.checkNotNull(this.extractor)).read((D) v.checkNotNull(this.extractorInput), c0Var);
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void release() {
        C c7 = this.extractor;
        if (c7 != null) {
            c7.release();
            this.extractor = null;
        }
        this.extractorInput = null;
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void seek(long j7, long j8) {
        ((C) v.checkNotNull(this.extractor)).seek(j7, j8);
    }
}
