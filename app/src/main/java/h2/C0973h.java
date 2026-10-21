package h2;

import android.os.SystemClock;
import android.text.TextUtils;
import com.android.volley.Cache;
import com.android.volley.VolleyLog;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: h2.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0973h implements Cache {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f16504a;

    /* renamed from: b, reason: collision with root package name */
    public long f16505b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0972g f16506c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16507d;

    public C0973h(InterfaceC0972g interfaceC0972g, int i2) {
        this.f16504a = new LinkedHashMap(16, 0.75f, true);
        this.f16505b = 0L;
        this.f16506c = interfaceC0972g;
        this.f16507d = i2;
    }

    public static String a(String str) {
        int length = str.length() / 2;
        StringBuilder o6 = b.c.o(String.valueOf(str.substring(0, length).hashCode()));
        o6.append(String.valueOf(str.substring(length).hashCode()));
        return o6.toString();
    }

    public static int d(C0971f c0971f) {
        int read = c0971f.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    public static int e(C0971f c0971f) {
        return (d(c0971f) << 24) | d(c0971f) | (d(c0971f) << 8) | (d(c0971f) << 16);
    }

    public static long f(C0971f c0971f) {
        return (d(c0971f) & 255) | ((d(c0971f) & 255) << 8) | ((d(c0971f) & 255) << 16) | ((d(c0971f) & 255) << 24) | ((d(c0971f) & 255) << 32) | ((d(c0971f) & 255) << 40) | ((d(c0971f) & 255) << 48) | ((255 & d(c0971f)) << 56);
    }

    public static String g(C0971f c0971f) {
        return new String(h(c0971f, f(c0971f)), "UTF-8");
    }

    public static byte[] h(C0971f c0971f, long j7) {
        long j8 = c0971f.f16502b - c0971f.f16503e;
        if (j7 >= 0 && j7 <= j8) {
            int i2 = (int) j7;
            if (i2 == j7) {
                byte[] bArr = new byte[i2];
                new DataInputStream(c0971f).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder r6 = A.i.r(j7, "streamToBytes length=", ", maxLength=");
        r6.append(j8);
        throw new IOException(r6.toString());
    }

    public static void i(BufferedOutputStream bufferedOutputStream, int i2) {
        bufferedOutputStream.write(i2 & 255);
        bufferedOutputStream.write((i2 >> 8) & 255);
        bufferedOutputStream.write((i2 >> 16) & 255);
        bufferedOutputStream.write((i2 >> 24) & 255);
    }

    public static void j(BufferedOutputStream bufferedOutputStream, long j7) {
        bufferedOutputStream.write((byte) j7);
        bufferedOutputStream.write((byte) (j7 >>> 8));
        bufferedOutputStream.write((byte) (j7 >>> 16));
        bufferedOutputStream.write((byte) (j7 >>> 24));
        bufferedOutputStream.write((byte) (j7 >>> 32));
        bufferedOutputStream.write((byte) (j7 >>> 40));
        bufferedOutputStream.write((byte) (j7 >>> 48));
        bufferedOutputStream.write((byte) (j7 >>> 56));
    }

    public static void k(BufferedOutputStream bufferedOutputStream, String str) {
        byte[] bytes = str.getBytes("UTF-8");
        j(bufferedOutputStream, bytes.length);
        bufferedOutputStream.write(bytes, 0, bytes.length);
    }

    public final void b() {
        long j7 = this.f16505b;
        int i2 = this.f16507d;
        if (j7 < i2) {
            return;
        }
        if (VolleyLog.DEBUG) {
            VolleyLog.v("Pruning old cache entries.", new Object[0]);
        }
        long j8 = this.f16505b;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Iterator it = this.f16504a.entrySet().iterator();
        int i7 = 0;
        while (it.hasNext()) {
            C0970e c0970e = (C0970e) ((Map.Entry) it.next()).getValue();
            if (getFileForKey(c0970e.f16495b).delete()) {
                this.f16505b -= c0970e.f16494a;
            } else {
                String str = c0970e.f16495b;
                VolleyLog.d("Could not delete cache entry for key=%s, filename=%s", str, a(str));
            }
            it.remove();
            i7++;
            if (this.f16505b < i2 * 0.9f) {
                break;
            }
        }
        if (VolleyLog.DEBUG) {
            VolleyLog.v("pruned %d files, %d bytes, %d ms", Integer.valueOf(i7), Long.valueOf(this.f16505b - j8), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
        }
    }

    public final void c(String str, C0970e c0970e) {
        LinkedHashMap linkedHashMap = this.f16504a;
        if (linkedHashMap.containsKey(str)) {
            this.f16505b = (c0970e.f16494a - ((C0970e) linkedHashMap.get(str)).f16494a) + this.f16505b;
        } else {
            this.f16505b += c0970e.f16494a;
        }
        linkedHashMap.put(str, c0970e);
    }

    @Override // com.android.volley.Cache
    public synchronized void clear() {
        try {
            File[] listFiles = ((u) this.f16506c).get().listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
            this.f16504a.clear();
            this.f16505b = 0L;
            VolleyLog.d("Cache cleared.", new Object[0]);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.android.volley.Cache
    public synchronized Cache.Entry get(String str) {
        C0970e c0970e = (C0970e) this.f16504a.get(str);
        if (c0970e == null) {
            return null;
        }
        File fileForKey = getFileForKey(str);
        try {
            C0971f c0971f = new C0971f(new BufferedInputStream(new FileInputStream(fileForKey)), fileForKey.length());
            try {
                C0970e a7 = C0970e.a(c0971f);
                if (TextUtils.equals(str, a7.f16495b)) {
                    return c0970e.b(h(c0971f, c0971f.f16502b - c0971f.f16503e));
                }
                VolleyLog.d("%s: key=%s, found=%s", fileForKey.getAbsolutePath(), str, a7.f16495b);
                C0970e c0970e2 = (C0970e) this.f16504a.remove(str);
                if (c0970e2 != null) {
                    this.f16505b -= c0970e2.f16494a;
                }
                return null;
            } finally {
                c0971f.close();
            }
        } catch (IOException e3) {
            VolleyLog.d("%s: %s", fileForKey.getAbsolutePath(), e3.toString());
            remove(str);
            return null;
        }
    }

    public File getFileForKey(String str) {
        return new File(((u) this.f16506c).get(), a(str));
    }

    @Override // com.android.volley.Cache
    public synchronized void initialize() {
        synchronized (this) {
            File file = ((u) this.f16506c).get();
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    VolleyLog.e("Unable to create cache dir %s", file.getAbsolutePath());
                }
                return;
            }
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file2 : listFiles) {
                try {
                    long length = file2.length();
                    C0971f c0971f = new C0971f(new BufferedInputStream(new FileInputStream(file2)), length);
                    try {
                        C0970e a7 = C0970e.a(c0971f);
                        a7.f16494a = length;
                        c(a7.f16495b, a7);
                        c0971f.close();
                    } catch (Throwable th) {
                        c0971f.close();
                        throw th;
                    }
                } catch (IOException unused) {
                    file2.delete();
                }
            }
        }
    }

    @Override // com.android.volley.Cache
    public synchronized void invalidate(String str, boolean z6) {
        try {
            Cache.Entry entry = get(str);
            if (entry != null) {
                entry.softTtl = 0L;
                if (z6) {
                    entry.ttl = 0L;
                }
                put(str, entry);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.android.volley.Cache
    public synchronized void put(String str, Cache.Entry entry) {
        BufferedOutputStream bufferedOutputStream;
        C0970e c0970e;
        long j7 = this.f16505b;
        byte[] bArr = entry.data;
        long length = j7 + bArr.length;
        int i2 = this.f16507d;
        if (length <= i2 || bArr.length <= i2 * 0.9f) {
            File fileForKey = getFileForKey(str);
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileForKey));
                c0970e = new C0970e(str, entry);
            } catch (IOException unused) {
                if (!fileForKey.delete()) {
                    VolleyLog.d("Could not clean up file %s", fileForKey.getAbsolutePath());
                }
                if (!((u) this.f16506c).get().exists()) {
                    VolleyLog.d("Re-initializing cache after external clearing.", new Object[0]);
                    this.f16504a.clear();
                    this.f16505b = 0L;
                    initialize();
                }
            }
            if (!c0970e.c(bufferedOutputStream)) {
                bufferedOutputStream.close();
                VolleyLog.d("Failed to write header for %s", fileForKey.getAbsolutePath());
                throw new IOException();
            }
            bufferedOutputStream.write(entry.data);
            bufferedOutputStream.close();
            c0970e.f16494a = fileForKey.length();
            c(str, c0970e);
            b();
        }
    }

    @Override // com.android.volley.Cache
    public synchronized void remove(String str) {
        boolean delete = getFileForKey(str).delete();
        C0970e c0970e = (C0970e) this.f16504a.remove(str);
        if (c0970e != null) {
            this.f16505b -= c0970e.f16494a;
        }
        if (!delete) {
            VolleyLog.d("Could not delete cache entry for key=%s, filename=%s", str, a(str));
        }
    }

    public C0973h(InterfaceC0972g interfaceC0972g) {
        this(interfaceC0972g, 5242880);
    }
}
