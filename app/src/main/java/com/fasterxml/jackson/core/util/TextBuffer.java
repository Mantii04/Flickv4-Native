package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.io.NumberInput;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class TextBuffer {
    static final int MAX_SEGMENT_LEN = 65536;
    static final int MIN_SEGMENT_LEN = 500;
    static final char[] NO_CHARS = new char[0];
    private final BufferRecycler _allocator;
    private char[] _currentSegment;
    private int _currentSize;
    private boolean _hasSegments;
    private char[] _inputBuffer;
    private int _inputLen;
    private int _inputStart;
    private char[] _resultArray;
    private String _resultString;
    private int _segmentSize;
    private ArrayList<char[]> _segments;

    public TextBuffer(BufferRecycler bufferRecycler) {
        this._allocator = bufferRecycler;
    }

    private char[] buf(int i2) {
        BufferRecycler bufferRecycler = this._allocator;
        return bufferRecycler != null ? bufferRecycler.allocCharBuffer(2, i2) : new char[Math.max(i2, 500)];
    }

    private char[] carr(int i2) {
        return new char[i2];
    }

    private void clearSegments() {
        this._hasSegments = false;
        this._segments.clear();
        this._segmentSize = 0;
        this._currentSize = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002a, code lost:
    
        if (r3 > 65536) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void expand(int r3) {
        /*
            r2 = this;
            java.util.ArrayList<char[]> r3 = r2._segments
            if (r3 != 0) goto Lb
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            r2._segments = r3
        Lb:
            char[] r3 = r2._currentSegment
            r0 = 1
            r2._hasSegments = r0
            java.util.ArrayList<char[]> r0 = r2._segments
            r0.add(r3)
            int r0 = r2._segmentSize
            int r1 = r3.length
            int r0 = r0 + r1
            r2._segmentSize = r0
            r0 = 0
            r2._currentSize = r0
            int r3 = r3.length
            int r0 = r3 >> 1
            int r3 = r3 + r0
            r0 = 500(0x1f4, float:7.0E-43)
            if (r3 >= r0) goto L28
        L26:
            r3 = r0
            goto L2d
        L28:
            r0 = 65536(0x10000, float:9.18355E-41)
            if (r3 <= r0) goto L2d
            goto L26
        L2d:
            char[] r3 = r2.carr(r3)
            r2._currentSegment = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.util.TextBuffer.expand(int):void");
    }

    public static TextBuffer fromInitial(char[] cArr) {
        return new TextBuffer(null, cArr);
    }

    private char[] resultArray() {
        int i2;
        String str = this._resultString;
        if (str != null) {
            return str.toCharArray();
        }
        int i7 = this._inputStart;
        if (i7 >= 0) {
            int i8 = this._inputLen;
            return i8 < 1 ? NO_CHARS : i7 == 0 ? Arrays.copyOf(this._inputBuffer, i8) : Arrays.copyOfRange(this._inputBuffer, i7, i8 + i7);
        }
        int size = size();
        if (size < 1) {
            return NO_CHARS;
        }
        char[] carr = carr(size);
        ArrayList<char[]> arrayList = this._segments;
        if (arrayList != null) {
            int size2 = arrayList.size();
            i2 = 0;
            for (int i9 = 0; i9 < size2; i9++) {
                char[] cArr = this._segments.get(i9);
                int length = cArr.length;
                System.arraycopy(cArr, 0, carr, i2, length);
                i2 += length;
            }
        } else {
            i2 = 0;
        }
        System.arraycopy(this._currentSegment, 0, carr, i2, this._currentSize);
        return carr;
    }

    private void unshare(int i2) {
        int i7 = this._inputLen;
        this._inputLen = 0;
        char[] cArr = this._inputBuffer;
        this._inputBuffer = null;
        int i8 = this._inputStart;
        this._inputStart = -1;
        int i9 = i2 + i7;
        char[] cArr2 = this._currentSegment;
        if (cArr2 == null || i9 > cArr2.length) {
            this._currentSegment = buf(i9);
        }
        if (i7 > 0) {
            System.arraycopy(cArr, i8, this._currentSegment, 0, i7);
        }
        this._segmentSize = 0;
        this._currentSize = i7;
    }

    public void append(char c7) {
        if (this._inputStart >= 0) {
            unshare(16);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr = this._currentSegment;
        if (this._currentSize >= cArr.length) {
            expand(1);
            cArr = this._currentSegment;
        }
        int i2 = this._currentSize;
        this._currentSize = i2 + 1;
        cArr[i2] = c7;
    }

    public char[] contentsAsArray() {
        char[] cArr = this._resultArray;
        if (cArr != null) {
            return cArr;
        }
        char[] resultArray = resultArray();
        this._resultArray = resultArray;
        return resultArray;
    }

    public BigDecimal contentsAsDecimal() throws NumberFormatException {
        char[] cArr;
        char[] cArr2;
        char[] cArr3 = this._resultArray;
        if (cArr3 != null) {
            return NumberInput.parseBigDecimal(cArr3);
        }
        int i2 = this._inputStart;
        return (i2 < 0 || (cArr2 = this._inputBuffer) == null) ? (this._segmentSize != 0 || (cArr = this._currentSegment) == null) ? NumberInput.parseBigDecimal(contentsAsArray()) : NumberInput.parseBigDecimal(cArr, 0, this._currentSize) : NumberInput.parseBigDecimal(cArr2, i2, this._inputLen);
    }

    public double contentsAsDouble() throws NumberFormatException {
        return NumberInput.parseDouble(contentsAsString());
    }

    public int contentsAsInt(boolean z6) {
        char[] cArr;
        int i2 = this._inputStart;
        return (i2 < 0 || (cArr = this._inputBuffer) == null) ? z6 ? -NumberInput.parseInt(this._currentSegment, 1, this._currentSize - 1) : NumberInput.parseInt(this._currentSegment, 0, this._currentSize) : z6 ? -NumberInput.parseInt(cArr, i2 + 1, this._inputLen - 1) : NumberInput.parseInt(cArr, i2, this._inputLen);
    }

    public long contentsAsLong(boolean z6) {
        char[] cArr;
        int i2 = this._inputStart;
        return (i2 < 0 || (cArr = this._inputBuffer) == null) ? z6 ? -NumberInput.parseLong(this._currentSegment, 1, this._currentSize - 1) : NumberInput.parseLong(this._currentSegment, 0, this._currentSize) : z6 ? -NumberInput.parseLong(cArr, i2 + 1, this._inputLen - 1) : NumberInput.parseLong(cArr, i2, this._inputLen);
    }

    public String contentsAsString() {
        if (this._resultString == null) {
            char[] cArr = this._resultArray;
            if (cArr != null) {
                this._resultString = new String(cArr);
            } else {
                int i2 = this._inputStart;
                if (i2 >= 0) {
                    int i7 = this._inputLen;
                    if (i7 < 1) {
                        this._resultString = "";
                        return "";
                    }
                    this._resultString = new String(this._inputBuffer, i2, i7);
                } else {
                    int i8 = this._segmentSize;
                    int i9 = this._currentSize;
                    if (i8 == 0) {
                        this._resultString = i9 != 0 ? new String(this._currentSegment, 0, i9) : "";
                    } else {
                        StringBuilder sb = new StringBuilder(i8 + i9);
                        ArrayList<char[]> arrayList = this._segments;
                        if (arrayList != null) {
                            int size = arrayList.size();
                            for (int i10 = 0; i10 < size; i10++) {
                                char[] cArr2 = this._segments.get(i10);
                                sb.append(cArr2, 0, cArr2.length);
                            }
                        }
                        sb.append(this._currentSegment, 0, this._currentSize);
                        this._resultString = sb.toString();
                    }
                }
            }
        }
        return this._resultString;
    }

    public int contentsToWriter(Writer writer) throws IOException {
        int i2;
        char[] cArr = this._resultArray;
        if (cArr != null) {
            writer.write(cArr);
            return this._resultArray.length;
        }
        String str = this._resultString;
        if (str != null) {
            writer.write(str);
            return this._resultString.length();
        }
        int i7 = this._inputStart;
        if (i7 >= 0) {
            int i8 = this._inputLen;
            if (i8 > 0) {
                writer.write(this._inputBuffer, i7, i8);
            }
            return i8;
        }
        ArrayList<char[]> arrayList = this._segments;
        if (arrayList != null) {
            int size = arrayList.size();
            i2 = 0;
            for (int i9 = 0; i9 < size; i9++) {
                char[] cArr2 = this._segments.get(i9);
                int length = cArr2.length;
                writer.write(cArr2, 0, length);
                i2 += length;
            }
        } else {
            i2 = 0;
        }
        int i10 = this._currentSize;
        if (i10 <= 0) {
            return i2;
        }
        writer.write(this._currentSegment, 0, i10);
        return i2 + i10;
    }

    public char[] emptyAndGetCurrentSegment() {
        this._inputStart = -1;
        this._currentSize = 0;
        this._inputLen = 0;
        this._inputBuffer = null;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
        char[] cArr = this._currentSegment;
        if (cArr != null) {
            return cArr;
        }
        char[] buf = buf(0);
        this._currentSegment = buf;
        return buf;
    }

    public void ensureNotShared() {
        if (this._inputStart >= 0) {
            unshare(16);
        }
    }

    public char[] expandCurrentSegment() {
        char[] cArr = this._currentSegment;
        int length = cArr.length;
        int i2 = (length >> 1) + length;
        if (i2 > 65536) {
            i2 = (length >> 2) + length;
        }
        char[] copyOf = Arrays.copyOf(cArr, i2);
        this._currentSegment = copyOf;
        return copyOf;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
    
        if (r0 > 65536) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public char[] finishCurrentSegment() {
        /*
            r2 = this;
            java.util.ArrayList<char[]> r0 = r2._segments
            if (r0 != 0) goto Lb
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r2._segments = r0
        Lb:
            r0 = 1
            r2._hasSegments = r0
            java.util.ArrayList<char[]> r0 = r2._segments
            char[] r1 = r2._currentSegment
            r0.add(r1)
            char[] r0 = r2._currentSegment
            int r0 = r0.length
            int r1 = r2._segmentSize
            int r1 = r1 + r0
            r2._segmentSize = r1
            r1 = 0
            r2._currentSize = r1
            int r1 = r0 >> 1
            int r0 = r0 + r1
            r1 = 500(0x1f4, float:7.0E-43)
            if (r0 >= r1) goto L29
        L27:
            r0 = r1
            goto L2e
        L29:
            r1 = 65536(0x10000, float:9.18355E-41)
            if (r0 <= r1) goto L2e
            goto L27
        L2e:
            char[] r0 = r2.carr(r0)
            r2._currentSegment = r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.util.TextBuffer.finishCurrentSegment():char[]");
    }

    public char[] getBufferWithoutReset() {
        return this._currentSegment;
    }

    public char[] getCurrentSegment() {
        if (this._inputStart >= 0) {
            unshare(1);
        } else {
            char[] cArr = this._currentSegment;
            if (cArr == null) {
                this._currentSegment = buf(0);
            } else if (this._currentSize >= cArr.length) {
                expand(1);
            }
        }
        return this._currentSegment;
    }

    public int getCurrentSegmentSize() {
        return this._currentSize;
    }

    public char[] getTextBuffer() {
        if (this._inputStart >= 0) {
            return this._inputBuffer;
        }
        char[] cArr = this._resultArray;
        if (cArr != null) {
            return cArr;
        }
        String str = this._resultString;
        if (str != null) {
            char[] charArray = str.toCharArray();
            this._resultArray = charArray;
            return charArray;
        }
        if (this._hasSegments) {
            return contentsAsArray();
        }
        char[] cArr2 = this._currentSegment;
        return cArr2 == null ? NO_CHARS : cArr2;
    }

    public int getTextOffset() {
        int i2 = this._inputStart;
        if (i2 >= 0) {
            return i2;
        }
        return 0;
    }

    public boolean hasTextAsCharacters() {
        return this._inputStart >= 0 || this._resultArray != null || this._resultString == null;
    }

    public void releaseBuffers() {
        if (this._allocator == null) {
            resetWithEmpty();
        } else if (this._currentSegment != null) {
            resetWithEmpty();
            char[] cArr = this._currentSegment;
            this._currentSegment = null;
            this._allocator.releaseCharBuffer(2, cArr);
        }
    }

    public void resetWith(char c7) {
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        } else if (this._currentSegment == null) {
            this._currentSegment = buf(1);
        }
        this._currentSegment[0] = c7;
        this._segmentSize = 1;
        this._currentSize = 1;
    }

    public void resetWithCopy(char[] cArr, int i2, int i7) {
        this._inputBuffer = null;
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        } else if (this._currentSegment == null) {
            this._currentSegment = buf(i7);
        }
        this._segmentSize = 0;
        this._currentSize = 0;
        append(cArr, i2, i7);
    }

    public void resetWithEmpty() {
        this._inputStart = -1;
        this._currentSize = 0;
        this._inputLen = 0;
        this._inputBuffer = null;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
    }

    public void resetWithShared(char[] cArr, int i2, int i7) {
        this._resultString = null;
        this._resultArray = null;
        this._inputBuffer = cArr;
        this._inputStart = i2;
        this._inputLen = i7;
        if (this._hasSegments) {
            clearSegments();
        }
    }

    public void resetWithString(String str) {
        this._inputBuffer = null;
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = str;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
        this._currentSize = 0;
    }

    public String setCurrentAndReturn(int i2) {
        this._currentSize = i2;
        if (this._segmentSize > 0) {
            return contentsAsString();
        }
        String str = i2 == 0 ? "" : new String(this._currentSegment, 0, i2);
        this._resultString = str;
        return str;
    }

    public void setCurrentLength(int i2) {
        this._currentSize = i2;
    }

    public int size() {
        if (this._inputStart >= 0) {
            return this._inputLen;
        }
        char[] cArr = this._resultArray;
        if (cArr != null) {
            return cArr.length;
        }
        String str = this._resultString;
        return str != null ? str.length() : this._segmentSize + this._currentSize;
    }

    public String toString() {
        return contentsAsString();
    }

    public TextBuffer(BufferRecycler bufferRecycler, char[] cArr) {
        this._allocator = bufferRecycler;
        this._currentSegment = cArr;
        this._currentSize = cArr.length;
        this._inputStart = -1;
    }

    public char[] expandCurrentSegment(int i2) {
        char[] cArr = this._currentSegment;
        if (cArr.length >= i2) {
            return cArr;
        }
        char[] copyOf = Arrays.copyOf(cArr, i2);
        this._currentSegment = copyOf;
        return copyOf;
    }

    public void append(char[] cArr, int i2, int i7) {
        if (this._inputStart >= 0) {
            unshare(i7);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr2 = this._currentSegment;
        int length = cArr2.length;
        int i8 = this._currentSize;
        int i9 = length - i8;
        if (i9 >= i7) {
            System.arraycopy(cArr, i2, cArr2, i8, i7);
            this._currentSize += i7;
            return;
        }
        if (i9 > 0) {
            System.arraycopy(cArr, i2, cArr2, i8, i9);
            i2 += i9;
            i7 -= i9;
        }
        do {
            expand(i7);
            int min = Math.min(this._currentSegment.length, i7);
            System.arraycopy(cArr, i2, this._currentSegment, 0, min);
            this._currentSize += min;
            i2 += min;
            i7 -= min;
        } while (i7 > 0);
    }

    public void resetWithCopy(String str, int i2, int i7) {
        this._inputBuffer = null;
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        } else if (this._currentSegment == null) {
            this._currentSegment = buf(i7);
        }
        this._segmentSize = 0;
        this._currentSize = 0;
        append(str, i2, i7);
    }

    public void append(String str, int i2, int i7) {
        if (this._inputStart >= 0) {
            unshare(i7);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr = this._currentSegment;
        int length = cArr.length;
        int i8 = this._currentSize;
        int i9 = length - i8;
        if (i9 >= i7) {
            str.getChars(i2, i2 + i7, cArr, i8);
            this._currentSize += i7;
            return;
        }
        if (i9 > 0) {
            int i10 = i2 + i9;
            str.getChars(i2, i10, cArr, i8);
            i7 -= i9;
            i2 = i10;
        }
        while (true) {
            expand(i7);
            int min = Math.min(this._currentSegment.length, i7);
            int i11 = i2 + min;
            str.getChars(i2, i11, this._currentSegment, 0);
            this._currentSize += min;
            i7 -= min;
            if (i7 <= 0) {
                return;
            } else {
                i2 = i11;
            }
        }
    }
}
