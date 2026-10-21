package com.fasterxml.jackson.core.json.async;

import A.i;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.async.ByteArrayFeeder;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.base.ParserMinimalBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.util.TextBuffer;
import com.fasterxml.jackson.core.util.VersionUtil;
import cz.msebera.android.httpclient.message.TokenParser;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class NonBlockingJsonParser extends NonBlockingJsonParserBase implements ByteArrayFeeder {
    protected byte[] _inputBuffer;
    protected int _origBufferLen;
    private static final int FEAT_MASK_TRAILING_COMMA = JsonParser.Feature.ALLOW_TRAILING_COMMA.getMask();
    private static final int FEAT_MASK_LEADING_ZEROS = JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS.getMask();
    private static final int FEAT_MASK_ALLOW_MISSING = JsonParser.Feature.ALLOW_MISSING_VALUES.getMask();
    private static final int FEAT_MASK_ALLOW_SINGLE_QUOTES = JsonParser.Feature.ALLOW_SINGLE_QUOTES.getMask();
    private static final int FEAT_MASK_ALLOW_UNQUOTED_NAMES = JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES.getMask();
    private static final int FEAT_MASK_ALLOW_JAVA_COMMENTS = JsonParser.Feature.ALLOW_COMMENTS.getMask();
    private static final int FEAT_MASK_ALLOW_YAML_COMMENTS = JsonParser.Feature.ALLOW_YAML_COMMENTS.getMask();
    private static final int[] _icUTF8 = CharTypes.getInputCodeUtf8();
    protected static final int[] _icLatin1 = CharTypes.getInputCodeLatin1();

    public NonBlockingJsonParser(IOContext iOContext, int i2, ByteQuadsCanonicalizer byteQuadsCanonicalizer) {
        super(iOContext, i2, byteQuadsCanonicalizer);
        this._inputBuffer = ParserMinimalBase.NO_BYTES;
    }

    private final int _decodeCharEscape() throws IOException {
        return this._inputEnd - this._inputPtr < 5 ? _decodeSplitEscaped(0, -1) : _decodeFastCharEscape();
    }

    private final int _decodeFastCharEscape() throws IOException {
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        int i7 = i2 + 1;
        this._inputPtr = i7;
        byte b7 = bArr[i2];
        if (b7 == 34 || b7 == 47 || b7 == 92) {
            return (char) b7;
        }
        if (b7 == 98) {
            return 8;
        }
        if (b7 == 102) {
            return 12;
        }
        if (b7 == 110) {
            return 10;
        }
        if (b7 == 114) {
            return 13;
        }
        if (b7 == 116) {
            return 9;
        }
        if (b7 != 117) {
            return _handleUnrecognizedCharacterEscape((char) b7);
        }
        this._inputPtr = i2 + 2;
        byte b8 = bArr[i7];
        int charToHex = CharTypes.charToHex(b8);
        if (charToHex >= 0) {
            byte[] bArr2 = this._inputBuffer;
            int i8 = this._inputPtr;
            this._inputPtr = i8 + 1;
            b8 = bArr2[i8];
            int charToHex2 = CharTypes.charToHex(b8);
            if (charToHex2 >= 0) {
                int i9 = (charToHex << 4) | charToHex2;
                byte[] bArr3 = this._inputBuffer;
                int i10 = this._inputPtr;
                this._inputPtr = i10 + 1;
                byte b9 = bArr3[i10];
                int charToHex3 = CharTypes.charToHex(b9);
                if (charToHex3 >= 0) {
                    int i11 = (i9 << 4) | charToHex3;
                    byte[] bArr4 = this._inputBuffer;
                    int i12 = this._inputPtr;
                    this._inputPtr = i12 + 1;
                    b9 = bArr4[i12];
                    int charToHex4 = CharTypes.charToHex(b9);
                    if (charToHex4 >= 0) {
                        return (i11 << 4) | charToHex4;
                    }
                }
                b8 = b9;
            }
        }
        _reportUnexpectedChar(b8 & 255, "expected a hex-digit for character escape sequence");
        return -1;
    }

    private int _decodeSplitEscaped(int i2, int i7) throws IOException {
        int i8 = this._inputPtr;
        int i9 = this._inputEnd;
        if (i8 >= i9) {
            this._quoted32 = i2;
            this._quotedDigits = i7;
            return -1;
        }
        byte[] bArr = this._inputBuffer;
        int i10 = i8 + 1;
        this._inputPtr = i10;
        byte b7 = bArr[i8];
        if (i7 == -1) {
            if (b7 == 34 || b7 == 47 || b7 == 92) {
                return b7;
            }
            if (b7 == 98) {
                return 8;
            }
            if (b7 == 102) {
                return 12;
            }
            if (b7 == 110) {
                return 10;
            }
            if (b7 == 114) {
                return 13;
            }
            if (b7 == 116) {
                return 9;
            }
            if (b7 != 117) {
                return _handleUnrecognizedCharacterEscape((char) b7);
            }
            i7 = 0;
            if (i10 >= i9) {
                this._quotedDigits = 0;
                this._quoted32 = 0;
                return -1;
            }
            this._inputPtr = i8 + 2;
            b7 = bArr[i10];
        }
        int i11 = b7 & 255;
        while (true) {
            int charToHex = CharTypes.charToHex(i11);
            if (charToHex < 0) {
                _reportUnexpectedChar(i11 & 255, "expected a hex-digit for character escape sequence");
            }
            i2 = (i2 << 4) | charToHex;
            i7++;
            if (i7 == 4) {
                return i2;
            }
            int i12 = this._inputPtr;
            if (i12 >= this._inputEnd) {
                this._quotedDigits = i7;
                this._quoted32 = i2;
                return -1;
            }
            byte[] bArr2 = this._inputBuffer;
            this._inputPtr = i12 + 1;
            i11 = bArr2[i12] & 255;
        }
    }

    private final boolean _decodeSplitMultiByte(int i2, int i7, boolean z6) throws IOException {
        if (i7 == 1) {
            int _decodeSplitEscaped = _decodeSplitEscaped(0, -1);
            if (_decodeSplitEscaped < 0) {
                this._minorState = 41;
                return false;
            }
            this._textBuffer.append((char) _decodeSplitEscaped);
            return true;
        }
        if (i7 == 2) {
            if (!z6) {
                this._minorState = 42;
                this._pending32 = i2;
                return false;
            }
            byte[] bArr = this._inputBuffer;
            int i8 = this._inputPtr;
            this._inputPtr = i8 + 1;
            this._textBuffer.append((char) _decodeUTF8_2(i2, bArr[i8]));
            return true;
        }
        if (i7 == 3) {
            int i9 = i2 & 15;
            if (z6) {
                byte[] bArr2 = this._inputBuffer;
                int i10 = this._inputPtr;
                this._inputPtr = i10 + 1;
                return _decodeSplitUTF8_3(i9, 1, bArr2[i10]);
            }
            this._minorState = 43;
            this._pending32 = i9;
            this._pendingBytes = 1;
            return false;
        }
        if (i7 != 4) {
            if (i2 < 32) {
                _throwUnquotedSpace(i2, "string value");
            } else {
                _reportInvalidChar(i2);
            }
            this._textBuffer.append((char) i2);
            return true;
        }
        int i11 = i2 & 7;
        if (z6) {
            byte[] bArr3 = this._inputBuffer;
            int i12 = this._inputPtr;
            this._inputPtr = i12 + 1;
            return _decodeSplitUTF8_4(i11, 1, bArr3[i12]);
        }
        this._pending32 = i11;
        this._pendingBytes = 1;
        this._minorState = 44;
        return false;
    }

    private final boolean _decodeSplitUTF8_3(int i2, int i7, int i8) throws IOException {
        if (i7 == 1) {
            if ((i8 & 192) != 128) {
                _reportInvalidOther(i8 & 255, this._inputPtr);
            }
            i2 = (i2 << 6) | (i8 & 63);
            int i9 = this._inputPtr;
            if (i9 >= this._inputEnd) {
                this._minorState = 43;
                this._pending32 = i2;
                this._pendingBytes = 2;
                return false;
            }
            byte[] bArr = this._inputBuffer;
            this._inputPtr = i9 + 1;
            i8 = bArr[i9];
        }
        if ((i8 & 192) != 128) {
            _reportInvalidOther(i8 & 255, this._inputPtr);
        }
        this._textBuffer.append((char) ((i2 << 6) | (i8 & 63)));
        return true;
    }

    private final boolean _decodeSplitUTF8_4(int i2, int i7, int i8) throws IOException {
        if (i7 == 1) {
            if ((i8 & 192) != 128) {
                _reportInvalidOther(i8 & 255, this._inputPtr);
            }
            i2 = (i2 << 6) | (i8 & 63);
            int i9 = this._inputPtr;
            if (i9 >= this._inputEnd) {
                this._minorState = 44;
                this._pending32 = i2;
                this._pendingBytes = 2;
                return false;
            }
            byte[] bArr = this._inputBuffer;
            this._inputPtr = i9 + 1;
            i8 = bArr[i9];
            i7 = 2;
        }
        if (i7 == 2) {
            if ((i8 & 192) != 128) {
                _reportInvalidOther(i8 & 255, this._inputPtr);
            }
            i2 = (i2 << 6) | (i8 & 63);
            int i10 = this._inputPtr;
            if (i10 >= this._inputEnd) {
                this._minorState = 44;
                this._pending32 = i2;
                this._pendingBytes = 3;
                return false;
            }
            byte[] bArr2 = this._inputBuffer;
            this._inputPtr = i10 + 1;
            i8 = bArr2[i10];
        }
        if ((i8 & 192) != 128) {
            _reportInvalidOther(i8 & 255, this._inputPtr);
        }
        int i11 = ((i2 << 6) | (i8 & 63)) - 65536;
        this._textBuffer.append((char) ((i11 >> 10) | GeneratorBase.SURR1_FIRST));
        this._textBuffer.append((char) ((i11 & AnalyticsListener.EVENT_DRM_KEYS_LOADED) | GeneratorBase.SURR2_FIRST));
        return true;
    }

    private final int _decodeUTF8_2(int i2, int i7) throws IOException {
        if ((i7 & 192) != 128) {
            _reportInvalidOther(i7 & 255, this._inputPtr);
        }
        return ((i2 & 31) << 6) | (i7 & 63);
    }

    private final int _decodeUTF8_3(int i2, int i7, int i8) throws IOException {
        int i9 = i2 & 15;
        if ((i7 & 192) != 128) {
            _reportInvalidOther(i7 & 255, this._inputPtr);
        }
        int i10 = (i9 << 6) | (i7 & 63);
        if ((i8 & 192) != 128) {
            _reportInvalidOther(i8 & 255, this._inputPtr);
        }
        return (i10 << 6) | (i8 & 63);
    }

    private final int _decodeUTF8_4(int i2, int i7, int i8, int i9) throws IOException {
        if ((i7 & 192) != 128) {
            _reportInvalidOther(i7 & 255, this._inputPtr);
        }
        int i10 = ((i2 & 7) << 6) | (i7 & 63);
        if ((i8 & 192) != 128) {
            _reportInvalidOther(i8 & 255, this._inputPtr);
        }
        int i11 = (i10 << 6) | (i8 & 63);
        if ((i9 & 192) != 128) {
            _reportInvalidOther(i9 & 255, this._inputPtr);
        }
        return ((i11 << 6) | (i9 & 63)) - 65536;
    }

    private final String _fastParseName() throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i2 = this._inputPtr;
        int i7 = i2 + 1;
        int i8 = bArr[i2] & 255;
        if (iArr[i8] != 0) {
            if (i8 != 34) {
                return null;
            }
            this._inputPtr = i7;
            return "";
        }
        int i9 = i2 + 2;
        int i10 = bArr[i7] & 255;
        if (iArr[i10] != 0) {
            if (i10 != 34) {
                return null;
            }
            this._inputPtr = i9;
            return _findName(i8, 1);
        }
        int i11 = i10 | (i8 << 8);
        int i12 = i2 + 3;
        int i13 = bArr[i9] & 255;
        if (iArr[i13] != 0) {
            if (i13 != 34) {
                return null;
            }
            this._inputPtr = i12;
            return _findName(i11, 2);
        }
        int i14 = (i11 << 8) | i13;
        int i15 = i2 + 4;
        int i16 = bArr[i12] & 255;
        if (iArr[i16] != 0) {
            if (i16 != 34) {
                return null;
            }
            this._inputPtr = i15;
            return _findName(i14, 3);
        }
        int i17 = (i14 << 8) | i16;
        int i18 = i2 + 5;
        int i19 = bArr[i15] & 255;
        if (iArr[i19] == 0) {
            this._quad1 = i17;
            return _parseMediumName(i18, i19);
        }
        if (i19 != 34) {
            return null;
        }
        this._inputPtr = i18;
        return _findName(i17, 4);
    }

    private JsonToken _finishAposName(int i2, int i7, int i8) throws IOException {
        int[] iArr = this._quadBuffer;
        int[] iArr2 = _icLatin1;
        while (true) {
            int i9 = this._inputPtr;
            if (i9 >= this._inputEnd) {
                this._quadLength = i2;
                this._pending32 = i7;
                this._pendingBytes = i8;
                this._minorState = 9;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this._currToken = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this._inputBuffer;
            this._inputPtr = i9 + 1;
            int i10 = bArr[i9] & 255;
            if (i10 == 39) {
                if (i8 > 0) {
                    if (i2 >= iArr.length) {
                        iArr = ParserBase.growArrayBy(iArr, iArr.length);
                        this._quadBuffer = iArr;
                    }
                    iArr[i2] = NonBlockingJsonParserBase._padLastQuad(i7, i8);
                    i2++;
                } else if (i2 == 0) {
                    return _fieldComplete("");
                }
                String findName = this._symbols.findName(iArr, i2);
                if (findName == null) {
                    findName = _addName(iArr, i2, i8);
                }
                return _fieldComplete(findName);
            }
            if (i10 != 34 && iArr2[i10] != 0) {
                if (i10 != 92) {
                    _throwUnquotedSpace(i10, "name");
                } else {
                    i10 = _decodeCharEscape();
                    if (i10 < 0) {
                        this._minorState = 8;
                        this._minorStateAfterSplit = 9;
                        this._quadLength = i2;
                        this._pending32 = i7;
                        this._pendingBytes = i8;
                        JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
                        this._currToken = jsonToken2;
                        return jsonToken2;
                    }
                }
                if (i10 > 127) {
                    int i11 = 0;
                    if (i8 >= 4) {
                        if (i2 >= iArr.length) {
                            iArr = ParserBase.growArrayBy(iArr, iArr.length);
                            this._quadBuffer = iArr;
                        }
                        iArr[i2] = i7;
                        i2++;
                        i7 = 0;
                        i8 = 0;
                    }
                    if (i10 < 2048) {
                        i7 = (i7 << 8) | (i10 >> 6) | 192;
                        i8++;
                    } else {
                        int i12 = (i7 << 8) | (i10 >> 12) | 224;
                        int i13 = i8 + 1;
                        if (i13 >= 4) {
                            if (i2 >= iArr.length) {
                                iArr = ParserBase.growArrayBy(iArr, iArr.length);
                                this._quadBuffer = iArr;
                            }
                            iArr[i2] = i12;
                            i2++;
                            i13 = 0;
                        } else {
                            i11 = i12;
                        }
                        i7 = (i11 << 8) | ((i10 >> 6) & 63) | 128;
                        i8 = i13 + 1;
                    }
                    i10 = (i10 & 63) | 128;
                }
            }
            if (i8 < 4) {
                i8++;
                i7 = (i7 << 8) | i10;
            } else {
                if (i2 >= iArr.length) {
                    iArr = ParserBase.growArrayBy(iArr, iArr.length);
                    this._quadBuffer = iArr;
                }
                iArr[i2] = i7;
                i2++;
                i7 = i10;
                i8 = 1;
            }
        }
    }

    private final JsonToken _finishAposString() throws IOException {
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        char[] bufferWithoutReset = this._textBuffer.getBufferWithoutReset();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        int i2 = this._inputPtr;
        int i7 = this._inputEnd - 5;
        while (i2 < this._inputEnd) {
            int i8 = 0;
            if (currentSegmentSize >= bufferWithoutReset.length) {
                bufferWithoutReset = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            }
            int min = Math.min(this._inputEnd, (bufferWithoutReset.length - currentSegmentSize) + i2);
            while (true) {
                if (i2 < min) {
                    int i9 = i2 + 1;
                    int i10 = bArr[i2] & 255;
                    int i11 = iArr[i10];
                    if (i11 == 0 || i10 == 34) {
                        if (i10 == 39) {
                            this._inputPtr = i9;
                            this._textBuffer.setCurrentLength(currentSegmentSize);
                            return _valueComplete(JsonToken.VALUE_STRING);
                        }
                        bufferWithoutReset[currentSegmentSize] = (char) i10;
                        currentSegmentSize++;
                        i2 = i9;
                    } else if (i9 >= i7) {
                        this._inputPtr = i9;
                        this._textBuffer.setCurrentLength(currentSegmentSize);
                        if (!_decodeSplitMultiByte(i10, iArr[i10], i9 < this._inputEnd)) {
                            this._minorStateAfterSplit = 45;
                            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                            this._currToken = jsonToken;
                            return jsonToken;
                        }
                        bufferWithoutReset = this._textBuffer.getBufferWithoutReset();
                        currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
                        i2 = this._inputPtr;
                    } else {
                        if (i11 == 1) {
                            this._inputPtr = i9;
                            i10 = _decodeFastCharEscape();
                            i2 = this._inputPtr;
                        } else if (i11 == 2) {
                            i2 += 2;
                            i10 = _decodeUTF8_2(i10, this._inputBuffer[i9]);
                        } else if (i11 == 3) {
                            byte[] bArr2 = this._inputBuffer;
                            int i12 = i2 + 2;
                            i2 += 3;
                            i10 = _decodeUTF8_3(i10, bArr2[i9], bArr2[i12]);
                        } else if (i11 != 4) {
                            if (i10 < 32) {
                                _throwUnquotedSpace(i10, "string value");
                            } else {
                                _reportInvalidChar(i10);
                            }
                            i2 = i9;
                        } else {
                            byte[] bArr3 = this._inputBuffer;
                            byte b7 = bArr3[i9];
                            int i13 = i2 + 3;
                            byte b8 = bArr3[i2 + 2];
                            i2 += 4;
                            int _decodeUTF8_4 = _decodeUTF8_4(i10, b7, b8, bArr3[i13]);
                            int i14 = currentSegmentSize + 1;
                            bufferWithoutReset[currentSegmentSize] = (char) ((_decodeUTF8_4 >> 10) | GeneratorBase.SURR1_FIRST);
                            if (i14 >= bufferWithoutReset.length) {
                                bufferWithoutReset = this._textBuffer.finishCurrentSegment();
                                currentSegmentSize = 0;
                            } else {
                                currentSegmentSize = i14;
                            }
                            i10 = (_decodeUTF8_4 & AnalyticsListener.EVENT_DRM_KEYS_LOADED) | GeneratorBase.SURR2_FIRST;
                        }
                        if (currentSegmentSize >= bufferWithoutReset.length) {
                            bufferWithoutReset = this._textBuffer.finishCurrentSegment();
                        } else {
                            i8 = currentSegmentSize;
                        }
                        currentSegmentSize = i8 + 1;
                        bufferWithoutReset[i8] = (char) i10;
                    }
                }
            }
        }
        this._inputPtr = i2;
        this._minorState = 45;
        this._textBuffer.setCurrentLength(currentSegmentSize);
        JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken2;
        return jsonToken2;
    }

    private final JsonToken _finishBOM(int i2) throws IOException {
        while (true) {
            int i7 = this._inputPtr;
            if (i7 >= this._inputEnd) {
                this._pending32 = i2;
                this._minorState = 1;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this._currToken = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this._inputBuffer;
            this._inputPtr = i7 + 1;
            int i8 = bArr[i7] & 255;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        this._currInputProcessed -= 3;
                        return _startDocument(i8);
                    }
                } else if (i8 != 191) {
                    _reportError("Unexpected byte 0x%02x following 0xEF 0xBB; should get 0xBF as third byte of UTF-8 BOM", Integer.valueOf(i8));
                }
            } else if (i8 != 187) {
                _reportError("Unexpected byte 0x%02x following 0xEF; should get 0xBB as second byte UTF-8 BOM", Integer.valueOf(i8));
            }
            i2++;
        }
    }

    private final JsonToken _finishCComment(int i2, boolean z6) throws IOException {
        while (true) {
            int i7 = this._inputPtr;
            if (i7 >= this._inputEnd) {
                this._minorState = z6 ? 52 : 53;
                this._pending32 = i2;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this._currToken = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this._inputBuffer;
            int i8 = i7 + 1;
            this._inputPtr = i8;
            int i9 = bArr[i7] & 255;
            if (i9 < 32) {
                if (i9 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i8;
                } else if (i9 == 13) {
                    this._currInputRowAlt++;
                    this._currInputRowStart = i8;
                } else if (i9 != 9) {
                    _throwInvalidSpace(i9);
                }
            } else if (i9 == 42) {
                z6 = true;
            } else if (i9 == 47 && z6) {
                return _startAfterComment(i2);
            }
            z6 = false;
        }
    }

    private final JsonToken _finishCppComment(int i2) throws IOException {
        while (true) {
            int i7 = this._inputPtr;
            if (i7 >= this._inputEnd) {
                this._minorState = 54;
                this._pending32 = i2;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this._currToken = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this._inputBuffer;
            int i8 = i7 + 1;
            this._inputPtr = i8;
            int i9 = bArr[i7] & 255;
            if (i9 < 32) {
                if (i9 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i8;
                    break;
                }
                if (i9 == 13) {
                    this._currInputRowAlt++;
                    this._currInputRowStart = i8;
                    break;
                }
                if (i9 != 9) {
                    _throwInvalidSpace(i9);
                }
            }
        }
        return _startAfterComment(i2);
    }

    private final JsonToken _finishHashComment(int i2) throws IOException {
        if ((this._features & FEAT_MASK_ALLOW_YAML_COMMENTS) == 0) {
            _reportUnexpectedChar(35, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_YAML_COMMENTS' not enabled for parser)");
        }
        while (true) {
            int i7 = this._inputPtr;
            if (i7 >= this._inputEnd) {
                this._minorState = 55;
                this._pending32 = i2;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this._currToken = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this._inputBuffer;
            int i8 = i7 + 1;
            this._inputPtr = i8;
            int i9 = bArr[i7] & 255;
            if (i9 < 32) {
                if (i9 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i8;
                    break;
                }
                if (i9 == 13) {
                    this._currInputRowAlt++;
                    this._currInputRowStart = i8;
                    break;
                }
                if (i9 != 9) {
                    _throwInvalidSpace(i9);
                }
            }
        }
        return _startAfterComment(i2);
    }

    private final JsonToken _finishRegularString() throws IOException {
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        char[] bufferWithoutReset = this._textBuffer.getBufferWithoutReset();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        int i2 = this._inputPtr;
        int i7 = this._inputEnd - 5;
        while (i2 < this._inputEnd) {
            int i8 = 0;
            if (currentSegmentSize >= bufferWithoutReset.length) {
                bufferWithoutReset = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            }
            int min = Math.min(this._inputEnd, (bufferWithoutReset.length - currentSegmentSize) + i2);
            while (true) {
                if (i2 < min) {
                    int i9 = i2 + 1;
                    int i10 = bArr[i2] & 255;
                    int i11 = iArr[i10];
                    if (i11 == 0) {
                        bufferWithoutReset[currentSegmentSize] = (char) i10;
                        currentSegmentSize++;
                        i2 = i9;
                    } else {
                        if (i10 == 34) {
                            this._inputPtr = i9;
                            this._textBuffer.setCurrentLength(currentSegmentSize);
                            return _valueComplete(JsonToken.VALUE_STRING);
                        }
                        if (i9 >= i7) {
                            this._inputPtr = i9;
                            this._textBuffer.setCurrentLength(currentSegmentSize);
                            if (!_decodeSplitMultiByte(i10, iArr[i10], i9 < this._inputEnd)) {
                                this._minorStateAfterSplit = 40;
                                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                                this._currToken = jsonToken;
                                return jsonToken;
                            }
                            bufferWithoutReset = this._textBuffer.getBufferWithoutReset();
                            currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
                            i2 = this._inputPtr;
                        } else {
                            if (i11 == 1) {
                                this._inputPtr = i9;
                                i10 = _decodeFastCharEscape();
                                i2 = this._inputPtr;
                            } else if (i11 == 2) {
                                i2 += 2;
                                i10 = _decodeUTF8_2(i10, this._inputBuffer[i9]);
                            } else if (i11 == 3) {
                                byte[] bArr2 = this._inputBuffer;
                                int i12 = i2 + 2;
                                i2 += 3;
                                i10 = _decodeUTF8_3(i10, bArr2[i9], bArr2[i12]);
                            } else if (i11 != 4) {
                                if (i10 < 32) {
                                    _throwUnquotedSpace(i10, "string value");
                                } else {
                                    _reportInvalidChar(i10);
                                }
                                i2 = i9;
                            } else {
                                byte[] bArr3 = this._inputBuffer;
                                byte b7 = bArr3[i9];
                                int i13 = i2 + 3;
                                byte b8 = bArr3[i2 + 2];
                                i2 += 4;
                                int _decodeUTF8_4 = _decodeUTF8_4(i10, b7, b8, bArr3[i13]);
                                int i14 = currentSegmentSize + 1;
                                bufferWithoutReset[currentSegmentSize] = (char) ((_decodeUTF8_4 >> 10) | GeneratorBase.SURR1_FIRST);
                                if (i14 >= bufferWithoutReset.length) {
                                    bufferWithoutReset = this._textBuffer.finishCurrentSegment();
                                    currentSegmentSize = 0;
                                } else {
                                    currentSegmentSize = i14;
                                }
                                i10 = (_decodeUTF8_4 & AnalyticsListener.EVENT_DRM_KEYS_LOADED) | GeneratorBase.SURR2_FIRST;
                            }
                            if (currentSegmentSize >= bufferWithoutReset.length) {
                                bufferWithoutReset = this._textBuffer.finishCurrentSegment();
                            } else {
                                i8 = currentSegmentSize;
                            }
                            currentSegmentSize = i8 + 1;
                            bufferWithoutReset[i8] = (char) i10;
                        }
                    }
                }
            }
        }
        this._inputPtr = i2;
        this._minorState = 40;
        this._textBuffer.setCurrentLength(currentSegmentSize);
        JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
        this._currToken = jsonToken2;
        return jsonToken2;
    }

    private JsonToken _finishUnquotedName(int i2, int i7, int i8) throws IOException {
        int[] iArr = this._quadBuffer;
        int[] inputCodeUtf8JsNames = CharTypes.getInputCodeUtf8JsNames();
        while (true) {
            int i9 = this._inputPtr;
            if (i9 >= this._inputEnd) {
                this._quadLength = i2;
                this._pending32 = i7;
                this._pendingBytes = i8;
                this._minorState = 10;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this._currToken = jsonToken;
                return jsonToken;
            }
            int i10 = this._inputBuffer[i9] & 255;
            if (inputCodeUtf8JsNames[i10] != 0) {
                if (i8 > 0) {
                    if (i2 >= iArr.length) {
                        iArr = ParserBase.growArrayBy(iArr, iArr.length);
                        this._quadBuffer = iArr;
                    }
                    iArr[i2] = i7;
                    i2++;
                }
                String findName = this._symbols.findName(iArr, i2);
                if (findName == null) {
                    findName = _addName(iArr, i2, i8);
                }
                return _fieldComplete(findName);
            }
            this._inputPtr = i9 + 1;
            if (i8 < 4) {
                i8++;
                i7 = (i7 << 8) | i10;
            } else {
                if (i2 >= iArr.length) {
                    iArr = ParserBase.growArrayBy(iArr, iArr.length);
                    this._quadBuffer = iArr;
                }
                iArr[i2] = i7;
                i8 = 1;
                i2++;
                i7 = i10;
            }
        }
    }

    private JsonToken _handleOddName(int i2) throws IOException {
        if (i2 != 35) {
            if (i2 != 39) {
                if (i2 == 47) {
                    return _startSlashComment(4);
                }
                if (i2 == 93) {
                    return _closeArrayScope();
                }
            } else if ((this._features & FEAT_MASK_ALLOW_SINGLE_QUOTES) != 0) {
                return _finishAposName(0, 0, 0);
            }
        } else if ((this._features & FEAT_MASK_ALLOW_YAML_COMMENTS) != 0) {
            return _finishHashComment(4);
        }
        if ((this._features & FEAT_MASK_ALLOW_UNQUOTED_NAMES) == 0) {
            _reportUnexpectedChar((char) i2, "was expecting double-quote to start field name");
        }
        if (CharTypes.getInputCodeUtf8JsNames()[i2] != 0) {
            _reportUnexpectedChar(i2, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        return _finishUnquotedName(0, i2, 1);
    }

    private final JsonToken _parseEscapedName(int i2, int i7, int i8) throws IOException {
        int i9;
        int[] iArr = this._quadBuffer;
        int[] iArr2 = _icLatin1;
        while (true) {
            int i10 = this._inputPtr;
            if (i10 >= this._inputEnd) {
                this._quadLength = i2;
                this._pending32 = i7;
                this._pendingBytes = i8;
                this._minorState = 7;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this._currToken = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this._inputBuffer;
            this._inputPtr = i10 + 1;
            int i11 = bArr[i10] & 255;
            if (iArr2[i11] == 0) {
                if (i8 < 4) {
                    i8++;
                    i7 = (i7 << 8) | i11;
                } else {
                    if (i2 >= iArr.length) {
                        int[] growArrayBy = ParserBase.growArrayBy(iArr, iArr.length);
                        this._quadBuffer = growArrayBy;
                        iArr = growArrayBy;
                    }
                    i9 = i2 + 1;
                    iArr[i2] = i7;
                    i2 = i9;
                    i7 = i11;
                    i8 = 1;
                }
            } else {
                if (i11 == 34) {
                    if (i8 > 0) {
                        if (i2 >= iArr.length) {
                            iArr = ParserBase.growArrayBy(iArr, iArr.length);
                            this._quadBuffer = iArr;
                        }
                        iArr[i2] = NonBlockingJsonParserBase._padLastQuad(i7, i8);
                        i2++;
                    } else if (i2 == 0) {
                        return _fieldComplete("");
                    }
                    String findName = this._symbols.findName(iArr, i2);
                    if (findName == null) {
                        findName = _addName(iArr, i2, i8);
                    }
                    return _fieldComplete(findName);
                }
                if (i11 != 92) {
                    _throwUnquotedSpace(i11, "name");
                } else {
                    i11 = _decodeCharEscape();
                    if (i11 < 0) {
                        this._minorState = 8;
                        this._minorStateAfterSplit = 7;
                        this._quadLength = i2;
                        this._pending32 = i7;
                        this._pendingBytes = i8;
                        JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
                        this._currToken = jsonToken2;
                        return jsonToken2;
                    }
                }
                if (i2 >= iArr.length) {
                    iArr = ParserBase.growArrayBy(iArr, iArr.length);
                    this._quadBuffer = iArr;
                }
                if (i11 > 127) {
                    int i12 = 0;
                    if (i8 >= 4) {
                        iArr[i2] = i7;
                        i2++;
                        i7 = 0;
                        i8 = 0;
                    }
                    if (i11 < 2048) {
                        i7 = (i7 << 8) | (i11 >> 6) | 192;
                        i8++;
                    } else {
                        int i13 = (i7 << 8) | (i11 >> 12) | 224;
                        int i14 = i8 + 1;
                        if (i14 >= 4) {
                            iArr[i2] = i13;
                            i2++;
                            i14 = 0;
                        } else {
                            i12 = i13;
                        }
                        i7 = (i12 << 8) | ((i11 >> 6) & 63) | 128;
                        i8 = i14 + 1;
                    }
                    i11 = (i11 & 63) | 128;
                }
                if (i8 < 4) {
                    i8++;
                    i7 = (i7 << 8) | i11;
                } else {
                    i9 = i2 + 1;
                    iArr[i2] = i7;
                    i2 = i9;
                    i7 = i11;
                    i8 = 1;
                }
            }
        }
    }

    private final String _parseMediumName(int i2, int i7) throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i8 = i2 + 1;
        int i9 = bArr[i2] & 255;
        if (iArr[i9] != 0) {
            if (i9 != 34) {
                return null;
            }
            this._inputPtr = i8;
            return _findName(this._quad1, i7, 1);
        }
        int i10 = (i7 << 8) | i9;
        int i11 = i2 + 2;
        int i12 = bArr[i8] & 255;
        if (iArr[i12] != 0) {
            if (i12 != 34) {
                return null;
            }
            this._inputPtr = i11;
            return _findName(this._quad1, i10, 2);
        }
        int i13 = (i10 << 8) | i12;
        int i14 = i2 + 3;
        int i15 = bArr[i11] & 255;
        if (iArr[i15] != 0) {
            if (i15 != 34) {
                return null;
            }
            this._inputPtr = i14;
            return _findName(this._quad1, i13, 3);
        }
        int i16 = (i13 << 8) | i15;
        int i17 = i2 + 4;
        int i18 = bArr[i14] & 255;
        if (iArr[i18] == 0) {
            return _parseMediumName2(i17, i18, i16);
        }
        if (i18 != 34) {
            return null;
        }
        this._inputPtr = i17;
        return _findName(this._quad1, i16, 4);
    }

    private final String _parseMediumName2(int i2, int i7, int i8) throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i9 = i2 + 1;
        int i10 = bArr[i2] & 255;
        if (iArr[i10] != 0) {
            if (i10 != 34) {
                return null;
            }
            this._inputPtr = i9;
            return _findName(this._quad1, i8, i7, 1);
        }
        int i11 = (i7 << 8) | i10;
        int i12 = i2 + 2;
        int i13 = bArr[i9] & 255;
        if (iArr[i13] != 0) {
            if (i13 != 34) {
                return null;
            }
            this._inputPtr = i12;
            return _findName(this._quad1, i8, i11, 2);
        }
        int i14 = (i11 << 8) | i13;
        int i15 = i2 + 3;
        int i16 = bArr[i12] & 255;
        if (iArr[i16] != 0) {
            if (i16 != 34) {
                return null;
            }
            this._inputPtr = i15;
            return _findName(this._quad1, i8, i14, 3);
        }
        int i17 = (i14 << 8) | i16;
        int i18 = i2 + 4;
        if ((bArr[i15] & 255) != 34) {
            return null;
        }
        this._inputPtr = i18;
        return _findName(this._quad1, i8, i17, 4);
    }

    private final int _skipWS(int i2) throws IOException {
        do {
            if (i2 != 32) {
                if (i2 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i2 == 13) {
                    this._currInputRowAlt++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i2 != 9) {
                    _throwInvalidSpace(i2);
                }
            }
            int i7 = this._inputPtr;
            if (i7 >= this._inputEnd) {
                this._currToken = JsonToken.NOT_AVAILABLE;
                return 0;
            }
            byte[] bArr = this._inputBuffer;
            this._inputPtr = i7 + 1;
            i2 = bArr[i7] & 255;
        } while (i2 <= 32);
        return i2;
    }

    private final JsonToken _startAfterComment(int i2) throws IOException {
        int i7 = this._inputPtr;
        if (i7 >= this._inputEnd) {
            this._minorState = i2;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        byte[] bArr = this._inputBuffer;
        this._inputPtr = i7 + 1;
        int i8 = bArr[i7] & 255;
        if (i2 == 4) {
            return _startFieldName(i8);
        }
        if (i2 == 5) {
            return _startFieldNameAfterComma(i8);
        }
        switch (i2) {
            case 12:
                return _startValue(i8);
            case 13:
                return _startValueExpectComma(i8);
            case 14:
                return _startValueExpectColon(i8);
            case 15:
                return _startValueAfterComma(i8);
            default:
                VersionUtil.throwInternal();
                return null;
        }
    }

    private final JsonToken _startDocument(int i2) throws IOException {
        int i7 = i2 & 255;
        if (i7 == 239 && this._minorState != 1) {
            return _finishBOM(1);
        }
        while (i7 <= 32) {
            if (i7 != 32) {
                if (i7 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i7 == 13) {
                    this._currInputRowAlt++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i7 != 9) {
                    _throwInvalidSpace(i7);
                }
            }
            int i8 = this._inputPtr;
            if (i8 >= this._inputEnd) {
                this._minorState = 3;
                if (this._closed) {
                    return null;
                }
                return this._endOfInput ? _eofAsNextToken() : JsonToken.NOT_AVAILABLE;
            }
            byte[] bArr = this._inputBuffer;
            this._inputPtr = i8 + 1;
            i7 = bArr[i8] & 255;
        }
        return _startValue(i7);
    }

    private final JsonToken _startFieldName(int i2) throws IOException {
        String _fastParseName;
        if (i2 > 32 || (i2 = _skipWS(i2)) > 0) {
            _updateTokenLocation();
            return i2 != 34 ? i2 == 125 ? _closeObjectScope() : _handleOddName(i2) : (this._inputPtr + 13 > this._inputEnd || (_fastParseName = _fastParseName()) == null) ? _parseEscapedName(0, 0, 0) : _fieldComplete(_fastParseName);
        }
        this._minorState = 4;
        return this._currToken;
    }

    private final JsonToken _startFieldNameAfterComma(int i2) throws IOException {
        String _fastParseName;
        if (i2 <= 32 && (i2 = _skipWS(i2)) <= 0) {
            this._minorState = 5;
            return this._currToken;
        }
        if (i2 != 44) {
            if (i2 == 125) {
                return _closeObjectScope();
            }
            if (i2 == 35) {
                return _finishHashComment(5);
            }
            if (i2 == 47) {
                return _startSlashComment(5);
            }
            _reportUnexpectedChar(i2, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
        }
        int i7 = this._inputPtr;
        if (i7 >= this._inputEnd) {
            this._minorState = 4;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        int i8 = this._inputBuffer[i7];
        this._inputPtr = i7 + 1;
        if (i8 > 32 || (i8 = _skipWS(i8)) > 0) {
            _updateTokenLocation();
            return i8 != 34 ? (i8 != 125 || (this._features & FEAT_MASK_TRAILING_COMMA) == 0) ? _handleOddName(i8) : _closeObjectScope() : (this._inputPtr + 13 > this._inputEnd || (_fastParseName = _fastParseName()) == null) ? _parseEscapedName(0, 0, 0) : _fieldComplete(_fastParseName);
        }
        this._minorState = 4;
        return this._currToken;
    }

    private final JsonToken _startSlashComment(int i2) throws IOException {
        if ((this._features & FEAT_MASK_ALLOW_JAVA_COMMENTS) == 0) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        int i7 = this._inputPtr;
        if (i7 >= this._inputEnd) {
            this._pending32 = i2;
            this._minorState = 51;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        byte[] bArr = this._inputBuffer;
        this._inputPtr = i7 + 1;
        byte b7 = bArr[i7];
        if (b7 == 42) {
            return _finishCComment(i2, false);
        }
        if (b7 == 47) {
            return _finishCppComment(i2);
        }
        _reportUnexpectedChar(b7 & 255, "was expecting either '*' or '/' for a comment");
        return null;
    }

    private final JsonToken _startValue(int i2) throws IOException {
        if (i2 <= 32 && (i2 = _skipWS(i2)) <= 0) {
            this._minorState = 12;
            return this._currToken;
        }
        _updateTokenLocation();
        this._parsingContext.expectComma();
        if (i2 == 34) {
            return _startString();
        }
        if (i2 == 35) {
            return _finishHashComment(12);
        }
        if (i2 == 45) {
            return _startNegativeNumber();
        }
        if (i2 == 91) {
            return _startArrayScope();
        }
        if (i2 == 93) {
            return _closeArrayScope();
        }
        if (i2 == 102) {
            return _startFalseToken();
        }
        if (i2 == 110) {
            return _startNullToken();
        }
        if (i2 == 116) {
            return _startTrueToken();
        }
        if (i2 == 123) {
            return _startObjectScope();
        }
        if (i2 == 125) {
            return _closeObjectScope();
        }
        switch (i2) {
            case 47:
                return _startSlashComment(12);
            case 48:
                return _startNumberLeadingZero();
            case 49:
            case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
                return _startPositiveNumber(i2);
            default:
                return _startUnexpectedValue(false, i2);
        }
    }

    private final JsonToken _startValueAfterComma(int i2) throws IOException {
        if (i2 <= 32 && (i2 = _skipWS(i2)) <= 0) {
            this._minorState = 15;
            return this._currToken;
        }
        _updateTokenLocation();
        if (i2 == 34) {
            return _startString();
        }
        if (i2 == 35) {
            return _finishHashComment(15);
        }
        if (i2 == 45) {
            return _startNegativeNumber();
        }
        if (i2 == 91) {
            return _startArrayScope();
        }
        if (i2 != 93) {
            if (i2 == 102) {
                return _startFalseToken();
            }
            if (i2 == 110) {
                return _startNullToken();
            }
            if (i2 == 116) {
                return _startTrueToken();
            }
            if (i2 == 123) {
                return _startObjectScope();
            }
            if (i2 != 125) {
                switch (i2) {
                    case 47:
                        return _startSlashComment(15);
                    case 48:
                        return _startNumberLeadingZero();
                    case 49:
                    case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                        return _startPositiveNumber(i2);
                }
            }
            if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0) {
                return _closeObjectScope();
            }
        } else if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0) {
            return _closeArrayScope();
        }
        return _startUnexpectedValue(true, i2);
    }

    private final JsonToken _startValueExpectColon(int i2) throws IOException {
        if (i2 <= 32 && (i2 = _skipWS(i2)) <= 0) {
            this._minorState = 14;
            return this._currToken;
        }
        if (i2 != 58) {
            if (i2 == 47) {
                return _startSlashComment(14);
            }
            if (i2 == 35) {
                return _finishHashComment(14);
            }
            _reportUnexpectedChar(i2, "was expecting a colon to separate field name and value");
        }
        int i7 = this._inputPtr;
        if (i7 >= this._inputEnd) {
            this._minorState = 12;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        int i8 = this._inputBuffer[i7];
        this._inputPtr = i7 + 1;
        if (i8 <= 32 && (i8 = _skipWS(i8)) <= 0) {
            this._minorState = 12;
            return this._currToken;
        }
        _updateTokenLocation();
        if (i8 == 34) {
            return _startString();
        }
        if (i8 == 35) {
            return _finishHashComment(12);
        }
        if (i8 == 45) {
            return _startNegativeNumber();
        }
        if (i8 == 91) {
            return _startArrayScope();
        }
        if (i8 == 102) {
            return _startFalseToken();
        }
        if (i8 == 110) {
            return _startNullToken();
        }
        if (i8 == 116) {
            return _startTrueToken();
        }
        if (i8 == 123) {
            return _startObjectScope();
        }
        switch (i8) {
            case 47:
                return _startSlashComment(12);
            case 48:
                return _startNumberLeadingZero();
            case 49:
            case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
                return _startPositiveNumber(i8);
            default:
                return _startUnexpectedValue(false, i8);
        }
    }

    private final JsonToken _startValueExpectComma(int i2) throws IOException {
        if (i2 <= 32 && (i2 = _skipWS(i2)) <= 0) {
            this._minorState = 13;
            return this._currToken;
        }
        if (i2 != 44) {
            if (i2 == 93) {
                return _closeArrayScope();
            }
            if (i2 == 125) {
                return _closeObjectScope();
            }
            if (i2 == 47) {
                return _startSlashComment(13);
            }
            if (i2 == 35) {
                return _finishHashComment(13);
            }
            _reportUnexpectedChar(i2, "was expecting comma to separate " + this._parsingContext.typeDesc() + " entries");
        }
        this._parsingContext.expectComma();
        int i7 = this._inputPtr;
        if (i7 >= this._inputEnd) {
            this._minorState = 15;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        int i8 = this._inputBuffer[i7];
        this._inputPtr = i7 + 1;
        if (i8 <= 32 && (i8 = _skipWS(i8)) <= 0) {
            this._minorState = 15;
            return this._currToken;
        }
        _updateTokenLocation();
        if (i8 == 34) {
            return _startString();
        }
        if (i8 == 35) {
            return _finishHashComment(15);
        }
        if (i8 == 45) {
            return _startNegativeNumber();
        }
        if (i8 == 91) {
            return _startArrayScope();
        }
        if (i8 != 93) {
            if (i8 == 102) {
                return _startFalseToken();
            }
            if (i8 == 110) {
                return _startNullToken();
            }
            if (i8 == 116) {
                return _startTrueToken();
            }
            if (i8 == 123) {
                return _startObjectScope();
            }
            if (i8 != 125) {
                switch (i8) {
                    case 47:
                        return _startSlashComment(15);
                    case 48:
                        return _startNumberLeadingZero();
                    case 49:
                    case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                        return _startPositiveNumber(i8);
                }
            }
            if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0) {
                return _closeObjectScope();
            }
        } else if ((this._features & FEAT_MASK_TRAILING_COMMA) != 0) {
            return _closeArrayScope();
        }
        return _startUnexpectedValue(true, i8);
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    public char _decodeEscaped() throws IOException {
        VersionUtil.throwInternal();
        return TokenParser.SP;
    }

    public JsonToken _finishErrorToken() throws IOException {
        do {
            int i2 = this._inputPtr;
            if (i2 >= this._inputEnd) {
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this._currToken = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this._inputBuffer;
            this._inputPtr = i2 + 1;
            char c7 = (char) bArr[i2];
            if (!Character.isJavaIdentifierPart(c7)) {
                break;
            }
            this._textBuffer.append(c7);
        } while (this._textBuffer.size() < 256);
        return _reportErrorToken(this._textBuffer.contentsAsString());
    }

    public JsonToken _finishErrorTokenWithEOF() throws IOException {
        return _reportErrorToken(this._textBuffer.contentsAsString());
    }

    public final JsonToken _finishFieldWithEscape() throws IOException {
        int i2;
        int i7;
        int _decodeSplitEscaped = _decodeSplitEscaped(this._quoted32, this._quotedDigits);
        if (_decodeSplitEscaped < 0) {
            this._minorState = 8;
            return JsonToken.NOT_AVAILABLE;
        }
        int i8 = this._quadLength;
        int[] iArr = this._quadBuffer;
        if (i8 >= iArr.length) {
            this._quadBuffer = ParserBase.growArrayBy(iArr, 32);
        }
        int i9 = this._pending32;
        int i10 = this._pendingBytes;
        int i11 = 1;
        if (_decodeSplitEscaped > 127) {
            int i12 = 0;
            if (i10 >= 4) {
                int[] iArr2 = this._quadBuffer;
                int i13 = this._quadLength;
                this._quadLength = i13 + 1;
                iArr2[i13] = i9;
                i9 = 0;
                i10 = 0;
            }
            if (_decodeSplitEscaped < 2048) {
                i2 = i9 << 8;
                i7 = (_decodeSplitEscaped >> 6) | 192;
            } else {
                int i14 = (i9 << 8) | (_decodeSplitEscaped >> 12) | 224;
                i10++;
                if (i10 >= 4) {
                    int[] iArr3 = this._quadBuffer;
                    int i15 = this._quadLength;
                    this._quadLength = i15 + 1;
                    iArr3[i15] = i14;
                    i10 = 0;
                } else {
                    i12 = i14;
                }
                i2 = i12 << 8;
                i7 = ((_decodeSplitEscaped >> 6) & 63) | 128;
            }
            i9 = i2 | i7;
            i10++;
            _decodeSplitEscaped = (_decodeSplitEscaped & 63) | 128;
        }
        if (i10 < 4) {
            i11 = 1 + i10;
            _decodeSplitEscaped |= i9 << 8;
        } else {
            int[] iArr4 = this._quadBuffer;
            int i16 = this._quadLength;
            this._quadLength = i16 + 1;
            iArr4[i16] = i9;
        }
        return this._minorStateAfterSplit == 9 ? _finishAposName(this._quadLength, _decodeSplitEscaped, i11) : _parseEscapedName(this._quadLength, _decodeSplitEscaped, i11);
    }

    public JsonToken _finishFloatExponent(boolean z6, int i2) throws IOException {
        if (z6) {
            this._minorState = 32;
            if (i2 == 45 || i2 == 43) {
                this._textBuffer.append((char) i2);
                int i7 = this._inputPtr;
                if (i7 >= this._inputEnd) {
                    this._minorState = 32;
                    this._expLength = 0;
                    return JsonToken.NOT_AVAILABLE;
                }
                byte[] bArr = this._inputBuffer;
                this._inputPtr = i7 + 1;
                i2 = bArr[i7];
            }
        }
        char[] bufferWithoutReset = this._textBuffer.getBufferWithoutReset();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        int i8 = this._expLength;
        while (i2 >= 48 && i2 <= 57) {
            i8++;
            if (currentSegmentSize >= bufferWithoutReset.length) {
                bufferWithoutReset = this._textBuffer.expandCurrentSegment();
            }
            int i9 = currentSegmentSize + 1;
            bufferWithoutReset[currentSegmentSize] = (char) i2;
            int i10 = this._inputPtr;
            if (i10 >= this._inputEnd) {
                this._textBuffer.setCurrentLength(i9);
                this._expLength = i8;
                return JsonToken.NOT_AVAILABLE;
            }
            byte[] bArr2 = this._inputBuffer;
            this._inputPtr = i10 + 1;
            i2 = bArr2[i10];
            currentSegmentSize = i9;
        }
        int i11 = i2 & 255;
        if (i8 == 0) {
            reportUnexpectedNumberChar(i11, "Exponent indicator not followed by a digit");
        }
        this._inputPtr--;
        this._textBuffer.setCurrentLength(currentSegmentSize);
        this._expLength = i8;
        return _valueComplete(JsonToken.VALUE_NUMBER_FLOAT);
    }

    public JsonToken _finishFloatFraction() throws IOException {
        byte b7;
        int i2 = this._fractLength;
        char[] bufferWithoutReset = this._textBuffer.getBufferWithoutReset();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        while (true) {
            byte[] bArr = this._inputBuffer;
            int i7 = this._inputPtr;
            this._inputPtr = i7 + 1;
            b7 = bArr[i7];
            if (b7 < 48 || b7 > 57) {
                break;
            }
            i2++;
            if (currentSegmentSize >= bufferWithoutReset.length) {
                bufferWithoutReset = this._textBuffer.expandCurrentSegment();
            }
            int i8 = currentSegmentSize + 1;
            bufferWithoutReset[currentSegmentSize] = (char) b7;
            if (this._inputPtr >= this._inputEnd) {
                this._textBuffer.setCurrentLength(i8);
                this._fractLength = i2;
                return JsonToken.NOT_AVAILABLE;
            }
            currentSegmentSize = i8;
        }
        if (i2 == 0) {
            reportUnexpectedNumberChar(b7, "Decimal point not followed by a digit");
        }
        this._fractLength = i2;
        this._textBuffer.setCurrentLength(currentSegmentSize);
        if (b7 != 101 && b7 != 69) {
            this._inputPtr--;
            this._textBuffer.setCurrentLength(currentSegmentSize);
            this._expLength = 0;
            return _valueComplete(JsonToken.VALUE_NUMBER_FLOAT);
        }
        this._textBuffer.append((char) b7);
        this._expLength = 0;
        int i9 = this._inputPtr;
        if (i9 >= this._inputEnd) {
            this._minorState = 31;
            return JsonToken.NOT_AVAILABLE;
        }
        this._minorState = 32;
        byte[] bArr2 = this._inputBuffer;
        this._inputPtr = i9 + 1;
        return _finishFloatExponent(true, bArr2[i9] & 255);
    }

    public JsonToken _finishKeywordToken(String str, int i2, JsonToken jsonToken) throws IOException {
        int length = str.length();
        while (true) {
            int i7 = this._inputPtr;
            if (i7 >= this._inputEnd) {
                this._pending32 = i2;
                JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
                this._currToken = jsonToken2;
                return jsonToken2;
            }
            byte b7 = this._inputBuffer[i7];
            if (i2 == length) {
                if (b7 < 48 || b7 == 93 || b7 == 125) {
                    return _valueComplete(jsonToken);
                }
            } else {
                if (b7 != str.charAt(i2)) {
                    break;
                }
                i2++;
                this._inputPtr++;
            }
        }
        this._minorState = 50;
        this._textBuffer.resetWithCopy(str, 0, i2);
        return _finishErrorToken();
    }

    public JsonToken _finishKeywordTokenWithEOF(String str, int i2, JsonToken jsonToken) throws IOException {
        if (i2 == str.length()) {
            this._currToken = jsonToken;
            return jsonToken;
        }
        this._textBuffer.resetWithCopy(str, 0, i2);
        return _finishErrorTokenWithEOF();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0038, code lost:
    
        r4._minorState = 50;
        r4._textBuffer.resetWithCopy(r0, 0, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0046, code lost:
    
        return _finishErrorToken();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.core.JsonToken _finishNonStdToken(int r5, int r6) throws java.io.IOException {
        /*
            r4 = this;
            java.lang.String r0 = r4._nonStdToken(r5)
            int r1 = r0.length()
        L8:
            int r2 = r4._inputPtr
            int r3 = r4._inputEnd
            if (r2 < r3) goto L1b
            r4._nonStdTokenType = r5
            r4._pending32 = r6
            r5 = 19
            r4._minorState = r5
            com.fasterxml.jackson.core.JsonToken r5 = com.fasterxml.jackson.core.JsonToken.NOT_AVAILABLE
            r4._currToken = r5
            return r5
        L1b:
            byte[] r3 = r4._inputBuffer
            r2 = r3[r2]
            if (r6 != r1) goto L32
            r1 = 48
            if (r2 < r1) goto L2d
            r1 = 93
            if (r2 == r1) goto L2d
            r1 = 125(0x7d, float:1.75E-43)
            if (r2 != r1) goto L38
        L2d:
            com.fasterxml.jackson.core.JsonToken r5 = r4._valueNonStdNumberComplete(r5)
            return r5
        L32:
            char r3 = r0.charAt(r6)
            if (r2 == r3) goto L47
        L38:
            r5 = 50
            r4._minorState = r5
            com.fasterxml.jackson.core.util.TextBuffer r5 = r4._textBuffer
            r1 = 0
            r5.resetWithCopy(r0, r1, r6)
            com.fasterxml.jackson.core.JsonToken r5 = r4._finishErrorToken()
            return r5
        L47:
            int r6 = r6 + 1
            int r2 = r4._inputPtr
            int r2 = r2 + 1
            r4._inputPtr = r2
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.async.NonBlockingJsonParser._finishNonStdToken(int, int):com.fasterxml.jackson.core.JsonToken");
    }

    public JsonToken _finishNonStdTokenWithEOF(int i2, int i7) throws IOException {
        String _nonStdToken = _nonStdToken(i2);
        if (i7 == _nonStdToken.length()) {
            return _valueNonStdNumberComplete(i2);
        }
        this._textBuffer.resetWithCopy(_nonStdToken, 0, i7);
        return _finishErrorTokenWithEOF();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0042, code lost:
    
        r4._intLength = r0 + r6;
        r4._textBuffer.setCurrentLength(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
    
        return _valueComplete(com.fasterxml.jackson.core.JsonToken.VALUE_NUMBER_INT);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.core.JsonToken _finishNumberIntegralPart(char[] r5, int r6) throws java.io.IOException {
        /*
            r4 = this;
            boolean r0 = r4._numberNegative
            if (r0 == 0) goto L6
            r0 = -1
            goto L7
        L6:
            r0 = 0
        L7:
            int r1 = r4._inputPtr
            int r2 = r4._inputEnd
            if (r1 < r2) goto L1b
            r5 = 26
            r4._minorState = r5
            com.fasterxml.jackson.core.util.TextBuffer r5 = r4._textBuffer
            r5.setCurrentLength(r6)
            com.fasterxml.jackson.core.JsonToken r5 = com.fasterxml.jackson.core.JsonToken.NOT_AVAILABLE
            r4._currToken = r5
            return r5
        L1b:
            byte[] r2 = r4._inputBuffer
            r2 = r2[r1]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r3 = 48
            if (r2 >= r3) goto L35
            r3 = 46
            if (r2 != r3) goto L42
            int r0 = r0 + r6
            r4._intLength = r0
            int r1 = r1 + 1
            r4._inputPtr = r1
            com.fasterxml.jackson.core.JsonToken r5 = r4._startFloat(r5, r6, r2)
            return r5
        L35:
            r3 = 57
            if (r2 <= r3) goto L5d
            r3 = 101(0x65, float:1.42E-43)
            if (r2 == r3) goto L51
            r3 = 69
            if (r2 != r3) goto L42
            goto L51
        L42:
            int r0 = r0 + r6
            r4._intLength = r0
            com.fasterxml.jackson.core.util.TextBuffer r5 = r4._textBuffer
            r5.setCurrentLength(r6)
            com.fasterxml.jackson.core.JsonToken r5 = com.fasterxml.jackson.core.JsonToken.VALUE_NUMBER_INT
            com.fasterxml.jackson.core.JsonToken r5 = r4._valueComplete(r5)
            return r5
        L51:
            int r0 = r0 + r6
            r4._intLength = r0
            int r1 = r1 + 1
            r4._inputPtr = r1
            com.fasterxml.jackson.core.JsonToken r5 = r4._startFloat(r5, r6, r2)
            return r5
        L5d:
            int r1 = r1 + 1
            r4._inputPtr = r1
            int r1 = r5.length
            if (r6 < r1) goto L6a
            com.fasterxml.jackson.core.util.TextBuffer r5 = r4._textBuffer
            char[] r5 = r5.expandCurrentSegment()
        L6a:
            int r1 = r6 + 1
            char r2 = (char) r2
            r5[r6] = r2
            r6 = r1
            goto L7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.async.NonBlockingJsonParser._finishNumberIntegralPart(char[], int):com.fasterxml.jackson.core.JsonToken");
    }

    public JsonToken _finishNumberLeadingNegZeroes() throws IOException {
        int i2;
        do {
            int i7 = this._inputPtr;
            if (i7 >= this._inputEnd) {
                this._minorState = 25;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this._currToken = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this._inputBuffer;
            this._inputPtr = i7 + 1;
            i2 = bArr[i7] & 255;
            if (i2 < 48) {
                if (i2 == 46) {
                    char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
                    emptyAndGetCurrentSegment[0] = '-';
                    emptyAndGetCurrentSegment[1] = '0';
                    this._intLength = 1;
                    return _startFloat(emptyAndGetCurrentSegment, 2, i2);
                }
            } else if (i2 > 57) {
                if (i2 == 101 || i2 == 69) {
                    char[] emptyAndGetCurrentSegment2 = this._textBuffer.emptyAndGetCurrentSegment();
                    emptyAndGetCurrentSegment2[0] = '-';
                    emptyAndGetCurrentSegment2[1] = '0';
                    this._intLength = 1;
                    return _startFloat(emptyAndGetCurrentSegment2, 2, i2);
                }
                if (i2 != 93 && i2 != 125) {
                    reportUnexpectedNumberChar(i2, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow '0'");
                }
            } else if ((this._features & FEAT_MASK_LEADING_ZEROS) == 0) {
                reportInvalidNumber("Leading zeroes not allowed");
            }
            this._inputPtr--;
            return _valueCompleteInt(0, "0");
        } while (i2 == 48);
        char[] emptyAndGetCurrentSegment3 = this._textBuffer.emptyAndGetCurrentSegment();
        emptyAndGetCurrentSegment3[0] = '-';
        emptyAndGetCurrentSegment3[1] = (char) i2;
        this._intLength = 1;
        return _finishNumberIntegralPart(emptyAndGetCurrentSegment3, 2);
    }

    public JsonToken _finishNumberLeadingZeroes() throws IOException {
        int i2;
        do {
            int i7 = this._inputPtr;
            if (i7 >= this._inputEnd) {
                this._minorState = 24;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this._currToken = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this._inputBuffer;
            this._inputPtr = i7 + 1;
            i2 = bArr[i7] & 255;
            if (i2 < 48) {
                if (i2 == 46) {
                    char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
                    emptyAndGetCurrentSegment[0] = '0';
                    this._intLength = 1;
                    return _startFloat(emptyAndGetCurrentSegment, 1, i2);
                }
            } else if (i2 > 57) {
                if (i2 == 101 || i2 == 69) {
                    char[] emptyAndGetCurrentSegment2 = this._textBuffer.emptyAndGetCurrentSegment();
                    emptyAndGetCurrentSegment2[0] = '0';
                    this._intLength = 1;
                    return _startFloat(emptyAndGetCurrentSegment2, 1, i2);
                }
                if (i2 != 93 && i2 != 125) {
                    reportUnexpectedNumberChar(i2, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow '0'");
                }
            } else if ((this._features & FEAT_MASK_LEADING_ZEROS) == 0) {
                reportInvalidNumber("Leading zeroes not allowed");
            }
            this._inputPtr--;
            return _valueCompleteInt(0, "0");
        } while (i2 == 48);
        char[] emptyAndGetCurrentSegment3 = this._textBuffer.emptyAndGetCurrentSegment();
        emptyAndGetCurrentSegment3[0] = (char) i2;
        this._intLength = 1;
        return _finishNumberIntegralPart(emptyAndGetCurrentSegment3, 1);
    }

    public JsonToken _finishNumberMinus(int i2) throws IOException {
        if (i2 <= 48) {
            if (i2 == 48) {
                return _finishNumberLeadingNegZeroes();
            }
            reportUnexpectedNumberChar(i2, "expected digit (0-9) to follow minus sign, for valid numeric value");
        } else if (i2 > 57) {
            if (i2 == 73) {
                return _finishNonStdToken(3, 2);
            }
            reportUnexpectedNumberChar(i2, "expected digit (0-9) to follow minus sign, for valid numeric value");
        }
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        emptyAndGetCurrentSegment[0] = '-';
        emptyAndGetCurrentSegment[1] = (char) i2;
        this._intLength = 1;
        return _finishNumberIntegralPart(emptyAndGetCurrentSegment, 2);
    }

    public final JsonToken _finishToken() throws IOException {
        int i2 = this._minorState;
        if (i2 == 1) {
            return _finishBOM(this._pending32);
        }
        if (i2 == 4) {
            byte[] bArr = this._inputBuffer;
            int i7 = this._inputPtr;
            this._inputPtr = i7 + 1;
            return _startFieldName(bArr[i7] & 255);
        }
        if (i2 == 5) {
            byte[] bArr2 = this._inputBuffer;
            int i8 = this._inputPtr;
            this._inputPtr = i8 + 1;
            return _startFieldNameAfterComma(bArr2[i8] & 255);
        }
        switch (i2) {
            case 7:
                return _parseEscapedName(this._quadLength, this._pending32, this._pendingBytes);
            case 8:
                return _finishFieldWithEscape();
            case 9:
                return _finishAposName(this._quadLength, this._pending32, this._pendingBytes);
            case 10:
                return _finishUnquotedName(this._quadLength, this._pending32, this._pendingBytes);
            default:
                switch (i2) {
                    case 12:
                        byte[] bArr3 = this._inputBuffer;
                        int i9 = this._inputPtr;
                        this._inputPtr = i9 + 1;
                        return _startValue(bArr3[i9] & 255);
                    case 13:
                        byte[] bArr4 = this._inputBuffer;
                        int i10 = this._inputPtr;
                        this._inputPtr = i10 + 1;
                        return _startValueExpectComma(bArr4[i10] & 255);
                    case 14:
                        byte[] bArr5 = this._inputBuffer;
                        int i11 = this._inputPtr;
                        this._inputPtr = i11 + 1;
                        return _startValueExpectColon(bArr5[i11] & 255);
                    case 15:
                        byte[] bArr6 = this._inputBuffer;
                        int i12 = this._inputPtr;
                        this._inputPtr = i12 + 1;
                        return _startValueAfterComma(bArr6[i12] & 255);
                    case 16:
                        return _finishKeywordToken("null", this._pending32, JsonToken.VALUE_NULL);
                    case 17:
                        return _finishKeywordToken("true", this._pending32, JsonToken.VALUE_TRUE);
                    case 18:
                        return _finishKeywordToken("false", this._pending32, JsonToken.VALUE_FALSE);
                    case 19:
                        return _finishNonStdToken(this._nonStdTokenType, this._pending32);
                    default:
                        switch (i2) {
                            case 23:
                                byte[] bArr7 = this._inputBuffer;
                                int i13 = this._inputPtr;
                                this._inputPtr = i13 + 1;
                                return _finishNumberMinus(bArr7[i13] & 255);
                            case 24:
                                return _finishNumberLeadingZeroes();
                            case 25:
                                return _finishNumberLeadingNegZeroes();
                            case 26:
                                return _finishNumberIntegralPart(this._textBuffer.getBufferWithoutReset(), this._textBuffer.getCurrentSegmentSize());
                            default:
                                switch (i2) {
                                    case 30:
                                        return _finishFloatFraction();
                                    case 31:
                                        byte[] bArr8 = this._inputBuffer;
                                        int i14 = this._inputPtr;
                                        this._inputPtr = i14 + 1;
                                        return _finishFloatExponent(true, bArr8[i14] & 255);
                                    case 32:
                                        byte[] bArr9 = this._inputBuffer;
                                        int i15 = this._inputPtr;
                                        this._inputPtr = i15 + 1;
                                        return _finishFloatExponent(false, bArr9[i15] & 255);
                                    default:
                                        switch (i2) {
                                            case 40:
                                                return _finishRegularString();
                                            case 41:
                                                int _decodeSplitEscaped = _decodeSplitEscaped(this._quoted32, this._quotedDigits);
                                                if (_decodeSplitEscaped < 0) {
                                                    return JsonToken.NOT_AVAILABLE;
                                                }
                                                this._textBuffer.append((char) _decodeSplitEscaped);
                                                return this._minorStateAfterSplit == 45 ? _finishAposString() : _finishRegularString();
                                            case 42:
                                                TextBuffer textBuffer = this._textBuffer;
                                                int i16 = this._pending32;
                                                byte[] bArr10 = this._inputBuffer;
                                                int i17 = this._inputPtr;
                                                this._inputPtr = i17 + 1;
                                                textBuffer.append((char) _decodeUTF8_2(i16, bArr10[i17]));
                                                return this._minorStateAfterSplit == 45 ? _finishAposString() : _finishRegularString();
                                            case 43:
                                                int i18 = this._pending32;
                                                int i19 = this._pendingBytes;
                                                byte[] bArr11 = this._inputBuffer;
                                                int i20 = this._inputPtr;
                                                this._inputPtr = i20 + 1;
                                                return !_decodeSplitUTF8_3(i18, i19, bArr11[i20]) ? JsonToken.NOT_AVAILABLE : this._minorStateAfterSplit == 45 ? _finishAposString() : _finishRegularString();
                                            case 44:
                                                int i21 = this._pending32;
                                                int i22 = this._pendingBytes;
                                                byte[] bArr12 = this._inputBuffer;
                                                int i23 = this._inputPtr;
                                                this._inputPtr = i23 + 1;
                                                return !_decodeSplitUTF8_4(i21, i22, bArr12[i23]) ? JsonToken.NOT_AVAILABLE : this._minorStateAfterSplit == 45 ? _finishAposString() : _finishRegularString();
                                            case 45:
                                                return _finishAposString();
                                            default:
                                                switch (i2) {
                                                    case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                                                        return _finishErrorToken();
                                                    case 51:
                                                        return _startSlashComment(this._pending32);
                                                    case 52:
                                                        return _finishCComment(this._pending32, true);
                                                    case 53:
                                                        return _finishCComment(this._pending32, false);
                                                    case 54:
                                                        return _finishCppComment(this._pending32);
                                                    case 55:
                                                        return _finishHashComment(this._pending32);
                                                    default:
                                                        VersionUtil.throwInternal();
                                                        return null;
                                                }
                                        }
                                }
                        }
                }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final JsonToken _finishTokenWithEOF() throws IOException {
        JsonToken jsonToken = this._currToken;
        int i2 = this._minorState;
        if (i2 == 3) {
            return _eofAsNextToken();
        }
        if (i2 == 12) {
            return _eofAsNextToken();
        }
        if (i2 == 50) {
            return _finishErrorTokenWithEOF();
        }
        switch (i2) {
            case 16:
                return _finishKeywordTokenWithEOF("null", this._pending32, JsonToken.VALUE_NULL);
            case 17:
                return _finishKeywordTokenWithEOF("true", this._pending32, JsonToken.VALUE_TRUE);
            case 18:
                return _finishKeywordTokenWithEOF("false", this._pending32, JsonToken.VALUE_FALSE);
            case 19:
                return _finishNonStdTokenWithEOF(this._nonStdTokenType, this._pending32);
            default:
                switch (i2) {
                    case 24:
                    case 25:
                        return _valueCompleteInt(0, "0");
                    case 26:
                        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
                        if (this._numberNegative) {
                            currentSegmentSize--;
                        }
                        this._intLength = currentSegmentSize;
                        return _valueComplete(JsonToken.VALUE_NUMBER_INT);
                    default:
                        switch (i2) {
                            case 30:
                                this._expLength = 0;
                                return _valueComplete(JsonToken.VALUE_NUMBER_FLOAT);
                            case 31:
                                _reportInvalidEOF(": was expecting fraction after exponent marker", JsonToken.VALUE_NUMBER_FLOAT);
                                _reportInvalidEOF(": was expecting closing '*/' for comment", JsonToken.NOT_AVAILABLE);
                                return _eofAsNextToken();
                            case 32:
                                return _valueComplete(JsonToken.VALUE_NUMBER_FLOAT);
                            default:
                                switch (i2) {
                                    case 52:
                                    case 53:
                                        _reportInvalidEOF(": was expecting closing '*/' for comment", JsonToken.NOT_AVAILABLE);
                                        break;
                                    case 54:
                                    case 55:
                                        break;
                                    default:
                                        _reportInvalidEOF(i.m(new StringBuilder(": was expecting rest of token (internal state: "), this._minorState, ")"), this._currToken);
                                        return jsonToken;
                                }
                                return _eofAsNextToken();
                        }
                }
        }
    }

    public JsonToken _reportErrorToken(String str) throws IOException {
        _reportError("Unrecognized token '%s': was expecting %s", this._textBuffer.contentsAsString(), _validJsonTokenList());
        return JsonToken.NOT_AVAILABLE;
    }

    public JsonToken _startAposString() throws IOException {
        int i2 = this._inputPtr;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int min = Math.min(this._inputEnd, emptyAndGetCurrentSegment.length + i2);
        byte[] bArr = this._inputBuffer;
        int i7 = 0;
        while (i2 < min) {
            int i8 = bArr[i2] & 255;
            if (i8 == 39) {
                this._inputPtr = i2 + 1;
                this._textBuffer.setCurrentLength(i7);
                return _valueComplete(JsonToken.VALUE_STRING);
            }
            if (iArr[i8] != 0) {
                break;
            }
            i2++;
            emptyAndGetCurrentSegment[i7] = (char) i8;
            i7++;
        }
        this._textBuffer.setCurrentLength(i7);
        this._inputPtr = i2;
        return _finishAposString();
    }

    public JsonToken _startFalseToken() throws IOException {
        int i2;
        int i7 = this._inputPtr;
        if (i7 + 4 < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i8 = i7 + 1;
            if (bArr[i7] == 97) {
                int i9 = i7 + 2;
                if (bArr[i8] == 108) {
                    int i10 = i7 + 3;
                    if (bArr[i9] == 115) {
                        int i11 = i7 + 4;
                        if (bArr[i10] == 101 && ((i2 = bArr[i11] & 255) < 48 || i2 == 93 || i2 == 125)) {
                            this._inputPtr = i11;
                            return _valueComplete(JsonToken.VALUE_FALSE);
                        }
                    }
                }
            }
        }
        this._minorState = 18;
        return _finishKeywordToken("false", 1, JsonToken.VALUE_FALSE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004d, code lost:
    
        r3 = r3 & 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
    
        if (r9 != 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0051, code lost:
    
        reportUnexpectedNumberChar(r3, "Decimal point not followed by a digit");
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fb  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00ee -> B:39:0x009a). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.core.JsonToken _startFloat(char[] r7, int r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.async.NonBlockingJsonParser._startFloat(char[], int, int):com.fasterxml.jackson.core.JsonToken");
    }

    public JsonToken _startNegativeNumber() throws IOException {
        this._numberNegative = true;
        int i2 = this._inputPtr;
        if (i2 >= this._inputEnd) {
            this._minorState = 23;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        byte[] bArr = this._inputBuffer;
        this._inputPtr = i2 + 1;
        int i7 = bArr[i2] & 255;
        int i8 = 2;
        if (i7 <= 48) {
            if (i7 == 48) {
                return _finishNumberLeadingNegZeroes();
            }
            reportUnexpectedNumberChar(i7, "expected digit (0-9) to follow minus sign, for valid numeric value");
        } else if (i7 > 57) {
            if (i7 == 73) {
                return _finishNonStdToken(3, 2);
            }
            reportUnexpectedNumberChar(i7, "expected digit (0-9) to follow minus sign, for valid numeric value");
        }
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        emptyAndGetCurrentSegment[0] = '-';
        emptyAndGetCurrentSegment[1] = (char) i7;
        int i9 = this._inputPtr;
        if (i9 >= this._inputEnd) {
            this._minorState = 26;
            this._textBuffer.setCurrentLength(2);
            this._intLength = 1;
            JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken2;
            return jsonToken2;
        }
        int i10 = this._inputBuffer[i9];
        while (true) {
            if (i10 < 48) {
                if (i10 == 46) {
                    this._intLength = i8 - 1;
                    this._inputPtr++;
                    return _startFloat(emptyAndGetCurrentSegment, i8, i10);
                }
            } else if (i10 <= 57) {
                if (i8 >= emptyAndGetCurrentSegment.length) {
                    emptyAndGetCurrentSegment = this._textBuffer.expandCurrentSegment();
                }
                int i11 = i8 + 1;
                emptyAndGetCurrentSegment[i8] = (char) i10;
                int i12 = this._inputPtr + 1;
                this._inputPtr = i12;
                if (i12 >= this._inputEnd) {
                    this._minorState = 26;
                    this._textBuffer.setCurrentLength(i11);
                    JsonToken jsonToken3 = JsonToken.NOT_AVAILABLE;
                    this._currToken = jsonToken3;
                    return jsonToken3;
                }
                i10 = this._inputBuffer[i12] & 255;
                i8 = i11;
            } else if (i10 == 101 || i10 == 69) {
                this._intLength = i8 - 1;
                this._inputPtr++;
                return _startFloat(emptyAndGetCurrentSegment, i8, i10);
            }
        }
        this._intLength = i8 - 1;
        this._textBuffer.setCurrentLength(i8);
        return _valueComplete(JsonToken.VALUE_NUMBER_INT);
    }

    public JsonToken _startNullToken() throws IOException {
        int i2;
        int i7 = this._inputPtr;
        if (i7 + 3 < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i8 = i7 + 1;
            if (bArr[i7] == 117) {
                int i9 = i7 + 2;
                if (bArr[i8] == 108) {
                    int i10 = i7 + 3;
                    if (bArr[i9] == 108 && ((i2 = bArr[i10] & 255) < 48 || i2 == 93 || i2 == 125)) {
                        this._inputPtr = i10;
                        return _valueComplete(JsonToken.VALUE_NULL);
                    }
                }
            }
        }
        this._minorState = 16;
        return _finishKeywordToken("null", 1, JsonToken.VALUE_NULL);
    }

    public JsonToken _startNumberLeadingZero() throws IOException {
        int i2 = this._inputPtr;
        if (i2 >= this._inputEnd) {
            this._minorState = 24;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        int i7 = i2 + 1;
        int i8 = this._inputBuffer[i2] & 255;
        if (i8 < 48) {
            if (i8 == 46) {
                this._inputPtr = i7;
                this._intLength = 1;
                char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
                emptyAndGetCurrentSegment[0] = '0';
                return _startFloat(emptyAndGetCurrentSegment, 1, i8);
            }
        } else {
            if (i8 <= 57) {
                return _finishNumberLeadingZeroes();
            }
            if (i8 == 101 || i8 == 69) {
                this._inputPtr = i7;
                this._intLength = 1;
                char[] emptyAndGetCurrentSegment2 = this._textBuffer.emptyAndGetCurrentSegment();
                emptyAndGetCurrentSegment2[0] = '0';
                return _startFloat(emptyAndGetCurrentSegment2, 1, i8);
            }
            if (i8 != 93 && i8 != 125) {
                reportUnexpectedNumberChar(i8, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow '0'");
            }
        }
        return _valueCompleteInt(0, "0");
    }

    public JsonToken _startPositiveNumber(int i2) throws IOException {
        this._numberNegative = false;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        emptyAndGetCurrentSegment[0] = (char) i2;
        int i7 = this._inputPtr;
        if (i7 >= this._inputEnd) {
            this._minorState = 26;
            this._textBuffer.setCurrentLength(1);
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this._currToken = jsonToken;
            return jsonToken;
        }
        int i8 = this._inputBuffer[i7] & 255;
        int i9 = 1;
        while (true) {
            if (i8 < 48) {
                if (i8 == 46) {
                    this._intLength = i9;
                    this._inputPtr++;
                    return _startFloat(emptyAndGetCurrentSegment, i9, i8);
                }
            } else if (i8 <= 57) {
                if (i9 >= emptyAndGetCurrentSegment.length) {
                    emptyAndGetCurrentSegment = this._textBuffer.expandCurrentSegment();
                }
                int i10 = i9 + 1;
                emptyAndGetCurrentSegment[i9] = (char) i8;
                int i11 = this._inputPtr + 1;
                this._inputPtr = i11;
                if (i11 >= this._inputEnd) {
                    this._minorState = 26;
                    this._textBuffer.setCurrentLength(i10);
                    JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
                    this._currToken = jsonToken2;
                    return jsonToken2;
                }
                i8 = this._inputBuffer[i11] & 255;
                i9 = i10;
            } else if (i8 == 101 || i8 == 69) {
                this._intLength = i9;
                this._inputPtr++;
                return _startFloat(emptyAndGetCurrentSegment, i9, i8);
            }
        }
        this._intLength = i9;
        this._textBuffer.setCurrentLength(i9);
        return _valueComplete(JsonToken.VALUE_NUMBER_INT);
    }

    public JsonToken _startString() throws IOException {
        int i2 = this._inputPtr;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int min = Math.min(this._inputEnd, emptyAndGetCurrentSegment.length + i2);
        byte[] bArr = this._inputBuffer;
        int i7 = 0;
        while (true) {
            if (i2 >= min) {
                break;
            }
            int i8 = bArr[i2] & 255;
            if (iArr[i8] == 0) {
                i2++;
                emptyAndGetCurrentSegment[i7] = (char) i8;
                i7++;
            } else if (i8 == 34) {
                this._inputPtr = i2 + 1;
                this._textBuffer.setCurrentLength(i7);
                return _valueComplete(JsonToken.VALUE_STRING);
            }
        }
        this._textBuffer.setCurrentLength(i7);
        this._inputPtr = i2;
        return _finishRegularString();
    }

    public JsonToken _startTrueToken() throws IOException {
        int i2;
        int i7 = this._inputPtr;
        if (i7 + 3 < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i8 = i7 + 1;
            if (bArr[i7] == 114) {
                int i9 = i7 + 2;
                if (bArr[i8] == 117) {
                    int i10 = i7 + 3;
                    if (bArr[i9] == 101 && ((i2 = bArr[i10] & 255) < 48 || i2 == 93 || i2 == 125)) {
                        this._inputPtr = i10;
                        return _valueComplete(JsonToken.VALUE_TRUE);
                    }
                }
            }
        }
        this._minorState = 17;
        return _finishKeywordToken("true", 1, JsonToken.VALUE_TRUE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001b, code lost:
    
        if (r4 != 44) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
    
        if ((r2._features & com.fasterxml.jackson.core.json.async.NonBlockingJsonParser.FEAT_MASK_ALLOW_MISSING) == 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0034, code lost:
    
        r2._inputPtr--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003f, code lost:
    
        return _valueComplete(com.fasterxml.jackson.core.JsonToken.VALUE_NULL);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x002a, code lost:
    
        if (r2._parsingContext.inArray() == false) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.core.JsonToken _startUnexpectedValue(boolean r3, int r4) throws java.io.IOException {
        /*
            r2 = this;
            r3 = 39
            if (r4 == r3) goto L4b
            r3 = 73
            r0 = 1
            if (r4 == r3) goto L46
            r3 = 78
            if (r4 == r3) goto L40
            r3 = 93
            if (r4 == r3) goto L24
            r3 = 125(0x7d, float:1.75E-43)
            if (r4 == r3) goto L57
            r3 = 43
            if (r4 == r3) goto L1e
            r3 = 44
            if (r4 == r3) goto L2d
            goto L57
        L1e:
            r3 = 2
            com.fasterxml.jackson.core.JsonToken r3 = r2._finishNonStdToken(r3, r0)
            return r3
        L24:
            com.fasterxml.jackson.core.json.JsonReadContext r3 = r2._parsingContext
            boolean r3 = r3.inArray()
            if (r3 != 0) goto L2d
            goto L57
        L2d:
            int r3 = r2._features
            int r1 = com.fasterxml.jackson.core.json.async.NonBlockingJsonParser.FEAT_MASK_ALLOW_MISSING
            r3 = r3 & r1
            if (r3 == 0) goto L57
            int r3 = r2._inputPtr
            int r3 = r3 - r0
            r2._inputPtr = r3
            com.fasterxml.jackson.core.JsonToken r3 = com.fasterxml.jackson.core.JsonToken.VALUE_NULL
            com.fasterxml.jackson.core.JsonToken r3 = r2._valueComplete(r3)
            return r3
        L40:
            r3 = 0
            com.fasterxml.jackson.core.JsonToken r3 = r2._finishNonStdToken(r3, r0)
            return r3
        L46:
            com.fasterxml.jackson.core.JsonToken r3 = r2._finishNonStdToken(r0, r0)
            return r3
        L4b:
            int r3 = r2._features
            int r0 = com.fasterxml.jackson.core.json.async.NonBlockingJsonParser.FEAT_MASK_ALLOW_SINGLE_QUOTES
            r3 = r3 & r0
            if (r3 == 0) goto L57
            com.fasterxml.jackson.core.JsonToken r3 = r2._startAposString()
            return r3
        L57:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r0 = "expected a valid value "
            r3.<init>(r0)
            java.lang.String r0 = r2._validJsonValueList()
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            r2._reportUnexpectedChar(r4, r3)
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.async.NonBlockingJsonParser._startUnexpectedValue(boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    @Override // com.fasterxml.jackson.core.async.NonBlockingInputFeeder
    public void endOfInput() {
        this._endOfInput = true;
    }

    @Override // com.fasterxml.jackson.core.async.ByteArrayFeeder
    public void feedInput(byte[] bArr, int i2, int i7) throws IOException {
        int i8 = this._inputPtr;
        int i9 = this._inputEnd;
        if (i8 < i9) {
            _reportError("Still have %d undecoded bytes, should not call 'feedInput'", Integer.valueOf(i9 - i8));
        }
        if (i7 < i2) {
            _reportError("Input end (%d) may not be before start (%d)", Integer.valueOf(i7), Integer.valueOf(i2));
        }
        if (this._endOfInput) {
            _reportError("Already closed, can not feed more input");
        }
        this._currInputProcessed += this._origBufferLen;
        this._currInputRowStart = i2 - (this._inputEnd - this._currInputRowStart);
        this._currBufferStart = i2;
        this._inputBuffer = bArr;
        this._inputPtr = i2;
        this._inputEnd = i7;
        this._origBufferLen = i7 - i2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public ByteArrayFeeder getNonBlockingInputFeeder() {
        return this;
    }

    @Override // com.fasterxml.jackson.core.async.NonBlockingInputFeeder
    public final boolean needMoreInput() {
        return this._inputPtr >= this._inputEnd && !this._endOfInput;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public JsonToken nextToken() throws IOException {
        int i2 = this._inputPtr;
        if (i2 >= this._inputEnd) {
            if (this._closed) {
                return null;
            }
            return this._endOfInput ? this._currToken == JsonToken.NOT_AVAILABLE ? _finishTokenWithEOF() : _eofAsNextToken() : JsonToken.NOT_AVAILABLE;
        }
        if (this._currToken == JsonToken.NOT_AVAILABLE) {
            return _finishToken();
        }
        this._numTypesValid = 0;
        this._tokenInputTotal = this._currInputProcessed + i2;
        this._binaryValue = null;
        byte[] bArr = this._inputBuffer;
        this._inputPtr = i2 + 1;
        int i7 = bArr[i2] & 255;
        switch (this._majorState) {
            case 0:
                return _startDocument(i7);
            case 1:
                return _startValue(i7);
            case 2:
                return _startFieldName(i7);
            case 3:
                return _startFieldNameAfterComma(i7);
            case 4:
                return _startValueExpectColon(i7);
            case 5:
                return _startValue(i7);
            case 6:
                return _startValueExpectComma(i7);
            default:
                VersionUtil.throwInternal();
                return null;
        }
    }

    @Override // com.fasterxml.jackson.core.json.async.NonBlockingJsonParserBase, com.fasterxml.jackson.core.JsonParser
    public int releaseBuffered(OutputStream outputStream) throws IOException {
        int i2 = this._inputEnd;
        int i7 = this._inputPtr;
        int i8 = i2 - i7;
        if (i8 > 0) {
            outputStream.write(this._inputBuffer, i7, i8);
        }
        return i8;
    }
}
