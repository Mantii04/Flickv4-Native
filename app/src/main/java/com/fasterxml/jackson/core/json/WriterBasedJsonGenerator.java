package com.fasterxml.jackson.core.json;

import androidx.media3.common.util.Log;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberOutput;
import cz.msebera.android.httpclient.message.TokenParser;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
public class WriterBasedJsonGenerator extends JsonGeneratorImpl {
    protected static final char[] HEX_CHARS = CharTypes.copyHexChars();
    protected static final int SHORT_WRITE = 32;
    protected char[] _copyBuffer;
    protected SerializableString _currentEscape;
    protected char[] _entityBuffer;
    protected char[] _outputBuffer;
    protected int _outputEnd;
    protected int _outputHead;
    protected int _outputTail;
    protected char _quoteChar;
    protected final Writer _writer;

    @Deprecated
    public WriterBasedJsonGenerator(IOContext iOContext, int i2, ObjectCodec objectCodec, Writer writer) {
        this(iOContext, i2, objectCodec, writer, '\"');
    }

    private char[] _allocateCopyBuffer() {
        if (this._copyBuffer == null) {
            this._copyBuffer = this._ioContext.allocNameCopyBuffer(2000);
        }
        return this._copyBuffer;
    }

    private char[] _allocateEntityBuffer() {
        char[] cArr = {TokenParser.ESCAPE, 0, TokenParser.ESCAPE, 'u', '0', '0', 0, 0, TokenParser.ESCAPE, 'u', 0, 0, 0, 0};
        this._entityBuffer = cArr;
        return cArr;
    }

