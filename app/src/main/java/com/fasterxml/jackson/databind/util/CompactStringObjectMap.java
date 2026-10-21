package com.fasterxml.jackson.databind.util;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class CompactStringObjectMap implements Serializable {
    private static final CompactStringObjectMap EMPTY = new CompactStringObjectMap(1, 0, new Object[4]);
    private static final long serialVersionUID = 1;
    private final Object[] _hashArea;
    private final int _hashMask;
    private final int _spillCount;

    private CompactStringObjectMap(int i2, int i7, Object[] objArr) {
        this._hashMask = i2;
        this._spillCount = i7;
        this._hashArea = objArr;
    }

    private final Object _find2(String str, int i2, Object obj) {
        if (obj == null) {
            return null;
        }
        int i7 = this._hashMask + 1;
        int i8 = ((i2 >> 1) + i7) << 1;
        Object obj2 = this._hashArea[i8];
        if (str.equals(obj2)) {
            return this._hashArea[i8 + 1];
        }
        if (obj2 != null) {
            int i9 = (i7 + (i7 >> 1)) << 1;
            int i10 = this._spillCount + i9;
            while (i9 < i10) {
                Object obj3 = this._hashArea[i9];
                if (obj3 == str || str.equals(obj3)) {
                    return this._hashArea[i9 + 1];
                }
                i9 += 2;
            }
        }
        return null;
    }

    public static <T> CompactStringObjectMap construct(Map<String, T> map) {
        if (map.isEmpty()) {
            return EMPTY;
        }
        int findSize = findSize(map.size());
        int i2 = findSize - 1;
        int i7 = (findSize >> 1) + findSize;
        Object[] objArr = new Object[i7 * 2];
        int i8 = 0;
        for (Map.Entry<String, T> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                int hashCode = key.hashCode() & i2;
                int i9 = hashCode + hashCode;
                if (objArr[i9] != null) {
                    i9 = ((hashCode >> 1) + findSize) << 1;
                    if (objArr[i9] != null) {
                        i9 = (i7 << 1) + i8;
                        i8 += 2;
                        if (i9 >= objArr.length) {
                            objArr = Arrays.copyOf(objArr, objArr.length + 4);
                        }
                    }
                }
                objArr[i9] = key;
                objArr[i9 + 1] = entry.getValue();
            }
        }
        return new CompactStringObjectMap(i2, i8, objArr);
    }

    private static final int findSize(int i2) {
        if (i2 <= 5) {
            return 8;
        }
        if (i2 <= 12) {
            return 16;
        }
        int i7 = 32;
        while (i7 < i2 + (i2 >> 2)) {
            i7 += i7;
        }
        return i7;
    }

    public Object find(String str) {
        int hashCode = str.hashCode() & this._hashMask;
        int i2 = hashCode << 1;
        Object obj = this._hashArea[i2];
        return (obj == str || str.equals(obj)) ? this._hashArea[i2 + 1] : _find2(str, hashCode, obj);
    }

    public Object findCaseInsensitive(String str) {
        int length = this._hashArea.length;
        for (int i2 = 0; i2 < length; i2 += 2) {
            Object obj = this._hashArea[i2];
            if (obj != null && ((String) obj).equalsIgnoreCase(str)) {
                return this._hashArea[i2 + 1];
            }
        }
        return null;
    }

    public List<String> keys() {
        int length = this._hashArea.length;
        ArrayList arrayList = new ArrayList(length >> 2);
        for (int i2 = 0; i2 < length; i2 += 2) {
            Object obj = this._hashArea[i2];
            if (obj != null) {
                arrayList.add((String) obj);
            }
        }
        return arrayList;
    }
}
