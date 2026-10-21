package B0;

import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;
import java.util.List;
import v0.AbstractC1716B;
import v0.C;
import v0.D;
import v0.F;

/* loaded from: classes.dex */
public final class b implements C {

    /* renamed from: f, reason: collision with root package name */
    public F f122f;

    /* renamed from: h, reason: collision with root package name */
    public boolean f124h;

    /* renamed from: i, reason: collision with root package name */
    public long f125i;

    /* renamed from: j, reason: collision with root package name */
    public int f126j;

    /* renamed from: k, reason: collision with root package name */
    public int f127k;

    /* renamed from: l, reason: collision with root package name */
    public int f128l;

    /* renamed from: m, reason: collision with root package name */
    public long f129m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f130n;

    /* renamed from: o, reason: collision with root package name */
    public a f131o;

    /* renamed from: p, reason: collision with root package name */
    public e f132p;

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f117a = new ParsableByteArray(4);

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f118b = new ParsableByteArray(9);

    /* renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f119c = new ParsableByteArray(11);

    /* renamed from: d, reason: collision with root package name */
    public final ParsableByteArray f120d = new ParsableByteArray();

    /* renamed from: e, reason: collision with root package name */
    public final c f121e = new c();

    /* renamed from: g, reason: collision with root package name */
    public int f123g = 1;

    public final ParsableByteArray a(D d7) {
        int i2 = this.f128l;
        ParsableByteArray parsableByteArray = this.f120d;
        if (i2 > parsableByteArray.capacity()) {
            parsableByteArray.reset(new byte[Math.max(parsableByteArray.capacity() * 2, this.f128l)], 0);
        } else {
            parsableByteArray.setPosition(0);
        }
        parsableByteArray.setLimit(this.f128l);
        d7.readFully(parsableByteArray.getData(), 0, this.f128l);
        return parsableByteArray;
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
        this.f122f = f3;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0009 A[SYNTHETIC] */
    @Override // v0.C
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(v0.D r17, v0.c0 r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: B0.b.read(v0.D, v0.c0):int");
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        if (j7 == 0) {
            this.f123g = 1;
            this.f124h = false;
        } else {
            this.f123g = 3;
        }
        this.f126j = 0;
    }

    @Override // v0.C
    public boolean sniff(D d7) throws IOException {
        ParsableByteArray parsableByteArray = this.f117a;
        d7.peekFully(parsableByteArray.getData(), 0, 3);
        parsableByteArray.setPosition(0);
        if (parsableByteArray.readUnsignedInt24() != 4607062) {
            return false;
        }
        d7.peekFully(parsableByteArray.getData(), 0, 2);
        parsableByteArray.setPosition(0);
        if ((parsableByteArray.readUnsignedShort() & 250) != 0) {
            return false;
        }
        d7.peekFully(parsableByteArray.getData(), 0, 4);
        parsableByteArray.setPosition(0);
        int readInt = parsableByteArray.readInt();
        d7.resetPeekPosition();
        d7.advancePeekPosition(readInt);
        d7.peekFully(parsableByteArray.getData(), 0, 4);
        parsableByteArray.setPosition(0);
        return parsableByteArray.readInt() == 0;
    }

    @Override // v0.C
    public void release() {
    }
}
