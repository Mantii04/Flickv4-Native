package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import l2.m;
import n2.C1386H;

/* loaded from: classes.dex */
public final class GlideException extends Exception {

    /* renamed from: n, reason: collision with root package name */
    public static final StackTraceElement[] f9235n = new StackTraceElement[0];
    private static final long serialVersionUID = 1;

    /* renamed from: b, reason: collision with root package name */
    public final List f9236b;

    /* renamed from: e, reason: collision with root package name */
    public m f9237e;

    /* renamed from: f, reason: collision with root package name */
    public DataSource f9238f;

    /* renamed from: j, reason: collision with root package name */
    public Class f9239j;

    /* renamed from: m, reason: collision with root package name */
    public final String f9240m;

    public GlideException(String str) {
        this(str, (List<Throwable>) Collections.EMPTY_LIST);
    }

    public static void a(Throwable th, ArrayList arrayList) {
        if (!(th instanceof GlideException)) {
            arrayList.add(th);
            return;
        }
        Iterator<Throwable> it = ((GlideException) th).getCauses().iterator();
        while (it.hasNext()) {
            a(it.next(), arrayList);
        }
    }

    public static void b(List list, C1386H c1386h) {
        try {
            c(list, c1386h);
        } catch (IOException e3) {
            throw new RuntimeException(e3);
        }
    }

    public static void c(List list, C1386H c1386h) {
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            int i7 = i2 + 1;
            c1386h.append("Cause (").append(String.valueOf(i7)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = (Throwable) list.get(i2);
            if (th instanceof GlideException) {
                GlideException glideException = (GlideException) th;
                glideException.getClass();
                d(glideException, c1386h);
                b(glideException.getCauses(), new C1386H(c1386h));
            } else {
                d(th, c1386h);
            }
            i2 = i7;
        }
    }

    public static void d(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    public List<Throwable> getCauses() {
        return this.f9236b;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f9240m);
        sb.append(this.f9239j != null ? ", " + this.f9239j : "");
        sb.append(this.f9238f != null ? ", " + this.f9238f : "");
        sb.append(this.f9237e != null ? ", " + this.f9237e : "");
        List<Throwable> rootCauses = getRootCauses();
        if (rootCauses.isEmpty()) {
            return sb.toString();
        }
        if (rootCauses.size() == 1) {
            sb.append("\nThere was 1 root cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(rootCauses.size());
            sb.append(" root causes:");
        }
        for (Throwable th : rootCauses) {
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    public List<Throwable> getRootCauses() {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        return arrayList;
    }

    public void logRootCauses(String str) {
        List<Throwable> rootCauses = getRootCauses();
        int size = rootCauses.size();
        int i2 = 0;
        while (i2 < size) {
            StringBuilder sb = new StringBuilder("Root cause (");
            int i7 = i2 + 1;
            sb.append(i7);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            Log.i(str, sb.toString(), rootCauses.get(i2));
            i2 = i7;
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public void setOrigin(Exception exc) {
    }

    public GlideException(String str, Throwable th) {
        this(str, (List<Throwable>) Collections.singletonList(th));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        d(this, printStream);
        b(getCauses(), new C1386H(printStream));
    }

    public GlideException(String str, List<Throwable> list) {
        this.f9240m = str;
        setStackTrace(f9235n);
        this.f9236b = list;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        d(this, printWriter);
        b(getCauses(), new C1386H(printWriter));
    }
}
