package N0;

import P3.v;
import androidx.media3.common.ParserException;
import java.io.IOException;
import java.util.ArrayDeque;
import v0.D;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f2147a = new byte[8];

    /* renamed from: b, reason: collision with root package name */
    public final ArrayDeque f2148b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public final j f2149c = new j();

    /* renamed from: d, reason: collision with root package name */
    public c f2150d;

    /* renamed from: e, reason: collision with root package name */
    public int f2151e;

    /* renamed from: f, reason: collision with root package name */
    public int f2152f;

    /* renamed from: g, reason: collision with root package name */
    public long f2153g;

    public final long a(D d7, int i2) {
        d7.readFully(this.f2147a, 0, i2);
        long j7 = 0;
        for (int i7 = 0; i7 < i2; i7++) {
            j7 = (j7 << 8) | (r0[i7] & 255);
        }
        return j7;
    }

    public void init(c cVar) {
        this.f2150d = cVar;
    }

    public boolean read(D d7) throws IOException {
        String str;
        int parseUnsignedVarintLength;
        int assembleVarint;
        v.checkNotNull(this.f2150d);
        while (true) {
            ArrayDeque arrayDeque = this.f2148b;
            a aVar = (a) arrayDeque.peek();
            if (aVar != null && d7.getPosition() >= aVar.f2146b) {
                ((d) this.f2150d).endMasterElement(((a) arrayDeque.pop()).f2145a);
                return true;
            }
            int i2 = this.f2151e;
            j jVar = this.f2149c;
            if (i2 == 0) {
                long readUnsignedVarint = jVar.readUnsignedVarint(d7, true, false, 4);
                if (readUnsignedVarint == -2) {
                    d7.resetPeekPosition();
                    while (true) {
                        byte[] bArr = this.f2147a;
                        d7.peekFully(bArr, 0, 4);
                        parseUnsignedVarintLength = j.parseUnsignedVarintLength(bArr[0]);
                        if (parseUnsignedVarintLength != -1 && parseUnsignedVarintLength <= 4) {
                            assembleVarint = (int) j.assembleVarint(bArr, parseUnsignedVarintLength, false);
                            if (((d) this.f2150d).isLevel1Element(assembleVarint)) {
                                break;
                            }
                        }
                        d7.skipFully(1);
                    }
                    d7.skipFully(parseUnsignedVarintLength);
                    readUnsignedVarint = assembleVarint;
                }
                if (readUnsignedVarint == -1) {
                    return false;
                }
                this.f2152f = (int) readUnsignedVarint;
                this.f2151e = 1;
            }
            if (this.f2151e == 1) {
                this.f2153g = jVar.readUnsignedVarint(d7, false, true, 8);
                this.f2151e = 2;
            }
            int elementType = ((d) this.f2150d).getElementType(this.f2152f);
            if (elementType != 0) {
                if (elementType == 1) {
                    long position = d7.getPosition();
                    arrayDeque.push(new a(this.f2152f, this.f2153g + position));
                    ((d) this.f2150d).startMasterElement(this.f2152f, position, this.f2153g);
                    this.f2151e = 0;
                    return true;
                }
                if (elementType == 2) {
                    long j7 = this.f2153g;
                    if (j7 <= 8) {
                        ((d) this.f2150d).integerElement(this.f2152f, a(d7, (int) j7));
                        this.f2151e = 0;
                        return true;
                    }
                    throw ParserException.createForMalformedContainer("Invalid integer size: " + this.f2153g, null);
                }
                if (elementType == 3) {
                    long j8 = this.f2153g;
                    if (j8 > 2147483647L) {
                        throw ParserException.createForMalformedContainer("String element size: " + this.f2153g, null);
                    }
                    c cVar = this.f2150d;
                    int i7 = this.f2152f;
                    int i8 = (int) j8;
                    if (i8 == 0) {
                        str = "";
                    } else {
                        byte[] bArr2 = new byte[i8];
                        d7.readFully(bArr2, 0, i8);
                        while (i8 > 0 && bArr2[i8 - 1] == 0) {
                            i8--;
                        }
                        str = new String(bArr2, 0, i8);
                    }
                    ((d) cVar).stringElement(i7, str);
                    this.f2151e = 0;
                    return true;
                }
                if (elementType == 4) {
                    ((d) this.f2150d).binaryElement(this.f2152f, (int) this.f2153g, d7);
                    this.f2151e = 0;
                    return true;
                }
                if (elementType != 5) {
                    throw ParserException.createForMalformedContainer("Invalid element type " + elementType, null);
                }
                long j9 = this.f2153g;
                if (j9 != 4 && j9 != 8) {
                    throw ParserException.createForMalformedContainer("Invalid float size: " + this.f2153g, null);
                }
                c cVar2 = this.f2150d;
                int i9 = (int) j9;
                ((d) cVar2).floatElement(this.f2152f, i9 == 4 ? Float.intBitsToFloat((int) r6) : Double.longBitsToDouble(a(d7, i9)));
                this.f2151e = 0;
                return true;
            }
            d7.skipFully((int) this.f2153g);
            this.f2151e = 0;
        }
    }

    public void reset() {
        this.f2151e = 0;
        this.f2148b.clear();
        this.f2149c.reset();
    }
}
