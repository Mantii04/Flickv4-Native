package cz.msebera.android.httpclient.util;

import A.i;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class ByteArrayBuffer implements Serializable {
    private static final long serialVersionUID = 4359112959524048036L;
    private byte[] buffer;
    private int len;

    public ByteArrayBuffer(int i2) {
        Args.notNegative(i2, "Buffer capacity");
        this.buffer = new byte[i2];
    }

    private void expand(int i2) {
        byte[] bArr = new byte[Math.max(this.buffer.length << 1, i2)];
        System.arraycopy(this.buffer, 0, bArr, 0, this.len);
        this.buffer = bArr;
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
        int i9 = this.len + i7;
        if (i9 > this.buffer.length) {
            expand(i9);
        }
        System.arraycopy(bArr, i2, this.buffer, this.len, i7);
        this.len = i9;
    }

    public byte[] buffer() {
        return this.buffer;
    }

    public int byteAt(int i2) {
        return this.buffer[i2];
    }

    public int capacity() {
        return this.buffer.length;
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

    public int indexOf(byte b7, int i2, int i7) {
        if (i2 < 0) {
            i2 = 0;
        }
        int i8 = this.len;
        if (i7 > i8) {
            i7 = i8;
        }
        if (i2 > i7) {
            return -1;
        }
        while (i2 < i7) {
            if (this.buffer[i2] == b7) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.len == 0;
    }

    public boolean isFull() {
        return this.len == this.buffer.length;
    }

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

    public byte[] toByteArray() {
        int i2 = this.len;
        byte[] bArr = new byte[i2];
        if (i2 > 0) {
            System.arraycopy(this.buffer, 0, bArr, 0, i2);
        }
        return bArr;
    }

    public int indexOf(byte b7) {
        return indexOf(b7, 0, this.len);
    }

    public void append(int i2) {
        int i7 = this.len + 1;
        if (i7 > this.buffer.length) {
            expand(i7);
        }
        this.buffer[this.len] = (byte) i2;
        this.len = i7;
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
        int i9 = this.len;
        int i10 = i7 + i9;
        if (i10 > this.buffer.length) {
            expand(i10);
        }
        while (i9 < i10) {
            this.buffer[i9] = (byte) cArr[i2];
            i2++;
            i9++;
        }
        this.len = i10;
    }

    public void append(CharArrayBuffer charArrayBuffer, int i2, int i7) {
        if (charArrayBuffer == null) {
            return;
        }
        append(charArrayBuffer.buffer(), i2, i7);
    }
}
