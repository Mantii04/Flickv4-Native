package O0;

import P3.v;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import v0.AbstractC1716B;
import v0.C;
import v0.C1740y;
import v0.D;
import v0.F;
import v0.U;
import v0.W;
import v0.Y;
import v0.r0;

/* loaded from: classes.dex */
public final class e implements C {

    /* renamed from: w, reason: collision with root package name */
    public static final J0.g f2350w = new J0.g(4);

    /* renamed from: a, reason: collision with root package name */
    public final int f2351a;

    /* renamed from: b, reason: collision with root package name */
    public final long f2352b;

    /* renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f2353c;

    /* renamed from: d, reason: collision with root package name */
    public final Y f2354d;

    /* renamed from: e, reason: collision with root package name */
    public final U f2355e;

    /* renamed from: f, reason: collision with root package name */
    public final W f2356f;

    /* renamed from: g, reason: collision with root package name */
    public final C1740y f2357g;

    /* renamed from: h, reason: collision with root package name */
    public F f2358h;

    /* renamed from: i, reason: collision with root package name */
    public r0 f2359i;

    /* renamed from: j, reason: collision with root package name */
    public r0 f2360j;

    /* renamed from: k, reason: collision with root package name */
    public int f2361k;

    /* renamed from: l, reason: collision with root package name */
    public Metadata f2362l;

    /* renamed from: m, reason: collision with root package name */
    public Metadata f2363m;

    /* renamed from: n, reason: collision with root package name */
    public long f2364n;

    /* renamed from: o, reason: collision with root package name */
    public long f2365o;

    /* renamed from: p, reason: collision with root package name */
    public long f2366p;

    /* renamed from: q, reason: collision with root package name */
    public long f2367q;

    /* renamed from: r, reason: collision with root package name */
    public int f2368r;

    /* renamed from: s, reason: collision with root package name */
    public i f2369s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f2370t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f2371u;

    /* renamed from: v, reason: collision with root package name */
    public long f2372v;

    public e() {
        this(0);
    }

    public final a a(D d7, boolean z6) {
        ParsableByteArray parsableByteArray = this.f2353c;
        d7.peekFully(parsableByteArray.getData(), 0, 4);
        parsableByteArray.setPosition(0);
        this.f2354d.setForHeaderData(parsableByteArray.readInt());
        return new a(d7.getLength(), d7.getPosition(), this.f2354d, z6);
    }

    public final void b() {
        i iVar = this.f2369s;
        if ((iVar instanceof a) && iVar.isSeekable()) {
            long j7 = this.f2367q;
            if (j7 == -1 || j7 == this.f2369s.getDataEndPosition()) {
                return;
            }
            this.f2369s = ((a) this.f2369s).copyWithNewDataEndPosition(this.f2367q);
            ((F) v.checkNotNull(this.f2358h)).seekMap(this.f2369s);
            ((r0) v.checkNotNull(this.f2359i)).durationUs(this.f2369s.getDurationUs());
        }
    }

