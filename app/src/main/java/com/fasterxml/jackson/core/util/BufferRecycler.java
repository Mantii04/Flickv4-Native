package com.fasterxml.jackson.core.util;

import cz.msebera.android.httpclient.HttpStatus;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes.dex */
public class BufferRecycler {
    public static final int BYTE_BASE64_CODEC_BUFFER = 3;
    public static final int BYTE_READ_IO_BUFFER = 0;
    public static final int BYTE_WRITE_CONCAT_BUFFER = 2;
    public static final int BYTE_WRITE_ENCODING_BUFFER = 1;
    public static final int CHAR_CONCAT_BUFFER = 1;
    public static final int CHAR_NAME_COPY_BUFFER = 3;
    public static final int CHAR_TEXT_BUFFER = 2;
    public static final int CHAR_TOKEN_BUFFER = 0;
    protected final AtomicReferenceArray<byte[]> _byteBuffers;
    protected final AtomicReferenceArray<char[]> _charBuffers;
    private static final int[] BYTE_BUFFER_LENGTHS = {8000, 8000, 2000, 2000};
    private static final int[] CHAR_BUFFER_LENGTHS = {4000, 4000, HttpStatus.SC_OK, HttpStatus.SC_OK};

    public BufferRecycler() {
        this(4, 4);
    }

    public final byte[] allocByteBuffer(int i2) {
        return allocByteBuffer(i2, 0);
    }

    public final char[] allocCharBuffer(int i2) {
        return allocCharBuffer(i2, 0);
    }

    public byte[] balloc(int i2) {
        return new byte[i2];
    }

    public int byteBufferLength(int i2) {
        return BYTE_BUFFER_LENGTHS[i2];
    }

    public char[] calloc(int i2) {
        return new char[i2];
    }

    public int charBufferLength(int i2) {
        return CHAR_BUFFER_LENGTHS[i2];
    }

    public void releaseByteBuffer(int i2, byte[] bArr) {
        this._byteBuffers.set(i2, bArr);
    }

    public void releaseCharBuffer(int i2, char[] cArr) {
        this._charBuffers.set(i2, cArr);
    }

    public BufferRecycler(int i2, int i7) {
        this._byteBuffers = new AtomicReferenceArray<>(i2);
        this._charBuffers = new AtomicReferenceArray<>(i7);
    }

    public byte[] allocByteBuffer(int i2, int i7) {
        int byteBufferLength = byteBufferLength(i2);
        if (i7 < byteBufferLength) {
            i7 = byteBufferLength;
        }
        byte[] andSet = this._byteBuffers.getAndSet(i2, null);
        return (andSet == null || andSet.length < i7) ? balloc(i7) : andSet;
    }

    public char[] allocCharBuffer(int i2, int i7) {
        int charBufferLength = charBufferLength(i2);
        if (i7 < charBufferLength) {
            i7 = charBufferLength;
        }
        char[] andSet = this._charBuffers.getAndSet(i2, null);
        return (andSet == null || andSet.length < i7) ? calloc(i7) : andSet;
    }
}
