package androidx.media3.container;

import P3.v;
import androidx.media3.common.util.ParsableBitArray;
import java.nio.ByteBuffer;
import s0.w;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7154a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f7155b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f7156c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f7157d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f7158e;

    /* renamed from: f, reason: collision with root package name */
    public final int f7159f;

    /* renamed from: g, reason: collision with root package name */
    public final int f7160g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f7161h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f7162i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f7163j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f7164k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f7165l;

    /* renamed from: m, reason: collision with root package name */
    public final byte f7166m;

    /* renamed from: n, reason: collision with root package name */
    public final byte f7167n;

    /* renamed from: o, reason: collision with root package name */
    public final byte f7168o;

    public b(w wVar) {
        v.checkArgument(wVar.f19988a == 1);
        ByteBuffer byteBuffer = wVar.f19989b;
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.asReadOnlyBuffer().get(bArr);
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        this.f7160g = parsableBitArray.readBits(3);
        parsableBitArray.skipBit();
        boolean readBit = parsableBitArray.readBit();
        this.f7154a = readBit;
        if (readBit) {
            parsableBitArray.readBits(5);
            this.f7155b = false;
            this.f7161h = false;
        } else {
            if (parsableBitArray.readBit()) {
                parsableBitArray.skipBits(64);
                if (parsableBitArray.readBit()) {
                    int i2 = 0;
                    while (!parsableBitArray.readBit()) {
                        i2++;
                    }
                    if (i2 < 32) {
                        parsableBitArray.skipBits(i2);
                    }
                }
                boolean readBit2 = parsableBitArray.readBit();
                this.f7155b = readBit2;
                if (readBit2) {
                    parsableBitArray.skipBits(47);
                }
            } else {
                this.f7155b = false;
            }
            this.f7161h = parsableBitArray.readBit();
            int readBits = parsableBitArray.readBits(5);
            for (int i7 = 0; i7 <= readBits; i7++) {
                parsableBitArray.skipBits(12);
                if (i7 == 0) {
                    if (parsableBitArray.readBits(5) > 7) {
                        parsableBitArray.readBit();
                    }
                } else if (parsableBitArray.readBits(5) > 7) {
                    parsableBitArray.skipBit();
                }
                if (this.f7155b) {
                    parsableBitArray.skipBit();
                }
                if (this.f7161h && parsableBitArray.readBit()) {
                    if (i7 == 0) {
                        parsableBitArray.readBits(4);
                    } else {
                        parsableBitArray.skipBits(4);
                    }
                }
            }
        }
        int readBits2 = parsableBitArray.readBits(4);
        int readBits3 = parsableBitArray.readBits(4);
        parsableBitArray.skipBits(readBits2 + 1);
        parsableBitArray.skipBits(readBits3 + 1);
        if (this.f7154a) {
            this.f7156c = false;
        } else {
            this.f7156c = parsableBitArray.readBit();
        }
        if (this.f7156c) {
            parsableBitArray.skipBits(4);
            parsableBitArray.skipBits(3);
        }
        parsableBitArray.skipBits(3);
        if (this.f7154a) {
            this.f7158e = true;
            this.f7157d = true;
            this.f7159f = 0;
        } else {
            parsableBitArray.skipBits(4);
            boolean readBit3 = parsableBitArray.readBit();
            if (readBit3) {
                parsableBitArray.skipBits(2);
            }
            if (parsableBitArray.readBit()) {
                this.f7157d = true;
            } else {
                this.f7157d = parsableBitArray.readBit();
            }
            if (!this.f7157d) {
                this.f7158e = true;
            } else if (parsableBitArray.readBit()) {
                this.f7158e = true;
            } else {
                this.f7158e = parsableBitArray.readBit();
            }
            if (readBit3) {
                this.f7159f = parsableBitArray.readBits(3) + 1;
            } else {
                this.f7159f = 0;
            }
        }
        parsableBitArray.skipBits(3);
        boolean readBit4 = parsableBitArray.readBit();
        if (this.f7160g == 2 && readBit4) {
            this.f7162i = parsableBitArray.readBit();
        } else {
            this.f7162i = false;
        }
        if (this.f7160g != 1) {
            this.f7163j = parsableBitArray.readBit();
        } else {
            this.f7163j = false;
        }
        if (parsableBitArray.readBit()) {
            this.f7166m = (byte) parsableBitArray.readBits(8);
            this.f7167n = (byte) parsableBitArray.readBits(8);
            this.f7168o = (byte) parsableBitArray.readBits(8);
        } else {
            this.f7166m = (byte) 0;
            this.f7167n = (byte) 0;
            this.f7168o = (byte) 0;
        }
        if (this.f7163j) {
            parsableBitArray.skipBit();
            this.f7164k = false;
            this.f7165l = false;
        } else if (this.f7166m == 1 && this.f7167n == 13 && this.f7168o == 0) {
            this.f7164k = false;
            this.f7165l = false;
        } else {
            parsableBitArray.skipBit();
            int i8 = this.f7160g;
            if (i8 == 0) {
                this.f7164k = true;
                this.f7165l = true;
            } else if (i8 == 1) {
                this.f7164k = false;
                this.f7165l = false;
            } else if (this.f7162i) {
                boolean readBit5 = parsableBitArray.readBit();
                this.f7164k = readBit5;
                if (readBit5) {
                    this.f7165l = parsableBitArray.readBit();
                } else {
                    this.f7165l = false;
                }
            } else {
                this.f7164k = true;
                this.f7165l = false;
            }
            if (this.f7164k && this.f7165l) {
                parsableBitArray.readBits(2);
            }
        }
        parsableBitArray.skipBit();
    }

    public static b parse(w wVar) {
        try {
            return new b(wVar);
        } catch (ObuParser$NotYetImplementedException unused) {
            return null;
        }
    }
}