    public final boolean c(D d7) {
        i iVar = this.f2369s;
        if (iVar != null) {
            long dataEndPosition = iVar.getDataEndPosition();
            if (dataEndPosition != -1 && d7.getPeekPosition() > dataEndPosition - 4) {
                return true;
            }
        }
        try {
            return !d7.peekFully(this.f2353c.getData(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a1, code lost:
    
        if (r18 == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a3, code lost:
    
        r17.skipFully(r2 + r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ab, code lost:
    
        r16.f2361k = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ad, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a8, code lost:
    
        r17.resetPeekPosition();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(v0.D r17, boolean r18) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r1.resetPeekPosition()
            long r2 = r1.getPosition()
            r4 = 0
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            r3 = 131072(0x20000, float:1.83671E-40)
            r4 = 0
            if (r2 != 0) goto L3b
            int r2 = r0.f2351a
            r2 = r2 & 8
            if (r2 != 0) goto L1c
            r2 = 0
            goto L1e
        L1c:
            J0.g r2 = O0.e.f2350w
        L1e:
            v0.W r5 = r0.f2356f
            androidx.media3.common.Metadata r2 = r5.peekId3Data(r1, r2, r3)
            r0.f2362l = r2
            if (r2 == 0) goto L2d
            v0.U r5 = r0.f2355e
            r5.setFromMetadata(r2)
        L2d:
            long r5 = r1.getPeekPosition()
            int r2 = (int) r5
            if (r18 != 0) goto L37
            r1.skipFully(r2)
        L37:
            r5 = r4
        L38:
            r6 = r5
            r7 = r6
            goto L3e
        L3b:
            r2 = r4
            r5 = r2
            goto L38
        L3e:
            boolean r8 = r16.c(r17)
            r9 = 1
            if (r8 == 0) goto L51
            if (r6 <= 0) goto L48
            goto La1
        L48:
            r0.b()
            java.io.EOFException r1 = new java.io.EOFException
            r1.<init>()
            throw r1
        L51:
            androidx.media3.common.util.ParsableByteArray r8 = r0.f2353c
            r8.setPosition(r4)
            int r8 = r8.readInt()
            if (r5 == 0) goto L6a
            long r10 = (long) r5
            r12 = -128000(0xfffffffffffe0c00, float:NaN)
            r12 = r12 & r8
            long r12 = (long) r12
            r14 = -128000(0xfffffffffffe0c00, double:NaN)
            long r10 = r10 & r14
            int r10 = (r12 > r10 ? 1 : (r12 == r10 ? 0 : -1))
            if (r10 != 0) goto L71
        L6a:
            int r10 = v0.Z.getFrameSize(r8)
            r11 = -1
            if (r10 != r11) goto L93
        L71:
            int r5 = r7 + 1
            if (r7 != r3) goto L81
            if (r18 == 0) goto L78
            return r4
        L78:
            r0.b()
            java.io.EOFException r1 = new java.io.EOFException
            r1.<init>()
            throw r1
        L81:
            if (r18 == 0) goto L8c
            r1.resetPeekPosition()
            int r6 = r2 + r5
            r1.advancePeekPosition(r6)
            goto L8f
        L8c:
            r1.skipFully(r9)
        L8f:
            r6 = r4
            r7 = r5
            r5 = r6
            goto L3e
        L93:
            int r6 = r6 + 1
            if (r6 != r9) goto L9e
            v0.Y r5 = r0.f2354d
            r5.setForHeaderData(r8)
            r5 = r8
            goto Lae
        L9e:
            r8 = 4
            if (r6 != r8) goto Lae
        La1:
            if (r18 == 0) goto La8
            int r2 = r2 + r7
            r1.skipFully(r2)
            goto Lab
        La8:
            r1.resetPeekPosition()
        Lab:
            r0.f2361k = r5
            return r9
        Lae:
            int r10 = r10 + (-4)
            r1.advancePeekPosition(r10)
            goto L3e
        */
        throw new UnsupportedOperationException("Method not decompiled: O0.e.d(v0.D, boolean):boolean");
    }

    public void disableSeeking() {
        this.f2370t = true;
    }

    @Override // v0.C
    public final /* synthetic */ List getSniffFailureDetails() {
        return AbstractC1716B.a(this);
    }

    @Override // v0.C
    public final /* synthetic */ C getUnderlyingImplementation() {
        return AbstractC1716B.b(this);
    }

    @Override // v0.C
    public void init(F f3) {
        this.f2358h = f3;
        r0 track = f3.track(0, 1);
        this.f2359i = track;
        this.f2360j = track;
        this.f2358h.endTracks();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x006e, code lost:
    
        if (r3 != 1231971951) goto L24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01d1  */
    @Override // v0.C
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(v0.D r43, v0.c0 r44) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1080
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: O0.e.read(v0.D, v0.c0):int");
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        this.f2361k = 0;
        this.f2364n = androidx.media3.common.C.TIME_UNSET;
        this.f2365o = 0L;
        this.f2368r = 0;
        this.f2367q = -1L;
        this.f2372v = j8;
        i iVar = this.f2369s;
        if (!(iVar instanceof b) || ((b) iVar).isTimeUsInIndex(j8)) {
            return;
        }
        this.f2371u = true;
        this.f2360j = this.f2357g;
    }

    @Override // v0.C
    public boolean sniff(D d7) throws IOException {
        return d(d7, true);
    }

    public e(int i2) {
        this(i2, androidx.media3.common.C.TIME_UNSET);
    }

    public e(int i2, long j7) {
        this.f2351a = (i2 & 2) != 0 ? i2 | 1 : i2;
        this.f2352b = j7;
        this.f2353c = new ParsableByteArray(10);
        this.f2354d = new Y();
        this.f2355e = new U();
        this.f2364n = androidx.media3.common.C.TIME_UNSET;
        this.f2356f = new W();
        C1740y c1740y = new C1740y();
        this.f2357g = c1740y;
        this.f2360j = c1740y;
        this.f2367q = -1L;
    }

    @Override // v0.C
    public void release() {
    }
}
