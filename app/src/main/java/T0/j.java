package T0;

import P3.v;
import S0.m;
import S0.n;
import androidx.media3.common.C;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.SubtitleDecoderException;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public abstract class j implements S0.j {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayDeque f3516a = new ArrayDeque();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayDeque f3517b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque f3518c;

    /* renamed from: d, reason: collision with root package name */
    public h f3519d;

    /* renamed from: e, reason: collision with root package name */
    public long f3520e;

    /* renamed from: f, reason: collision with root package name */
    public long f3521f;

    /* renamed from: g, reason: collision with root package name */
    public long f3522g;

    public j() {
        for (int i2 = 0; i2 < 10; i2++) {
            this.f3516a.add(new h());
        }
        this.f3517b = new ArrayDeque();
        for (int i7 = 0; i7 < 2; i7++) {
            this.f3517b.add(new i(new A0.a(this, 12)));
        }
        this.f3518c = new ArrayDeque();
        this.f3522g = C.TIME_UNSET;
    }

    public abstract S0.i createSubtitle();

    public abstract void decode(m mVar);

    @Override // u0.InterfaceC1664e
    public void flush() {
        ArrayDeque arrayDeque;
        this.f3521f = 0L;
        this.f3520e = 0L;
        while (true) {
            ArrayDeque arrayDeque2 = this.f3518c;
            boolean isEmpty = arrayDeque2.isEmpty();
            arrayDeque = this.f3516a;
            if (isEmpty) {
                break;
            }
            h hVar = (h) Util.castNonNull((h) arrayDeque2.poll());
            hVar.clear();
            arrayDeque.add(hVar);
        }
        h hVar2 = this.f3519d;
        if (hVar2 != null) {
            hVar2.clear();
            arrayDeque.add(hVar2);
            this.f3519d = null;
        }
    }

    public final n getAvailableOutputBuffer() {
        return (n) this.f3517b.pollFirst();
    }

    public final long getPositionUs() {
        return this.f3520e;
    }

    public abstract boolean isNewSubtitleDataAvailable();

    public void releaseOutputBuffer(n nVar) {
        nVar.clear();
        this.f3517b.add(nVar);
    }

    @Override // u0.InterfaceC1664e
    public final void setOutputStartTimeUs(long j7) {
        this.f3522g = j7;
    }

    @Override // S0.j
    public void setPositionUs(long j7) {
        this.f3520e = j7;
    }

    @Override // u0.InterfaceC1664e
    public m dequeueInputBuffer() throws SubtitleDecoderException {
        v.checkState(this.f3519d == null);
        ArrayDeque arrayDeque = this.f3516a;
        if (arrayDeque.isEmpty()) {
            return null;
        }
        h hVar = (h) arrayDeque.pollFirst();
        this.f3519d = hVar;
        return hVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0083, code lost:
    
        return null;
     */
    @Override // u0.InterfaceC1664e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public S0.n dequeueOutputBuffer() throws androidx.media3.extractor.text.SubtitleDecoderException {
        /*
            r11 = this;
            java.util.ArrayDeque r0 = r11.f3517b
            boolean r1 = r0.isEmpty()
            r2 = 0
            if (r1 == 0) goto La
            return r2
        La:
            java.util.ArrayDeque r1 = r11.f3518c
            boolean r3 = r1.isEmpty()
            if (r3 != 0) goto L83
            java.lang.Object r3 = r1.peek()
            T0.h r3 = (T0.h) r3
            java.lang.Object r3 = androidx.media3.common.util.Util.castNonNull(r3)
            T0.h r3 = (T0.h) r3
            long r3 = r3.timeUs
            long r5 = r11.f3520e
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 > 0) goto L83
            java.lang.Object r1 = r1.poll()
            T0.h r1 = (T0.h) r1
            java.lang.Object r1 = androidx.media3.common.util.Util.castNonNull(r1)
            T0.h r1 = (T0.h) r1
            boolean r3 = r1.isEndOfStream()
            java.util.ArrayDeque r4 = r11.f3516a
            if (r3 == 0) goto L51
            java.lang.Object r0 = r0.pollFirst()
            S0.n r0 = (S0.n) r0
            java.lang.Object r0 = androidx.media3.common.util.Util.castNonNull(r0)
            S0.n r0 = (S0.n) r0
            r2 = 4
            r0.addFlag(r2)
            r1.clear()
            r4.add(r1)
            return r0
        L51:
            r11.decode(r1)
            boolean r3 = r11.isNewSubtitleDataAvailable()
            if (r3 == 0) goto L7c
            S0.i r8 = r11.createSubtitle()
            java.lang.Object r0 = r0.pollFirst()
            S0.n r0 = (S0.n) r0
            java.lang.Object r0 = androidx.media3.common.util.Util.castNonNull(r0)
            r5 = r0
            S0.n r5 = (S0.n) r5
            long r6 = r1.timeUs
            r9 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r5.setContent(r6, r8, r9)
            r1.clear()
            r4.add(r1)
            return r5
        L7c:
            r1.clear()
            r4.add(r1)
            goto La
        L83:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: T0.j.dequeueOutputBuffer():S0.n");
    }

    @Override // u0.InterfaceC1664e
    public void queueInputBuffer(m mVar) throws SubtitleDecoderException {
        v.checkArgument(mVar == this.f3519d);
        h hVar = (h) mVar;
        if (!hVar.isEndOfStream()) {
            long j7 = hVar.timeUs;
            if (j7 != Long.MIN_VALUE) {
                long j8 = this.f3522g;
                if (j8 != C.TIME_UNSET && j7 < j8) {
                    hVar.clear();
                    this.f3516a.add(hVar);
                    this.f3519d = null;
                }
            }
        }
        long j9 = this.f3521f;
        this.f3521f = 1 + j9;
        hVar.f3514e = j9;
        this.f3518c.add(hVar);
        this.f3519d = null;
    }

    @Override // u0.InterfaceC1664e
    public void release() {
    }
}
