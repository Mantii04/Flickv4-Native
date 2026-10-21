package x0;

import S0.q;
import S0.t;
import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;
import java.util.List;
import v0.AbstractC1716B;
import v0.C;
import v0.D;
import v0.F;
import v0.a0;

/* loaded from: classes.dex */
public final class d implements C {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f20727a;

    /* renamed from: b, reason: collision with root package name */
    public final c f20728b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f20729c;

    /* renamed from: d, reason: collision with root package name */
    public final q f20730d;

    /* renamed from: e, reason: collision with root package name */
    public int f20731e;

    /* renamed from: f, reason: collision with root package name */
    public F f20732f;

    /* renamed from: g, reason: collision with root package name */
    public e f20733g;

    /* renamed from: h, reason: collision with root package name */
    public long f20734h;

    /* renamed from: i, reason: collision with root package name */
    public g[] f20735i;

    /* renamed from: j, reason: collision with root package name */
    public long f20736j;

    /* renamed from: k, reason: collision with root package name */
    public g f20737k;

    /* renamed from: l, reason: collision with root package name */
    public int f20738l;

    /* renamed from: m, reason: collision with root package name */
    public long f20739m;

    /* renamed from: n, reason: collision with root package name */
    public long f20740n;

    /* renamed from: o, reason: collision with root package name */
    public int f20741o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f20742p;

    public d(int i2, q qVar) {
        this.f20730d = qVar;
        this.f20729c = (i2 & 1) == 0;
        this.f20727a = new ParsableByteArray(12);
        this.f20728b = new c();
        this.f20732f = new a0();
        this.f20735i = new g[0];
        this.f20739m = -1L;
        this.f20740n = -1L;
        this.f20738l = -1;
        this.f20734h = androidx.media3.common.C.TIME_UNSET;
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
        this.f20731e = 0;
        if (this.f20729c) {
            f3 = new t(f3, this.f20730d);
        }
        this.f20732f = f3;
        this.f20736j = -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0032 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    @Override // v0.C
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(v0.D r22, v0.c0 r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 900
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: x0.d.read(v0.D, v0.c0):int");
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        this.f20736j = -1L;
        this.f20737k = null;
        for (g gVar : this.f20735i) {
            gVar.seekToPosition(j7);
        }
        if (j7 != 0) {
            this.f20731e = 6;
        } else if (this.f20735i.length == 0) {
            this.f20731e = 0;
        } else {
            this.f20731e = 3;
        }
    }

    @Override // v0.C
    public boolean sniff(D d7) throws IOException {
        ParsableByteArray parsableByteArray = this.f20727a;
        d7.peekFully(parsableByteArray.getData(), 0, 12);
        parsableByteArray.setPosition(0);
        if (parsableByteArray.readLittleEndianInt() != 1179011410) {
            return false;
        }
        parsableByteArray.skipBytes(4);
        return parsableByteArray.readLittleEndianInt() == 541677121;
    }

    @Override // v0.C
    public void release() {
    }
}
