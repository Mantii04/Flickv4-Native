package com.fasterxml.jackson.core;

import A.i;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import cz.msebera.android.httpclient.message.TokenParser;
import java.io.Serializable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class Base64Variant implements Serializable {
    public static final int BASE64_VALUE_INVALID = -1;
    public static final int BASE64_VALUE_PADDING = -2;
    private static final int INT_SPACE = 32;
    static final char PADDING_CHAR_NONE = 0;
    private static final long serialVersionUID = 1;
    private final transient int[] _asciiToBase64;
    private final transient byte[] _base64ToAsciiB;
    private final transient char[] _base64ToAsciiC;
    private final transient int _maxLineLength;
    final String _name;
    private final transient char _paddingChar;
    private final transient boolean _usesPadding;

    public Base64Variant(String str, String str2, boolean z6, char c7, int i2) {
        int[] iArr = new int[128];
        this._asciiToBase64 = iArr;
        char[] cArr = new char[64];
        this._base64ToAsciiC = cArr;
        this._base64ToAsciiB = new byte[64];
        this._name = str;
        this._usesPadding = z6;
        this._paddingChar = c7;
        this._maxLineLength = i2;
        int length = str2.length();
        if (length != 64) {
            throw new IllegalArgumentException(i.g(length, "Base64Alphabet length must be exactly 64 (was ", ")"));
        }
        str2.getChars(0, length, cArr, 0);
        Arrays.fill(iArr, -1);
        for (int i7 = 0; i7 < length; i7++) {
            char c8 = this._base64ToAsciiC[i7];
            this._base64ToAsciiB[i7] = (byte) c8;
            this._asciiToBase64[c8] = i7;
        }
        if (z6) {
            this._asciiToBase64[c7] = -2;
        }
    }

    public void _reportBase64EOF() throws IllegalArgumentException {
        throw new IllegalArgumentException(missingPaddingMessage());
    }

    public void _reportInvalidBase64(char c7, int i2, String str) throws IllegalArgumentException {
        String str2;
        if (c7 <= ' ') {
            str2 = "Illegal white space character (code 0x" + Integer.toHexString(c7) + ") as character #" + (i2 + 1) + " of 4-char base64 unit: can only used between units";
        } else if (usesPaddingChar(c7)) {
            str2 = "Unexpected padding character ('" + getPaddingChar() + "') as character #" + (i2 + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
        } else if (!Character.isDefined(c7) || Character.isISOControl(c7)) {
            str2 = "Illegal character (code 0x" + Integer.toHexString(c7) + ") in base64 content";
        } else {
            str2 = "Illegal character '" + c7 + "' (code 0x" + Integer.toHexString(c7) + ") in base64 content";
        }
        if (str != null) {
            str2 = i.C(str2, ": ", str);
        }
        throw new IllegalArgumentException(str2);
    }

    public byte[] decode(String str) throws IllegalArgumentException {
        ByteArrayBuilder byteArrayBuilder = new ByteArrayBuilder();
        decode(str, byteArrayBuilder);
        return byteArrayBuilder.toByteArray();
    }

    public int decodeBase64Byte(byte b7) {
        if (b7 < 0) {
            return -1;
        }
        return this._asciiToBase64[b7];
    }

    public int decodeBase64Char(char c7) {
        if (c7 <= 127) {
            return this._asciiToBase64[c7];
        }
        return -1;
    }

    public String encode(byte[] bArr) {
        return encode(bArr, false);
    }

    public byte encodeBase64BitsAsByte(int i2) {
        return this._base64ToAsciiB[i2];
    }

    public char encodeBase64BitsAsChar(int i2) {
        return this._base64ToAsciiC[i2];
    }

    public int encodeBase64Chunk(int i2, char[] cArr, int i7) {
        char[] cArr2 = this._base64ToAsciiC;
        cArr[i7] = cArr2[(i2 >> 18) & 63];
        cArr[i7 + 1] = cArr2[(i2 >> 12) & 63];
        int i8 = i7 + 3;
        cArr[i7 + 2] = cArr2[(i2 >> 6) & 63];
        int i9 = i7 + 4;
        cArr[i8] = cArr2[i2 & 63];
        return i9;
    }

    public int encodeBase64Partial(int i2, int i7, char[] cArr, int i8) {
        char[] cArr2 = this._base64ToAsciiC;
        cArr[i8] = cArr2[(i2 >> 18) & 63];
        int i9 = i8 + 2;
        cArr[i8 + 1] = cArr2[(i2 >> 12) & 63];
        if (this._usesPadding) {
            int i10 = i8 + 3;
            cArr[i9] = i7 == 2 ? cArr2[(i2 >> 6) & 63] : this._paddingChar;
            int i11 = i8 + 4;
            cArr[i10] = this._paddingChar;
            return i11;
        }
        if (i7 != 2) {
            return i9;
        }
        int i12 = i8 + 3;
        cArr[i9] = cArr2[(i2 >> 6) & 63];
        return i12;
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    public int getMaxLineLength() {
        return this._maxLineLength;
    }

    public String getName() {
        return this._name;
    }

    public byte getPaddingByte() {
        return (byte) this._paddingChar;
    }

    public char getPaddingChar() {
        return this._paddingChar;
    }

    public int hashCode() {
        return this._name.hashCode();
    }

    public String missingPaddingMessage() {
        return String.format("Unexpected end of base64-encoded String: base64 variant '%s' expects padding (one or more '%c' characters) at the end", getName(), Character.valueOf(getPaddingChar()));
    }

    public Object readResolve() {
        return Base64Variants.valueOf(this._name);
    }

    public String toString() {
        return this._name;
    }

    public boolean usesPadding() {
        return this._usesPadding;
    }

    public boolean usesPaddingChar(char c7) {
        return c7 == this._paddingChar;
    }

    public int decodeBase64Char(int i2) {
        if (i2 <= 127) {
            return this._asciiToBase64[i2];
        }
        return -1;
    }

    public String encode(byte[] bArr, boolean z6) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder((length >> 2) + length + (length >> 3));
        if (z6) {
            sb.append('\"');
        }
        int maxLineLength = getMaxLineLength() >> 2;
        int i2 = length - 3;
        int i7 = 0;
        while (i7 <= i2) {
            int i8 = i7 + 2;
            int i9 = ((bArr[i7 + 1] & 255) | (bArr[i7] << 8)) << 8;
            i7 += 3;
            encodeBase64Chunk(sb, i9 | (bArr[i8] & 255));
            maxLineLength--;
            if (maxLineLength <= 0) {
                sb.append(TokenParser.ESCAPE);
                sb.append('n');
                maxLineLength = getMaxLineLength() >> 2;
            }
        }
        int i10 = length - i7;
        if (i10 > 0) {
            int i11 = i7 + 1;
            int i12 = bArr[i7] << 16;
            if (i10 == 2) {
                i12 |= (bArr[i11] & 255) << 8;
            }
            encodeBase64Partial(sb, i12, i10);
        }
        if (z6) {
            sb.append('\"');
        }
        return sb.toString();
    }

    public boolean usesPaddingChar(int i2) {
        return i2 == this._paddingChar;
    }

    public void decode(String str, ByteArrayBuilder byteArrayBuilder) throws IllegalArgumentException {
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            int i7 = i2 + 1;
            char charAt = str.charAt(i2);
            if (charAt > ' ') {
                int decodeBase64Char = decodeBase64Char(charAt);
                if (decodeBase64Char < 0) {
                    _reportInvalidBase64(charAt, 0, null);
                }
                if (i7 >= length) {
                    _reportBase64EOF();
                }
                int i8 = i2 + 2;
                char charAt2 = str.charAt(i7);
                int decodeBase64Char2 = decodeBase64Char(charAt2);
                if (decodeBase64Char2 < 0) {
                    _reportInvalidBase64(charAt2, 1, null);
                }
                int i9 = (decodeBase64Char << 6) | decodeBase64Char2;
                if (i8 >= length) {
                    if (!usesPadding()) {
                        byteArrayBuilder.append(i9 >> 4);
                        return;
                    }
                    _reportBase64EOF();
                }
                int i10 = i2 + 3;
                char charAt3 = str.charAt(i8);
                int decodeBase64Char3 = decodeBase64Char(charAt3);
                if (decodeBase64Char3 < 0) {
                    if (decodeBase64Char3 != -2) {
                        _reportInvalidBase64(charAt3, 2, null);
                    }
                    if (i10 >= length) {
                        _reportBase64EOF();
                    }
                    i2 += 4;
                    char charAt4 = str.charAt(i10);
                    if (!usesPaddingChar(charAt4)) {
                        _reportInvalidBase64(charAt4, 3, "expected padding character '" + getPaddingChar() + "'");
                    }
                    byteArrayBuilder.append(i9 >> 4);
                } else {
                    int i11 = (i9 << 6) | decodeBase64Char3;
                    if (i10 >= length) {
                        if (!usesPadding()) {
                            byteArrayBuilder.appendTwoBytes(i11 >> 2);
                            return;
                        }
                        _reportBase64EOF();
                    }
                    i2 += 4;
                    char charAt5 = str.charAt(i10);
                    int decodeBase64Char4 = decodeBase64Char(charAt5);
                    if (decodeBase64Char4 < 0) {
                        if (decodeBase64Char4 != -2) {
                            _reportInvalidBase64(charAt5, 3, null);
                        }
                        byteArrayBuilder.appendTwoBytes(i11 >> 2);
                    } else {
                        byteArrayBuilder.appendThreeBytes((i11 << 6) | decodeBase64Char4);
                    }
                }
            } else {
                i2 = i7;
            }
        }
    }

    public void encodeBase64Chunk(StringBuilder sb, int i2) {
        sb.append(this._base64ToAsciiC[(i2 >> 18) & 63]);
        sb.append(this._base64ToAsciiC[(i2 >> 12) & 63]);
        sb.append(this._base64ToAsciiC[(i2 >> 6) & 63]);
        sb.append(this._base64ToAsciiC[i2 & 63]);
    }

    public void encodeBase64Partial(StringBuilder sb, int i2, int i7) {
        sb.append(this._base64ToAsciiC[(i2 >> 18) & 63]);
        sb.append(this._base64ToAsciiC[(i2 >> 12) & 63]);
        if (this._usesPadding) {
            sb.append(i7 == 2 ? this._base64ToAsciiC[(i2 >> 6) & 63] : this._paddingChar);
            sb.append(this._paddingChar);
        } else if (i7 == 2) {
            sb.append(this._base64ToAsciiC[(i2 >> 6) & 63]);
        }
    }

    public int encodeBase64Chunk(int i2, byte[] bArr, int i7) {
        byte[] bArr2 = this._base64ToAsciiB;
        bArr[i7] = bArr2[(i2 >> 18) & 63];
        bArr[i7 + 1] = bArr2[(i2 >> 12) & 63];
        int i8 = i7 + 3;
        bArr[i7 + 2] = bArr2[(i2 >> 6) & 63];
        int i9 = i7 + 4;
        bArr[i8] = bArr2[i2 & 63];
        return i9;
    }

    public int encodeBase64Partial(int i2, int i7, byte[] bArr, int i8) {
        byte[] bArr2 = this._base64ToAsciiB;
        bArr[i8] = bArr2[(i2 >> 18) & 63];
        int i9 = i8 + 2;
        bArr[i8 + 1] = bArr2[(i2 >> 12) & 63];
        if (!this._usesPadding) {
            if (i7 != 2) {
                return i9;
            }
            int i10 = i8 + 3;
            bArr[i9] = bArr2[(i2 >> 6) & 63];
            return i10;
        }
        byte b7 = (byte) this._paddingChar;
        int i11 = i8 + 3;
        bArr[i9] = i7 == 2 ? bArr2[(i2 >> 6) & 63] : b7;
        int i12 = i8 + 4;
        bArr[i11] = b7;
        return i12;
    }

    public String encode(byte[] bArr, boolean z6, String str) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder((length >> 2) + length + (length >> 3));
        if (z6) {
            sb.append('\"');
        }
        int maxLineLength = getMaxLineLength() >> 2;
        int i2 = length - 3;
        int i7 = 0;
        while (i7 <= i2) {
            int i8 = i7 + 2;
            int i9 = ((bArr[i7 + 1] & 255) | (bArr[i7] << 8)) << 8;
            i7 += 3;
            encodeBase64Chunk(sb, i9 | (bArr[i8] & 255));
            maxLineLength--;
            if (maxLineLength <= 0) {
                sb.append(str);
                maxLineLength = getMaxLineLength() >> 2;
            }
        }
        int i10 = length - i7;
        if (i10 > 0) {
            int i11 = i7 + 1;
            int i12 = bArr[i7] << 16;
            if (i10 == 2) {
                i12 |= (bArr[i11] & 255) << 8;
            }
            encodeBase64Partial(sb, i12, i10);
        }
        if (z6) {
            sb.append('\"');
        }
        return sb.toString();
    }

    public Base64Variant(Base64Variant base64Variant, String str, int i2) {
        this(base64Variant, str, base64Variant._usesPadding, base64Variant._paddingChar, i2);
    }

    public Base64Variant(Base64Variant base64Variant, String str, boolean z6, char c7, int i2) {
        int[] iArr = new int[128];
        this._asciiToBase64 = iArr;
        char[] cArr = new char[64];
        this._base64ToAsciiC = cArr;
        byte[] bArr = new byte[64];
        this._base64ToAsciiB = bArr;
        this._name = str;
        byte[] bArr2 = base64Variant._base64ToAsciiB;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        char[] cArr2 = base64Variant._base64ToAsciiC;
        System.arraycopy(cArr2, 0, cArr, 0, cArr2.length);
        int[] iArr2 = base64Variant._asciiToBase64;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this._usesPadding = z6;
        this._paddingChar = c7;
        this._maxLineLength = i2;
    }
}
