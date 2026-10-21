package com.google.firebase.encoders.proto;

import java.io.OutputStream;

/* loaded from: classes2.dex */
final class LengthCountingOutputStream extends OutputStream {
    private long length = 0;

    public long getLength() {
        return this.length;
    }

    @Override // java.io.OutputStream
    public void write(int i2) {
        this.length++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.length += bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i7) {
        int i8;
        if (i2 >= 0 && i2 <= bArr.length && i7 >= 0 && (i8 = i2 + i7) <= bArr.length && i8 >= 0) {
            this.length += i7;
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
