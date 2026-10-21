package k2;

import A.i;
import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: b, reason: collision with root package name */
    public ByteBuffer f17273b;

    /* renamed from: c, reason: collision with root package name */
    public d f17274c;

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f17272a = new byte[256];

    /* renamed from: d, reason: collision with root package name */
    public int f17275d = 0;

    public final boolean a() {
        return this.f17274c.f17262b != 0;
    }

    public final int b() {
        try {
            return this.f17273b.get() & 255;
        } catch (Exception unused) {
            this.f17274c.f17262b = 1;
            return 0;
        }
    }

    public final void c() {
        int b7 = b();
        this.f17275d = b7;
        if (b7 <= 0) {
            return;
        }
        int i2 = 0;
        int i7 = 0;
        while (true) {
            try {
                i7 = this.f17275d;
                if (i2 >= i7) {
                    return;
                }
                i7 -= i2;
                this.f17273b.get(this.f17272a, i2, i7);
                i2 += i7;
            } catch (Exception e3) {
                if (Log.isLoggable("GifHeaderParser", 3)) {
                    StringBuilder p6 = i.p(i2, i7, "Error Reading Block n: ", " count: ", " blockSize: ");
                    p6.append(this.f17275d);
                    Log.d("GifHeaderParser", p6.toString(), e3);
                }
                this.f17274c.f17262b = 1;
                return;
            }
        }
    }

    public void clear() {
        this.f17273b = null;
        this.f17274c = null;
    }

    public final int[] d(int i2) {
        byte[] bArr = new byte[i2 * 3];
        int[] iArr = null;
        try {
            this.f17273b.get(bArr);
            iArr = new int[256];
            int i7 = 0;
            int i8 = 0;
            while (i7 < i2) {
                int i9 = bArr[i8] & 255;
                int i10 = i8 + 2;
                int i11 = bArr[i8 + 1] & 255;
                i8 += 3;
                int i12 = i7 + 1;
                iArr[i7] = (i11 << 8) | (i9 << 16) | (-16777216) | (bArr[i10] & 255);
                i7 = i12;
            }
            return iArr;
        } catch (BufferUnderflowException e3) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e3);
            }
            this.f17274c.f17262b = 1;
            return iArr;
        }
    }

    public final void e() {
        int b7;
        do {
            b7 = b();
            this.f17273b.position(Math.min(this.f17273b.position() + b7, this.f17273b.limit()));
        } while (b7 > 0);
    }

    public d parseHeader() {
        byte[] bArr;
        if (this.f17273b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (a()) {
            return this.f17274c;
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < 6; i2++) {
            sb.append((char) b());
        }
        if (sb.toString().startsWith("GIF")) {
            this.f17274c.f17266f = this.f17273b.getShort();
            this.f17274c.f17267g = this.f17273b.getShort();
            int b7 = b();
            d dVar = this.f17274c;
            dVar.f17268h = (b7 & 128) != 0;
            dVar.f17269i = (int) Math.pow(2.0d, (b7 & 7) + 1);
            this.f17274c.f17270j = b();
            d dVar2 = this.f17274c;
            b();
            dVar2.getClass();
            if (this.f17274c.f17268h && !a()) {
                d dVar3 = this.f17274c;
                dVar3.f17261a = d(dVar3.f17269i);
                d dVar4 = this.f17274c;
                dVar4.f17271k = dVar4.f17261a[dVar4.f17270j];
            }
        } else {
            this.f17274c.f17262b = 1;
        }
        if (!a()) {
            boolean z6 = false;
            while (!z6 && !a() && this.f17274c.f17263c <= Integer.MAX_VALUE) {
                int b8 = b();
                if (b8 == 33) {
                    int b9 = b();
                    if (b9 == 1) {
                        e();
                    } else if (b9 == 249) {
                        this.f17274c.f17264d = new c();
                        b();
                        int b10 = b();
                        c cVar = this.f17274c.f17264d;
                        int i7 = (b10 & 28) >> 2;
                        cVar.f17256g = i7;
                        if (i7 == 0) {
                            cVar.f17256g = 1;
                        }
                        cVar.f17255f = (b10 & 1) != 0;
                        short s6 = this.f17273b.getShort();
                        if (s6 < 2) {
                            s6 = 10;
                        }
                        c cVar2 = this.f17274c.f17264d;
                        cVar2.f17258i = s6 * 10;
                        cVar2.f17257h = b();
                        b();
                    } else if (b9 == 254) {
                        e();
                    } else if (b9 != 255) {
                        e();
                    } else {
                        c();
                        StringBuilder sb2 = new StringBuilder();
                        int i8 = 0;
                        while (true) {
                            bArr = this.f17272a;
                            if (i8 >= 11) {
                                break;
                            }
                            sb2.append((char) bArr[i8]);
                            i8++;
                        }
                        if (sb2.toString().equals("NETSCAPE2.0")) {
                            do {
                                c();
                                if (bArr[0] == 1) {
                                    byte b11 = bArr[1];
                                    byte b12 = bArr[2];
                                    this.f17274c.getClass();
                                }
                                if (this.f17275d > 0) {
                                }
                            } while (!a());
                        } else {
                            e();
                        }
                    }
                } else if (b8 == 44) {
                    d dVar5 = this.f17274c;
                    if (dVar5.f17264d == null) {
                        dVar5.f17264d = new c();
                    }
                    dVar5.f17264d.f17250a = this.f17273b.getShort();
                    this.f17274c.f17264d.f17251b = this.f17273b.getShort();
                    this.f17274c.f17264d.f17252c = this.f17273b.getShort();
                    this.f17274c.f17264d.f17253d = this.f17273b.getShort();
                    int b13 = b();
                    boolean z7 = (b13 & 128) != 0;
                    int pow = (int) Math.pow(2.0d, (b13 & 7) + 1);
                    c cVar3 = this.f17274c.f17264d;
                    cVar3.f17254e = (b13 & 64) != 0;
                    if (z7) {
                        cVar3.f17260k = d(pow);
                    } else {
                        cVar3.f17260k = null;
                    }
                    this.f17274c.f17264d.f17259j = this.f17273b.position();
                    b();
                    e();
                    if (!a()) {
                        d dVar6 = this.f17274c;
                        dVar6.f17263c++;
                        dVar6.f17265e.add(dVar6.f17264d);
                    }
                } else if (b8 != 59) {
                    this.f17274c.f17262b = 1;
                } else {
                    z6 = true;
                }
            }
            d dVar7 = this.f17274c;
            if (dVar7.f17263c < 0) {
                dVar7.f17262b = 1;
            }
        }
        return this.f17274c;
    }

    public e setData(ByteBuffer byteBuffer) {
        this.f17273b = null;
        Arrays.fill(this.f17272a, (byte) 0);
        this.f17274c = new d();
        this.f17275d = 0;
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.f17273b = asReadOnlyBuffer;
        asReadOnlyBuffer.position(0);
        this.f17273b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }
}
