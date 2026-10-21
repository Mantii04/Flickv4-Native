package com.fasterxml.jackson.core.sym;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.BitSet;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class CharsToNameCanonicalizer {
    private static final int DEFAULT_T_SIZE = 64;
    public static final int HASH_MULT = 33;
    static final int MAX_COLL_CHAIN_LENGTH = 100;
    static final int MAX_ENTRIES_FOR_REUSE = 12000;
    private static final int MAX_T_SIZE = 65536;
    private Bucket[] _buckets;
    private boolean _canonicalize;
    private final int _flags;
    private boolean _hashShared;
    private int _indexMask;
    private int _longestCollisionList;
    private BitSet _overflows;
    private final CharsToNameCanonicalizer _parent;
    private final int _seed;
    private int _size;
    private int _sizeThreshold;
    private String[] _symbols;
    private final AtomicReference<TableInfo> _tableInfo;

    public static final class Bucket {
        public final int length;
        public final Bucket next;
        public final String symbol;

        public Bucket(String str, Bucket bucket) {
            this.symbol = str;
            this.next = bucket;
            this.length = bucket != null ? 1 + bucket.length : 1;
        }

        public String has(char[] cArr, int i2, int i7) {
            if (this.symbol.length() != i7) {
                return null;
            }
            int i8 = 0;
            while (this.symbol.charAt(i8) == cArr[i2 + i8]) {
                i8++;
                if (i8 >= i7) {
                    return this.symbol;
                }
            }
            return null;
        }
    }

    private CharsToNameCanonicalizer(int i2) {
        this._parent = null;
        this._seed = i2;
        this._canonicalize = true;
        this._flags = -1;
        this._hashShared = false;
        this._longestCollisionList = 0;
        this._tableInfo = new AtomicReference<>(TableInfo.createInitial(64));
    }

    private String _addSymbol(char[] cArr, int i2, int i7, int i8, int i9) {
        if (this._hashShared) {
            copyArrays();
            this._hashShared = false;
        } else if (this._size >= this._sizeThreshold) {
            rehash();
            i9 = _hashToIndex(calcHash(cArr, i2, i7));
        }
        String str = new String(cArr, i2, i7);
        if (JsonFactory.Feature.INTERN_FIELD_NAMES.enabledIn(this._flags)) {
            str = InternCache.instance.intern(str);
        }
        this._size++;
        String[] strArr = this._symbols;
        if (strArr[i9] == null) {
            strArr[i9] = str;
            return str;
        }
        int i10 = i9 >> 1;
        Bucket bucket = new Bucket(str, this._buckets[i10]);
        int i11 = bucket.length;
        if (i11 > 100) {
            _handleSpillOverflow(i10, bucket, i9);
            return str;
        }
        this._buckets[i10] = bucket;
        this._longestCollisionList = Math.max(i11, this._longestCollisionList);
        return str;
    }

    private String _findSymbol2(char[] cArr, int i2, int i7, Bucket bucket) {
        while (bucket != null) {
            String has = bucket.has(cArr, i2, i7);
            if (has != null) {
                return has;
            }
            bucket = bucket.next;
        }
        return null;
    }

    private void _handleSpillOverflow(int i2, Bucket bucket, int i7) {
        BitSet bitSet = this._overflows;
        if (bitSet == null) {
            BitSet bitSet2 = new BitSet();
            this._overflows = bitSet2;
            bitSet2.set(i2);
        } else if (bitSet.get(i2)) {
            if (JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(this._flags)) {
                reportTooManyCollisions(100);
            }
            this._canonicalize = false;
        } else {
            this._overflows.set(i2);
        }
        this._symbols[i7] = bucket.symbol;
        this._buckets[i2] = null;
        this._size -= bucket.length;
        this._longestCollisionList = -1;
    }

    private static int _thresholdSize(int i2) {
        return i2 - (i2 >> 2);
    }

    private void copyArrays() {
        String[] strArr = this._symbols;
        this._symbols = (String[]) Arrays.copyOf(strArr, strArr.length);
        Bucket[] bucketArr = this._buckets;
        this._buckets = (Bucket[]) Arrays.copyOf(bucketArr, bucketArr.length);
    }

    public static CharsToNameCanonicalizer createRoot() {
        long currentTimeMillis = System.currentTimeMillis();
        return createRoot((((int) currentTimeMillis) + ((int) (currentTimeMillis >>> 32))) | 1);
    }

    private void mergeChild(TableInfo tableInfo) {
        int i2 = tableInfo.size;
        TableInfo tableInfo2 = this._tableInfo.get();
        if (i2 == tableInfo2.size) {
            return;
        }
        if (i2 > MAX_ENTRIES_FOR_REUSE) {
            tableInfo = TableInfo.createInitial(64);
        }
        AtomicReference<TableInfo> atomicReference = this._tableInfo;
        while (!atomicReference.compareAndSet(tableInfo2, tableInfo) && atomicReference.get() == tableInfo2) {
        }
    }

    private void rehash() {
        String[] strArr = this._symbols;
        int length = strArr.length;
        int i2 = length + length;
        if (i2 > 65536) {
            this._size = 0;
            this._canonicalize = false;
            this._symbols = new String[64];
            this._buckets = new Bucket[32];
            this._indexMask = 63;
            this._hashShared = false;
            return;
        }
        Bucket[] bucketArr = this._buckets;
        this._symbols = new String[i2];
        this._buckets = new Bucket[i2 >> 1];
        this._indexMask = i2 - 1;
        this._sizeThreshold = _thresholdSize(i2);
        int i7 = 0;
        int i8 = 0;
        for (String str : strArr) {
            if (str != null) {
                i7++;
                int _hashToIndex = _hashToIndex(calcHash(str));
                String[] strArr2 = this._symbols;
                if (strArr2[_hashToIndex] == null) {
                    strArr2[_hashToIndex] = str;
                } else {
                    int i9 = _hashToIndex >> 1;
                    Bucket bucket = new Bucket(str, this._buckets[i9]);
                    this._buckets[i9] = bucket;
                    i8 = Math.max(i8, bucket.length);
                }
            }
        }
        int i10 = length >> 1;
        for (int i11 = 0; i11 < i10; i11++) {
            for (Bucket bucket2 = bucketArr[i11]; bucket2 != null; bucket2 = bucket2.next) {
                i7++;
                String str2 = bucket2.symbol;
                int _hashToIndex2 = _hashToIndex(calcHash(str2));
                String[] strArr3 = this._symbols;
                if (strArr3[_hashToIndex2] == null) {
                    strArr3[_hashToIndex2] = str2;
                } else {
                    int i12 = _hashToIndex2 >> 1;
                    Bucket bucket3 = new Bucket(str2, this._buckets[i12]);
                    this._buckets[i12] = bucket3;
                    i8 = Math.max(i8, bucket3.length);
                }
            }
        }
        this._longestCollisionList = i8;
        this._overflows = null;
        if (i7 != this._size) {
            throw new IllegalStateException(String.format("Internal error on SymbolTable.rehash(): had %d entries; now have %d", Integer.valueOf(this._size), Integer.valueOf(i7)));
        }
    }

    public int _hashToIndex(int i2) {
        int i7 = i2 + (i2 >>> 15);
        int i8 = i7 ^ (i7 << 7);
        return (i8 + (i8 >>> 3)) & this._indexMask;
    }

    public int bucketCount() {
        return this._symbols.length;
    }

    public int calcHash(char[] cArr, int i2, int i7) {
        int i8 = this._seed;
        int i9 = i7 + i2;
        while (i2 < i9) {
            i8 = (i8 * 33) + cArr[i2];
            i2++;
        }
        if (i8 == 0) {
            return 1;
        }
        return i8;
    }

    public int collisionCount() {
        int i2 = 0;
        for (Bucket bucket : this._buckets) {
            if (bucket != null) {
                i2 += bucket.length;
            }
        }
        return i2;
    }

    public String findSymbol(char[] cArr, int i2, int i7, int i8) {
        if (i7 < 1) {
            return "";
        }
        if (!this._canonicalize) {
            return new String(cArr, i2, i7);
        }
        int _hashToIndex = _hashToIndex(i8);
        String str = this._symbols[_hashToIndex];
        if (str != null) {
            if (str.length() == i7) {
                int i9 = 0;
                while (str.charAt(i9) == cArr[i2 + i9]) {
                    i9++;
                    if (i9 == i7) {
                        return str;
                    }
                }
            }
            Bucket bucket = this._buckets[_hashToIndex >> 1];
            if (bucket != null) {
                String has = bucket.has(cArr, i2, i7);
                if (has != null) {
                    return has;
                }
                String _findSymbol2 = _findSymbol2(cArr, i2, i7, bucket.next);
                if (_findSymbol2 != null) {
                    return _findSymbol2;
                }
            }
        }
        return _addSymbol(cArr, i2, i7, i8, _hashToIndex);
    }

    public int hashSeed() {
        return this._seed;
    }

    public CharsToNameCanonicalizer makeChild(int i2) {
        return new CharsToNameCanonicalizer(this, i2, this._seed, this._tableInfo.get());
    }

    public int maxCollisionLength() {
        return this._longestCollisionList;
    }

    public boolean maybeDirty() {
        return !this._hashShared;
    }

    public void release() {
        CharsToNameCanonicalizer charsToNameCanonicalizer;
        if (maybeDirty() && (charsToNameCanonicalizer = this._parent) != null && this._canonicalize) {
            charsToNameCanonicalizer.mergeChild(new TableInfo(this));
            this._hashShared = true;
        }
    }

    public void reportTooManyCollisions(int i2) {
        throw new IllegalStateException("Longest collision chain in symbol table (of size " + this._size + ") now exceeds maximum, " + i2 + " -- suspect a DoS attack based on hash collisions");
    }

    public int size() {
        AtomicReference<TableInfo> atomicReference = this._tableInfo;
        return atomicReference != null ? atomicReference.get().size : this._size;
    }

    public void verifyInternalConsistency() {
        int length = this._symbols.length;
        int i2 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            if (this._symbols[i7] != null) {
                i2++;
            }
        }
        int i8 = length >> 1;
        for (int i9 = 0; i9 < i8; i9++) {
            for (Bucket bucket = this._buckets[i9]; bucket != null; bucket = bucket.next) {
                i2++;
            }
        }
        if (i2 != this._size) {
            throw new IllegalStateException(String.format("Internal error: expected internal size %d vs calculated count %d", Integer.valueOf(this._size), Integer.valueOf(i2)));
        }
    }

    public static CharsToNameCanonicalizer createRoot(int i2) {
        return new CharsToNameCanonicalizer(i2);
    }

    public int calcHash(String str) {
        int length = str.length();
        int i2 = this._seed;
        for (int i7 = 0; i7 < length; i7++) {
            i2 = (i2 * 33) + str.charAt(i7);
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public static final class TableInfo {
        final Bucket[] buckets;
        final int longestCollisionList;
        final int size;
        final String[] symbols;

        public TableInfo(int i2, int i7, String[] strArr, Bucket[] bucketArr) {
            this.size = i2;
            this.longestCollisionList = i7;
            this.symbols = strArr;
            this.buckets = bucketArr;
        }

        public static TableInfo createInitial(int i2) {
            return new TableInfo(0, 0, new String[i2], new Bucket[i2 >> 1]);
        }

        public TableInfo(CharsToNameCanonicalizer charsToNameCanonicalizer) {
            this.size = charsToNameCanonicalizer._size;
            this.longestCollisionList = charsToNameCanonicalizer._longestCollisionList;
            this.symbols = charsToNameCanonicalizer._symbols;
            this.buckets = charsToNameCanonicalizer._buckets;
        }
    }

    private CharsToNameCanonicalizer(CharsToNameCanonicalizer charsToNameCanonicalizer, int i2, int i7, TableInfo tableInfo) {
        this._parent = charsToNameCanonicalizer;
        this._seed = i7;
        this._tableInfo = null;
        this._flags = i2;
        this._canonicalize = JsonFactory.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(i2);
        String[] strArr = tableInfo.symbols;
        this._symbols = strArr;
        this._buckets = tableInfo.buckets;
        this._size = tableInfo.size;
        this._longestCollisionList = tableInfo.longestCollisionList;
        int length = strArr.length;
        this._sizeThreshold = _thresholdSize(length);
        this._indexMask = length - 1;
        this._hashShared = true;
    }
}
