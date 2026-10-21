package com.bumptech.glide.load.data;

import java.io.IOException;
import java.io.OutputStream;
import o2.C1438l;
import o2.InterfaceC1428b;

/* loaded from: classes.dex */
public final class c extends OutputStream {

    /* renamed from: b, reason: collision with root package name */
    public final OutputStream f9200b;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f9201e;

    /* renamed from: f, reason: collision with root package name */
    public final InterfaceC1428b f9202f;

    /* renamed from: j, reason: collision with root package name */
    public int f9203j;

    public c(OutputStream outputStream, InterfaceC1428b interfaceC1428b) {
        this.f9200b = outputStream;
        this.f9202f = interfaceC1428b;
        this.f9201e = (byte[]) ((C1438l) interfaceC1428b).get(65536, byte[].class);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        OutputStream outputStream = this.f9200b;
        try {
            flush();
            outputStream.close();
            byte[] bArr = this.f9201e;
            if (bArr != null) {
                ((C1438l) this.f9202f).put(bArr);
                this.f9201e = null;
            }
        } catch (Throwable th) {
            outputStream.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        int i2 = this.f9203j;
        OutputStream outputStream = this.f9200b;
        if (i2 > 0) {
            outputStream.write(this.f9201e, 0, i2);
            this.f9203j = 0;
        }
        outputStream.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i2) throws IOException {
        byte[] bArr = this.f9201e;
        int i7 = this.f9203j;
        int i8 = i7 + 1;
        this.f9203j = i8;
        bArr[i7] = (byte) i2;
        if (i8 != bArr.length || i8 <= 0) {
            return;
        }
        this.f9200b.write(bArr, 0, i8);
        this.f9203j = 0;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i7) throws IOException {
        int i8 = 0;
        do {
            int i9 = i7 - i8;
            int i10 = i2 + i8;
            int i11 = this.f9203j;
            OutputStream outputStream = this.f9200b;
            if (i11 == 0 && i9 >= this.f9201e.length) {
                outputStream.write(bArr, i10, i9);
                return;
            }
            int min = Math.min(i9, this.f9201e.length - i11);
            System.arraycopy(bArr, i10, this.f9201e, this.f9203j, min);
            int i12 = this.f9203j + min;
            this.f9203j = i12;
            i8 += min;
            byte[] bArr2 = this.f9201e;
            if (i12 == bArr2.length && i12 > 0) {
                outputStream.write(bArr2, 0, i12);
                this.f9203j = 0;
            }
        } while (i8 < i7);
    }
}
