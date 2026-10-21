package com.fasterxml.jackson.core.json;

import A.i;
import androidx.media3.common.util.Log;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberOutput;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.math.BigInteger;
import okhttp3.internal.http2.Settings;

/* loaded from: classes.dex */
public class UTF8JsonGenerator extends JsonGeneratorImpl {
    private static final byte BYTE_0 = 48;
    private static final byte BYTE_BACKSLASH = 92;
    private static final byte BYTE_COLON = 58;
    private static final byte BYTE_COMMA = 44;
    private static final byte BYTE_LBRACKET = 91;
    private static final byte BYTE_LCURLY = 123;
    private static final byte BYTE_RBRACKET = 93;
    private static final byte BYTE_RCURLY = 125;
    private static final int MAX_BYTES_TO_BUFFER = 512;
    protected boolean _bufferRecyclable;
    protected char[] _charBuffer;
    protected final int _charBufferLength;
    protected byte[] _entityBuffer;
    protected byte[] _outputBuffer;
    protected final int _outputEnd;
    protected final int _outputMaxContiguous;
    protected final OutputStream _outputStream;
    protected int _outputTail;
    protected byte _quoteChar;
    private static final byte[] HEX_CHARS = CharTypes.copyHexBytes();
    private static final byte BYTE_u = 117;
    private static final byte[] NULL_BYTES = {110, BYTE_u, 108, 108};
    private static final byte[] TRUE_BYTES = {116, 114, BYTE_u, 101};
    private static final byte[] FALSE_BYTES = {102, 97, 108, 115, 101};

    public UTF8JsonGenerator(IOContext iOContext, int i2, ObjectCodec objectCodec, OutputStream outputStream, char c7) {
        super(iOContext, i2, objectCodec);
        this._outputStream = outputStream;
        this._quoteChar = (byte) c7;
        if (c7 != '\"') {
            this._outputEscapes = CharTypes.get7BitOutputEscapes(c7);
        }
        this._bufferRecyclable = true;
        byte[] allocWriteEncodingBuffer = iOContext.allocWriteEncodingBuffer();
        this._outputBuffer = allocWriteEncodingBuffer;
        int length = allocWriteEncodingBuffer.length;
        this._outputEnd = length;
        this._outputMaxContiguous = length >> 3;
        char[] allocConcatBuffer = iOContext.allocConcatBuffer();
        this._charBuffer = allocConcatBuffer;
        this._charBufferLength = allocConcatBuffer.length;
        if (isEnabled(JsonGenerator.Feature.ESCAPE_NON_ASCII)) {
            setHighestNonEscapedChar(127);
        }
    }

    private final int _handleLongCustomEscape(byte[] bArr, int i2, int i7, byte[] bArr2, int i8) throws IOException, JsonGenerationException {
        int length = bArr2.length;
        if (i2 + length > i7) {
            this._outputTail = i2;
            _flushBuffer();
            int i9 = this._outputTail;
            if (length > bArr.length) {
                this._outputStream.write(bArr2, 0, length);
                return i9;
            }
            System.arraycopy(bArr2, 0, bArr, i9, length);
            i2 = i9 + length;
        }
        if ((i8 * 6) + i2 <= i7) {
            return i2;
        }
        _flushBuffer();
        return this._outputTail;
    }

    private final int _outputMultiByteChar(int i2, int i7) throws IOException {
        byte[] bArr = this._outputBuffer;
        if (i2 < 55296 || i2 > 57343) {
            bArr[i7] = (byte) ((i2 >> 12) | 224);
            int i8 = i7 + 2;
            bArr[i7 + 1] = (byte) (((i2 >> 6) & 63) | 128);
            int i9 = i7 + 3;
            bArr[i8] = (byte) ((i2 & 63) | 128);
            return i9;
        }
        bArr[i7] = BYTE_BACKSLASH;
        bArr[i7 + 1] = BYTE_u;
        byte[] bArr2 = HEX_CHARS;
        bArr[i7 + 2] = bArr2[(i2 >> 12) & 15];
        bArr[i7 + 3] = bArr2[(i2 >> 8) & 15];
        int i10 = i7 + 5;
        bArr[i7 + 4] = bArr2[(i2 >> 4) & 15];
        int i11 = i7 + 6;
        bArr[i10] = bArr2[i2 & 15];
        return i11;
    }

    private final int _outputRawMultiByteChar(int i2, char[] cArr, int i7, int i8) throws IOException {
        if (i2 >= 55296 && i2 <= 57343) {
            if (i7 >= i8 || cArr == null) {
                _reportError(String.format("Split surrogate on writeRaw() input (last character): first character 0x%4x", Integer.valueOf(i2)));
            }
            _outputSurrogates(i2, cArr[i7]);
            return i7 + 1;
        }
        byte[] bArr = this._outputBuffer;
        int i9 = this._outputTail;
        int i10 = 1 + i9;
        this._outputTail = i10;
        bArr[i9] = (byte) ((i2 >> 12) | 224);
        int i11 = i9 + 2;
        this._outputTail = i11;
        bArr[i10] = (byte) (((i2 >> 6) & 63) | 128);
        this._outputTail = i9 + 3;
        bArr[i11] = (byte) ((i2 & 63) | 128);
        return i7;
    }

    private final int _readMore(InputStream inputStream, byte[] bArr, int i2, int i7, int i8) throws IOException {
        int read;
        int i9 = 0;
        while (i2 < i7) {
            bArr[i9] = bArr[i2];
            i9++;
            i2++;
        }
        int min = Math.min(i8, bArr.length);
        do {
            int i10 = min - i9;
            if (i10 == 0 || (read = inputStream.read(bArr, i9, i10)) < 0) {
                return i9;
            }
            i9 += read;
        } while (i9 < 3);
        return i9;
    }

    private final void _writeBytes(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this._outputTail + length > this._outputEnd) {
            _flushBuffer();
            if (length > 512) {
                this._outputStream.write(bArr, 0, length);
                return;
            }
        }
        System.arraycopy(bArr, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail += length;
    }

