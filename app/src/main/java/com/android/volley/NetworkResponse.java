package com.android.volley;

import cz.msebera.android.httpclient.HttpStatus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class NetworkResponse {
    public final List<Header> allHeaders;
    public final byte[] data;
    public final Map<String, String> headers;
    public final long networkTimeMs;
    public final boolean notModified;
    public final int statusCode;

    @Deprecated
    public NetworkResponse(int i2, byte[] bArr, Map<String, String> map, boolean z6, long j7) {
        this(i2, bArr, map, toAllHeaderList(map), z6, j7);
    }

    private static List<Header> toAllHeaderList(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new Header(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    private static Map<String, String> toHeaderMap(List<Header> list) {
        if (list == null) {
            return null;
        }
        if (list.isEmpty()) {
            return Collections.EMPTY_MAP;
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Header header : list) {
            treeMap.put(header.getName(), header.getValue());
        }
        return treeMap;
    }

    public NetworkResponse(int i2, byte[] bArr, boolean z6, long j7, List<Header> list) {
        this(i2, bArr, toHeaderMap(list), list, z6, j7);
    }

    @Deprecated
    public NetworkResponse(int i2, byte[] bArr, Map<String, String> map, boolean z6) {
        this(i2, bArr, map, z6, 0L);
    }

    public NetworkResponse(byte[] bArr) {
        this(HttpStatus.SC_OK, bArr, false, 0L, (List<Header>) Collections.EMPTY_LIST);
    }

    @Deprecated
    public NetworkResponse(byte[] bArr, Map<String, String> map) {
        this(HttpStatus.SC_OK, bArr, map, false, 0L);
    }

    private NetworkResponse(int i2, byte[] bArr, Map<String, String> map, List<Header> list, boolean z6, long j7) {
        this.statusCode = i2;
        this.data = bArr;
        this.headers = map;
        if (list == null) {
            this.allHeaders = null;
        } else {
            this.allHeaders = Collections.unmodifiableList(list);
        }
        this.notModified = z6;
        this.networkTimeMs = j7;
    }
}
