package androidx.datastore.preferences.protobuf;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class ByteString implements Iterable<Byte>, Serializable {

    /* renamed from: e, reason: collision with root package name */
    public static final ByteString f5743e = new LiteralByteString(I.f5778b);

    /* renamed from: f, reason: collision with root package name */
    public static final InterfaceC0425k f5744f;

    /* renamed from: b, reason: collision with root package name */
    public int f5745b = 0;

    public static abstract class LeafByteString extends ByteString {
        @Override // java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
            return super.iterator();
        }
    }

    public static class LiteralByteString extends LeafByteString {
        private static final long serialVersionUID = 1;

        /* renamed from: j, reason: collision with root package name */
        public final byte[] f5746j;

        public LiteralByteString(byte[] bArr) {
            bArr.getClass();
            this.f5746j = bArr;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public byte a(int i2) {
            return this.f5746j[i2];
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public byte byteAt(int i2) {
            return this.f5746j[i2];
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ByteString) || size() != ((ByteString) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof LiteralByteString)) {
                return obj.equals(this);
            }
            LiteralByteString literalByteString = (LiteralByteString) obj;
            int peekCachedHashCode = peekCachedHashCode();
            int peekCachedHashCode2 = literalByteString.peekCachedHashCode();
            if (peekCachedHashCode != 0 && peekCachedHashCode2 != 0 && peekCachedHashCode != peekCachedHashCode2) {
                return false;
            }
            int size = size();
            if (size > literalByteString.size()) {
                throw new IllegalArgumentException("Length too large: " + size + size());
            }
            if (size > literalByteString.size()) {
                StringBuilder q6 = A.i.q(size, "Ran off end of other: 0, ", ", ");
                q6.append(literalByteString.size());
                throw new IllegalArgumentException(q6.toString());
            }
            int offsetIntoBytes = getOffsetIntoBytes() + size;
            int offsetIntoBytes2 = getOffsetIntoBytes();
            int offsetIntoBytes3 = literalByteString.getOffsetIntoBytes();
            while (offsetIntoBytes2 < offsetIntoBytes) {
                if (this.f5746j[offsetIntoBytes2] != literalByteString.f5746j[offsetIntoBytes3]) {
                    return false;
                }
                offsetIntoBytes2++;
                offsetIntoBytes3++;
            }
            return true;
        }

        public int getOffsetIntoBytes() {
            return 0;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public final boolean isValidUtf8() {
            int offsetIntoBytes = getOffsetIntoBytes();
            return J0.isValidUtf8(this.f5746j, offsetIntoBytes, size() + offsetIntoBytes);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public final int partialHash(int i2, int i7, int i8) {
            int offsetIntoBytes = getOffsetIntoBytes() + i7;
            Charset charset = I.f5777a;
            for (int i9 = offsetIntoBytes; i9 < offsetIntoBytes + i8; i9++) {
                i2 = (i2 * 31) + this.f5746j[i9];
            }
            return i2;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public int size() {
            return this.f5746j.length;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public final String toStringInternal(Charset charset) {
            return new String(this.f5746j, getOffsetIntoBytes(), size(), charset);
        }
    }

    static {
        f5744f = AbstractC0413e.a() ? new C0429m() : new C0423j();
    }

    public static ByteString copyFrom(byte[] bArr, int i2, int i7) {
        int i8 = i2 + i7;
        int length = bArr.length;
        if (((i8 - i2) | i2 | i8 | (length - i8)) >= 0) {
            return new LiteralByteString(f5744f.copyFrom(bArr, i2, i7));
        }
        if (i2 < 0) {
            throw new IndexOutOfBoundsException(A.i.g(i2, "Beginning index: ", " < 0"));
        }
        if (i8 < i2) {
            throw new IndexOutOfBoundsException(A.i.e(i2, i8, "Beginning index larger than ending index: ", ", "));
        }
        throw new IndexOutOfBoundsException(A.i.e(i8, length, "End index: ", " >= "));
    }

    public static ByteString copyFromUtf8(String str) {
        return new LiteralByteString(str.getBytes(I.f5777a));
    }

    public abstract byte a(int i2);

    public abstract byte byteAt(int i2);

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i2 = this.f5745b;
        if (i2 == 0) {
            int size = size();
            i2 = partialHash(size, 0, size);
            if (i2 == 0) {
                i2 = 1;
            }
            this.f5745b = i2;
        }
        return i2;
    }

    public abstract boolean isValidUtf8();

    @Override // java.lang.Iterable
    public Iterator<Byte> iterator() {
        return new C0419h(this);
    }

    public abstract int partialHash(int i2, int i7, int i8);

    public final int peekCachedHashCode() {
        return this.f5745b;
    }

    public abstract int size();

    public final String toString(Charset charset) {
        return size() == 0 ? "" : toStringInternal(charset);
    }

    public abstract String toStringInternal(Charset charset);

    public final String toStringUtf8() {
        return toString(I.f5777a);
    }

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    public static ByteString copyFrom(byte[] bArr) {
        return copyFrom(bArr, 0, bArr.length);
    }
}