    private final int _writeCustomEscape(byte[] bArr, int i2, SerializableString serializableString, int i7) throws IOException, JsonGenerationException {
        byte[] asUnquotedUTF8 = serializableString.asUnquotedUTF8();
        int length = asUnquotedUTF8.length;
        if (length > 6) {
            return _handleLongCustomEscape(bArr, i2, this._outputEnd, asUnquotedUTF8, i7);
        }
        System.arraycopy(asUnquotedUTF8, 0, bArr, i2, length);
        return i2 + length;
    }

    private final void _writeCustomStringSegment2(char[] cArr, int i2, int i7) throws IOException {
        if (i.a(i7, i2, 6, this._outputTail) > this._outputEnd) {
            _flushBuffer();
        }
        int i8 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i9 = this._maximumNonEscapedChar;
        if (i9 <= 0) {
            i9 = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        }
        CharacterEscapes characterEscapes = this._characterEscapes;
        while (i2 < i7) {
            int i10 = i2 + 1;
            char c7 = cArr[i2];
            if (c7 <= 127) {
                int i11 = iArr[c7];
                if (i11 == 0) {
                    bArr[i8] = (byte) c7;
                    i2 = i10;
                    i8++;
                } else if (i11 > 0) {
                    int i12 = i8 + 1;
                    bArr[i8] = BYTE_BACKSLASH;
                    i8 += 2;
                    bArr[i12] = (byte) i11;
                } else if (i11 == -2) {
                    SerializableString escapeSequence = characterEscapes.getEscapeSequence(c7);
                    if (escapeSequence == null) {
                        _reportError("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(c7) + ", although was supposed to have one");
                    }
                    i8 = _writeCustomEscape(bArr, i8, escapeSequence, i7 - i10);
                } else {
                    i8 = _writeGenericEscape(c7, i8);
                }
            } else if (c7 > i9) {
                i8 = _writeGenericEscape(c7, i8);
            } else {
                SerializableString escapeSequence2 = characterEscapes.getEscapeSequence(c7);
                if (escapeSequence2 != null) {
                    i8 = _writeCustomEscape(bArr, i8, escapeSequence2, i7 - i10);
                } else if (c7 <= 2047) {
                    int i13 = i8 + 1;
                    bArr[i8] = (byte) ((c7 >> 6) | 192);
                    i8 += 2;
                    bArr[i13] = (byte) ((c7 & '?') | 128);
                } else {
                    i8 = _outputMultiByteChar(c7, i8);
                }
            }
            i2 = i10;
        }
        this._outputTail = i8;
    }

    private int _writeGenericEscape(int i2, int i7) throws IOException {
        int i8;
        byte[] bArr = this._outputBuffer;
        bArr[i7] = BYTE_BACKSLASH;
        int i9 = i7 + 2;
        bArr[i7 + 1] = BYTE_u;
        if (i2 > 255) {
            int i10 = i2 >> 8;
            int i11 = i7 + 3;
            byte[] bArr2 = HEX_CHARS;
            bArr[i9] = bArr2[(i10 & 255) >> 4];
            i8 = i7 + 4;
            bArr[i11] = bArr2[i10 & 15];
            i2 &= 255;
        } else {
            int i12 = i7 + 3;
            bArr[i9] = BYTE_0;
            i8 = i7 + 4;
            bArr[i12] = BYTE_0;
        }
        int i13 = i8 + 1;
        byte[] bArr3 = HEX_CHARS;
        bArr[i8] = bArr3[i2 >> 4];
        int i14 = i8 + 2;
        bArr[i13] = bArr3[i2 & 15];
        return i14;
    }

    private final void _writeNull() throws IOException {
        if (this._outputTail + 4 >= this._outputEnd) {
            _flushBuffer();
        }
        System.arraycopy(NULL_BYTES, 0, this._outputBuffer, this._outputTail, 4);
        this._outputTail += 4;
    }

    private final void _writeQuotedInt(int i2) throws IOException {
        if (this._outputTail + 13 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i7 = this._outputTail;
        int i8 = i7 + 1;
        this._outputTail = i8;
        bArr[i7] = this._quoteChar;
        int outputInt = NumberOutput.outputInt(i2, bArr, i8);
        byte[] bArr2 = this._outputBuffer;
        this._outputTail = outputInt + 1;
        bArr2[outputInt] = this._quoteChar;
    }

    private final void _writeQuotedLong(long j7) throws IOException {
        if (this._outputTail + 23 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        int i7 = i2 + 1;
        this._outputTail = i7;
        bArr[i2] = this._quoteChar;
        int outputLong = NumberOutput.outputLong(j7, bArr, i7);
        byte[] bArr2 = this._outputBuffer;
        this._outputTail = outputLong + 1;
        bArr2[outputLong] = this._quoteChar;
    }

    private final void _writeQuotedRaw(String str) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = this._quoteChar;
        writeRaw(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i7 = this._outputTail;
        this._outputTail = i7 + 1;
        bArr2[i7] = this._quoteChar;
    }

    private final void _writeQuotedShort(short s6) throws IOException {
        if (this._outputTail + 8 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        int i7 = i2 + 1;
        this._outputTail = i7;
        bArr[i2] = this._quoteChar;
        int outputInt = NumberOutput.outputInt(s6, bArr, i7);
        byte[] bArr2 = this._outputBuffer;
        this._outputTail = outputInt + 1;
        bArr2[outputInt] = this._quoteChar;
    }

    private void _writeRawSegment(char[] cArr, int i2, int i7) throws IOException {
        while (i2 < i7) {
            do {
                char c7 = cArr[i2];
                if (c7 > 127) {
                    i2++;
                    if (c7 < 2048) {
                        byte[] bArr = this._outputBuffer;
                        int i8 = this._outputTail;
                        int i9 = i8 + 1;
                        this._outputTail = i9;
                        bArr[i8] = (byte) ((c7 >> 6) | 192);
                        this._outputTail = i8 + 2;
                        bArr[i9] = (byte) ((c7 & '?') | 128);
                    } else {
                        i2 = _outputRawMultiByteChar(c7, cArr, i2, i7);
                    }
                } else {
                    byte[] bArr2 = this._outputBuffer;
                    int i10 = this._outputTail;
                    this._outputTail = i10 + 1;
                    bArr2[i10] = (byte) c7;
                    i2++;
                }
            } while (i2 < i7);
            return;
        }
    }

    private final void _writeSegmentedRaw(char[] cArr, int i2, int i7) throws IOException {
        int i8 = this._outputEnd;
        byte[] bArr = this._outputBuffer;
        int i9 = i7 + i2;
        while (i2 < i9) {
            do {
                char c7 = cArr[i2];
                if (c7 >= 128) {
                    if (this._outputTail + 3 >= this._outputEnd) {
                        _flushBuffer();
                    }
                    int i10 = i2 + 1;
                    char c8 = cArr[i2];
                    if (c8 < 2048) {
                        int i11 = this._outputTail;
                        int i12 = i11 + 1;
                        this._outputTail = i12;
                        bArr[i11] = (byte) ((c8 >> 6) | 192);
                        this._outputTail = i11 + 2;
                        bArr[i12] = (byte) ((c8 & '?') | 128);
                        i2 = i10;
                    } else {
                        i2 = _outputRawMultiByteChar(c8, cArr, i10, i9);
                    }
                } else {
                    if (this._outputTail >= i8) {
                        _flushBuffer();
                    }
                    int i13 = this._outputTail;
                    this._outputTail = i13 + 1;
                    bArr[i13] = (byte) c7;
                    i2++;
                }
            } while (i2 < i9);
            return;
        }
    }

    private final void _writeStringSegment(char[] cArr, int i2, int i7) throws IOException {
        int i8 = i7 + i2;
        int i9 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i2 < i8) {
            char c7 = cArr[i2];
            if (c7 > 127 || iArr[c7] != 0) {
                break;
            }
            bArr[i9] = (byte) c7;
            i2++;
            i9++;
        }
        this._outputTail = i9;
        if (i2 < i8) {
            if (this._characterEscapes != null) {
                _writeCustomStringSegment2(cArr, i2, i8);
            } else if (this._maximumNonEscapedChar == 0) {
                _writeStringSegment2(cArr, i2, i8);
            } else {
                _writeStringSegmentASCII2(cArr, i2, i8);
            }
        }
    }

    private final void _writeStringSegment2(char[] cArr, int i2, int i7) throws IOException {
        if (i.a(i7, i2, 6, this._outputTail) > this._outputEnd) {
            _flushBuffer();
        }
        int i8 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i2 < i7) {
            int i9 = i2 + 1;
            char c7 = cArr[i2];
            if (c7 <= 127) {
                int i10 = iArr[c7];
                if (i10 == 0) {
                    bArr[i8] = (byte) c7;
                    i2 = i9;
                    i8++;
                } else if (i10 > 0) {
                    int i11 = i8 + 1;
                    bArr[i8] = BYTE_BACKSLASH;
                    i8 += 2;
                    bArr[i11] = (byte) i10;
                } else {
                    i8 = _writeGenericEscape(c7, i8);
                }
            } else if (c7 <= 2047) {
                int i12 = i8 + 1;
                bArr[i8] = (byte) ((c7 >> 6) | 192);
                i8 += 2;
                bArr[i12] = (byte) ((c7 & '?') | 128);
            } else {
                i8 = _outputMultiByteChar(c7, i8);
            }
            i2 = i9;
        }
        this._outputTail = i8;
    }

    private final void _writeStringSegmentASCII2(char[] cArr, int i2, int i7) throws IOException {
        if (i.a(i7, i2, 6, this._outputTail) > this._outputEnd) {
            _flushBuffer();
        }
        int i8 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i9 = this._maximumNonEscapedChar;
        while (i2 < i7) {
            int i10 = i2 + 1;
            char c7 = cArr[i2];
            if (c7 <= 127) {
                int i11 = iArr[c7];
                if (i11 == 0) {
                    bArr[i8] = (byte) c7;
                    i2 = i10;
                    i8++;
                } else if (i11 > 0) {
                    int i12 = i8 + 1;
                    bArr[i8] = BYTE_BACKSLASH;
                    i8 += 2;
                    bArr[i12] = (byte) i11;
                } else {
                    i8 = _writeGenericEscape(c7, i8);
                }
            } else if (c7 > i9) {
                i8 = _writeGenericEscape(c7, i8);
            } else if (c7 <= 2047) {
                int i13 = i8 + 1;
                bArr[i8] = (byte) ((c7 >> 6) | 192);
                i8 += 2;
                bArr[i13] = (byte) ((c7 & '?') | 128);
            } else {
                i8 = _outputMultiByteChar(c7, i8);
            }
            i2 = i10;
        }
        this._outputTail = i8;
    }

    private final void _writeStringSegments(String str, boolean z6) throws IOException {
        if (z6) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr[i2] = this._quoteChar;
        }
        int length = str.length();
        int i7 = 0;
        while (length > 0) {
            int min = Math.min(this._outputMaxContiguous, length);
            if (this._outputTail + min > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(str, i7, min);
            i7 += min;
            length -= min;
        }
        if (z6) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr2 = this._outputBuffer;
            int i8 = this._outputTail;
            this._outputTail = i8 + 1;
            bArr2[i8] = this._quoteChar;
        }
    }

    private final void _writeUTF8Segment(byte[] bArr, int i2, int i7) throws IOException, JsonGenerationException {
        int[] iArr = this._outputEscapes;
        int i8 = i2 + i7;
        int i9 = i2;
        while (i9 < i8) {
            int i10 = i9 + 1;
            byte b7 = bArr[i9];
            if (b7 >= 0 && iArr[b7] != 0) {
                _writeUTF8Segment2(bArr, i2, i7);
                return;
            }
            i9 = i10;
        }
        if (this._outputTail + i7 > this._outputEnd) {
            _flushBuffer();
        }
        System.arraycopy(bArr, i2, this._outputBuffer, this._outputTail, i7);
        this._outputTail += i7;
    }

    private final void _writeUTF8Segment2(byte[] bArr, int i2, int i7) throws IOException, JsonGenerationException {
        int i8;
        int i9 = this._outputTail;
        if ((i7 * 6) + i9 > this._outputEnd) {
            _flushBuffer();
            i9 = this._outputTail;
        }
        byte[] bArr2 = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i10 = i7 + i2;
        while (i2 < i10) {
            int i11 = i2 + 1;
            byte b7 = bArr[i2];
            if (b7 < 0 || (i8 = iArr[b7]) == 0) {
                bArr2[i9] = b7;
                i2 = i11;
                i9++;
            } else {
                if (i8 > 0) {
                    int i12 = i9 + 1;
                    bArr2[i9] = BYTE_BACKSLASH;
                    i9 += 2;
                    bArr2[i12] = (byte) i8;
                } else {
                    i9 = _writeGenericEscape(b7, i9);
                }
                i2 = i11;
            }
        }
        this._outputTail = i9;
    }

    private final void _writeUTF8Segments(byte[] bArr, int i2, int i7) throws IOException, JsonGenerationException {
        do {
            int min = Math.min(this._outputMaxContiguous, i7);
            _writeUTF8Segment(bArr, i2, min);
            i2 += min;
            i7 -= min;
        } while (i7 > 0);
    }

    private final void _writeUnq(SerializableString serializableString) throws IOException {
        int appendQuotedUTF8 = serializableString.appendQuotedUTF8(this._outputBuffer, this._outputTail);
        if (appendQuotedUTF8 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail += appendQuotedUTF8;
        }
    }

    public final void _flushBuffer() throws IOException {
        int i2 = this._outputTail;
        if (i2 > 0) {
            this._outputTail = 0;
            this._outputStream.write(this._outputBuffer, 0, i2);
        }
    }

    public final void _outputSurrogates(int i2, int i7) throws IOException {
        int _decodeSurrogate = _decodeSurrogate(i2, i7);
        if (this._outputTail + 4 > this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i8 = this._outputTail;
        int i9 = i8 + 1;
        this._outputTail = i9;
        bArr[i8] = (byte) ((_decodeSurrogate >> 18) | 240);
        int i10 = i8 + 2;
        this._outputTail = i10;
        bArr[i9] = (byte) (((_decodeSurrogate >> 12) & 63) | 128);
        int i11 = i8 + 3;
        this._outputTail = i11;
        bArr[i10] = (byte) (((_decodeSurrogate >> 6) & 63) | 128);
        this._outputTail = i8 + 4;
        bArr[i11] = (byte) ((_decodeSurrogate & 63) | 128);
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    public void _releaseBuffers() {
        byte[] bArr = this._outputBuffer;
        if (bArr != null && this._bufferRecyclable) {
            this._outputBuffer = null;
            this._ioContext.releaseWriteEncodingBuffer(bArr);
        }
        char[] cArr = this._charBuffer;
        if (cArr != null) {
            this._charBuffer = null;
            this._ioContext.releaseConcatBuffer(cArr);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    public final void _verifyValueWrite(String str) throws IOException {
        byte b7;
        int writeValue = this._writeContext.writeValue();
        if (this._cfgPrettyPrinter != null) {
            _verifyPrettyValueWrite(str, writeValue);
            return;
        }
        if (writeValue == 1) {
            b7 = BYTE_COMMA;
        } else {
            if (writeValue != 2) {
                if (writeValue != 3) {
                    if (writeValue != 5) {
                        return;
                    }
                    _reportCantWriteValueExpectName(str);
                    return;
                }
                SerializableString serializableString = this._rootValueSeparator;
                if (serializableString != null) {
                    byte[] asUnquotedUTF8 = serializableString.asUnquotedUTF8();
                    if (asUnquotedUTF8.length > 0) {
                        _writeBytes(asUnquotedUTF8);
                        return;
                    }
                    return;
                }
                return;
            }
            b7 = BYTE_COLON;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = b7;
    }

    public final void _writeBinary(Base64Variant base64Variant, byte[] bArr, int i2, int i7) throws IOException, JsonGenerationException {
        int encodeBase64Chunk;
        int i8 = i7 - 3;
        int i9 = this._outputEnd - 6;
        int maxLineLength = base64Variant.getMaxLineLength();
        loop0: while (true) {
            int i10 = maxLineLength >> 2;
            while (i2 <= i8) {
                if (this._outputTail > i9) {
                    _flushBuffer();
                }
                int i11 = i2 + 2;
                int i12 = ((bArr[i2 + 1] & 255) | (bArr[i2] << 8)) << 8;
                i2 += 3;
                encodeBase64Chunk = base64Variant.encodeBase64Chunk(i12 | (bArr[i11] & 255), this._outputBuffer, this._outputTail);
                this._outputTail = encodeBase64Chunk;
                i10--;
                if (i10 <= 0) {
                    break;
                }
            }
            byte[] bArr2 = this._outputBuffer;
            int i13 = encodeBase64Chunk + 1;
            this._outputTail = i13;
            bArr2[encodeBase64Chunk] = BYTE_BACKSLASH;
            this._outputTail = encodeBase64Chunk + 2;
            bArr2[i13] = 110;
            maxLineLength = base64Variant.getMaxLineLength();
        }
        int i14 = i7 - i2;
        if (i14 > 0) {
            if (this._outputTail > i9) {
                _flushBuffer();
            }
            int i15 = i2 + 1;
            int i16 = bArr[i2] << 16;
            if (i14 == 2) {
                i16 |= (bArr[i15] & 255) << 8;
            }
            this._outputTail = base64Variant.encodeBase64Partial(i16, i14, this._outputBuffer, this._outputTail);
        }
    }

    public final void _writePPFieldName(String str) throws IOException {
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (this._cfgUnqNames) {
            _writeStringSegments(str, false);
            return;
        }
        int length = str.length();
        if (length > this._charBufferLength) {
            _writeStringSegments(str, true);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = this._quoteChar;
        str.getChars(0, length, this._charBuffer, 0);
        if (length <= this._outputMaxContiguous) {
            if (this._outputTail + length > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(this._charBuffer, 0, length);
        } else {
            _writeStringSegments(this._charBuffer, 0, length);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i7 = this._outputTail;
        this._outputTail = i7 + 1;
        bArr2[i7] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        if (this._outputBuffer != null && isEnabled(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT)) {
            while (true) {
                JsonStreamContext outputContext = getOutputContext();
                if (!outputContext.inArray()) {
                    if (!outputContext.inObject()) {
                        break;
                    } else {
                        writeEndObject();
                    }
                } else {
                    writeEndArray();
                }
            }
        }
        _flushBuffer();
        this._outputTail = 0;
        if (this._outputStream != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET)) {
                this._outputStream.close();
            } else if (isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
                this._outputStream.flush();
            }
        }
        _releaseBuffers();
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
        _flushBuffer();
        if (this._outputStream == null || !isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
            return;
        }
        this._outputStream.flush();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int getOutputBuffered() {
        return this._outputTail;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public Object getOutputTarget() {
        return this._outputStream;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBinary(Base64Variant base64Variant, byte[] bArr, int i2, int i7) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i8 = this._outputTail;
        this._outputTail = i8 + 1;
        bArr2[i8] = this._quoteChar;
        _writeBinary(base64Variant, bArr, i2, i7 + i2);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i9 = this._outputTail;
        this._outputTail = i9 + 1;
        bArr3[i9] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBoolean(boolean z6) throws IOException {
        _verifyValueWrite("write a boolean value");
        if (this._outputTail + 5 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = z6 ? TRUE_BYTES : FALSE_BYTES;
        int length = bArr.length;
        System.arraycopy(bArr, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail += length;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeEndArray() throws IOException {
        if (!this._writeContext.inArray()) {
            _reportError("Current context not Array but " + this._writeContext.typeDesc());
        }
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeEndArray(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr[i2] = BYTE_RBRACKET;
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeEndObject() throws IOException {
        if (!this._writeContext.inObject()) {
            _reportError("Current context not Object but " + this._writeContext.typeDesc());
        }
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeEndObject(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr[i2] = BYTE_RCURLY;
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(String str) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(str);
            return;
        }
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr[i2] = BYTE_COMMA;
        }
        if (this._cfgUnqNames) {
            _writeStringSegments(str, false);
            return;
        }
        int length = str.length();
        if (length > this._charBufferLength) {
            _writeStringSegments(str, true);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i7 = this._outputTail;
        int i8 = i7 + 1;
        this._outputTail = i8;
        bArr2[i7] = this._quoteChar;
        if (length <= this._outputMaxContiguous) {
            if (i8 + length > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(str, 0, length);
        } else {
            _writeStringSegments(str, 0, length);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i9 = this._outputTail;
        this._outputTail = i9 + 1;
        bArr3[i9] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNull() throws IOException {
        _verifyValueWrite("write a null");
        _writeNull();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(short s6) throws IOException {
        _verifyValueWrite("write a number");
        if (this._outputTail + 6 >= this._outputEnd) {
            _flushBuffer();
        }
        if (this._cfgNumbersAsStrings) {
            _writeQuotedShort(s6);
        } else {
            this._outputTail = NumberOutput.outputInt(s6, this._outputBuffer, this._outputTail);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str) throws IOException {
        int length = str.length();
        char[] cArr = this._charBuffer;
        if (length > cArr.length) {
            writeRaw(str, 0, length);
        } else {
            str.getChars(0, length, cArr, 0);
            writeRaw(cArr, 0, length);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRawUTF8String(byte[] bArr, int i2, int i7) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i8 = this._outputTail;
        this._outputTail = i8 + 1;
        bArr2[i8] = this._quoteChar;
        _writeBytes(bArr, i2, i7);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i9 = this._outputTail;
        this._outputTail = i9 + 1;
        bArr3[i9] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeRawValue(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write a raw (unencoded) value");
        int appendUnquotedUTF8 = serializableString.appendUnquotedUTF8(this._outputBuffer, this._outputTail);
        if (appendUnquotedUTF8 < 0) {
            _writeBytes(serializableString.asUnquotedUTF8());
        } else {
            this._outputTail += appendUnquotedUTF8;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartArray() throws IOException {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext();
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = BYTE_LBRACKET;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartObject() throws IOException {
        _verifyValueWrite("start an object");
        this._writeContext = this._writeContext.createChildObjectContext();
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeStartObject(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = BYTE_LCURLY;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(String str) throws IOException {
        _verifyValueWrite("write a string");
        if (str == null) {
            _writeNull();
            return;
        }
        int length = str.length();
        if (length > this._outputMaxContiguous) {
            _writeStringSegments(str, true);
            return;
        }
        if (this._outputTail + length >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = this._quoteChar;
        _writeStringSegment(str, 0, length);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i7 = this._outputTail;
        this._outputTail = i7 + 1;
        bArr2[i7] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeUTF8String(byte[] bArr, int i2, int i7) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i8 = this._outputTail;
        this._outputTail = i8 + 1;
        bArr2[i8] = this._quoteChar;
        if (i7 <= this._outputMaxContiguous) {
            _writeUTF8Segment(bArr, i2, i7);
        } else {
            _writeUTF8Segments(bArr, i2, i7);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i9 = this._outputTail;
        this._outputTail = i9 + 1;
        bArr3[i9] = this._quoteChar;
    }

    private final void _writeBytes(byte[] bArr, int i2, int i7) throws IOException {
        if (this._outputTail + i7 > this._outputEnd) {
            _flushBuffer();
            if (i7 > 512) {
                this._outputStream.write(bArr, i2, i7);
                return;
            }
        }
        System.arraycopy(bArr, i2, this._outputBuffer, this._outputTail, i7);
        this._outputTail += i7;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(int i2) throws IOException {
        _verifyValueWrite("write a number");
        if (this._outputTail + 11 >= this._outputEnd) {
            _flushBuffer();
        }
        if (this._cfgNumbersAsStrings) {
            _writeQuotedInt(i2);
        } else {
            this._outputTail = NumberOutput.outputInt(i2, this._outputBuffer, this._outputTail);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str, int i2, int i7) throws IOException {
        char c7;
        char[] cArr = this._charBuffer;
        int length = cArr.length;
        if (i7 <= length) {
            str.getChars(i2, i2 + i7, cArr, 0);
            writeRaw(cArr, 0, i7);
            return;
        }
        int i8 = this._outputEnd;
        int min = Math.min(length, (i8 >> 2) + (i8 >> 4));
        int i9 = min * 3;
        while (i7 > 0) {
            int min2 = Math.min(min, i7);
            str.getChars(i2, i2 + min2, cArr, 0);
            if (this._outputTail + i9 > this._outputEnd) {
                _flushBuffer();
            }
            if (min2 > 1 && (c7 = cArr[min2 - 1]) >= 55296 && c7 <= 56319) {
                min2--;
            }
            _writeRawSegment(cArr, 0, min2);
            i2 += min2;
            i7 -= min2;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartArray(int i2) throws IOException {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext();
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i7 = this._outputTail;
        this._outputTail = i7 + 1;
        bArr[i7] = BYTE_LBRACKET;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeStartObject(Object obj) throws IOException {
        _verifyValueWrite("start an object");
        this._writeContext = this._writeContext.createChildObjectContext(obj);
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeStartObject(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = BYTE_LCURLY;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i2) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i7 = this._outputTail;
        this._outputTail = i7 + 1;
        bArr[i7] = this._quoteChar;
        byte[] allocBase64Buffer = this._ioContext.allocBase64Buffer();
        try {
            if (i2 < 0) {
                i2 = _writeBinary(base64Variant, inputStream, allocBase64Buffer);
            } else {
                int _writeBinary = _writeBinary(base64Variant, inputStream, allocBase64Buffer, i2);
                if (_writeBinary > 0) {
                    _reportError("Too few bytes available: missing " + _writeBinary + " bytes (out of " + i2 + ")");
                }
            }
            this._ioContext.releaseBase64Buffer(allocBase64Buffer);
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr2 = this._outputBuffer;
            int i8 = this._outputTail;
            this._outputTail = i8 + 1;
            bArr2[i8] = this._quoteChar;
            return i2;
        } catch (Throwable th) {
            this._ioContext.releaseBase64Buffer(allocBase64Buffer);
            throw th;
        }
    }

    private final void _writeStringSegments(char[] cArr, int i2, int i7) throws IOException {
        do {
            int min = Math.min(this._outputMaxContiguous, i7);
            if (this._outputTail + min > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(cArr, i2, min);
            i2 += min;
            i7 -= min;
        } while (i7 > 0);
    }

    public UTF8JsonGenerator(IOContext iOContext, int i2, ObjectCodec objectCodec, OutputStream outputStream, char c7, byte[] bArr, int i7, boolean z6) {
        super(iOContext, i2, objectCodec);
        this._outputStream = outputStream;
        this._quoteChar = (byte) c7;
        if (c7 != '\"') {
            this._outputEscapes = CharTypes.get7BitOutputEscapes(c7);
        }
        this._bufferRecyclable = z6;
        this._outputTail = i7;
        this._outputBuffer = bArr;
        int length = bArr.length;
        this._outputEnd = length;
        this._outputMaxContiguous = length >> 3;
        char[] allocConcatBuffer = iOContext.allocConcatBuffer();
        this._charBuffer = allocConcatBuffer;
        this._charBufferLength = allocConcatBuffer.length;
    }

    private final void _writeStringSegment(String str, int i2, int i7) throws IOException {
        int i8 = i7 + i2;
        int i9 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i2 < i8) {
            char charAt = str.charAt(i2);
            if (charAt > 127 || iArr[charAt] != 0) {
                break;
            }
            bArr[i9] = (byte) charAt;
            i2++;
            i9++;
        }
        this._outputTail = i9;
        if (i2 < i8) {
            if (this._characterEscapes != null) {
                _writeCustomStringSegment2(str, i2, i8);
            } else if (this._maximumNonEscapedChar == 0) {
                _writeStringSegment2(str, i2, i8);
            } else {
                _writeStringSegmentASCII2(str, i2, i8);
            }
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(long j7) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedLong(j7);
            return;
        }
        if (this._outputTail + 21 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputLong(j7, this._outputBuffer, this._outputTail);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(Reader reader, int i2) throws IOException {
        _verifyValueWrite("write a string");
        if (reader == null) {
            _reportError("null reader");
        }
        int i7 = i2 >= 0 ? i2 : Log.LOG_LEVEL_OFF;
        char[] cArr = this._charBuffer;
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i8 = this._outputTail;
        this._outputTail = i8 + 1;
        bArr[i8] = this._quoteChar;
        while (i7 > 0) {
            int read = reader.read(cArr, 0, Math.min(i7, cArr.length));
            if (read <= 0) {
                break;
            }
            if (this._outputTail + i2 >= this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegments(cArr, 0, read);
            i7 -= read;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i9 = this._outputTail;
        this._outputTail = i9 + 1;
        bArr2[i9] = this._quoteChar;
        if (i7 <= 0 || i2 < 0) {
            return;
        }
        _reportError("Didn't read enough from reader");
    }

    private final void _writeStringSegment2(String str, int i2, int i7) throws IOException {
        if (i.a(i7, i2, 6, this._outputTail) > this._outputEnd) {
            _flushBuffer();
        }
        int i8 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i2 < i7) {
            int i9 = i2 + 1;
            char charAt = str.charAt(i2);
            if (charAt <= 127) {
                int i10 = iArr[charAt];
                if (i10 == 0) {
                    bArr[i8] = (byte) charAt;
                    i2 = i9;
                    i8++;
                } else if (i10 > 0) {
                    int i11 = i8 + 1;
                    bArr[i8] = BYTE_BACKSLASH;
                    i8 += 2;
                    bArr[i11] = (byte) i10;
                } else {
                    i8 = _writeGenericEscape(charAt, i8);
                }
            } else if (charAt <= 2047) {
                int i12 = i8 + 1;
                bArr[i8] = (byte) ((charAt >> 6) | 192);
                i8 += 2;
                bArr[i12] = (byte) ((charAt & '?') | 128);
            } else {
                i8 = _outputMultiByteChar(charAt, i8);
            }
            i2 = i9;
        }
        this._outputTail = i8;
    }

    private final void _writeStringSegments(String str, int i2, int i7) throws IOException {
        do {
            int min = Math.min(this._outputMaxContiguous, i7);
            if (this._outputTail + min > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(str, i2, min);
            i2 += min;
            i7 -= min;
        } while (i7 > 0);
    }

    public final int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr, int i2) throws IOException, JsonGenerationException {
        int _readMore;
        int i7 = this._outputEnd - 6;
        int i8 = 2;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i9 = -3;
        int i10 = i2;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i10 <= 2) {
                break;
            }
            if (i11 > i9) {
                i12 = _readMore(inputStream, bArr, i11, i12, i10);
                if (i12 < 3) {
                    i11 = 0;
                    break;
                }
                i9 = i12 - 3;
                i11 = 0;
            }
            if (this._outputTail > i7) {
                _flushBuffer();
            }
            int i13 = i11 + 2;
            int i14 = ((bArr[i11 + 1] & 255) | (bArr[i11] << 8)) << 8;
            i11 += 3;
            i10 -= 3;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk(i14 | (bArr[i13] & 255), this._outputBuffer, this._outputTail);
            this._outputTail = encodeBase64Chunk;
            maxLineLength--;
            if (maxLineLength <= 0) {
                byte[] bArr2 = this._outputBuffer;
                int i15 = encodeBase64Chunk + 1;
                this._outputTail = i15;
                bArr2[encodeBase64Chunk] = BYTE_BACKSLASH;
                this._outputTail = encodeBase64Chunk + 2;
                bArr2[i15] = 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
        }
        if (i10 <= 0 || (_readMore = _readMore(inputStream, bArr, i11, i12, i10)) <= 0) {
            return i10;
        }
        if (this._outputTail > i7) {
            _flushBuffer();
        }
        int i16 = bArr[0] << 16;
        if (1 < _readMore) {
            i16 |= (bArr[1] & 255) << 8;
        } else {
            i8 = 1;
        }
        this._outputTail = base64Variant.encodeBase64Partial(i16, i8, this._outputBuffer, this._outputTail);
        return i10 - i8;
    }

    private final void _writeStringSegmentASCII2(String str, int i2, int i7) throws IOException {
        if (i.a(i7, i2, 6, this._outputTail) > this._outputEnd) {
            _flushBuffer();
        }
        int i8 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i9 = this._maximumNonEscapedChar;
        while (i2 < i7) {
            int i10 = i2 + 1;
            char charAt = str.charAt(i2);
            if (charAt <= 127) {
                int i11 = iArr[charAt];
                if (i11 == 0) {
                    bArr[i8] = (byte) charAt;
                    i2 = i10;
                    i8++;
                } else if (i11 > 0) {
                    int i12 = i8 + 1;
                    bArr[i8] = BYTE_BACKSLASH;
                    i8 += 2;
                    bArr[i12] = (byte) i11;
                } else {
                    i8 = _writeGenericEscape(charAt, i8);
                }
            } else if (charAt > i9) {
                i8 = _writeGenericEscape(charAt, i8);
            } else if (charAt <= 2047) {
                int i13 = i8 + 1;
                bArr[i8] = (byte) ((charAt >> 6) | 192);
                i8 += 2;
                bArr[i13] = (byte) ((charAt & '?') | 128);
            } else {
                i8 = _outputMultiByteChar(charAt, i8);
            }
            i2 = i10;
        }
        this._outputTail = i8;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(SerializableString serializableString) throws IOException {
        int appendUnquotedUTF8 = serializableString.appendUnquotedUTF8(this._outputBuffer, this._outputTail);
        if (appendUnquotedUTF8 < 0) {
            _writeBytes(serializableString.asUnquotedUTF8());
        } else {
            this._outputTail += appendUnquotedUTF8;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigInteger bigInteger) throws IOException {
        _verifyValueWrite("write a number");
        if (bigInteger == null) {
            _writeNull();
        } else if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(bigInteger.toString());
        } else {
            writeRaw(bigInteger.toString());
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeRaw(char[] cArr, int i2, int i7) throws IOException {
        int i8 = i7 + i7 + i7;
        int i9 = this._outputTail + i8;
        int i10 = this._outputEnd;
        if (i9 > i10) {
            if (i10 < i8) {
                _writeSegmentedRaw(cArr, i2, i7);
                return;
            }
            _flushBuffer();
        }
        int i11 = i7 + i2;
        while (i2 < i11) {
            do {
                char c7 = cArr[i2];
                if (c7 > 127) {
                    i2++;
                    if (c7 < 2048) {
                        byte[] bArr = this._outputBuffer;
                        int i12 = this._outputTail;
                        int i13 = i12 + 1;
                        this._outputTail = i13;
                        bArr[i12] = (byte) ((c7 >> 6) | 192);
                        this._outputTail = i12 + 2;
                        bArr[i13] = (byte) ((c7 & '?') | 128);
                    } else {
                        i2 = _outputRawMultiByteChar(c7, cArr, i2, i11);
                    }
                } else {
                    byte[] bArr2 = this._outputBuffer;
                    int i14 = this._outputTail;
                    this._outputTail = i14 + 1;
                    bArr2[i14] = (byte) c7;
                    i2++;
                }
            } while (i2 < i11);
            return;
        }
    }

    public final void _writePPFieldName(SerializableString serializableString) throws IOException {
        int writeFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        boolean z6 = this._cfgUnqNames;
        if (!z6) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr[i2] = this._quoteChar;
        }
        int appendQuotedUTF8 = serializableString.appendQuotedUTF8(this._outputBuffer, this._outputTail);
        if (appendQuotedUTF8 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail += appendQuotedUTF8;
        }
        if (z6) {
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i7 = this._outputTail;
        this._outputTail = i7 + 1;
        bArr2[i7] = this._quoteChar;
    }

    @Deprecated
    public UTF8JsonGenerator(IOContext iOContext, int i2, ObjectCodec objectCodec, OutputStream outputStream) {
        this(iOContext, i2, objectCodec, outputStream, '\"');
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(SerializableString serializableString) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(serializableString);
            return;
        }
        int writeFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr[i2] = BYTE_COMMA;
        }
        if (this._cfgUnqNames) {
            _writeUnq(serializableString);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i7 = this._outputTail;
        int i8 = i7 + 1;
        this._outputTail = i8;
        bArr2[i7] = this._quoteChar;
        int appendQuotedUTF8 = serializableString.appendQuotedUTF8(bArr2, i8);
        if (appendQuotedUTF8 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail += appendQuotedUTF8;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i9 = this._outputTail;
        this._outputTail = i9 + 1;
        bArr3[i9] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(double d7) throws IOException {
        if (!this._cfgNumbersAsStrings && (!NumberOutput.notFinite(d7) || !JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS.enabledIn(this._features))) {
            _verifyValueWrite("write a number");
            writeRaw(String.valueOf(d7));
        } else {
            writeString(String.valueOf(d7));
        }
    }

    @Deprecated
    public UTF8JsonGenerator(IOContext iOContext, int i2, ObjectCodec objectCodec, OutputStream outputStream, byte[] bArr, int i7, boolean z6) {
        this(iOContext, i2, objectCodec, outputStream, '\"', bArr, i7, z6);
    }

    private final void _writeCustomStringSegment2(String str, int i2, int i7) throws IOException {
        if (i.a(i7, i2, 6, this._outputTail) > this._outputEnd) {
            _flushBuffer();
        }
        int i8 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i9 = this._maximumNonEscapedChar;
        if (i9 <= 0) {
            i9 = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        }
        CharacterEscapes characterEscapes = this._characterEscapes;
        while (i2 < i7) {
            int i10 = i2 + 1;
            char charAt = str.charAt(i2);
            if (charAt <= 127) {
                int i11 = iArr[charAt];
                if (i11 == 0) {
                    bArr[i8] = (byte) charAt;
                    i2 = i10;
                    i8++;
                } else if (i11 > 0) {
                    int i12 = i8 + 1;
                    bArr[i8] = BYTE_BACKSLASH;
                    i8 += 2;
                    bArr[i12] = (byte) i11;
                } else if (i11 == -2) {
                    SerializableString escapeSequence = characterEscapes.getEscapeSequence(charAt);
                    if (escapeSequence == null) {
                        _reportError("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(charAt) + ", although was supposed to have one");
                    }
                    i8 = _writeCustomEscape(bArr, i8, escapeSequence, i7 - i10);
                } else {
                    i8 = _writeGenericEscape(charAt, i8);
                }
            } else if (charAt > i9) {
                i8 = _writeGenericEscape(charAt, i8);
            } else {
                SerializableString escapeSequence2 = characterEscapes.getEscapeSequence(charAt);
                if (escapeSequence2 != null) {
                    i8 = _writeCustomEscape(bArr, i8, escapeSequence2, i7 - i10);
                } else if (charAt <= 2047) {
                    int i13 = i8 + 1;
                    bArr[i8] = (byte) ((charAt >> 6) | 192);
                    i8 += 2;
                    bArr[i13] = (byte) ((charAt & '?') | 128);
                } else {
                    i8 = _outputMultiByteChar(charAt, i8);
                }
            }
            i2 = i10;
        }
        this._outputTail = i8;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(char[] cArr, int i2, int i7) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i8 = this._outputTail;
        int i9 = i8 + 1;
        this._outputTail = i9;
        bArr[i8] = this._quoteChar;
        if (i7 <= this._outputMaxContiguous) {
            if (i9 + i7 > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(cArr, i2, i7);
        } else {
            _writeStringSegments(cArr, i2, i7);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        bArr2[i10] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char c7) throws IOException {
        if (this._outputTail + 3 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        if (c7 <= 127) {
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr[i2] = (byte) c7;
        } else {
            if (c7 < 2048) {
                int i7 = this._outputTail;
                int i8 = i7 + 1;
                this._outputTail = i8;
                bArr[i7] = (byte) ((c7 >> 6) | 192);
                this._outputTail = i7 + 2;
                bArr[i8] = (byte) ((c7 & '?') | 128);
                return;
            }
            _outputRawMultiByteChar(c7, null, 0, 0);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(float f3) throws IOException {
        if (!this._cfgNumbersAsStrings && (!NumberOutput.notFinite(f3) || !JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS.enabledIn(this._features))) {
            _verifyValueWrite("write a number");
            writeRaw(String.valueOf(f3));
        } else {
            writeString(String.valueOf(f3));
        }
    }

    public final int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr) throws IOException, JsonGenerationException {
        byte[] bArr2 = bArr;
        int i2 = this._outputEnd - 6;
        int i7 = 2;
        int i8 = -3;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i9 > i8) {
                i10 = _readMore(inputStream, bArr2, i9, i10, bArr2.length);
                if (i10 < 3) {
                    break;
                }
                i8 = i10 - 3;
                i9 = 0;
            }
            if (this._outputTail > i2) {
                _flushBuffer();
            }
            int i12 = i9 + 2;
            int i13 = ((bArr[i9 + 1] & 255) | (bArr[i9] << 8)) << 8;
            i9 += 3;
            i11 += 3;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk(i13 | (bArr[i12] & 255), this._outputBuffer, this._outputTail);
            this._outputTail = encodeBase64Chunk;
            maxLineLength--;
            if (maxLineLength <= 0) {
                byte[] bArr3 = this._outputBuffer;
                int i14 = encodeBase64Chunk + 1;
                this._outputTail = i14;
                bArr3[encodeBase64Chunk] = BYTE_BACKSLASH;
                this._outputTail = encodeBase64Chunk + 2;
                bArr3[i14] = 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
            bArr2 = bArr;
        }
        if (i10 <= 0) {
            return i11;
        }
        if (this._outputTail > i2) {
            _flushBuffer();
        }
        int i15 = bArr[0] << 16;
        if (1 < i10) {
            i15 |= (bArr[1] & 255) << 8;
        } else {
            i7 = 1;
        }
        int i16 = i11 + i7;
        this._outputTail = base64Variant.encodeBase64Partial(i15, i7, this._outputBuffer, this._outputTail);
        return i16;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigDecimal bigDecimal) throws IOException {
        _verifyValueWrite("write a number");
        if (bigDecimal == null) {
            _writeNull();
        } else if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(_asString(bigDecimal));
        } else {
            writeRaw(_asString(bigDecimal));
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public final void writeString(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        int i7 = i2 + 1;
        this._outputTail = i7;
        bArr[i2] = this._quoteChar;
        int appendQuotedUTF8 = serializableString.appendQuotedUTF8(bArr, i7);
        if (appendQuotedUTF8 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail += appendQuotedUTF8;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i8 = this._outputTail;
        this._outputTail = i8 + 1;
        bArr2[i8] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(String str) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(str);
        } else {
            writeRaw(str);
        }
    }
}
