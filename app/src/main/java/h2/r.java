package h2;

import com.android.volley.Cache;
import com.android.volley.Header;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.VolleyLog;
import cz.msebera.android.httpclient.HttpStatus;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* loaded from: classes.dex */
public abstract class r {
    public static NetworkResponse a(Request request, long j7, List list) {
        Cache.Entry cacheEntry = request.getCacheEntry();
        if (cacheEntry == null) {
            return new NetworkResponse(HttpStatus.SC_NOT_MODIFIED, (byte[]) null, true, j7, (List<Header>) list);
        }
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                treeSet.add(((Header) it.next()).getName());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<Header> list2 = cacheEntry.allResponseHeaders;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (Header header : cacheEntry.allResponseHeaders) {
                    if (!treeSet.contains(header.getName())) {
                        arrayList.add(header);
                    }
                }
            }
        } else if (!cacheEntry.responseHeaders.isEmpty()) {
            for (Map.Entry<String, String> entry : cacheEntry.responseHeaders.entrySet()) {
                if (!treeSet.contains(entry.getKey())) {
                    arrayList.add(new Header(entry.getKey(), entry.getValue()));
                }
            }
        }
        return new NetworkResponse(HttpStatus.SC_NOT_MODIFIED, cacheEntry.data, true, j7, (List<Header>) arrayList);
    }

    public static byte[] b(InputStream inputStream, int i2, C0969d c0969d) {
        byte[] bArr;
        s sVar = new s(c0969d, i2);
        try {
            bArr = c0969d.getBuf(1024);
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    sVar.write(bArr, 0, read);
                } catch (Throwable th) {
                    th = th;
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                        VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                    }
                    c0969d.returnBuf(bArr);
                    sVar.close();
                    throw th;
                }
            }
            byte[] byteArray = sVar.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused2) {
                VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
            }
            c0969d.returnBuf(bArr);
            sVar.close();
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
            bArr = null;
        }
    }
}
