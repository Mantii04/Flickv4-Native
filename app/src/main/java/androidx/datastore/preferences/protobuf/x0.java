package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class x0 {

    /* renamed from: f, reason: collision with root package name */
    public static final x0 f5926f = new x0(0, new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    public int f5927a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f5928b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f5929c;

    /* renamed from: d, reason: collision with root package name */
    public int f5930d = -1;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5931e;

    public x0(int i2, int[] iArr, Object[] objArr, boolean z6) {
        this.f5927a = i2;
        this.f5928b = iArr;
        this.f5929c = objArr;
        this.f5931e = z6;
    }

    public static x0 a() {
        return new x0(0, new int[8], new Object[8], true);
    }

    public static void c(int i2, Object obj, C0435t c0435t) {
        int tagFieldNumber = K0.getTagFieldNumber(i2);
        int tagWireType = K0.getTagWireType(i2);
        if (tagWireType == 0) {
            c0435t.writeInt64(tagFieldNumber, ((Long) obj).longValue());
            return;
        }
        if (tagWireType == 1) {
            c0435t.writeFixed64(tagFieldNumber, ((Long) obj).longValue());
            return;
        }
        if (tagWireType == 2) {
            c0435t.writeBytes(tagFieldNumber, (ByteString) obj);
            return;
        }
        if (tagWireType != 3) {
            if (tagWireType != 5) {
                throw new RuntimeException(InvalidProtocolBufferException.b());
            }
            c0435t.writeFixed32(tagFieldNumber, ((Integer) obj).intValue());
        } else if (c0435t.fieldOrder() == Writer$FieldOrder.f5834b) {
            c0435t.writeStartGroup(tagFieldNumber);
            ((x0) obj).writeTo(c0435t);
            c0435t.writeEndGroup(tagFieldNumber);
        } else {
            c0435t.writeEndGroup(tagFieldNumber);
            ((x0) obj).writeTo(c0435t);
            c0435t.writeStartGroup(tagFieldNumber);
        }
    }

    public static x0 getDefaultInstance() {
        return f5926f;
    }

    public final void b(int i2, Object obj) {
        if (!this.f5931e) {
            throw new UnsupportedOperationException();
        }
        int i7 = this.f5927a;
        int[] iArr = this.f5928b;
        if (i7 == iArr.length) {
            int i8 = i7 + (i7 < 4 ? 8 : i7 >> 1);
            this.f5928b = Arrays.copyOf(iArr, i8);
            this.f5929c = Arrays.copyOf(this.f5929c, i8);
        }
        int[] iArr2 = this.f5928b;
        int i9 = this.f5927a;
        iArr2[i9] = i2;
        this.f5929c[i9] = obj;
        this.f5927a = i9 + 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof x0)) {
            return false;
        }
        x0 x0Var = (x0) obj;
        int i2 = this.f5927a;
        if (i2 == x0Var.f5927a) {
            int[] iArr = this.f5928b;
            int[] iArr2 = x0Var.f5928b;
            int i7 = 0;
            while (true) {
                if (i7 >= i2) {
                    Object[] objArr = this.f5929c;
                    Object[] objArr2 = x0Var.f5929c;
                    int i8 = this.f5927a;
                    for (int i9 = 0; i9 < i8; i9++) {
                        if (objArr[i9].equals(objArr2[i9])) {
                        }
                    }
                    return true;
                }
                if (iArr[i7] != iArr2[i7]) {
                    break;
                }
                i7++;
            }
        }
        return false;
    }

    public int getSerializedSize() {
        int computeUInt64Size;
        int i2 = this.f5930d;
        if (i2 != -1) {
            return i2;
        }
        int i7 = 0;
        for (int i8 = 0; i8 < this.f5927a; i8++) {
            int i9 = this.f5928b[i8];
            int tagFieldNumber = K0.getTagFieldNumber(i9);
            int tagWireType = K0.getTagWireType(i9);
            if (tagWireType == 0) {
                computeUInt64Size = AbstractC0434s.computeUInt64Size(tagFieldNumber, ((Long) this.f5929c[i8]).longValue());
            } else if (tagWireType == 1) {
                computeUInt64Size = AbstractC0434s.computeFixed64Size(tagFieldNumber, ((Long) this.f5929c[i8]).longValue());
            } else if (tagWireType == 2) {
                computeUInt64Size = AbstractC0434s.computeBytesSize(tagFieldNumber, (ByteString) this.f5929c[i8]);
            } else if (tagWireType == 3) {
                i7 = ((x0) this.f5929c[i8]).getSerializedSize() + (AbstractC0434s.computeTagSize(tagFieldNumber) * 2) + i7;
            } else {
                if (tagWireType != 5) {
                    throw new IllegalStateException(InvalidProtocolBufferException.b());
                }
                computeUInt64Size = AbstractC0434s.computeFixed32Size(tagFieldNumber, ((Integer) this.f5929c[i8]).intValue());
            }
            i7 = computeUInt64Size + i7;
        }
        this.f5930d = i7;
        return i7;
    }

    public int getSerializedSizeAsMessageSet() {
        int i2 = this.f5930d;
        if (i2 != -1) {
            return i2;
        }
        int i7 = 0;
        for (int i8 = 0; i8 < this.f5927a; i8++) {
            i7 += AbstractC0434s.computeRawMessageSetExtensionSize(K0.getTagFieldNumber(this.f5928b[i8]), (ByteString) this.f5929c[i8]);
        }
        this.f5930d = i7;
        return i7;
    }

    public int hashCode() {
        int i2 = this.f5927a;
        int i7 = (527 + i2) * 31;
        int[] iArr = this.f5928b;
        int i8 = 17;
        int i9 = 17;
        for (int i10 = 0; i10 < i2; i10++) {
            i9 = (i9 * 31) + iArr[i10];
        }
        int i11 = (i7 + i9) * 31;
        Object[] objArr = this.f5929c;
        int i12 = this.f5927a;
        for (int i13 = 0; i13 < i12; i13++) {
            i8 = (i8 * 31) + objArr[i13].hashCode();
        }
        return i11 + i8;
    }

    public void makeImmutable() {
        this.f5931e = false;
    }

    public void writeTo(L0 l02) throws IOException {
        if (this.f5927a == 0) {
            return;
        }
        C0435t c0435t = (C0435t) l02;
        if (c0435t.fieldOrder() == Writer$FieldOrder.f5834b) {
            for (int i2 = 0; i2 < this.f5927a; i2++) {
                c(this.f5928b[i2], this.f5929c[i2], c0435t);
            }
            return;
        }
        for (int i7 = this.f5927a - 1; i7 >= 0; i7--) {
            c(this.f5928b[i7], this.f5929c[i7], c0435t);
        }
    }
}
