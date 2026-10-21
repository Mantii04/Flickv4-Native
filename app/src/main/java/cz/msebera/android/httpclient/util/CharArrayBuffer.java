package cz.msebera.android.httpclient.util;

import A.i;
import cz.msebera.android.httpclient.protocol.HTTP;
import java.io.Serializable;
import java.nio.CharBuffer;

/* loaded from: classes2.dex */
public final class CharArrayBuffer implements CharSequence, Serializable {
    private static final long serialVersionUID = -6208952725094867135L;
    private char[] buffer;
    private int len;

    public CharArrayBuffer(int i2) {
        Args.notNegative(i2, "Buffer capacity");
        this.buffer = new char[i2];
    }

    private void expand(int i2) {
        char[] cArr = new char[Math.max(this.buffer.length << 1, i2)];
        System.arraycopy(this.buffer, 0, cArr, 0, this.len);
        this.buffer = cArr;
    }

    public void append(char[] cArr, int i2, int i7) {
        int i8;
        if (cArr == null) {
            return;
        }
        if (i2 < 0 || i2 > cArr.length || i7 < 0 || (i8 = i2 + i7) < 0 || i8 > cArr.length) {
            StringBuilder p6 = i.p(i2, i7, "off: ", " len: ", " b.length: ");
            p6.append(cArr.length);
            throw new IndexOutOfBoundsException(p6.toString());
        }
        if (i7 == 0) {
            return;
        }
        int i9 = this.len + i7;
        if (i9 > this.buffer.length) {
            expand(i9);
        }
        System.arraycopy(cArr, i2, this.buffer, this.len, i7);
        this.len = i9;
    }

    public char[] buffer() {
        return this.buffer;
    }

    public int capacity() {
        return this.buffer.length;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i2) {
        return this.buffer[i2];
    }

    public void clear() {
        this.len = 0;
    }

    public void ensureCapacity(int i2) {
        if (i2 <= 0) {
            return;
        }
        int length = this.buffer.length;
        int i7 = this.len;
        if (i2 > length - i7) {
            expand(i7 + i2);
        }
    }

    public int indexOf(int i2, int i7, int i8) {
        if (i7 < 0) {
            i7 = 0;
        }
        int i9 = this.len;
        if (i8 > i9) {
            i8 = i9;
        }
        if (i7 > i8) {
            return -1;
        }
        while (i7 < i8) {
            if (this.buffer[i7] == i2) {
                return i7;
            }
            i7++;
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.len == 0;
    }

    public boolean isFull() {
        return this.len == this.buffer.length;
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.len;
    }

    public void setLength(int i2) {
        if (i2 >= 0 && i2 <= this.buffer.length) {
            this.len = i2;
        } else {
            StringBuilder q6 = i.q(i2, "len: ", " < 0 or > buffer len: ");
            q6.append(this.buffer.length);
            throw new IndexOutOfBoundsException(q6.toString());
        }
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i2, int i7) {
        if (i2 < 0) {
            throw new IndexOutOfBoundsException(i.f(i2, "Negative beginIndex: "));
        }
        if (i7 <= this.len) {
            if (i2 <= i7) {
                return CharBuffer.wrap(this.buffer, i2, i7);
            }
            throw new IndexOutOfBoundsException(i.e(i2, i7, "beginIndex: ", " > endIndex: "));
        }
        StringBuilder q6 = i.q(i7, "endIndex: ", " > length: ");
        q6.append(this.len);
        throw new IndexOutOfBoundsException(q6.toString());
    }

    public String substring(int i2, int i7) {
        if (i2 < 0) {
            throw new IndexOutOfBoundsException(i.f(i2, "Negative beginIndex: "));
        }
        if (i7 <= this.len) {
            if (i2 <= i7) {
                return new String(this.buffer, i2, i7 - i2);
            }
            throw new IndexOutOfBoundsException(i.e(i2, i7, "beginIndex: ", " > endIndex: "));
        }
        StringBuilder q6 = i.q(i7, "endIndex: ", " > length: ");
        q6.append(this.len);
        throw new IndexOutOfBoundsException(q6.toString());
    }

    public String substringTrimmed(int i2, int i7) {
        if (i2 < 0) {
            throw new IndexOutOfBoundsException(i.f(i2, "Negative beginIndex: "));
        }
        if (i7 > this.len) {
            StringBuilder q6 = i.q(i7, "endIndex: ", " > length: ");
            q6.append(this.len);
            throw new IndexOutOfBoundsException(q6.toString());
        }
        if (i2 > i7) {
            throw new IndexOutOfBoundsException(i.e(i2, i7, "beginIndex: ", " > endIndex: "));
        }
        while (i2 < i7 && HTTP.isWhitespace(this.buffer[i2])) {
            i2++;
        }
        while (i7 > i2 && HTTP.isWhitespace(this.buffer[i7 - 1])) {
            i7--;
        }
        return new String(this.buffer, i2, i7 - i2);
    }

    public char[] toCharArray() {
        int i2 = this.len;
        char[] cArr = new char[i2];
        if (i2 > 0) {
            System.arraycopy(this.buffer, 0, cArr, 0, i2);
        }
        return cArr;
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return new String(this.buffer, 0, this.len);
    }

    public int indexOf(int i2) {
        return indexOf(i2, 0, this.len);
    }

    public void append(String str) {
        if (str == null) {
            str = "null";
        }
        int length = str.length();
        int i2 = this.len + length;
        if (i2 > this.buffer.length) {
            expand(i2);
        }
        str.getChars(0, length, this.buffer, this.len);
        this.len = i2;
    }

    public void append(CharArrayBuffer charArrayBuffer, int i2, int i7) {
        if (charArrayBuffer == null) {
            return;
        }
        append(charArrayBuffer.buffer, i2, i7);
    }

    public void append(CharArrayBuffer charArrayBuffer) {
        if (charArrayBuffer == null) {
            return;
        }
        append(charArrayBuffer.buffer, 0, charArrayBuffer.len);
    }

    public void append(char c7) {
        int i2 = this.len + 1;
        if (i2 > this.buffer.length) {
            expand(i2);
        }
        this.buffer[this.len] = c7;
        this.len = i2;
    }

    public void append(byte[] bArr, int i2, int i7) {
        int i8;
        if (bArr == null) {
            return;
        }
        if (i2 < 0 || i2 > bArr.length || i7 < 0 || (i8 = i2 + i7) < 0 || i8 > bArr.length) {
            StringBuilder p6 = i.p(i2, i7, "off: ", " len: ", " b.length: ");
            p6.append(bArr.length);
            throw new IndexOutOfBoundsException(p6.toString());
        }
        if (i7 == 0) {
            return;
        }
        int i9 = this.len;
        int i10 = i7 + i9;
        if (i10 > this.buffer.length) {
            expand(i10);
        }
        while (i9 < i10) {
            this.buffer[i9] = (char) (bArr[i2] & 255);
            i2++;
            i9++;
        }
        this.len = i10;
    }

    public void append(ByteArrayBuffer byteArrayBuffer, int i2, int i7) {
        if (byteArrayBuffer == null) {
            return;
        }
        append(byteArrayBuffer.buffer(), i2, i7);
    }

    public void append(Object obj) {
        append(String.valueOf(obj));
    }
}