    private void _appendCharacterEscape(char c7, int i2) throws IOException, JsonGenerationException {
        String value;
        int i7;
        if (i2 >= 0) {
            if (this._outputTail + 2 > this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i8 = this._outputTail;
            int i9 = i8 + 1;
            this._outputTail = i9;
            cArr[i8] = TokenParser.ESCAPE;
            this._outputTail = i8 + 2;
            cArr[i9] = (char) i2;
            return;
        }
        if (i2 == -2) {
            SerializableString serializableString = this._currentEscape;
            if (serializableString == null) {
                value = this._characterEscapes.getEscapeSequence(c7).getValue();
            } else {
                value = serializableString.getValue();
                this._currentEscape = null;
            }
            int length = value.length();
            if (this._outputTail + length > this._outputEnd) {
                _flushBuffer();
                if (length > this._outputEnd) {
                    this._writer.write(value);
                    return;
                }
            }
            value.getChars(0, length, this._outputBuffer, this._outputTail);
            this._outputTail += length;
            return;
        }
        if (this._outputTail + 5 >= this._outputEnd) {
            _flushBuffer();
        }
        int i10 = this._outputTail;
        char[] cArr2 = this._outputBuffer;
        cArr2[i10] = TokenParser.ESCAPE;
        int i11 = i10 + 2;
        cArr2[i10 + 1] = 'u';
        if (c7 > 255) {
            int i12 = c7 >> '\b';
            int i13 = i10 + 3;
            char[] cArr3 = HEX_CHARS;
            cArr2[i11] = cArr3[(i12 & 255) >> 4];
            i7 = i10 + 4;
            cArr2[i13] = cArr3[i12 & 15];
            c7 = (char) (c7 & 255);
        } else {
            int i14 = i10 + 3;
            cArr2[i11] = '0';
            i7 = i10 + 4;
            cArr2[i14] = '0';
        }
        char[] cArr4 = HEX_CHARS;
        cArr2[i7] = cArr4[c7 >> 4];
        cArr2[i7 + 1] = cArr4[c7 & 15];
        this._outputTail = i7 + 2;
    }

    private void _prependOrWriteCharacterEscape(char c7, int i2) throws IOException, JsonGenerationException {
        String value;
        int i7;
        if (i2 >= 0) {
            int i8 = this._outputTail;
            if (i8 >= 2) {
                int i9 = i8 - 2;
                this._outputHead = i9;
                char[] cArr = this._outputBuffer;
                cArr[i9] = TokenParser.ESCAPE;
                cArr[i8 - 1] = (char) i2;
                return;
            }
            char[] cArr2 = this._entityBuffer;
            if (cArr2 == null) {
                cArr2 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            cArr2[1] = (char) i2;
            this._writer.write(cArr2, 0, 2);
            return;
        }
        if (i2 == -2) {
            SerializableString serializableString = this._currentEscape;
            if (serializableString == null) {
                value = this._characterEscapes.getEscapeSequence(c7).getValue();
            } else {
                value = serializableString.getValue();
                this._currentEscape = null;
            }
            int length = value.length();
            int i10 = this._outputTail;
            if (i10 < length) {
                this._outputHead = i10;
                this._writer.write(value);
                return;
            } else {
                int i11 = i10 - length;
                this._outputHead = i11;
                value.getChars(0, length, this._outputBuffer, i11);
                return;
            }
        }
        int i12 = this._outputTail;
        if (i12 < 6) {
            char[] cArr3 = this._entityBuffer;
            if (cArr3 == null) {
                cArr3 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c7 <= 255) {
                char[] cArr4 = HEX_CHARS;
                cArr3[6] = cArr4[c7 >> 4];
                cArr3[7] = cArr4[c7 & 15];
                this._writer.write(cArr3, 2, 6);
                return;
            }
            int i13 = c7 >> '\b';
            char[] cArr5 = HEX_CHARS;
            cArr3[10] = cArr5[(i13 & 255) >> 4];
            cArr3[11] = cArr5[i13 & 15];
            cArr3[12] = cArr5[(c7 & 255) >> 4];
            cArr3[13] = cArr5[c7 & 15];
            this._writer.write(cArr3, 8, 6);
            return;
        }
        char[] cArr6 = this._outputBuffer;
        int i14 = i12 - 6;
        this._outputHead = i14;
        cArr6[i14] = TokenParser.ESCAPE;
        cArr6[i12 - 5] = 'u';
        if (c7 > 255) {
            int i15 = c7 >> '\b';
            char[] cArr7 = HEX_CHARS;
            cArr6[i12 - 4] = cArr7[(i15 & 255) >> 4];
            i7 = i12 - 3;
            cArr6[i7] = cArr7[i15 & 15];
            c7 = (char) (c7 & 255);
        } else {
            cArr6[i12 - 4] = '0';
            i7 = i12 - 3;
            cArr6[i7] = '0';
        }
        char[] cArr8 = HEX_CHARS;
        cArr6[i7 + 1] = cArr8[c7 >> 4];
        cArr6[i7 + 2] = cArr8[c7 & 15];
    }

    private int _readMore(InputStream inputStream, byte[] bArr, int i2, int i7, int i8) throws IOException {
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

    private final void _writeFieldNameTail(SerializableString serializableString) throws IOException {
        char[] asQuotedChars = serializableString.asQuotedChars();
        writeRaw(asQuotedChars, 0, asQuotedChars.length);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = this._quoteChar;
    }

    private void _writeLongString(String str) throws IOException {
        _flushBuffer();
        int length = str.length();
        int i2 = 0;
        while (true) {
            int i7 = this._outputEnd;
            if (i2 + i7 > length) {
                i7 = length - i2;
            }
            int i8 = i2 + i7;
            str.getChars(i2, i8, this._outputBuffer, 0);
            if (this._characterEscapes != null) {
                _writeSegmentCustom(i7);
            } else {
                int i9 = this._maximumNonEscapedChar;
                if (i9 != 0) {
                    _writeSegmentASCII(i7, i9);
                } else {
                    _writeSegment(i7);
                }
            }
            if (i8 >= length) {
                return;
            } else {
                i2 = i8;
            }
        }
    }

    private final void _writeNull() throws IOException {
        if (this._outputTail + 4 >= this._outputEnd) {
            _flushBuffer();
        }
        int i2 = this._outputTail;
        char[] cArr = this._outputBuffer;
        cArr[i2] = 'n';
        cArr[i2 + 1] = 'u';
        cArr[i2 + 2] = 'l';
        cArr[i2 + 3] = 'l';
        this._outputTail = i2 + 4;
    }

    private void _writeQuotedInt(int i2) throws IOException {
        if (this._outputTail + 13 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i7 = this._outputTail;
        int i8 = i7 + 1;
        this._outputTail = i8;
        cArr[i7] = this._quoteChar;
        int outputInt = NumberOutput.outputInt(i2, cArr, i8);
        char[] cArr2 = this._outputBuffer;
        this._outputTail = outputInt + 1;
        cArr2[outputInt] = this._quoteChar;
    }

    private void _writeQuotedLong(long j7) throws IOException {
        if (this._outputTail + 23 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        int i7 = i2 + 1;
        this._outputTail = i7;
        cArr[i2] = this._quoteChar;
        int outputLong = NumberOutput.outputLong(j7, cArr, i7);
        char[] cArr2 = this._outputBuffer;
        this._outputTail = outputLong + 1;
        cArr2[outputLong] = this._quoteChar;
    }

    private void _writeQuotedRaw(String str) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = this._quoteChar;
        writeRaw(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i7 = this._outputTail;
        this._outputTail = i7 + 1;
        cArr2[i7] = this._quoteChar;
    }

    private void _writeQuotedShort(short s6) throws IOException {
        if (this._outputTail + 8 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        int i7 = i2 + 1;
        this._outputTail = i7;
        cArr[i2] = this._quoteChar;
        int outputInt = NumberOutput.outputInt(s6, cArr, i7);
        char[] cArr2 = this._outputBuffer;
        this._outputTail = outputInt + 1;
        cArr2[outputInt] = this._quoteChar;
    }

    private void _writeSegment(int i2) throws IOException {
        char[] cArr;
        char c7;
        int[] iArr = this._outputEscapes;
        int length = iArr.length;
        int i7 = 0;
        int i8 = 0;
        while (i7 < i2) {
            do {
                cArr = this._outputBuffer;
                c7 = cArr[i7];
                if (c7 < length && iArr[c7] != 0) {
                    break;
                } else {
                    i7++;
                }
            } while (i7 < i2);
            int i9 = i7 - i8;
            if (i9 > 0) {
                this._writer.write(cArr, i8, i9);
                if (i7 >= i2) {
                    return;
                }
            }
            int i10 = i7 + 1;
            i8 = _prependOrWriteCharacterEscape(this._outputBuffer, i10, i2, c7, iArr[c7]);
            i7 = i10;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:? A[LOOP:1: B:3:0x000e->B:21:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0018 A[EDGE_INSN: B:9:0x0018->B:10:0x0018 BREAK  A[LOOP:1: B:3:0x000e->B:21:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeSegmentASCII(int r13, int r14) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r12 = this;
            int[] r0 = r12._outputEscapes
            int r1 = r0.length
            int r2 = r14 + 1
            int r1 = java.lang.Math.min(r1, r2)
            r2 = 0
            r3 = r2
            r4 = r3
        Lc:
            if (r2 >= r13) goto L3c
        Le:
            char[] r5 = r12._outputBuffer
            char r10 = r5[r2]
            if (r10 >= r1) goto L1a
            r4 = r0[r10]
            if (r4 == 0) goto L1e
        L18:
            r11 = r4
            goto L23
        L1a:
            if (r10 <= r14) goto L1e
            r4 = -1
            goto L18
        L1e:
            int r2 = r2 + 1
            if (r2 < r13) goto Le
            goto L18
        L23:
            int r4 = r2 - r3
            if (r4 <= 0) goto L2f
            java.io.Writer r6 = r12._writer
            r6.write(r5, r3, r4)
            if (r2 < r13) goto L2f
            goto L3c
        L2f:
            int r8 = r2 + 1
            char[] r7 = r12._outputBuffer
            r6 = r12
            r9 = r13
            int r3 = r6._prependOrWriteCharacterEscape(r7, r8, r9, r10, r11)
            r2 = r8
            r4 = r11
            goto Lc
        L3c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeSegmentASCII(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0022 A[EDGE_INSN: B:12:0x0022->B:13:0x0022 BREAK  A[LOOP:1: B:6:0x0018->B:24:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[LOOP:1: B:6:0x0018->B:24:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeSegmentCustom(int r15) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r14 = this;
            int[] r0 = r14._outputEscapes
            int r1 = r14._maximumNonEscapedChar
            r2 = 1
            if (r1 >= r2) goto La
            r1 = 65535(0xffff, float:9.1834E-41)
        La:
            int r2 = r0.length
            int r3 = r1 + 1
            int r2 = java.lang.Math.min(r2, r3)
            com.fasterxml.jackson.core.io.CharacterEscapes r3 = r14._characterEscapes
            r4 = 0
            r5 = r4
            r6 = r5
        L16:
            if (r4 >= r15) goto L52
        L18:
            char[] r7 = r14._outputBuffer
            char r12 = r7[r4]
            if (r12 >= r2) goto L24
            r6 = r0[r12]
            if (r6 == 0) goto L32
        L22:
            r13 = r6
            goto L37
        L24:
            if (r12 <= r1) goto L28
            r6 = -1
            goto L22
        L28:
            com.fasterxml.jackson.core.SerializableString r7 = r3.getEscapeSequence(r12)
            r14._currentEscape = r7
            if (r7 == 0) goto L32
            r6 = -2
            goto L22
        L32:
            int r4 = r4 + 1
            if (r4 < r15) goto L18
            goto L22
        L37:
            int r6 = r4 - r5
            if (r6 <= 0) goto L45
            java.io.Writer r7 = r14._writer
            char[] r8 = r14._outputBuffer
            r7.write(r8, r5, r6)
            if (r4 < r15) goto L45
            goto L52
        L45:
            int r10 = r4 + 1
            char[] r9 = r14._outputBuffer
            r8 = r14
            r11 = r15
            int r5 = r8._prependOrWriteCharacterEscape(r9, r10, r11, r12, r13)
            r4 = r10
            r6 = r13
            goto L16
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeSegmentCustom(int):void");
    }

    private void _writeString(String str) throws IOException {
        int length = str.length();
        int i2 = this._outputEnd;
        if (length > i2) {
            _writeLongString(str);
            return;
        }
        if (this._outputTail + length > i2) {
            _flushBuffer();
        }
        str.getChars(0, length, this._outputBuffer, this._outputTail);
        if (this._characterEscapes != null) {
            _writeStringCustom(length);
            return;
        }
        int i7 = this._maximumNonEscapedChar;
        if (i7 != 0) {
            _writeStringASCII(length, i7);
        } else {
            _writeString2(length);
        }
    }

    private void _writeString2(SerializableString serializableString) throws IOException {
        char[] asQuotedChars = serializableString.asQuotedChars();
        int length = asQuotedChars.length;
        if (length < 32) {
            if (length > this._outputEnd - this._outputTail) {
                _flushBuffer();
            }
            System.arraycopy(asQuotedChars, 0, this._outputBuffer, this._outputTail, length);
            this._outputTail += length;
        } else {
            _flushBuffer();
            this._writer.write(asQuotedChars, 0, length);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = this._quoteChar;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeStringASCII(int r9, int r10) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r8 = this;
            int r0 = r8._outputTail
            int r0 = r0 + r9
            int[] r9 = r8._outputEscapes
            int r1 = r9.length
            int r2 = r10 + 1
            int r1 = java.lang.Math.min(r1, r2)
        Lc:
            int r2 = r8._outputTail
            if (r2 >= r0) goto L3a
        L10:
            char[] r2 = r8._outputBuffer
            int r3 = r8._outputTail
            char r4 = r2[r3]
            if (r4 >= r1) goto L1d
            r5 = r9[r4]
            if (r5 == 0) goto L34
            goto L20
        L1d:
            if (r4 <= r10) goto L34
            r5 = -1
        L20:
            int r6 = r8._outputHead
            int r3 = r3 - r6
            if (r3 <= 0) goto L2a
            java.io.Writer r7 = r8._writer
            r7.write(r2, r6, r3)
        L2a:
            int r2 = r8._outputTail
            int r2 = r2 + 1
            r8._outputTail = r2
            r8._prependOrWriteCharacterEscape(r4, r5)
            goto Lc
        L34:
            int r3 = r3 + 1
            r8._outputTail = r3
            if (r3 < r0) goto L10
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringASCII(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0042 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeStringCustom(int r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r11 = this;
            int r0 = r11._outputTail
            int r0 = r0 + r12
            int[] r12 = r11._outputEscapes
            int r1 = r11._maximumNonEscapedChar
            r2 = 1
            if (r1 >= r2) goto Ld
            r1 = 65535(0xffff, float:9.1834E-41)
        Ld:
            int r3 = r12.length
            int r4 = r1 + 1
            int r3 = java.lang.Math.min(r3, r4)
            com.fasterxml.jackson.core.io.CharacterEscapes r4 = r11._characterEscapes
        L16:
            int r5 = r11._outputTail
            if (r5 >= r0) goto L52
        L1a:
            char[] r5 = r11._outputBuffer
            int r6 = r11._outputTail
            char r5 = r5[r6]
            if (r5 >= r3) goto L27
            r6 = r12[r5]
            if (r6 == 0) goto L4b
            goto L34
        L27:
            if (r5 <= r1) goto L2b
            r6 = -1
            goto L34
        L2b:
            com.fasterxml.jackson.core.SerializableString r6 = r4.getEscapeSequence(r5)
            r11._currentEscape = r6
            if (r6 == 0) goto L4b
            r6 = -2
        L34:
            int r7 = r11._outputTail
            int r8 = r11._outputHead
            int r7 = r7 - r8
            if (r7 <= 0) goto L42
            java.io.Writer r9 = r11._writer
            char[] r10 = r11._outputBuffer
            r9.write(r10, r8, r7)
        L42:
            int r7 = r11._outputTail
            int r7 = r7 + r2
            r11._outputTail = r7
            r11._prependOrWriteCharacterEscape(r5, r6)
            goto L16
        L4b:
            int r5 = r11._outputTail
            int r5 = r5 + r2
            r11._outputTail = r5
            if (r5 < r0) goto L1a
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringCustom(int):void");
    }

    private void writeRawLong(String str) throws IOException {
        int i2 = this._outputEnd;
        int i7 = this._outputTail;
        int i8 = i2 - i7;
        str.getChars(0, i8, this._outputBuffer, i7);
        this._outputTail += i8;
        _flushBuffer();
        int length = str.length() - i8;
        while (true) {
            int i9 = this._outputEnd;
            if (length <= i9) {
                str.getChars(i8, i8 + length, this._outputBuffer, 0);
                this._outputHead = 0;
                this._outputTail = length;
                return;
            } else {
                int i10 = i8 + i9;
                str.getChars(i8, i10, this._outputBuffer, 0);
                this._outputHead = 0;
                this._outputTail = i9;
                _flushBuffer();
                length -= i9;
                i8 = i10;
            }
        }
    }

    public void _flushBuffer() throws IOException {
        int i2 = this._outputTail;
        int i7 = this._outputHead;
        int i8 = i2 - i7;
        if (i8 > 0) {
            this._outputHead = 0;
            this._outputTail = 0;
            this._writer.write(this._outputBuffer, i7, i8);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    public void _releaseBuffers() {
        char[] cArr = this._outputBuffer;
        if (cArr != null) {
            this._outputBuffer = null;
            this._ioContext.releaseConcatBuffer(cArr);
        }
        char[] cArr2 = this._copyBuffer;
        if (cArr2 != null) {
            this._copyBuffer = null;
            this._ioContext.releaseNameCopyBuffer(cArr2);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    public final void _verifyValueWrite(String str) throws IOException {
        char c7;
        int writeValue = this._writeContext.writeValue();
        if (this._cfgPrettyPrinter != null) {
            _verifyPrettyValueWrite(str, writeValue);
            return;
        }
        if (writeValue == 1) {
            c7 = ',';
        } else {
            if (writeValue != 2) {
                if (writeValue != 3) {
                    if (writeValue != 5) {
                        return;
                    }
                    _reportCantWriteValueExpectName(str);
                    return;
                } else {
                    SerializableString serializableString = this._rootValueSeparator;
                    if (serializableString != null) {
                        writeRaw(serializableString.getValue());
                        return;
                    }
                    return;
                }
            }
            c7 = ':';
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = c7;
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
            char[] cArr = this._outputBuffer;
            int i13 = encodeBase64Chunk + 1;
            this._outputTail = i13;
            cArr[encodeBase64Chunk] = TokenParser.ESCAPE;
            this._outputTail = encodeBase64Chunk + 2;
            cArr[i13] = 'n';
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

    public final void _writeFieldName(String str, boolean z6) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(str, z6);
            return;
        }
        if (this._outputTail + 1 >= this._outputEnd) {
            _flushBuffer();
        }
        if (z6) {
            char[] cArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr[i2] = ',';
        }
        if (this._cfgUnqNames) {
            _writeString(str);
            return;
        }
        char[] cArr2 = this._outputBuffer;
        int i7 = this._outputTail;
        this._outputTail = i7 + 1;
        cArr2[i7] = this._quoteChar;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i8 = this._outputTail;
        this._outputTail = i8 + 1;
        cArr3[i8] = this._quoteChar;
    }

    public final void _writePPFieldName(String str, boolean z6) throws IOException {
        if (z6) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (this._cfgUnqNames) {
            _writeString(str);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = this._quoteChar;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i7 = this._outputTail;
        this._outputTail = i7 + 1;
        cArr2[i7] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean canWriteFormattedNumbers() {
        return true;
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
        this._outputHead = 0;
        this._outputTail = 0;
        if (this._writer != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET)) {
                this._writer.close();
            } else if (isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
                this._writer.flush();
            }
        }
        _releaseBuffers();
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
        _flushBuffer();
        if (this._writer == null || !isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
            return;
        }
        this._writer.flush();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int getOutputBuffered() {
        return Math.max(0, this._outputTail - this._outputHead);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public Object getOutputTarget() {
        return this._writer;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBinary(Base64Variant base64Variant, byte[] bArr, int i2, int i7) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i8 = this._outputTail;
        this._outputTail = i8 + 1;
        cArr[i8] = this._quoteChar;
        _writeBinary(base64Variant, bArr, i2, i7 + i2);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i9 = this._outputTail;
        this._outputTail = i9 + 1;
        cArr2[i9] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBoolean(boolean z6) throws IOException {
        int i2;
        _verifyValueWrite("write a boolean value");
        if (this._outputTail + 5 >= this._outputEnd) {
            _flushBuffer();
        }
        int i7 = this._outputTail;
        char[] cArr = this._outputBuffer;
        if (z6) {
            cArr[i7] = 't';
            cArr[i7 + 1] = 'r';
            cArr[i7 + 2] = 'u';
            i2 = i7 + 3;
            cArr[i2] = 'e';
        } else {
            cArr[i7] = 'f';
            cArr[i7 + 1] = 'a';
            cArr[i7 + 2] = 'l';
            cArr[i7 + 3] = 's';
            i2 = i7 + 4;
            cArr[i2] = 'e';
        }
        this._outputTail = i2 + 1;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeEndArray() throws IOException {
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
            char[] cArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr[i2] = ']';
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeEndObject() throws IOException {
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
            char[] cArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr[i2] = '}';
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(String str) throws IOException {
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        _writeFieldName(str, writeFieldName == 1);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNull() throws IOException {
        _verifyValueWrite("write a null");
        _writeNull();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(short s6) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedShort(s6);
            return;
        }
        if (this._outputTail + 6 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputInt(s6, this._outputBuffer, this._outputTail);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str) throws IOException {
        int length = str.length();
        int i2 = this._outputEnd - this._outputTail;
        if (i2 == 0) {
            _flushBuffer();
            i2 = this._outputEnd - this._outputTail;
        }
        if (i2 < length) {
            writeRawLong(str);
        } else {
            str.getChars(0, length, this._outputBuffer, this._outputTail);
            this._outputTail += length;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRawUTF8String(byte[] bArr, int i2, int i7) throws IOException {
        _reportUnsupportedOperation();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartArray() throws IOException {
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
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = '[';
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartObject() throws IOException {
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
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = '{';
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(String str) throws IOException {
        _verifyValueWrite("write a string");
        if (str == null) {
            _writeNull();
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = this._quoteChar;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i7 = this._outputTail;
        this._outputTail = i7 + 1;
        cArr2[i7] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeUTF8String(byte[] bArr, int i2, int i7) throws IOException {
        _reportUnsupportedOperation();
    }

    public WriterBasedJsonGenerator(IOContext iOContext, int i2, ObjectCodec objectCodec, Writer writer, char c7) {
        super(iOContext, i2, objectCodec);
        this._writer = writer;
        char[] allocConcatBuffer = iOContext.allocConcatBuffer();
        this._outputBuffer = allocConcatBuffer;
        this._outputEnd = allocConcatBuffer.length;
        this._quoteChar = c7;
        if (c7 != '\"') {
            this._outputEscapes = CharTypes.get7BitOutputEscapes(c7);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(SerializableString serializableString) throws IOException {
        int writeFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        _writeFieldName(serializableString, writeFieldName == 1);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(int i2) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedInt(i2);
            return;
        }
        if (this._outputTail + 11 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputInt(i2, this._outputBuffer, this._outputTail);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str, int i2, int i7) throws IOException {
        int i8 = this._outputEnd - this._outputTail;
        if (i8 < i7) {
            _flushBuffer();
            i8 = this._outputEnd - this._outputTail;
        }
        if (i8 >= i7) {
            str.getChars(i2, i2 + i7, this._outputBuffer, this._outputTail);
            this._outputTail += i7;
        } else {
            writeRawLong(str.substring(i2, i7 + i2));
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
        char[] cArr = this._outputBuffer;
        int i7 = this._outputTail;
        this._outputTail = i7 + 1;
        cArr[i7] = '[';
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
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = '{';
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i2) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i7 = this._outputTail;
        this._outputTail = i7 + 1;
        cArr[i7] = this._quoteChar;
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
            char[] cArr2 = this._outputBuffer;
            int i8 = this._outputTail;
            this._outputTail = i8 + 1;
            cArr2[i8] = this._quoteChar;
            return i2;
        } catch (Throwable th) {
            this._ioContext.releaseBase64Buffer(allocBase64Buffer);
            throw th;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(Reader reader, int i2) throws IOException {
        _verifyValueWrite("write a string");
        if (reader == null) {
            _reportError("null reader");
        }
        int i7 = i2 >= 0 ? i2 : Log.LOG_LEVEL_OFF;
        if (this._outputTail + i2 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i8 = this._outputTail;
        this._outputTail = i8 + 1;
        cArr[i8] = this._quoteChar;
        char[] _allocateCopyBuffer = _allocateCopyBuffer();
        while (i7 > 0) {
            int read = reader.read(_allocateCopyBuffer, 0, Math.min(i7, _allocateCopyBuffer.length));
            if (read <= 0) {
                break;
            }
            if (this._outputTail + i2 >= this._outputEnd) {
                _flushBuffer();
            }
            _writeString(_allocateCopyBuffer, 0, read);
            i7 -= read;
        }
        if (this._outputTail + i2 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i9 = this._outputTail;
        this._outputTail = i9 + 1;
        cArr2[i9] = this._quoteChar;
        if (i7 <= 0 || i2 < 0) {
            return;
        }
        _reportError("Didn't read enough from reader");
    }

    private void _writeString(char[] cArr, int i2, int i7) throws IOException {
        if (this._characterEscapes != null) {
            _writeStringCustom(cArr, i2, i7);
            return;
        }
        int i8 = this._maximumNonEscapedChar;
        if (i8 != 0) {
            _writeStringASCII(cArr, i2, i7, i8);
            return;
        }
        int i9 = i7 + i2;
        int[] iArr = this._outputEscapes;
        int length = iArr.length;
        while (i2 < i9) {
            int i10 = i2;
            do {
                char c7 = cArr[i10];
                if (c7 < length && iArr[c7] != 0) {
                    break;
                } else {
                    i10++;
                }
            } while (i10 < i9);
            int i11 = i10 - i2;
            if (i11 < 32) {
                if (this._outputTail + i11 > this._outputEnd) {
                    _flushBuffer();
                }
                if (i11 > 0) {
                    System.arraycopy(cArr, i2, this._outputBuffer, this._outputTail, i11);
                    this._outputTail += i11;
                }
            } else {
                _flushBuffer();
                this._writer.write(cArr, i2, i11);
            }
            if (i10 >= i9) {
                return;
            }
            i2 = i10 + 1;
            char c8 = cArr[i10];
            _appendCharacterEscape(c8, iArr[c8]);
        }
    }

    private void _writeString2(int i2) throws IOException {
        int i7;
        int i8 = this._outputTail + i2;
        int[] iArr = this._outputEscapes;
        int length = iArr.length;
        while (this._outputTail < i8) {
            do {
                char[] cArr = this._outputBuffer;
                int i9 = this._outputTail;
                char c7 = cArr[i9];
                if (c7 < length && iArr[c7] != 0) {
                    int i10 = this._outputHead;
                    int i11 = i9 - i10;
                    if (i11 > 0) {
                        this._writer.write(cArr, i10, i11);
                    }
                    char[] cArr2 = this._outputBuffer;
                    int i12 = this._outputTail;
                    this._outputTail = i12 + 1;
                    char c8 = cArr2[i12];
                    _prependOrWriteCharacterEscape(c8, iArr[c8]);
                } else {
                    i7 = i9 + 1;
                    this._outputTail = i7;
                }
            } while (i7 < i8);
            return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001f A[EDGE_INSN: B:10:0x001f->B:11:0x001f BREAK  A[LOOP:1: B:4:0x000e->B:24:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[LOOP:1: B:4:0x000e->B:24:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeStringASCII(char[] r9, int r10, int r11, int r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r8 = this;
            int r11 = r11 + r10
            int[] r0 = r8._outputEscapes
            int r1 = r0.length
            int r2 = r12 + 1
            int r1 = java.lang.Math.min(r1, r2)
            r2 = 0
        Lb:
            if (r10 >= r11) goto L4f
            r3 = r10
        Le:
            char r4 = r9[r3]
            if (r4 >= r1) goto L17
            r2 = r0[r4]
            if (r2 == 0) goto L1b
            goto L1f
        L17:
            if (r4 <= r12) goto L1b
            r2 = -1
            goto L1f
        L1b:
            int r3 = r3 + 1
            if (r3 < r11) goto Le
        L1f:
            int r5 = r3 - r10
            r6 = 32
            if (r5 >= r6) goto L3e
            int r6 = r8._outputTail
            int r6 = r6 + r5
            int r7 = r8._outputEnd
            if (r6 <= r7) goto L2f
            r8._flushBuffer()
        L2f:
            if (r5 <= 0) goto L46
            char[] r6 = r8._outputBuffer
            int r7 = r8._outputTail
            java.lang.System.arraycopy(r9, r10, r6, r7, r5)
            int r10 = r8._outputTail
            int r10 = r10 + r5
            r8._outputTail = r10
            goto L46
        L3e:
            r8._flushBuffer()
            java.io.Writer r6 = r8._writer
            r6.write(r9, r10, r5)
        L46:
            if (r3 < r11) goto L49
            goto L4f
        L49:
            int r10 = r3 + 1
            r8._appendCharacterEscape(r4, r2)
            goto Lb
        L4f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringASCII(char[], int, int, int):void");
    }

    public final void _writePPFieldName(SerializableString serializableString, boolean z6) throws IOException {
        if (z6) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        char[] asQuotedChars = serializableString.asQuotedChars();
        if (this._cfgUnqNames) {
            writeRaw(asQuotedChars, 0, asQuotedChars.length);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = this._quoteChar;
        writeRaw(asQuotedChars, 0, asQuotedChars.length);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i7 = this._outputTail;
        this._outputTail = i7 + 1;
        cArr2[i7] = this._quoteChar;
    }

    public final void _writeFieldName(SerializableString serializableString, boolean z6) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(serializableString, z6);
            return;
        }
        if (this._outputTail + 1 >= this._outputEnd) {
            _flushBuffer();
        }
        if (z6) {
            char[] cArr = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr[i2] = ',';
        }
        if (this._cfgUnqNames) {
            char[] asQuotedChars = serializableString.asQuotedChars();
            writeRaw(asQuotedChars, 0, asQuotedChars.length);
            return;
        }
        char[] cArr2 = this._outputBuffer;
        int i7 = this._outputTail;
        int i8 = i7 + 1;
        this._outputTail = i8;
        cArr2[i7] = this._quoteChar;
        int appendQuoted = serializableString.appendQuoted(cArr2, i8);
        if (appendQuoted < 0) {
            _writeFieldNameTail(serializableString);
            return;
        }
        int i9 = this._outputTail + appendQuoted;
        this._outputTail = i9;
        if (i9 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        cArr3[i10] = this._quoteChar;
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
    public void writeRaw(SerializableString serializableString) throws IOException {
        int appendUnquoted = serializableString.appendUnquoted(this._outputBuffer, this._outputTail);
        if (appendUnquoted < 0) {
            writeRaw(serializableString.getValue());
        } else {
            this._outputTail += appendUnquoted;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0033 A[EDGE_INSN: B:13:0x0033->B:14:0x0033 BREAK  A[LOOP:1: B:7:0x0018->B:27:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[LOOP:1: B:7:0x0018->B:27:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _writeStringCustom(char[] r11, int r12, int r13) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r10 = this;
            int r13 = r13 + r12
            int[] r0 = r10._outputEscapes
            int r1 = r10._maximumNonEscapedChar
            r2 = 1
            if (r1 >= r2) goto Lb
            r1 = 65535(0xffff, float:9.1834E-41)
        Lb:
            int r2 = r0.length
            int r3 = r1 + 1
            int r2 = java.lang.Math.min(r2, r3)
            com.fasterxml.jackson.core.io.CharacterEscapes r3 = r10._characterEscapes
            r4 = 0
        L15:
            if (r12 >= r13) goto L63
            r5 = r12
        L18:
            char r6 = r11[r5]
            if (r6 >= r2) goto L21
            r4 = r0[r6]
            if (r4 == 0) goto L2f
            goto L33
        L21:
            if (r6 <= r1) goto L25
            r4 = -1
            goto L33
        L25:
            com.fasterxml.jackson.core.SerializableString r7 = r3.getEscapeSequence(r6)
            r10._currentEscape = r7
            if (r7 == 0) goto L2f
            r4 = -2
            goto L33
        L2f:
            int r5 = r5 + 1
            if (r5 < r13) goto L18
        L33:
            int r7 = r5 - r12
            r8 = 32
            if (r7 >= r8) goto L52
            int r8 = r10._outputTail
            int r8 = r8 + r7
            int r9 = r10._outputEnd
            if (r8 <= r9) goto L43
            r10._flushBuffer()
        L43:
            if (r7 <= 0) goto L5a
            char[] r8 = r10._outputBuffer
            int r9 = r10._outputTail
            java.lang.System.arraycopy(r11, r12, r8, r9, r7)
            int r12 = r10._outputTail
            int r12 = r12 + r7
            r10._outputTail = r12
            goto L5a
        L52:
            r10._flushBuffer()
            java.io.Writer r8 = r10._writer
            r8.write(r11, r12, r7)
        L5a:
            if (r5 < r13) goto L5d
            goto L63
        L5d:
            int r12 = r5 + 1
            r10._appendCharacterEscape(r6, r4)
            goto L15
        L63:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringCustom(char[], int, int):void");
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
                char[] cArr = this._outputBuffer;
                int i15 = encodeBase64Chunk + 1;
                this._outputTail = i15;
                cArr[encodeBase64Chunk] = TokenParser.ESCAPE;
                this._outputTail = encodeBase64Chunk + 2;
                cArr[i15] = 'n';
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

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char[] cArr, int i2, int i7) throws IOException {
        if (i7 < 32) {
            if (i7 > this._outputEnd - this._outputTail) {
                _flushBuffer();
            }
            System.arraycopy(cArr, i2, this._outputBuffer, this._outputTail, i7);
            this._outputTail += i7;
            return;
        }
        _flushBuffer();
        this._writer.write(cArr, i2, i7);
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
    public void writeRaw(char c7) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = c7;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(double d7) throws IOException {
        if (!this._cfgNumbersAsStrings && (!NumberOutput.notFinite(d7) || !isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS))) {
            _verifyValueWrite("write a number");
            writeRaw(String.valueOf(d7));
        } else {
            writeString(String.valueOf(d7));
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(char[] cArr, int i2, int i7) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i8 = this._outputTail;
        this._outputTail = i8 + 1;
        cArr2[i8] = this._quoteChar;
        _writeString(cArr, i2, i7);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i9 = this._outputTail;
        this._outputTail = i9 + 1;
        cArr3[i9] = this._quoteChar;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(float f3) throws IOException {
        if (!this._cfgNumbersAsStrings && (!NumberOutput.notFinite(f3) || !isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS))) {
            _verifyValueWrite("write a number");
            writeRaw(String.valueOf(f3));
        } else {
            writeString(String.valueOf(f3));
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeString(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        int i7 = i2 + 1;
        this._outputTail = i7;
        cArr[i2] = this._quoteChar;
        int appendQuoted = serializableString.appendQuoted(cArr, i7);
        if (appendQuoted < 0) {
            _writeString2(serializableString);
            return;
        }
        int i8 = this._outputTail + appendQuoted;
        this._outputTail = i8;
        if (i8 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i9 = this._outputTail;
        this._outputTail = i9 + 1;
        cArr2[i9] = this._quoteChar;
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
                char[] cArr = this._outputBuffer;
                int i14 = encodeBase64Chunk + 1;
                this._outputTail = i14;
                cArr[encodeBase64Chunk] = TokenParser.ESCAPE;
                this._outputTail = encodeBase64Chunk + 2;
                cArr[i14] = 'n';
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
    public void writeNumber(String str) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(str);
        } else {
            writeRaw(str);
        }
    }

    private int _prependOrWriteCharacterEscape(char[] cArr, int i2, int i7, char c7, int i8) throws IOException, JsonGenerationException {
        String value;
        int i9;
        if (i8 >= 0) {
            if (i2 > 1 && i2 < i7) {
                int i10 = i2 - 2;
                cArr[i10] = TokenParser.ESCAPE;
                cArr[i2 - 1] = (char) i8;
                return i10;
            }
            char[] cArr2 = this._entityBuffer;
            if (cArr2 == null) {
                cArr2 = _allocateEntityBuffer();
            }
            cArr2[1] = (char) i8;
            this._writer.write(cArr2, 0, 2);
            return i2;
        }
        if (i8 == -2) {
            SerializableString serializableString = this._currentEscape;
            if (serializableString == null) {
                value = this._characterEscapes.getEscapeSequence(c7).getValue();
            } else {
                value = serializableString.getValue();
                this._currentEscape = null;
            }
            int length = value.length();
            if (i2 >= length && i2 < i7) {
                int i11 = i2 - length;
                value.getChars(0, length, cArr, i11);
                return i11;
            }
            this._writer.write(value);
            return i2;
        }
        if (i2 > 5 && i2 < i7) {
            cArr[i2 - 6] = TokenParser.ESCAPE;
            int i12 = i2 - 4;
            cArr[i2 - 5] = 'u';
            if (c7 > 255) {
                int i13 = c7 >> '\b';
                int i14 = i2 - 3;
                char[] cArr3 = HEX_CHARS;
                cArr[i12] = cArr3[(i13 & 255) >> 4];
                i9 = i2 - 2;
                cArr[i14] = cArr3[i13 & 15];
                c7 = (char) (c7 & 255);
            } else {
                int i15 = i2 - 3;
                cArr[i12] = '0';
                i9 = i2 - 2;
                cArr[i15] = '0';
            }
            char[] cArr4 = HEX_CHARS;
            cArr[i9] = cArr4[c7 >> 4];
            cArr[i9 + 1] = cArr4[c7 & 15];
            return i9 - 4;
        }
        char[] cArr5 = this._entityBuffer;
        if (cArr5 == null) {
            cArr5 = _allocateEntityBuffer();
        }
        this._outputHead = this._outputTail;
        if (c7 > 255) {
            int i16 = c7 >> '\b';
            char[] cArr6 = HEX_CHARS;
            cArr5[10] = cArr6[(i16 & 255) >> 4];
            cArr5[11] = cArr6[i16 & 15];
            cArr5[12] = cArr6[(c7 & 255) >> 4];
            cArr5[13] = cArr6[c7 & 15];
            this._writer.write(cArr5, 8, 6);
            return i2;
        }
        char[] cArr7 = HEX_CHARS;
        cArr5[6] = cArr7[c7 >> 4];
        cArr5[7] = cArr7[c7 & 15];
        this._writer.write(cArr5, 2, 6);
        return i2;
    }
}
