package okio;

import P5.p;
import e6.AbstractC0859a;
import e6.AbstractC0860b;
import e6.C0870l;
import e6.C0873o;
import e6.Q;
import f6.b;
import java.io.Serializable;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.jvm.internal.j;
import org.apache.commons.lang3.StringUtils;
import v5.m;

/* loaded from: classes2.dex */
public class ByteString implements Serializable, Comparable<ByteString> {

    /* renamed from: j, reason: collision with root package name */
    public static final C0873o f19159j = new C0873o(null);

    /* renamed from: m, reason: collision with root package name */
    public static final ByteString f19160m = new ByteString(new byte[0]);
    private static final long serialVersionUID = 1;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f19161b;

    /* renamed from: e, reason: collision with root package name */
    public transient int f19162e;

    /* renamed from: f, reason: collision with root package name */
    public transient String f19163f;

    public ByteString(byte[] data) {
        j.checkNotNullParameter(data, "data");
        this.f19161b = data;
    }

    public static final ByteString encodeUtf8(String str) {
        return f19159j.encodeUtf8(str);
    }

    public String base64() {
        return AbstractC0859a.encodeBase64$default(getData$okio(), null, 1, null);
    }

    public String base64Url() {
        return AbstractC0859a.encodeBase64(getData$okio(), AbstractC0859a.getBASE64_URL_SAFE());
    }

    public ByteString digest$okio(String algorithm) {
        j.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        messageDigest.update(this.f19161b, 0, size());
        byte[] digest = messageDigest.digest();
        j.checkNotNull(digest);
        return new ByteString(digest);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == getData$okio().length && byteString.rangeEquals(0, getData$okio(), 0, getData$okio().length)) {
                return true;
            }
        }
        return false;
    }

    public final byte getByte(int i2) {
        return internalGet$okio(i2);
    }

    public final byte[] getData$okio() {
        return this.f19161b;
    }

    public final int getHashCode$okio() {
        return this.f19162e;
    }

    public int getSize$okio() {
        return getData$okio().length;
    }

    public final String getUtf8$okio() {
        return this.f19163f;
    }

    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int hashCode = Arrays.hashCode(getData$okio());
        setHashCode$okio(hashCode);
        return hashCode;
    }

    public String hex() {
        char[] cArr = new char[getData$okio().length * 2];
        int i2 = 0;
        for (byte b7 : getData$okio()) {
            int i7 = i2 + 1;
            cArr[i2] = b.getHEX_DIGIT_CHARS()[(b7 >> 4) & 15];
            i2 += 2;
            cArr[i7] = b.getHEX_DIGIT_CHARS()[b7 & 15];
        }
        return p.concatToString(cArr);
    }

    public byte[] internalArray$okio() {
        return getData$okio();
    }

    public byte internalGet$okio(int i2) {
        return getData$okio()[i2];
    }

    public final ByteString md5() {
        return digest$okio("MD5");
    }

    public boolean rangeEquals(int i2, ByteString other, int i7, int i8) {
        j.checkNotNullParameter(other, "other");
        return other.rangeEquals(i7, getData$okio(), i2, i8);
    }

    public final void setHashCode$okio(int i2) {
        this.f19162e = i2;
    }

    public final void setUtf8$okio(String str) {
        this.f19163f = str;
    }

    public final ByteString sha1() {
        return digest$okio("SHA-1");
    }

    public final ByteString sha256() {
        return digest$okio("SHA-256");
    }

    public final int size() {
        return getSize$okio();
    }

    public final boolean startsWith(ByteString prefix) {
        j.checkNotNullParameter(prefix, "prefix");
        return rangeEquals(0, prefix, 0, prefix.size());
    }

    public ByteString toAsciiLowercase() {
        for (int i2 = 0; i2 < getData$okio().length; i2++) {
            byte b7 = getData$okio()[i2];
            if (b7 >= 65 && b7 <= 90) {
                byte[] data$okio = getData$okio();
                byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
                j.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
                copyOf[i2] = (byte) (b7 + 32);
                for (int i7 = i2 + 1; i7 < copyOf.length; i7++) {
                    byte b8 = copyOf[i7];
                    if (b8 >= 65 && b8 <= 90) {
                        copyOf[i7] = (byte) (b8 + 32);
                    }
                }
                return new ByteString(copyOf);
            }
        }
        return this;
    }

    public String toString() {
        if (getData$okio().length == 0) {
            return "[size=0]";
        }
        int access$codePointIndexToCharIndex = b.access$codePointIndexToCharIndex(getData$okio(), 64);
        if (access$codePointIndexToCharIndex != -1) {
            String utf8 = utf8();
            String substring = utf8.substring(0, access$codePointIndexToCharIndex);
            j.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            String replace$default = p.replace$default(p.replace$default(p.replace$default(substring, "\\", "\\\\", false, 4, (Object) null), StringUtils.LF, "\\n", false, 4, (Object) null), StringUtils.CR, "\\r", false, 4, (Object) null);
            if (access$codePointIndexToCharIndex >= utf8.length()) {
                return "[text=" + replace$default + ']';
            }
            return "[size=" + getData$okio().length + " text=" + replace$default + "…]";
        }
        if (getData$okio().length <= 64) {
            return "[hex=" + hex() + ']';
        }
        StringBuilder sb = new StringBuilder("[size=");
        sb.append(getData$okio().length);
        sb.append(" hex=");
        int resolveDefaultParameter = AbstractC0860b.resolveDefaultParameter(this, 64);
        if (resolveDefaultParameter > getData$okio().length) {
            throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
        }
        if (resolveDefaultParameter < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        sb.append((resolveDefaultParameter == getData$okio().length ? this : new ByteString(m.copyOfRange(getData$okio(), 0, resolveDefaultParameter))).hex());
        sb.append("…]");
        return sb.toString();
    }

    public String utf8() {
        String utf8$okio = getUtf8$okio();
        if (utf8$okio != null) {
            return utf8$okio;
        }
        String utf8String = Q.toUtf8String(internalArray$okio());
        setUtf8$okio(utf8String);
        return utf8String;
    }

    public void write$okio(C0870l buffer, int i2, int i7) {
        j.checkNotNullParameter(buffer, "buffer");
        b.commonWrite(this, buffer, i2, i7);
    }

    @Override // java.lang.Comparable
    public int compareTo(ByteString other) {
        j.checkNotNullParameter(other, "other");
        int size = size();
        int size2 = other.size();
        int min = Math.min(size, size2);
        for (int i2 = 0; i2 < min; i2++) {
            int i7 = getByte(i2) & 255;
            int i8 = other.getByte(i2) & 255;
            if (i7 != i8) {
                return i7 < i8 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public boolean rangeEquals(int i2, byte[] other, int i7, int i8) {
        j.checkNotNullParameter(other, "other");
        return i2 >= 0 && i2 <= getData$okio().length - i8 && i7 >= 0 && i7 <= other.length - i8 && AbstractC0860b.arrayRangeEquals(getData$okio(), i2, other, i7, i8);
    }
}
