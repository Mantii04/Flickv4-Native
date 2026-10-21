package com.fasterxml.jackson.core.format;

import A.i;
import com.fasterxml.jackson.core.JsonFactory;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public interface InputAccessor {
    boolean hasMoreBytes() throws IOException;

    byte nextByte() throws IOException;

    void reset();

    public static class Std implements InputAccessor {
        protected final byte[] _buffer;
        protected int _bufferedEnd;
        protected final int _bufferedStart;
        protected final InputStream _in;
        protected int _ptr;

        public Std(InputStream inputStream, byte[] bArr) {
            this._in = inputStream;
            this._buffer = bArr;
            this._bufferedStart = 0;
            this._ptr = 0;
            this._bufferedEnd = 0;
        }

        public DataFormatMatcher createMatcher(JsonFactory jsonFactory, MatchStrength matchStrength) {
            InputStream inputStream = this._in;
            byte[] bArr = this._buffer;
            int i2 = this._bufferedStart;
            return new DataFormatMatcher(inputStream, bArr, i2, this._bufferedEnd - i2, jsonFactory, matchStrength);
        }

        @Override // com.fasterxml.jackson.core.format.InputAccessor
        public boolean hasMoreBytes() throws IOException {
            int read;
            int i2 = this._ptr;
            if (i2 < this._bufferedEnd) {
                return true;
            }
            InputStream inputStream = this._in;
            if (inputStream == null) {
                return false;
            }
            byte[] bArr = this._buffer;
            int length = bArr.length - i2;
            if (length < 1 || (read = inputStream.read(bArr, i2, length)) <= 0) {
                return false;
            }
            this._bufferedEnd += read;
            return true;
        }

        @Override // com.fasterxml.jackson.core.format.InputAccessor
        public byte nextByte() throws IOException {
            if (this._ptr < this._bufferedEnd || hasMoreBytes()) {
                byte[] bArr = this._buffer;
                int i2 = this._ptr;
                this._ptr = i2 + 1;
                return bArr[i2];
            }
            StringBuilder sb = new StringBuilder("Failed auto-detect: could not read more than ");
            sb.append(this._ptr);
            sb.append(" bytes (max buffer size: ");
            throw new EOFException(i.m(sb, this._buffer.length, ")"));
        }

        @Override // com.fasterxml.jackson.core.format.InputAccessor
        public void reset() {
            this._ptr = this._bufferedStart;
        }

        public Std(byte[] bArr) {
            this._in = null;
            this._buffer = bArr;
            this._bufferedStart = 0;
            this._bufferedEnd = bArr.length;
        }

        public Std(byte[] bArr, int i2, int i7) {
            this._in = null;
            this._buffer = bArr;
            this._ptr = i2;
            this._bufferedStart = i2;
            this._bufferedEnd = i2 + i7;
        }
    }
}
