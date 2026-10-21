package v0;

import androidx.media3.common.DataReader;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* renamed from: v0.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1736u implements D {

    /* renamed from: b, reason: collision with root package name */
    public final DataReader f20544b;

    /* renamed from: c, reason: collision with root package name */
    public final long f20545c;

    /* renamed from: d, reason: collision with root package name */
    public long f20546d;

    /* renamed from: f, reason: collision with root package name */
    public int f20548f;

    /* renamed from: g, reason: collision with root package name */
    public int f20549g;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f20547e = new byte[65536];

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f20543a = new byte[4096];

    static {
        MediaLibraryInfo.registerModule("media3.extractor");
    }

    public C1736u(DataReader dataReader, long j7, long j8) {
        this.f20544b = dataReader;
        this.f20546d = j7;
        this.f20545c = j8;
    }

    public final void a(int i2) {
        int i7 = this.f20548f + i2;
        byte[] bArr = this.f20547e;
        if (i7 > bArr.length) {
            this.f20547e = Arrays.copyOf(this.f20547e, Util.constrainValue(bArr.length * 2, 65536 + i7, i7 + 524288));
        }
    }

    @Override // v0.D
    public boolean advancePeekPosition(int i2, boolean z6) throws IOException {
        a(i2);
        int i7 = this.f20549g - this.f20548f;
        while (i7 < i2) {
            int i8 = i2;
            boolean z7 = z6;
            i7 = b(this.f20547e, this.f20548f, i8, i7, z7);
            if (i7 == -1) {
                return false;
            }
            this.f20549g = this.f20548f + i7;
            i2 = i8;
            z6 = z7;
        }
        this.f20548f += i2;
        return true;
    }

    public final int b(byte[] bArr, int i2, int i7, int i8, boolean z6) {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int read = this.f20544b.read(bArr, i2 + i8, i7 - i8);
        if (read != -1) {
            return i8 + read;
        }
        if (i8 == 0 && z6) {
            return -1;
        }
        throw new EOFException();
    }

    public final void c(int i2) {
        int i7 = this.f20549g - i2;
        this.f20549g = i7;
        this.f20548f = 0;
        byte[] bArr = this.f20547e;
        byte[] bArr2 = i7 < bArr.length - 524288 ? new byte[65536 + i7] : bArr;
        System.arraycopy(bArr, i2, bArr2, 0, i7);
        this.f20547e = bArr2;
    }

    @Override // v0.D
    public long getLength() {
        return this.f20545c;
    }

    @Override // v0.D
    public long getPeekPosition() {
        return this.f20546d + this.f20548f;
    }

    @Override // v0.D
    public long getPosition() {
        return this.f20546d;
    }

    @Override // v0.D
    public int peek(byte[] bArr, int i2, int i7) throws IOException {
        C1736u c1736u;
        int min;
        a(i7);
        int i8 = this.f20549g;
        int i9 = this.f20548f;
        int i10 = i8 - i9;
        if (i10 == 0) {
            c1736u = this;
            min = c1736u.b(this.f20547e, i9, i7, 0, true);
            if (min == -1) {
                return -1;
            }
            c1736u.f20549g += min;
        } else {
            c1736u = this;
            min = Math.min(i7, i10);
        }
        System.arraycopy(c1736u.f20547e, c1736u.f20548f, bArr, i2, min);
        c1736u.f20548f += min;
        return min;
    }

    @Override // v0.D
    public boolean peekFully(byte[] bArr, int i2, int i7, boolean z6) throws IOException {
        if (!advancePeekPosition(i7, z6)) {
            return false;
        }
        System.arraycopy(this.f20547e, this.f20548f - i7, bArr, i2, i7);
        return true;
    }

    @Override // v0.D, androidx.media3.common.DataReader
    public int read(byte[] bArr, int i2, int i7) throws IOException {
        C1736u c1736u;
        int i8 = this.f20549g;
        int i9 = 0;
        if (i8 != 0) {
            int min = Math.min(i8, i7);
            System.arraycopy(this.f20547e, 0, bArr, i2, min);
            c(min);
            i9 = min;
        }
        if (i9 == 0) {
            c1736u = this;
            i9 = c1736u.b(bArr, i2, i7, 0, true);
        } else {
            c1736u = this;
        }
        if (i9 != -1) {
            c1736u.f20546d += i9;
        }
        return i9;
    }

    @Override // v0.D
    public void readFully(byte[] bArr, int i2, int i7) throws IOException {
        readFully(bArr, i2, i7, false);
    }

    @Override // v0.D
    public void resetPeekPosition() {
        this.f20548f = 0;
    }

    @Override // v0.D
    public int skip(int i2) throws IOException {
        C1736u c1736u;
        int min = Math.min(this.f20549g, i2);
        c(min);
        if (min == 0) {
            byte[] bArr = this.f20543a;
            c1736u = this;
            min = c1736u.b(bArr, 0, Math.min(i2, bArr.length), 0, true);
        } else {
            c1736u = this;
        }
        if (min != -1) {
            c1736u.f20546d += min;
        }
        return min;
    }

    @Override // v0.D
    public void skipFully(int i2) throws IOException {
        skipFully(i2, false);
    }

    @Override // v0.D
    public boolean readFully(byte[] bArr, int i2, int i7, boolean z6) throws IOException {
        int min;
        int i8 = this.f20549g;
        if (i8 == 0) {
            min = 0;
        } else {
            min = Math.min(i8, i7);
            System.arraycopy(this.f20547e, 0, bArr, i2, min);
            c(min);
        }
        int i9 = min;
        while (i9 < i7 && i9 != -1) {
            i9 = b(bArr, i2, i7, i9, z6);
        }
        if (i9 != -1) {
            this.f20546d += i9;
        }
        return i9 != -1;
    }

    @Override // v0.D
    public boolean skipFully(int i2, boolean z6) throws IOException {
        int min = Math.min(this.f20549g, i2);
        c(min);
        int i7 = min;
        while (i7 < i2 && i7 != -1) {
            byte[] bArr = this.f20543a;
            i7 = b(bArr, -i7, Math.min(i2, bArr.length + i7), i7, z6);
        }
        if (i7 != -1) {
            this.f20546d += i7;
        }
        return i7 != -1;
    }

    @Override // v0.D
    public void peekFully(byte[] bArr, int i2, int i7) throws IOException {
        peekFully(bArr, i2, i7, false);
    }

    @Override // v0.D
    public void advancePeekPosition(int i2) throws IOException {
        advancePeekPosition(i2, false);
    }
}
