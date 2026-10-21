package com.fasterxml.jackson.core.sym;

import A.i;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class ByteQuadsCanonicalizer {
    private static final int DEFAULT_T_SIZE = 64;
    static final int MAX_ENTRIES_FOR_REUSE = 6000;
    private static final int MAX_T_SIZE = 65536;
    private static final int MIN_HASH_SIZE = 16;
    private static final int MULT = 33;
    private static final int MULT2 = 65599;
    private static final int MULT3 = 31;
    private int _count;
    private final boolean _failOnDoS;
    private int[] _hashArea;
    private boolean _hashShared;
    private int _hashSize;
    private boolean _intern;
    private int _longNameOffset;
    private String[] _names;
    private final ByteQuadsCanonicalizer _parent;
    private int _secondaryStart;
    private final int _seed;
    private int _spilloverEnd;
    private final AtomicReference<TableInfo> _tableInfo;
    private int _tertiaryShift;
    private int _tertiaryStart;

    private ByteQuadsCanonicalizer(int i2, boolean z6, int i7, boolean z7) {
        this._parent = null;
        this._seed = i7;
        this._intern = z6;
        this._failOnDoS = z7;
        int i8 = 16;
        if (i2 >= 16) {
            if (((i2 - 1) & i2) != 0) {
                while (i8 < i2) {
                    i8 += i8;
                }
            }
            this._tableInfo = new AtomicReference<>(TableInfo.createInitial(i2));
        }
        i2 = i8;
        this._tableInfo = new AtomicReference<>(TableInfo.createInitial(i2));
    }

    private int _appendLongName(int[] iArr, int i2) {
        int i7 = this._longNameOffset;
        int i8 = i7 + i2;
        int[] iArr2 = this._hashArea;
        if (i8 > iArr2.length) {
            this._hashArea = Arrays.copyOf(this._hashArea, Math.max(i8 - iArr2.length, Math.min(4096, this._hashSize)) + this._hashArea.length);
        }
        System.arraycopy(iArr, 0, this._hashArea, i7, i2);
        this._longNameOffset += i2;
        return i7;
    }

    private final int _calcOffset(int i2) {
        return (i2 & (this._hashSize - 1)) << 2;
    }

    public static int _calcTertiaryShift(int i2) {
        int i7 = i2 >> 2;
        if (i7 < 64) {
            return 4;
        }
        if (i7 <= 256) {
            return 5;
        }
        return i7 <= 1024 ? 6 : 7;
    }

    private boolean _checkNeedForRehash() {
        if (this._count <= (this._hashSize >> 1)) {
            return false;
        }
        int _spilloverStart = (this._spilloverEnd - _spilloverStart()) >> 2;
        int i2 = this._count;
        return _spilloverStart > ((i2 + 1) >> 7) || ((double) i2) > ((double) this._hashSize) * 0.8d;
    }

    private int _findOffsetForAdd(int i2) {
        int _calcOffset = _calcOffset(i2);
        int[] iArr = this._hashArea;
        if (iArr[_calcOffset + 3] == 0) {
            return _calcOffset;
        }
        if (_checkNeedForRehash()) {
            return _resizeAndFindOffsetForAdd(i2);
        }
        int i7 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        if (iArr[i7 + 3] == 0) {
            return i7;
        }
        int i8 = this._tertiaryStart;
        int i9 = this._tertiaryShift;
        int i10 = i8 + ((_calcOffset >> (i9 + 2)) << i9);
        int i11 = (1 << i9) + i10;
        while (i10 < i11) {
            if (iArr[i10 + 3] == 0) {
                return i10;
            }
            i10 += 4;
        }
        int i12 = this._spilloverEnd;
        int i13 = i12 + 4;
        this._spilloverEnd = i13;
        if (i13 < (this._hashSize << 3)) {
            return i12;
        }
        if (this._failOnDoS) {
            _reportTooManyCollisions();
        }
        return _resizeAndFindOffsetForAdd(i2);
    }

    private String _findSecondary(int i2, int i7) {
        int i8 = this._tertiaryStart;
        int i9 = this._tertiaryShift;
        int i10 = i8 + ((i2 >> (i9 + 2)) << i9);
        int[] iArr = this._hashArea;
        int i11 = (1 << i9) + i10;
        while (i10 < i11) {
            int i12 = iArr[i10 + 3];
            if (i7 == iArr[i10] && 1 == i12) {
                return this._names[i10 >> 2];
            }
            if (i12 == 0) {
                return null;
            }
            i10 += 4;
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i7 == iArr[_spilloverStart] && 1 == iArr[_spilloverStart + 3]) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    private int _resizeAndFindOffsetForAdd(int i2) {
        rehash();
        int _calcOffset = _calcOffset(i2);
        int[] iArr = this._hashArea;
        if (iArr[_calcOffset + 3] == 0) {
            return _calcOffset;
        }
        int i7 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        if (iArr[i7 + 3] == 0) {
            return i7;
        }
        int i8 = this._tertiaryStart;
        int i9 = this._tertiaryShift;
        int i10 = i8 + ((_calcOffset >> (i9 + 2)) << i9);
        int i11 = (1 << i9) + i10;
        while (i10 < i11) {
            if (iArr[i10 + 3] == 0) {
                return i10;
            }
            i10 += 4;
        }
        int i12 = this._spilloverEnd;
        this._spilloverEnd = i12 + 4;
        return i12;
    }

    private final int _spilloverStart() {
        int i2 = this._hashSize;
        return (i2 << 3) - i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0023 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0031 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean _verifyLongName(int[] r8, int r9, int r10) {
        /*
            r7 = this;
            int[] r0 = r7._hashArea
            r1 = 1
            r2 = 0
            switch(r9) {
                case 4: goto L42;
                case 5: goto L34;
                case 6: goto L26;
                case 7: goto L18;
                case 8: goto Lc;
                default: goto L7;
            }
        L7:
            boolean r8 = r7._verifyLongName2(r8, r9, r10)
            return r8
        Lc:
            r9 = r8[r2]
            int r3 = r10 + 1
            r10 = r0[r10]
            if (r9 == r10) goto L15
            return r2
        L15:
            r9 = r1
            r10 = r3
            goto L19
        L18:
            r9 = r2
        L19:
            int r3 = r9 + 1
            r9 = r8[r9]
            int r4 = r10 + 1
            r10 = r0[r10]
            if (r9 == r10) goto L24
            return r2
        L24:
            r10 = r4
            goto L27
        L26:
            r3 = r2
        L27:
            int r9 = r3 + 1
            r3 = r8[r3]
            int r4 = r10 + 1
            r10 = r0[r10]
            if (r3 == r10) goto L32
            return r2
        L32:
            r10 = r4
            goto L35
        L34:
            r9 = r2
        L35:
            int r3 = r9 + 1
            r9 = r8[r9]
            int r4 = r10 + 1
            r10 = r0[r10]
            if (r9 == r10) goto L40
            return r2
        L40:
            r10 = r4
            goto L43
        L42:
            r3 = r2
        L43:
            int r9 = r3 + 1
            r4 = r8[r3]
            int r5 = r10 + 1
            r6 = r0[r10]
            if (r4 == r6) goto L4e
            return r2
        L4e:
            int r4 = r3 + 2
            r9 = r8[r9]
            int r6 = r10 + 2
            r5 = r0[r5]
            if (r9 == r5) goto L59
            return r2
        L59:
            int r3 = r3 + 3
            r9 = r8[r4]
            int r10 = r10 + 3
            r4 = r0[r6]
            if (r9 == r4) goto L64
            return r2
        L64:
            r8 = r8[r3]
            r9 = r0[r10]
            if (r8 == r9) goto L6b
            return r2
        L6b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer._verifyLongName(int[], int, int):boolean");
    }

    private boolean _verifyLongName2(int[] iArr, int i2, int i7) {
        int i8 = 0;
        while (true) {
            int i9 = i8 + 1;
            int i10 = i7 + 1;
            if (iArr[i8] != this._hashArea[i7]) {
                return false;
            }
            if (i9 >= i2) {
                return true;
            }
            i8 = i9;
            i7 = i10;
        }
    }

    private void _verifySharing() {
        if (this._hashShared) {
            int[] iArr = this._hashArea;
            this._hashArea = Arrays.copyOf(iArr, iArr.length);
            String[] strArr = this._names;
            this._names = (String[]) Arrays.copyOf(strArr, strArr.length);
            this._hashShared = false;
        }
    }

    public static ByteQuadsCanonicalizer createRoot() {
        long currentTimeMillis = System.currentTimeMillis();
        return createRoot((((int) currentTimeMillis) + ((int) (currentTimeMillis >>> 32))) | 1);
    }

    private void mergeChild(TableInfo tableInfo) {
        int i2 = tableInfo.count;
        TableInfo tableInfo2 = this._tableInfo.get();
        if (i2 == tableInfo2.count) {
            return;
        }
        if (i2 > 6000) {
            tableInfo = TableInfo.createInitial(64);
        }
        AtomicReference<TableInfo> atomicReference = this._tableInfo;
        while (!atomicReference.compareAndSet(tableInfo2, tableInfo) && atomicReference.get() == tableInfo2) {
        }
    }

    private void nukeSymbols(boolean z6) {
        this._count = 0;
        this._spilloverEnd = _spilloverStart();
        this._longNameOffset = this._hashSize << 3;
        if (z6) {
            Arrays.fill(this._hashArea, 0);
            Arrays.fill(this._names, (Object) null);
        }
    }

    private void rehash() {
        this._hashShared = false;
        int[] iArr = this._hashArea;
        String[] strArr = this._names;
        int i2 = this._hashSize;
        int i7 = this._count;
        int i8 = i2 + i2;
        int i9 = this._spilloverEnd;
        if (i8 > 65536) {
            nukeSymbols(true);
            return;
        }
        this._hashArea = new int[iArr.length + (i2 << 3)];
        this._hashSize = i8;
        int i10 = i8 << 2;
        this._secondaryStart = i10;
        this._tertiaryStart = i10 + (i10 >> 1);
        this._tertiaryShift = _calcTertiaryShift(i8);
        this._names = new String[strArr.length << 1];
        nukeSymbols(false);
        int[] iArr2 = new int[16];
        int i11 = 0;
        for (int i12 = 0; i12 < i9; i12 += 4) {
            int i13 = iArr[i12 + 3];
            if (i13 != 0) {
                i11++;
                String str = strArr[i12 >> 2];
                if (i13 == 1) {
                    iArr2[0] = iArr[i12];
                    addName(str, iArr2, 1);
                } else if (i13 == 2) {
                    iArr2[0] = iArr[i12];
                    iArr2[1] = iArr[i12 + 1];
                    addName(str, iArr2, 2);
                } else if (i13 != 3) {
                    if (i13 > iArr2.length) {
                        iArr2 = new int[i13];
                    }
                    System.arraycopy(iArr, iArr[i12 + 1], iArr2, 0, i13);
                    addName(str, iArr2, i13);
                } else {
                    iArr2[0] = iArr[i12];
                    iArr2[1] = iArr[i12 + 1];
                    iArr2[2] = iArr[i12 + 2];
                    addName(str, iArr2, 3);
                }
            }
        }
        if (i11 != i7) {
            throw new IllegalStateException(i.e(i7, i11, "Failed rehash(): old count=", ", copyCount="));
        }
    }

    public void _reportTooManyCollisions() {
        if (this._hashSize <= 1024) {
            return;
        }
        StringBuilder sb = new StringBuilder("Spill-over slots in symbol table with ");
        sb.append(this._count);
        sb.append(" entries, hash area of ");
        sb.append(this._hashSize);
        sb.append(" slots is now full (all ");
        throw new IllegalStateException(i.m(sb, this._hashSize >> 3, " slots -- suspect a DoS attack based on hash collisions. You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`"));
    }

    public String addName(String str, int i2) {
        _verifySharing();
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        int _findOffsetForAdd = _findOffsetForAdd(calcHash(i2));
        int[] iArr = this._hashArea;
        iArr[_findOffsetForAdd] = i2;
        iArr[_findOffsetForAdd + 3] = 1;
        this._names[_findOffsetForAdd >> 2] = str;
        this._count++;
        return str;
    }

    public int bucketCount() {
        return this._hashSize;
    }

    public int calcHash(int i2) {
        int i7 = i2 ^ this._seed;
        int i8 = i7 + (i7 >>> 16);
        int i9 = i8 ^ (i8 << 3);
        return i9 + (i9 >>> 12);
    }

    public String findName(int i2) {
        int _calcOffset = _calcOffset(calcHash(i2));
        int[] iArr = this._hashArea;
        int i7 = iArr[_calcOffset + 3];
        if (i7 == 1) {
            if (iArr[_calcOffset] == i2) {
                return this._names[_calcOffset >> 2];
            }
        } else if (i7 == 0) {
            return null;
        }
        int i8 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        int i9 = iArr[i8 + 3];
        if (i9 == 1) {
            if (iArr[i8] == i2) {
                return this._names[i8 >> 2];
            }
        } else if (i9 == 0) {
            return null;
        }
        return _findSecondary(_calcOffset, i2);
    }

    public int hashSeed() {
        return this._seed;
    }

    public ByteQuadsCanonicalizer makeChild(int i2) {
        return new ByteQuadsCanonicalizer(this, JsonFactory.Feature.INTERN_FIELD_NAMES.enabledIn(i2), this._seed, JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(i2), this._tableInfo.get());
    }

    public boolean maybeDirty() {
        return !this._hashShared;
    }

    public int primaryCount() {
        int i2 = this._secondaryStart;
        int i7 = 0;
        for (int i8 = 3; i8 < i2; i8 += 4) {
            if (this._hashArea[i8] != 0) {
                i7++;
            }
        }
        return i7;
    }

    public void release() {
        if (this._parent == null || !maybeDirty()) {
            return;
        }
        this._parent.mergeChild(new TableInfo(this));
        this._hashShared = true;
    }

    public int secondaryCount() {
        int i2 = this._tertiaryStart;
        int i7 = 0;
        for (int i8 = this._secondaryStart + 3; i8 < i2; i8 += 4) {
            if (this._hashArea[i8] != 0) {
                i7++;
            }
        }
        return i7;
    }

    public int size() {
        AtomicReference<TableInfo> atomicReference = this._tableInfo;
        return atomicReference != null ? atomicReference.get().count : this._count;
    }

    public int spilloverCount() {
        return (this._spilloverEnd - _spilloverStart()) >> 2;
    }

    public int tertiaryCount() {
        int i2 = this._tertiaryStart + 3;
        int i7 = this._hashSize + i2;
        int i8 = 0;
        while (i2 < i7) {
            if (this._hashArea[i2] != 0) {
                i8++;
            }
            i2 += 4;
        }
        return i8;
    }

    public String toString() {
        int primaryCount = primaryCount();
        int secondaryCount = secondaryCount();
        int tertiaryCount = tertiaryCount();
        int spilloverCount = spilloverCount();
        return String.format("[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]", ByteQuadsCanonicalizer.class.getName(), Integer.valueOf(this._count), Integer.valueOf(this._hashSize), Integer.valueOf(primaryCount), Integer.valueOf(secondaryCount), Integer.valueOf(tertiaryCount), Integer.valueOf(spilloverCount), Integer.valueOf(primaryCount + secondaryCount + tertiaryCount + spilloverCount), Integer.valueOf(totalCount()));
    }

    public int totalCount() {
        int i2 = this._hashSize << 3;
        int i7 = 0;
        for (int i8 = 3; i8 < i2; i8 += 4) {
            if (this._hashArea[i8] != 0) {
                i7++;
            }
        }
        return i7;
    }

    public int calcHash(int i2, int i7) {
        int i8 = i2 + (i2 >>> 15);
        int i9 = this._seed ^ ((i7 * 33) + (i8 ^ (i8 >>> 9)));
        int i10 = i9 + (i9 >>> 16);
        int i11 = i10 ^ (i10 >>> 4);
        return i11 + (i11 << 3);
    }

    public static ByteQuadsCanonicalizer createRoot(int i2) {
        return new ByteQuadsCanonicalizer(64, true, i2, true);
    }

    public int calcHash(int i2, int i7, int i8) {
        int i9 = i2 ^ this._seed;
        int i10 = (((i9 + (i9 >>> 9)) * 31) + i7) * 33;
        int i11 = (i10 + (i10 >>> 15)) ^ i8;
        int i12 = i11 + (i11 >>> 4);
        int i13 = i12 + (i12 >>> 15);
        return i13 ^ (i13 << 9);
    }

    public int calcHash(int[] iArr, int i2) {
        if (i2 >= 4) {
            int i7 = iArr[0] ^ this._seed;
            int i8 = i7 + (i7 >>> 9) + iArr[1];
            int i9 = ((i8 + (i8 >>> 15)) * 33) ^ iArr[2];
            int i10 = i9 + (i9 >>> 4);
            for (int i11 = 3; i11 < i2; i11++) {
                int i12 = iArr[i11];
                i10 += i12 ^ (i12 >> 21);
            }
            int i13 = i10 * MULT2;
            int i14 = i13 + (i13 >>> 19);
            return (i14 << 5) ^ i14;
        }
        throw new IllegalArgumentException();
    }

    private ByteQuadsCanonicalizer(ByteQuadsCanonicalizer byteQuadsCanonicalizer, boolean z6, int i2, boolean z7, TableInfo tableInfo) {
        this._parent = byteQuadsCanonicalizer;
        this._seed = i2;
        this._intern = z6;
        this._failOnDoS = z7;
        this._tableInfo = null;
        this._count = tableInfo.count;
        int i7 = tableInfo.size;
        this._hashSize = i7;
        int i8 = i7 << 2;
        this._secondaryStart = i8;
        this._tertiaryStart = i8 + (i8 >> 1);
        this._tertiaryShift = tableInfo.tertiaryShift;
        this._hashArea = tableInfo.mainHash;
        this._names = tableInfo.names;
        this._spilloverEnd = tableInfo.spilloverEnd;
        this._longNameOffset = tableInfo.longNameOffset;
        this._hashShared = true;
    }

    public static final class TableInfo {
        public final int count;
        public final int longNameOffset;
        public final int[] mainHash;
        public final String[] names;
        public final int size;
        public final int spilloverEnd;
        public final int tertiaryShift;

        public TableInfo(int i2, int i7, int i8, int[] iArr, String[] strArr, int i9, int i10) {
            this.size = i2;
            this.count = i7;
            this.tertiaryShift = i8;
            this.mainHash = iArr;
            this.names = strArr;
            this.spilloverEnd = i9;
            this.longNameOffset = i10;
        }

        public static TableInfo createInitial(int i2) {
            int i7 = i2 << 3;
            return new TableInfo(i2, 0, ByteQuadsCanonicalizer._calcTertiaryShift(i2), new int[i7], new String[i2 << 1], i7 - i2, i7);
        }

        public TableInfo(ByteQuadsCanonicalizer byteQuadsCanonicalizer) {
            this.size = byteQuadsCanonicalizer._hashSize;
            this.count = byteQuadsCanonicalizer._count;
            this.tertiaryShift = byteQuadsCanonicalizer._tertiaryShift;
            this.mainHash = byteQuadsCanonicalizer._hashArea;
            this.names = byteQuadsCanonicalizer._names;
            this.spilloverEnd = byteQuadsCanonicalizer._spilloverEnd;
            this.longNameOffset = byteQuadsCanonicalizer._longNameOffset;
        }
    }

    private String _findSecondary(int i2, int i7, int i8) {
        int i9 = this._tertiaryStart;
        int i10 = this._tertiaryShift;
        int i11 = i9 + ((i2 >> (i10 + 2)) << i10);
        int[] iArr = this._hashArea;
        int i12 = (1 << i10) + i11;
        while (i11 < i12) {
            int i13 = iArr[i11 + 3];
            if (i7 == iArr[i11] && i8 == iArr[i11 + 1] && 2 == i13) {
                return this._names[i11 >> 2];
            }
            if (i13 == 0) {
                return null;
            }
            i11 += 4;
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i7 == iArr[_spilloverStart] && i8 == iArr[_spilloverStart + 1] && 2 == iArr[_spilloverStart + 3]) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    public String addName(String str, int i2, int i7) {
        _verifySharing();
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        int _findOffsetForAdd = _findOffsetForAdd(i7 == 0 ? calcHash(i2) : calcHash(i2, i7));
        int[] iArr = this._hashArea;
        iArr[_findOffsetForAdd] = i2;
        iArr[_findOffsetForAdd + 1] = i7;
        iArr[_findOffsetForAdd + 3] = 2;
        this._names[_findOffsetForAdd >> 2] = str;
        this._count++;
        return str;
    }

    public String findName(int i2, int i7) {
        int _calcOffset = _calcOffset(calcHash(i2, i7));
        int[] iArr = this._hashArea;
        int i8 = iArr[_calcOffset + 3];
        if (i8 == 2) {
            if (i2 == iArr[_calcOffset] && i7 == iArr[_calcOffset + 1]) {
                return this._names[_calcOffset >> 2];
            }
        } else if (i8 == 0) {
            return null;
        }
        int i9 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        int i10 = iArr[i9 + 3];
        if (i10 == 2) {
            if (i2 == iArr[i9] && i7 == iArr[i9 + 1]) {
                return this._names[i9 >> 2];
            }
        } else if (i10 == 0) {
            return null;
        }
        return _findSecondary(_calcOffset, i2, i7);
    }

    private String _findSecondary(int i2, int i7, int i8, int i9) {
        int i10 = this._tertiaryStart;
        int i11 = this._tertiaryShift;
        int i12 = i10 + ((i2 >> (i11 + 2)) << i11);
        int[] iArr = this._hashArea;
        int i13 = (1 << i11) + i12;
        while (i12 < i13) {
            int i14 = iArr[i12 + 3];
            if (i7 == iArr[i12] && i8 == iArr[i12 + 1] && i9 == iArr[i12 + 2] && 3 == i14) {
                return this._names[i12 >> 2];
            }
            if (i14 == 0) {
                return null;
            }
            i12 += 4;
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i7 == iArr[_spilloverStart] && i8 == iArr[_spilloverStart + 1] && i9 == iArr[_spilloverStart + 2] && 3 == iArr[_spilloverStart + 3]) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    public String addName(String str, int i2, int i7, int i8) {
        _verifySharing();
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        int _findOffsetForAdd = _findOffsetForAdd(calcHash(i2, i7, i8));
        int[] iArr = this._hashArea;
        iArr[_findOffsetForAdd] = i2;
        iArr[_findOffsetForAdd + 1] = i7;
        iArr[_findOffsetForAdd + 2] = i8;
        iArr[_findOffsetForAdd + 3] = 3;
        this._names[_findOffsetForAdd >> 2] = str;
        this._count++;
        return str;
    }

    public String findName(int i2, int i7, int i8) {
        int _calcOffset = _calcOffset(calcHash(i2, i7, i8));
        int[] iArr = this._hashArea;
        int i9 = iArr[_calcOffset + 3];
        if (i9 == 3) {
            if (i2 == iArr[_calcOffset] && iArr[_calcOffset + 1] == i7 && iArr[_calcOffset + 2] == i8) {
                return this._names[_calcOffset >> 2];
            }
        } else if (i9 == 0) {
            return null;
        }
        int i10 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        int i11 = iArr[i10 + 3];
        if (i11 == 3) {
            if (i2 == iArr[i10] && iArr[i10 + 1] == i7 && iArr[i10 + 2] == i8) {
                return this._names[i10 >> 2];
            }
        } else if (i11 == 0) {
            return null;
        }
        return _findSecondary(_calcOffset, i2, i7, i8);
    }

    private String _findSecondary(int i2, int i7, int[] iArr, int i8) {
        int i9 = this._tertiaryStart;
        int i10 = this._tertiaryShift;
        int i11 = i9 + ((i2 >> (i10 + 2)) << i10);
        int[] iArr2 = this._hashArea;
        int i12 = (1 << i10) + i11;
        while (i11 < i12) {
            int i13 = iArr2[i11 + 3];
            if (i7 == iArr2[i11] && i8 == i13 && _verifyLongName(iArr, i8, iArr2[i11 + 1])) {
                return this._names[i11 >> 2];
            }
            if (i13 == 0) {
                return null;
            }
            i11 += 4;
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i7 == iArr2[_spilloverStart] && i8 == iArr2[_spilloverStart + 3] && _verifyLongName(iArr, i8, iArr2[_spilloverStart + 1])) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    public String addName(String str, int[] iArr, int i2) {
        int _findOffsetForAdd;
        _verifySharing();
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        if (i2 == 1) {
            _findOffsetForAdd = _findOffsetForAdd(calcHash(iArr[0]));
            int[] iArr2 = this._hashArea;
            iArr2[_findOffsetForAdd] = iArr[0];
            iArr2[_findOffsetForAdd + 3] = 1;
        } else if (i2 == 2) {
            _findOffsetForAdd = _findOffsetForAdd(calcHash(iArr[0], iArr[1]));
            int[] iArr3 = this._hashArea;
            iArr3[_findOffsetForAdd] = iArr[0];
            iArr3[_findOffsetForAdd + 1] = iArr[1];
            iArr3[_findOffsetForAdd + 3] = 2;
        } else if (i2 != 3) {
            int calcHash = calcHash(iArr, i2);
            _findOffsetForAdd = _findOffsetForAdd(calcHash);
            this._hashArea[_findOffsetForAdd] = calcHash;
            int _appendLongName = _appendLongName(iArr, i2);
            int[] iArr4 = this._hashArea;
            iArr4[_findOffsetForAdd + 1] = _appendLongName;
            iArr4[_findOffsetForAdd + 3] = i2;
        } else {
            int _findOffsetForAdd2 = _findOffsetForAdd(calcHash(iArr[0], iArr[1], iArr[2]));
            int[] iArr5 = this._hashArea;
            iArr5[_findOffsetForAdd2] = iArr[0];
            iArr5[_findOffsetForAdd2 + 1] = iArr[1];
            iArr5[_findOffsetForAdd2 + 2] = iArr[2];
            iArr5[_findOffsetForAdd2 + 3] = 3;
            _findOffsetForAdd = _findOffsetForAdd2;
        }
        this._names[_findOffsetForAdd >> 2] = str;
        this._count++;
        return str;
    }

    public String findName(int[] iArr, int i2) {
        if (i2 < 4) {
            if (i2 == 1) {
                return findName(iArr[0]);
            }
            if (i2 == 2) {
                return findName(iArr[0], iArr[1]);
            }
            if (i2 != 3) {
                return "";
            }
            return findName(iArr[0], iArr[1], iArr[2]);
        }
        int calcHash = calcHash(iArr, i2);
        int _calcOffset = _calcOffset(calcHash);
        int[] iArr2 = this._hashArea;
        int i7 = iArr2[_calcOffset + 3];
        if (calcHash == iArr2[_calcOffset] && i7 == i2 && _verifyLongName(iArr, i2, iArr2[_calcOffset + 1])) {
            return this._names[_calcOffset >> 2];
        }
        if (i7 == 0) {
            return null;
        }
        int i8 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        int i9 = iArr2[i8 + 3];
        if (calcHash == iArr2[i8] && i9 == i2 && _verifyLongName(iArr, i2, iArr2[i8 + 1])) {
            return this._names[i8 >> 2];
        }
        return _findSecondary(_calcOffset, calcHash, iArr, i2);
    }
}
