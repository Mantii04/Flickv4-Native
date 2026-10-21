package w0;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.Util;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import v0.AbstractC1716B;
import v0.C;
import v0.C1735t;
import v0.C1740y;
import v0.D;
import v0.F;
import v0.X;
import v0.g0;
import v0.r0;

/* renamed from: w0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1774a implements C {

    /* renamed from: s, reason: collision with root package name */
    public static final int[] f20647s = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: t, reason: collision with root package name */
    public static final int[] f20648t = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};

    /* renamed from: u, reason: collision with root package name */
    public static final byte[] f20649u = Util.getUtf8Bytes("#!AMR\n");

    /* renamed from: v, reason: collision with root package name */
    public static final byte[] f20650v = Util.getUtf8Bytes("#!AMR-WB\n");

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f20651a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20652b;

    /* renamed from: c, reason: collision with root package name */
    public final C1740y f20653c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f20654d;

    /* renamed from: e, reason: collision with root package name */
    public long f20655e;

    /* renamed from: f, reason: collision with root package name */
    public int f20656f;

    /* renamed from: g, reason: collision with root package name */
    public int f20657g;

    /* renamed from: h, reason: collision with root package name */
    public long f20658h;

    /* renamed from: i, reason: collision with root package name */
    public int f20659i;

    /* renamed from: j, reason: collision with root package name */
    public int f20660j;

    /* renamed from: k, reason: collision with root package name */
    public long f20661k;

    /* renamed from: l, reason: collision with root package name */
    public F f20662l;

    /* renamed from: m, reason: collision with root package name */
    public r0 f20663m;

    /* renamed from: n, reason: collision with root package name */
    public r0 f20664n;

    /* renamed from: o, reason: collision with root package name */
    public g0 f20665o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f20666p;

    /* renamed from: q, reason: collision with root package name */
    public long f20667q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f20668r;

    public C1774a(int i2) {
        this.f20652b = (i2 & 2) != 0 ? i2 | 1 : i2;
        this.f20651a = new byte[1];
        this.f20659i = -1;
        C1740y c1740y = new C1740y();
        this.f20653c = c1740y;
        this.f20664n = c1740y;
    }

    public final int a(D d7) {
        boolean z6;
        d7.resetPeekPosition();
        byte[] bArr = this.f20651a;
        d7.peekFully(bArr, 0, 1);
        byte b7 = bArr[0];
        if ((b7 & 131) > 0) {
            throw ParserException.createForMalformedContainer("Invalid padding bits for frame header " + ((int) b7), null);
        }
        int i2 = (b7 >> 3) & 15;
        if (i2 >= 0 && i2 <= 15 && (((z6 = this.f20654d) && (i2 < 10 || i2 > 13)) || (!z6 && (i2 < 12 || i2 > 14)))) {
            return z6 ? f20648t[i2] : f20647s[i2];
        }
        StringBuilder sb = new StringBuilder("Illegal AMR ");
        sb.append(this.f20654d ? "WB" : "NB");
        sb.append(" frame type ");
        sb.append(i2);
        throw ParserException.createForMalformedContainer(sb.toString(), null);
    }

    public final boolean b(D d7) {
        d7.resetPeekPosition();
        byte[] bArr = f20649u;
        byte[] bArr2 = new byte[bArr.length];
        d7.peekFully(bArr2, 0, bArr.length);
        if (Arrays.equals(bArr2, bArr)) {
            this.f20654d = false;
            d7.skipFully(bArr.length);
            return true;
        }
        d7.resetPeekPosition();
        byte[] bArr3 = f20650v;
        byte[] bArr4 = new byte[bArr3.length];
        d7.peekFully(bArr4, 0, bArr3.length);
        if (!Arrays.equals(bArr4, bArr3)) {
            return false;
        }
        this.f20654d = true;
        d7.skipFully(bArr3.length);
        return true;
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
        this.f20662l = f3;
        r0 track = f3.track(0, 1);
        this.f20663m = track;
        this.f20664n = track;
        f3.endTracks();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0174  */
    @Override // v0.C
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(v0.D r19, v0.c0 r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: w0.C1774a.read(v0.D, v0.c0):int");
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        this.f20655e = 0L;
        this.f20656f = 0;
        this.f20657g = 0;
        this.f20667q = j8;
        g0 g0Var = this.f20665o;
        if (!(g0Var instanceof X)) {
            if (j7 == 0 || !(g0Var instanceof C1735t)) {
                this.f20661k = 0L;
                return;
            } else {
                this.f20661k = ((C1735t) g0Var).getTimeUsAtPosition(j7);
                return;
            }
        }
        long timeUs = ((X) g0Var).getTimeUs(j7);
        this.f20661k = timeUs;
        if (Math.abs(this.f20667q - timeUs) < 20000) {
            return;
        }
        this.f20666p = true;
        this.f20664n = this.f20653c;
    }

    @Override // v0.C
    public boolean sniff(D d7) throws IOException {
        return b(d7);
    }

    @Override // v0.C
    public void release() {
    }
}
