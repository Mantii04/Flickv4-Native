package okio;

import e6.AbstractC0860b;
import e6.C0870l;
import e6.H;
import f6.c;
import java.security.MessageDigest;
import kotlin.jvm.internal.j;
import v5.m;

/* loaded from: classes2.dex */
public final class SegmentedByteString extends ByteString {

    /* renamed from: n, reason: collision with root package name */
    public final transient byte[][] f19164n;

    /* renamed from: p, reason: collision with root package name */
    public final transient int[] f19165p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SegmentedByteString(byte[][] segments, int[] directory) {
        super(ByteString.f19160m.getData$okio());
        j.checkNotNullParameter(segments, "segments");
        j.checkNotNullParameter(directory, "directory");
        this.f19164n = segments;
        this.f19165p = directory;
    }

    @Override // okio.ByteString
    public String base64() {
        return new ByteString(toByteArray()).base64();
    }

    @Override // okio.ByteString
    public String base64Url() {
        return new ByteString(toByteArray()).base64Url();
    }

    @Override // okio.ByteString
    public ByteString digest$okio(String algorithm) {
        j.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        int length = getSegments$okio().length;
        int i2 = 0;
        int i7 = 0;
        while (i2 < length) {
            int i8 = getDirectory$okio()[length + i2];
            int i9 = getDirectory$okio()[i2];
            messageDigest.update(getSegments$okio()[i2], i8, i9 - i7);
            i2++;
            i7 = i9;
        }
        byte[] digest = messageDigest.digest();
        j.checkNotNull(digest);
        return new ByteString(digest);
    }

    @Override // okio.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == size() && rangeEquals(0, byteString, 0, size())) {
                return true;
            }
        }
        return false;
    }

    public final int[] getDirectory$okio() {
        return this.f19165p;
    }

    public final byte[][] getSegments$okio() {
        return this.f19164n;
    }

    @Override // okio.ByteString
    public int getSize$okio() {
        return getDirectory$okio()[getSegments$okio().length - 1];
    }

    @Override // okio.ByteString
    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int length = getSegments$okio().length;
        int i2 = 0;
        int i7 = 1;
        int i8 = 0;
        while (i2 < length) {
            int i9 = getDirectory$okio()[length + i2];
            int i10 = getDirectory$okio()[i2];
            byte[] bArr = getSegments$okio()[i2];
            int i11 = (i10 - i8) + i9;
            while (i9 < i11) {
                i7 = (i7 * 31) + bArr[i9];
                i9++;
            }
            i2++;
            i8 = i10;
        }
        setHashCode$okio(i7);
        return i7;
    }

    @Override // okio.ByteString
    public String hex() {
        return new ByteString(toByteArray()).hex();
    }

    @Override // okio.ByteString
    public byte[] internalArray$okio() {
        return toByteArray();
    }

    @Override // okio.ByteString
    public byte internalGet$okio(int i2) {
        AbstractC0860b.checkOffsetAndCount(getDirectory$okio()[getSegments$okio().length - 1], i2, 1L);
        int segment = c.segment(this, i2);
        return getSegments$okio()[segment][(i2 - (segment == 0 ? 0 : getDirectory$okio()[segment - 1])) + getDirectory$okio()[getSegments$okio().length + segment]];
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i2, ByteString other, int i7, int i8) {
        j.checkNotNullParameter(other, "other");
        if (i2 < 0 || i2 > size() - i8) {
            return false;
        }
        int i9 = i8 + i2;
        int segment = c.segment(this, i2);
        while (i2 < i9) {
            int i10 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
            int i11 = getDirectory$okio()[segment] - i10;
            int i12 = getDirectory$okio()[getSegments$okio().length + segment];
            int min = Math.min(i9, i11 + i10) - i2;
            if (!other.rangeEquals(i7, getSegments$okio()[segment], (i2 - i10) + i12, min)) {
                return false;
            }
            i7 += min;
            i2 += min;
            segment++;
        }
        return true;
    }

    @Override // okio.ByteString
    public ByteString toAsciiLowercase() {
        return new ByteString(toByteArray()).toAsciiLowercase();
    }

    public byte[] toByteArray() {
        byte[] bArr = new byte[size()];
        int length = getSegments$okio().length;
        int i2 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i2 < length) {
            int i9 = getDirectory$okio()[length + i2];
            int i10 = getDirectory$okio()[i2];
            int i11 = i10 - i7;
            m.copyInto(getSegments$okio()[i2], bArr, i8, i9, i9 + i11);
            i8 += i11;
            i2++;
            i7 = i10;
        }
        return bArr;
    }

    @Override // okio.ByteString
    public String toString() {
        return new ByteString(toByteArray()).toString();
    }

    @Override // okio.ByteString
    public void write$okio(C0870l buffer, int i2, int i7) {
        j.checkNotNullParameter(buffer, "buffer");
        int i8 = i2 + i7;
        int segment = c.segment(this, i2);
        while (i2 < i8) {
            int i9 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
            int i10 = getDirectory$okio()[segment] - i9;
            int i11 = getDirectory$okio()[getSegments$okio().length + segment];
            int min = Math.min(i8, i10 + i9) - i2;
            int i12 = (i2 - i9) + i11;
            H h7 = new H(getSegments$okio()[segment], i12, i12 + min, true, false);
            H h8 = buffer.f14019b;
            if (h8 == null) {
                h7.f13997g = h7;
                h7.f13996f = h7;
                buffer.f14019b = h7;
            } else {
                j.checkNotNull(h8);
                H h9 = h8.f13997g;
                j.checkNotNull(h9);
                h9.push(h7);
            }
            i2 += min;
            segment++;
        }
        buffer.setSize$okio(buffer.size() + i7);
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i2, byte[] other, int i7, int i8) {
        j.checkNotNullParameter(other, "other");
        if (i2 < 0 || i2 > size() - i8 || i7 < 0 || i7 > other.length - i8) {
            return false;
        }
        int i9 = i8 + i2;
        int segment = c.segment(this, i2);
        while (i2 < i9) {
            int i10 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
            int i11 = getDirectory$okio()[segment] - i10;
            int i12 = getDirectory$okio()[getSegments$okio().length + segment];
            int min = Math.min(i9, i11 + i10) - i2;
            if (!AbstractC0860b.arrayRangeEquals(getSegments$okio()[segment], (i2 - i10) + i12, other, i7, min)) {
                return false;
            }
            i7 += min;
            i2 += min;
            segment++;
        }
        return true;
    }
}
