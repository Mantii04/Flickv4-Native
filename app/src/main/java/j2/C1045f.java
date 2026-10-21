package j2;

import android.os.Build;
import android.os.StrictMode;
import cz.msebera.android.httpclient.message.TokenParser;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.StringUtils;

/* renamed from: j2.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1045f implements Closeable {

    /* renamed from: b, reason: collision with root package name */
    public final File f16957b;

    /* renamed from: e, reason: collision with root package name */
    public final File f16958e;

    /* renamed from: f, reason: collision with root package name */
    public final File f16959f;

    /* renamed from: j, reason: collision with root package name */
    public final File f16960j;

    /* renamed from: m, reason: collision with root package name */
    public final int f16961m;

    /* renamed from: n, reason: collision with root package name */
    public final long f16962n;

    /* renamed from: p, reason: collision with root package name */
    public final int f16963p;

    /* renamed from: r, reason: collision with root package name */
    public BufferedWriter f16965r;

    /* renamed from: t, reason: collision with root package name */
    public int f16967t;

    /* renamed from: q, reason: collision with root package name */
    public long f16964q = 0;

    /* renamed from: s, reason: collision with root package name */
    public final LinkedHashMap f16966s = new LinkedHashMap(0, 0.75f, true);

    /* renamed from: u, reason: collision with root package name */
    public long f16968u = 0;

    /* renamed from: v, reason: collision with root package name */
    public final ThreadPoolExecutor f16969v = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC1041b());

    /* renamed from: w, reason: collision with root package name */
    public final CallableC1040a f16970w = new CallableC1040a(this);

    public C1045f(File file, int i2, int i7, long j7) {
        this.f16957b = file;
        this.f16961m = i2;
        this.f16958e = new File(file, "journal");
        this.f16959f = new File(file, "journal.tmp");
        this.f16960j = new File(file, "journal.bkp");
        this.f16963p = i7;
        this.f16962n = j7;
    }

    public static void a(C1045f c1045f, C1042c c1042c, boolean z6) {
        synchronized (c1045f) {
            C1043d c1043d = c1042c.f16945a;
            if (c1043d.f16954f != c1042c) {
                throw new IllegalStateException();
            }
            if (z6 && !c1043d.f16953e) {
                for (int i2 = 0; i2 < c1045f.f16963p; i2++) {
                    if (!c1042c.f16946b[i2]) {
                        c1042c.abort();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                    }
                    if (!c1043d.getDirtyFile(i2).exists()) {
                        c1042c.abort();
                        return;
                    }
                }
            }
            for (int i7 = 0; i7 < c1045f.f16963p; i7++) {
                File dirtyFile = c1043d.getDirtyFile(i7);
                if (!z6) {
                    c(dirtyFile);
                } else if (dirtyFile.exists()) {
                    File cleanFile = c1043d.getCleanFile(i7);
                    dirtyFile.renameTo(cleanFile);
                    long j7 = c1043d.f16950b[i7];
                    long length = cleanFile.length();
                    c1043d.f16950b[i7] = length;
                    c1045f.f16964q = (c1045f.f16964q - j7) + length;
                }
            }
            c1045f.f16967t++;
            c1043d.f16954f = null;
            if (c1043d.f16953e || z6) {
                c1043d.f16953e = true;
                c1045f.f16965r.append((CharSequence) "CLEAN");
                c1045f.f16965r.append(TokenParser.SP);
                c1045f.f16965r.append((CharSequence) c1043d.f16949a);
                c1045f.f16965r.append((CharSequence) c1043d.getLengths());
                c1045f.f16965r.append('\n');
                if (z6) {
                    c1045f.f16968u++;
                }
            } else {
                c1045f.f16966s.remove(c1043d.f16949a);
                c1045f.f16965r.append((CharSequence) "REMOVE");
                c1045f.f16965r.append(TokenParser.SP);
                c1045f.f16965r.append((CharSequence) c1043d.f16949a);
                c1045f.f16965r.append('\n');
            }
            d(c1045f.f16965r);
            if (c1045f.f16964q > c1045f.f16962n || c1045f.e()) {
                c1045f.f16969v.submit(c1045f.f16970w);
            }
        }
    }

    public static void b(BufferedWriter bufferedWriter) {
        StrictMode.ThreadPolicy.Builder permitUnbufferedIo;
        if (Build.VERSION.SDK_INT < 26) {
            bufferedWriter.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        permitUnbufferedIo = new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo();
        StrictMode.setThreadPolicy(permitUnbufferedIo.build());
        try {
            bufferedWriter.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void c(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static void d(BufferedWriter bufferedWriter) {
        StrictMode.ThreadPolicy.Builder permitUnbufferedIo;
        if (Build.VERSION.SDK_INT < 26) {
            bufferedWriter.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        permitUnbufferedIo = new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo();
        StrictMode.setThreadPolicy(permitUnbufferedIo.build());
        try {
            bufferedWriter.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void j(File file, File file2, boolean z6) {
        if (z6) {
            c(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public static C1045f open(File file, int i2, int i7, long j7) throws IOException {
        if (j7 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i7 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                j(file2, file3, false);
            }
        }
        C1045f c1045f = new C1045f(file, i2, i7, j7);
        if (c1045f.f16958e.exists()) {
            try {
                c1045f.g();
                c1045f.f();
                return c1045f;
            } catch (IOException e3) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e3.getMessage() + ", removing");
                c1045f.delete();
            }
        }
        file.mkdirs();
        C1045f c1045f2 = new C1045f(file, i2, i7, j7);
        c1045f2.i();
        return c1045f2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        try {
            if (this.f16965r == null) {
                return;
            }
            Iterator it = new ArrayList(this.f16966s.values()).iterator();
            while (it.hasNext()) {
                C1042c c1042c = ((C1043d) it.next()).f16954f;
                if (c1042c != null) {
                    c1042c.abort();
                }
            }
            k();
            b(this.f16965r);
            this.f16965r = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void delete() throws IOException {
        close();
        AbstractC1048i.a(this.f16957b);
    }

    public final boolean e() {
        int i2 = this.f16967t;
        return i2 >= 2000 && i2 >= this.f16966s.size();
    }

    public C1042c edit(String str) throws IOException {
        synchronized (this) {
            try {
                if (this.f16965r == null) {
                    throw new IllegalStateException("cache is closed");
                }
                C1043d c1043d = (C1043d) this.f16966s.get(str);
                if (c1043d == null) {
                    c1043d = new C1043d(this, str);
                    this.f16966s.put(str, c1043d);
                } else if (c1043d.f16954f != null) {
                    return null;
                }
                C1042c c1042c = new C1042c(this, c1043d);
                c1043d.f16954f = c1042c;
                this.f16965r.append((CharSequence) "DIRTY");
                this.f16965r.append(TokenParser.SP);
                this.f16965r.append((CharSequence) str);
                this.f16965r.append('\n');
                d(this.f16965r);
                return c1042c;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f() {
        c(this.f16959f);
        Iterator it = this.f16966s.values().iterator();
        while (it.hasNext()) {
            C1043d c1043d = (C1043d) it.next();
            C1042c c1042c = c1043d.f16954f;
            int i2 = this.f16963p;
            int i7 = 0;
            if (c1042c == null) {
                while (i7 < i2) {
                    this.f16964q += c1043d.f16950b[i7];
                    i7++;
                }
            } else {
                c1043d.f16954f = null;
                while (i7 < i2) {
                    c(c1043d.getCleanFile(i7));
                    c(c1043d.getDirtyFile(i7));
                    i7++;
                }
                it.remove();
            }
        }
    }

    public final void g() {
        File file = this.f16958e;
        C1047h c1047h = new C1047h(new FileInputStream(file), AbstractC1048i.f16977a);
        try {
            String readLine = c1047h.readLine();
            String readLine2 = c1047h.readLine();
            String readLine3 = c1047h.readLine();
            String readLine4 = c1047h.readLine();
            String readLine5 = c1047h.readLine();
            if (!"libcore.io.DiskLruCache".equals(readLine) || !"1".equals(readLine2) || !Integer.toString(this.f16961m).equals(readLine3) || !Integer.toString(this.f16963p).equals(readLine4) || !"".equals(readLine5)) {
                throw new IOException("unexpected journal header: [" + readLine + ", " + readLine2 + ", " + readLine4 + ", " + readLine5 + "]");
            }
            int i2 = 0;
            while (true) {
                try {
                    h(c1047h.readLine());
                    i2++;
                } catch (EOFException unused) {
                    this.f16967t = i2 - this.f16966s.size();
                    if (c1047h.hasUnterminatedLine()) {
                        i();
                    } else {
                        this.f16965r = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), AbstractC1048i.f16977a));
                    }
                    try {
                        c1047h.close();
                        return;
                    } catch (RuntimeException e3) {
                        throw e3;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                c1047h.close();
            } catch (RuntimeException e7) {
                throw e7;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    public synchronized C1044e get(String str) throws IOException {
        if (this.f16965r == null) {
            throw new IllegalStateException("cache is closed");
        }
        C1043d c1043d = (C1043d) this.f16966s.get(str);
        if (c1043d == null) {
            return null;
        }
        if (!c1043d.f16953e) {
            return null;
        }
        for (File file : c1043d.f16951c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f16967t++;
        this.f16965r.append((CharSequence) "READ");
        this.f16965r.append(TokenParser.SP);
        this.f16965r.append((CharSequence) str);
        this.f16965r.append('\n');
        if (e()) {
            this.f16969v.submit(this.f16970w);
        }
        return new C1044e(c1043d.f16951c);
    }

    public final void h(String str) {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int i2 = indexOf + 1;
        int indexOf2 = str.indexOf(32, i2);
        LinkedHashMap linkedHashMap = this.f16966s;
        if (indexOf2 == -1) {
            substring = str.substring(i2);
            if (indexOf == 6 && str.startsWith("REMOVE")) {
                linkedHashMap.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i2, indexOf2);
        }
        C1043d c1043d = (C1043d) linkedHashMap.get(substring);
        if (c1043d == null) {
            c1043d = new C1043d(this, substring);
            linkedHashMap.put(substring, c1043d);
        }
        if (indexOf2 == -1 || indexOf != 5 || !str.startsWith("CLEAN")) {
            if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                c1043d.f16954f = new C1042c(this, c1043d);
                return;
            } else {
                if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException("unexpected journal line: ".concat(str));
                }
                return;
            }
        }
        String[] split = str.substring(indexOf2 + 1).split(StringUtils.SPACE);
        c1043d.f16953e = true;
        c1043d.f16954f = null;
        if (split.length != c1043d.f16955g.f16963p) {
            throw new IOException("unexpected journal line: " + Arrays.toString(split));
        }
        for (int i7 = 0; i7 < split.length; i7++) {
            try {
                c1043d.f16950b[i7] = Long.parseLong(split[i7]);
            } catch (NumberFormatException unused) {
                throw new IOException("unexpected journal line: " + Arrays.toString(split));
            }
        }
    }

    public final synchronized void i() {
        try {
            BufferedWriter bufferedWriter = this.f16965r;
            if (bufferedWriter != null) {
                b(bufferedWriter);
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f16959f), AbstractC1048i.f16977a));
            try {
                bufferedWriter2.write("libcore.io.DiskLruCache");
                bufferedWriter2.write(StringUtils.LF);
                bufferedWriter2.write("1");
                bufferedWriter2.write(StringUtils.LF);
                bufferedWriter2.write(Integer.toString(this.f16961m));
                bufferedWriter2.write(StringUtils.LF);
                bufferedWriter2.write(Integer.toString(this.f16963p));
                bufferedWriter2.write(StringUtils.LF);
                bufferedWriter2.write(StringUtils.LF);
                for (C1043d c1043d : this.f16966s.values()) {
                    if (c1043d.f16954f != null) {
                        bufferedWriter2.write("DIRTY " + c1043d.f16949a + '\n');
                    } else {
                        bufferedWriter2.write("CLEAN " + c1043d.f16949a + c1043d.getLengths() + '\n');
                    }
                }
                b(bufferedWriter2);
                if (this.f16958e.exists()) {
                    j(this.f16958e, this.f16960j, true);
                }
                j(this.f16959f, this.f16958e, false);
                this.f16960j.delete();
                this.f16965r = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f16958e, true), AbstractC1048i.f16977a));
            } catch (Throwable th) {
                b(bufferedWriter2);
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void k() {
        while (this.f16964q > this.f16962n) {
            remove((String) ((Map.Entry) this.f16966s.entrySet().iterator().next()).getKey());
        }
    }

    public synchronized boolean remove(String str) throws IOException {
        try {
            if (this.f16965r == null) {
                throw new IllegalStateException("cache is closed");
            }
            C1043d c1043d = (C1043d) this.f16966s.get(str);
            if (c1043d != null && c1043d.f16954f == null) {
                for (int i2 = 0; i2 < this.f16963p; i2++) {
                    File cleanFile = c1043d.getCleanFile(i2);
                    if (cleanFile.exists() && !cleanFile.delete()) {
                        throw new IOException("failed to delete " + cleanFile);
                    }
                    long j7 = this.f16964q;
                    long[] jArr = c1043d.f16950b;
                    this.f16964q = j7 - jArr[i2];
                    jArr[i2] = 0;
                }
                this.f16967t++;
                this.f16965r.append((CharSequence) "REMOVE");
                this.f16965r.append(TokenParser.SP);
                this.f16965r.append((CharSequence) str);
                this.f16965r.append('\n');
                this.f16966s.remove(str);
                if (e()) {
                    this.f16969v.submit(this.f16970w);
                }
                return true;
            }
            return false;
        } finally {
        }
    }
}
