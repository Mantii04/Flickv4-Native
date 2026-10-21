package c1;

import android.util.SparseArray;
import java.util.Arrays;
import s0.C1624t;
import s0.C1625u;
import v0.r0;

/* renamed from: c1.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0712q {

    /* renamed from: a, reason: collision with root package name */
    public final r0 f8820a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f8821b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f8822c;

    /* renamed from: f, reason: collision with root package name */
    public final s0.y f8825f;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f8826g;

    /* renamed from: h, reason: collision with root package name */
    public int f8827h;

    /* renamed from: i, reason: collision with root package name */
    public int f8828i;

    /* renamed from: j, reason: collision with root package name */
    public long f8829j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f8830k;

    /* renamed from: l, reason: collision with root package name */
    public long f8831l;

    /* renamed from: o, reason: collision with root package name */
    public boolean f8834o;

    /* renamed from: p, reason: collision with root package name */
    public long f8835p;

    /* renamed from: q, reason: collision with root package name */
    public long f8836q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f8837r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f8838s;

    /* renamed from: d, reason: collision with root package name */
    public final SparseArray f8823d = new SparseArray();

    /* renamed from: e, reason: collision with root package name */
    public final SparseArray f8824e = new SparseArray();

    /* renamed from: m, reason: collision with root package name */
    public C0711p f8832m = new C0711p();

    /* renamed from: n, reason: collision with root package name */
    public C0711p f8833n = new C0711p();

    public C0712q(r0 r0Var, boolean z6, boolean z7) {
        this.f8820a = r0Var;
        this.f8821b = z6;
        this.f8822c = z7;
        byte[] bArr = new byte[128];
        this.f8826g = bArr;
        this.f8825f = new s0.y(bArr, 0, 0);
        reset();
    }

    public void appendToNalUnit(byte[] bArr, int i2, int i7) {
        boolean z6;
        boolean z7;
        boolean z8;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        if (this.f8830k) {
            int i13 = i7 - i2;
            byte[] bArr2 = this.f8826g;
            int length = bArr2.length;
            int i14 = this.f8827h + i13;
            if (length < i14) {
                this.f8826g = Arrays.copyOf(bArr2, i14 * 2);
            }
            System.arraycopy(bArr, i2, this.f8826g, this.f8827h, i13);
            int i15 = this.f8827h + i13;
            this.f8827h = i15;
            byte[] bArr3 = this.f8826g;
            s0.y yVar = this.f8825f;
            yVar.reset(bArr3, 0, i15);
            if (yVar.canReadBits(8)) {
                yVar.skipBit();
                int readBits = yVar.readBits(2);
                yVar.skipBits(5);
                if (yVar.canReadExpGolombCodedNum()) {
                    yVar.readUnsignedExpGolombCodedInt();
                    if (yVar.canReadExpGolombCodedNum()) {
                        int readUnsignedExpGolombCodedInt = yVar.readUnsignedExpGolombCodedInt();
                        if (!this.f8822c) {
                            this.f8830k = false;
                            this.f8833n.setSliceType(readUnsignedExpGolombCodedInt);
                            return;
                        }
                        if (yVar.canReadExpGolombCodedNum()) {
                            int readUnsignedExpGolombCodedInt2 = yVar.readUnsignedExpGolombCodedInt();
                            SparseArray sparseArray = this.f8824e;
                            if (sparseArray.indexOfKey(readUnsignedExpGolombCodedInt2) < 0) {
                                this.f8830k = false;
                                return;
                            }
                            C1624t c1624t = (C1624t) sparseArray.get(readUnsignedExpGolombCodedInt2);
                            C1625u c1625u = (C1625u) this.f8823d.get(c1624t.f19963b);
                            if (c1625u.f19974j) {
                                if (!yVar.canReadBits(2)) {
                                    return;
                                } else {
                                    yVar.skipBits(2);
                                }
                            }
                            int i16 = c1625u.f19976l;
                            if (yVar.canReadBits(i16)) {
                                int readBits2 = yVar.readBits(i16);
                                if (c1625u.f19975k) {
                                    z6 = false;
                                    z7 = false;
                                    z8 = false;
                                } else {
                                    if (!yVar.canReadBits(1)) {
                                        return;
                                    }
                                    boolean readBit = yVar.readBit();
                                    if (!readBit) {
                                        z7 = false;
                                        z8 = false;
                                        z6 = readBit;
                                    } else {
                                        if (!yVar.canReadBits(1)) {
                                            return;
                                        }
                                        z6 = readBit;
                                        z7 = true;
                                        z8 = yVar.readBit();
                                    }
                                }
                                boolean z9 = this.f8828i == 5;
                                if (!z9) {
                                    i8 = 0;
                                } else if (!yVar.canReadExpGolombCodedNum()) {
                                    return;
                                } else {
                                    i8 = yVar.readUnsignedExpGolombCodedInt();
                                }
                                boolean z10 = c1624t.f19964c;
                                int i17 = c1625u.f19977m;
                                if (i17 == 0) {
                                    int i18 = c1625u.f19978n;
                                    if (!yVar.canReadBits(i18)) {
                                        return;
                                    }
                                    int readBits3 = yVar.readBits(i18);
                                    if (z10 && !z6) {
                                        if (yVar.canReadExpGolombCodedNum()) {
                                            i10 = yVar.readSignedExpGolombCodedInt();
                                            i9 = readBits3;
                                            i11 = 0;
                                            i12 = i11;
                                            this.f8833n.setAll(c1625u, readBits, readUnsignedExpGolombCodedInt, readBits2, readUnsignedExpGolombCodedInt2, z6, z7, z8, z9, i8, i9, i10, i11, i12);
                                            this.f8830k = false;
                                        }
                                        return;
                                    }
                                    i9 = readBits3;
                                    i10 = 0;
                                } else {
                                    if (i17 == 1 && !c1625u.f19979o) {
                                        if (yVar.canReadExpGolombCodedNum()) {
                                            int readSignedExpGolombCodedInt = yVar.readSignedExpGolombCodedInt();
                                            if (!z10 || z6) {
                                                i11 = readSignedExpGolombCodedInt;
                                                i9 = 0;
                                                i10 = 0;
                                                i12 = 0;
                                            } else {
                                                if (!yVar.canReadExpGolombCodedNum()) {
                                                    return;
                                                }
                                                i12 = yVar.readSignedExpGolombCodedInt();
                                                i11 = readSignedExpGolombCodedInt;
                                                i9 = 0;
                                                i10 = 0;
                                            }
                                            this.f8833n.setAll(c1625u, readBits, readUnsignedExpGolombCodedInt, readBits2, readUnsignedExpGolombCodedInt2, z6, z7, z8, z9, i8, i9, i10, i11, i12);
                                            this.f8830k = false;
                                        }
                                        return;
                                    }
                                    i9 = 0;
                                    i10 = 0;
                                }
                                i11 = i10;
                                i12 = i11;
                                this.f8833n.setAll(c1625u, readBits, readUnsignedExpGolombCodedInt, readBits2, readUnsignedExpGolombCodedInt2, z6, z7, z8, z9, i8, i9, i10, i11, i12);
                                this.f8830k = false;
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004a, code lost:
    
        if (r0.f8813j == r1.f8813j) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
    
        if (r7 != 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0068, code lost:
    
        if (r0.f8817n == r1.f8817n) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007a, code lost:
    
        if (r0.f8819p == r1.f8819p) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0088, code lost:
    
        if (r0.f8815l == r1.f8815l) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean endNalUnit(long r12, int r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c1.C0712q.endNalUnit(long, int, boolean):boolean");
    }

    public boolean needsSpsPps() {
        return this.f8822c;
    }

    public void putPps(C1624t c1624t) {
        this.f8824e.append(c1624t.f19962a, c1624t);
    }

    public void putSps(C1625u c1625u) {
        this.f8823d.append(c1625u.f19968d, c1625u);
    }

    public void reset() {
        this.f8830k = false;
        this.f8834o = false;
        this.f8833n.clear();
    }

    public void startNalUnit(long j7, int i2, long j8, boolean z6) {
        this.f8828i = i2;
        this.f8831l = j8;
        this.f8829j = j7;
        this.f8838s = z6;
        if (!this.f8821b || i2 != 1) {
            if (!this.f8822c) {
                return;
            }
            if (i2 != 5 && i2 != 1 && i2 != 2) {
                return;
            }
        }
        C0711p c0711p = this.f8832m;
        this.f8832m = this.f8833n;
        this.f8833n = c0711p;
        c0711p.clear();
        this.f8827h = 0;
        this.f8830k = true;
    }
}
