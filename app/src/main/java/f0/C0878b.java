package f0;

import android.util.Log;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;

/* renamed from: f0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0878b extends InputStream implements DataInput {

    /* renamed from: m, reason: collision with root package name */
    public static final ByteOrder f14039m = ByteOrder.LITTLE_ENDIAN;

    /* renamed from: n, reason: collision with root package name */
    public static final ByteOrder f14040n = ByteOrder.BIG_ENDIAN;

    /* renamed from: b, reason: collision with root package name */
    public final DataInputStream f14041b;

    /* renamed from: e, reason: collision with root package name */
    public ByteOrder f14042e;

    /* renamed from: f, reason: collision with root package name */
    public int f14043f;

    /* renamed from: j, reason: collision with root package name */
    public byte[] f14044j;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0878b(byte[] r2) {
        /*
            r1 = this;
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r0.<init>(r2)
            java.nio.ByteOrder r2 = java.nio.ByteOrder.BIG_ENDIAN
            r2 = 0
            r1.<init>(r0, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.C0878b.<init>(byte[]):void");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f14041b.available();
    }

    @Override // java.io.InputStream
    public void mark(int i2) {
        throw new UnsupportedOperationException("Mark is currently unsupported");
    }

    public int position() {
        return this.f14043f;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        this.f14043f++;
        return this.f14041b.read();
    }

    @Override // java.io.DataInput
    public boolean readBoolean() throws IOException {
        this.f14043f++;
        return this.f14041b.readBoolean();
    }

    @Override // java.io.DataInput
    public byte readByte() throws IOException {
        this.f14043f++;
        int read = this.f14041b.read();
        if (read >= 0) {
            return (byte) read;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public char readChar() throws IOException {
        this.f14043f += 2;
        return this.f14041b.readChar();
    }

    @Override // java.io.DataInput
    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i2, int i7) throws IOException {
        this.f14043f += i7;
        this.f14041b.readFully(bArr, i2, i7);
    }

    @Override // java.io.DataInput
    public int readInt() throws IOException {
        this.f14043f += 4;
        DataInputStream dataInputStream = this.f14041b;
        int read = dataInputStream.read();
        int read2 = dataInputStream.read();
        int read3 = dataInputStream.read();
        int read4 = dataInputStream.read();
        if ((read | read2 | read3 | read4) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f14042e;
        if (byteOrder == f14039m) {
            return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
        }
        if (byteOrder == f14040n) {
            return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
        }
        throw new IOException("Invalid byte order: " + this.f14042e);
    }

    @Override // java.io.DataInput
    public String readLine() throws IOException {
        Log.d("ExifInterface", "Currently unsupported");
        return null;
    }

    @Override // java.io.DataInput
    public long readLong() throws IOException {
        long j7;
        long j8;
        this.f14043f += 8;
        DataInputStream dataInputStream = this.f14041b;
        int read = dataInputStream.read();
        int read2 = dataInputStream.read();
        int read3 = dataInputStream.read();
        int read4 = dataInputStream.read();
        int read5 = dataInputStream.read();
        int read6 = dataInputStream.read();
        int read7 = dataInputStream.read();
        int read8 = dataInputStream.read();
        if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f14042e;
        if (byteOrder == f14039m) {
            j7 = (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8);
            j8 = read;
        } else {
            if (byteOrder != f14040n) {
                throw new IOException("Invalid byte order: " + this.f14042e);
            }
            j7 = (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8);
            j8 = read8;
        }
        return j7 + j8;
    }

    @Override // java.io.DataInput
    public short readShort() throws IOException {
        this.f14043f += 2;
        DataInputStream dataInputStream = this.f14041b;
        int read = dataInputStream.read();
        int read2 = dataInputStream.read();
        if ((read | read2) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f14042e;
        if (byteOrder == f14039m) {
            return (short) ((read2 << 8) + read);
        }
        if (byteOrder == f14040n) {
            return (short) ((read << 8) + read2);
        }
        throw new IOException("Invalid byte order: " + this.f14042e);
    }

    @Override // java.io.DataInput
    public String readUTF() throws IOException {
        this.f14043f += 2;
        return this.f14041b.readUTF();
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() throws IOException {
        this.f14043f++;
        return this.f14041b.readUnsignedByte();
    }

    public long readUnsignedInt() throws IOException {
        return readInt() & 4294967295L;
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() throws IOException {
        this.f14043f += 2;
        DataInputStream dataInputStream = this.f14041b;
        int read = dataInputStream.read();
        int read2 = dataInputStream.read();
        if ((read | read2) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f14042e;
        if (byteOrder == f14039m) {
            return (read2 << 8) + read;
        }
        if (byteOrder == f14040n) {
            return (read << 8) + read2;
        }
        throw new IOException("Invalid byte order: " + this.f14042e);
    }

    @Override // java.io.InputStream
    public void reset() {
        throw new UnsupportedOperationException("Reset is currently unsupported");
    }

    public void setByteOrder(ByteOrder byteOrder) {
        this.f14042e = byteOrder;
    }

    @Override // java.io.DataInput
    public int skipBytes(int i2) throws IOException {
        throw new UnsupportedOperationException("skipBytes is currently unsupported");
    }

    public void skipFully(int i2) throws IOException {
        int i7 = 0;
        while (i7 < i2) {
            DataInputStream dataInputStream = this.f14041b;
            int i8 = i2 - i7;
            int skip = (int) dataInputStream.skip(i8);
            if (skip <= 0) {
                if (this.f14044j == null) {
                    this.f14044j = new byte[8192];
                }
                skip = dataInputStream.read(this.f14044j, 0, Math.min(8192, i8));
                if (skip == -1) {
                    throw new EOFException(A.i.g(i2, "Reached EOF while skipping ", " bytes."));
                }
            }
            i7 += skip;
        }
        this.f14043f += i7;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0878b(InputStream inputStream) {
        this(inputStream, 0);
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
    }

    public C0878b(InputStream inputStream, int i2) {
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        this.f14042e = byteOrder;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f14041b = dataInputStream;
        dataInputStream.mark(0);
        this.f14043f = 0;
        this.f14042e = byteOrder;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i7) throws IOException {
        int read = this.f14041b.read(bArr, i2, i7);
        this.f14043f += read;
        return read;
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) throws IOException {
        this.f14043f += bArr.length;
        this.f14041b.readFully(bArr);
    }
}
