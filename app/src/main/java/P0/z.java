package P0;

import v0.d0;
import v0.e0;
import v0.o0;

/* loaded from: classes.dex */
public final class z implements o0 {

    /* renamed from: a, reason: collision with root package name */
    public final long f2676a;

    /* renamed from: b, reason: collision with root package name */
    public final A[] f2677b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2678c;

    public z(long j7, A[] aArr, int i2) {
        this.f2676a = j7;
        this.f2677b = aArr;
        this.f2678c = i2;
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.f2676a;
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        return getSeekPoints(j7, -1);
    }

    @Override // v0.g0
    public final /* synthetic */ boolean isEstimated() {
        return d0.a(this);
    }

    @Override // v0.g0
    public boolean isSeekable() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b4  */
    @Override // v0.o0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public v0.e0 getSeekPoints(long r22, int r24) {
        /*
            r21 = this;
            r0 = r21
            r1 = r22
            r3 = r24
            P0.A[] r4 = r0.f2677b
            int r5 = r4.length
            if (r5 != 0) goto L13
            v0.e0 r1 = new v0.e0
            v0.h0 r2 = v0.h0.f20473c
            r1.<init>(r2)
            return r1
        L13:
            r5 = -1
            int r6 = r0.f2678c
            if (r3 == r5) goto L1a
            r7 = r3
            goto L1b
        L1a:
            r7 = r6
        L1b:
            r10 = -1
            if (r7 == r5) goto L5b
            r7 = r4[r7]
            P0.M r7 = r7.f2460b
            int r12 = r7.getIndexOfEarlierOrEqualSynchronizationSample(r1)
            if (r12 != r5) goto L2d
            int r12 = r7.getIndexOfLaterOrEqualSynchronizationSample(r1)
        L2d:
            if (r12 != r5) goto L37
            v0.e0 r1 = new v0.e0
            v0.h0 r2 = v0.h0.f20473c
            r1.<init>(r2)
            return r1
        L37:
            long[] r13 = r7.f2549f
            r14 = r13[r12]
            r16 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            long[] r8 = r7.f2546c
            r18 = r8[r12]
            int r9 = (r14 > r1 ? 1 : (r14 == r1 ? 0 : -1))
            if (r9 >= 0) goto L66
            int r9 = r7.f2545b
            int r9 = r9 + (-1)
            if (r12 >= r9) goto L66
            int r1 = r7.getIndexOfLaterOrEqualSynchronizationSample(r1)
            if (r1 == r5) goto L66
            if (r1 == r12) goto L66
            r9 = r13[r1]
            r1 = r8[r1]
            goto L69
        L5b:
            r16 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r18 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r14 = r1
        L66:
            r1 = r10
            r9 = r16
        L69:
            if (r3 != r5) goto Lb4
            r3 = 0
            r7 = r18
        L6e:
            int r11 = r4.length
            if (r3 >= r11) goto Lb6
            if (r3 == r6) goto Lab
            r11 = r4[r3]
            P0.M r11 = r11.f2460b
            int r12 = r11.getIndexOfEarlierOrEqualSynchronizationSample(r14)
            if (r12 != r5) goto L81
            int r12 = r11.getIndexOfLaterOrEqualSynchronizationSample(r14)
        L81:
            long[] r13 = r11.f2546c
            if (r12 != r5) goto L88
            r20 = r6
            goto L90
        L88:
            r20 = r6
            r5 = r13[r12]
            long r7 = java.lang.Math.min(r5, r7)
        L90:
            int r5 = (r9 > r16 ? 1 : (r9 == r16 ? 0 : -1))
            if (r5 == 0) goto La9
            int r5 = r11.getIndexOfEarlierOrEqualSynchronizationSample(r9)
            r6 = -1
            if (r5 != r6) goto L9f
            int r5 = r11.getIndexOfLaterOrEqualSynchronizationSample(r9)
        L9f:
            if (r5 != r6) goto La2
            goto Lae
        La2:
            r11 = r13[r5]
            long r1 = java.lang.Math.min(r11, r1)
            goto Lae
        La9:
            r6 = -1
            goto Lae
        Lab:
            r20 = r6
            r6 = r5
        Lae:
            int r3 = r3 + 1
            r5 = r6
            r6 = r20
            goto L6e
        Lb4:
            r7 = r18
        Lb6:
            v0.h0 r3 = new v0.h0
            r3.<init>(r14, r7)
            int r4 = (r9 > r16 ? 1 : (r9 == r16 ? 0 : -1))
            if (r4 != 0) goto Lc5
            v0.e0 r1 = new v0.e0
            r1.<init>(r3)
            return r1
        Lc5:
            v0.h0 r4 = new v0.h0
            r4.<init>(r9, r1)
            v0.e0 r1 = new v0.e0
            r1.<init>(r3, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: P0.z.getSeekPoints(long, int):v0.e0");
    }

    @Override // v0.o0
    public boolean isSeekable(int i2) {
        return true;
    }
}
