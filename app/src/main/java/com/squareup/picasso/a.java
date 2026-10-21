package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import e6.InterfaceC0872n;
import e6.w;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import m4.C1324c;
import m4.C1325d;
import m4.C1337p;
import m4.C1339s;
import m4.C1342v;
import m4.C1343w;
import m4.D;
import m4.I;
import m4.L;
import m4.P;
import m4.RunnableC1326e;
import m4.RunnableC1327f;
import m4.RunnableC1328g;
import m4.RunnableC1329h;
import m4.S;
import m4.W;

/* loaded from: classes2.dex */
public final class a implements Runnable {

    /* renamed from: B, reason: collision with root package name */
    public static final Object f13415B = new Object();

    /* renamed from: C, reason: collision with root package name */
    public static final C1324c f13416C = new C1324c();

    /* renamed from: D, reason: collision with root package name */
    public static final AtomicInteger f13417D = new AtomicInteger();

    /* renamed from: E, reason: collision with root package name */
    public static final C1325d f13418E = new C1325d();

    /* renamed from: A, reason: collision with root package name */
    public Picasso$Priority f13419A;

    /* renamed from: b, reason: collision with root package name */
    public final int f13420b = f13417D.incrementAndGet();

    /* renamed from: e, reason: collision with root package name */
    public final D f13421e;

    /* renamed from: f, reason: collision with root package name */
    public final C1337p f13422f;

    /* renamed from: j, reason: collision with root package name */
    public final C1342v f13423j;

    /* renamed from: m, reason: collision with root package name */
    public final P f13424m;

    /* renamed from: n, reason: collision with root package name */
    public final String f13425n;

    /* renamed from: p, reason: collision with root package name */
    public final I f13426p;

    /* renamed from: q, reason: collision with root package name */
    public int f13427q;

    /* renamed from: r, reason: collision with root package name */
    public final L f13428r;

    /* renamed from: s, reason: collision with root package name */
    public C1339s f13429s;

    /* renamed from: t, reason: collision with root package name */
    public ArrayList f13430t;

    /* renamed from: u, reason: collision with root package name */
    public Bitmap f13431u;

    /* renamed from: v, reason: collision with root package name */
    public Future f13432v;

    /* renamed from: w, reason: collision with root package name */
    public Picasso$LoadedFrom f13433w;

    /* renamed from: x, reason: collision with root package name */
    public Exception f13434x;

    /* renamed from: y, reason: collision with root package name */
    public int f13435y;

    /* renamed from: z, reason: collision with root package name */
    public int f13436z;

    public a(D d7, C1337p c1337p, C1342v c1342v, P p6, C1339s c1339s, L l7) {
        this.f13421e = d7;
        this.f13422f = c1337p;
        this.f13423j = c1342v;
        this.f13424m = p6;
        this.f13429s = c1339s;
        this.f13425n = c1339s.f18707e;
        I i2 = c1339s.f18704b;
        this.f13426p = i2;
        this.f13419A = i2.f18629j;
        this.f13427q = 0;
        this.f13428r = l7;
        this.f13436z = l7.c();
    }

    public static Bitmap a(List list, Bitmap bitmap) {
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            S s6 = (S) list.get(i2);
            try {
                T4.d dVar = (T4.d) s6;
                Bitmap transform = dVar.transform(bitmap);
                if (transform == null) {
                    StringBuilder o6 = b.c.o("Transformation ");
                    o6.append(dVar.key());
                    o6.append(" returned null after ");
                    o6.append(i2);
                    o6.append(" previous transformation(s).\n\nTransformation list:\n");
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        o6.append(((T4.d) ((S) it.next())).key());
                        o6.append('\n');
                    }
                    D.f18592k.post(new RunnableC1327f(o6));
                    return null;
                }
                if (transform == bitmap && bitmap.isRecycled()) {
                    D.f18592k.post(new RunnableC1328g(dVar));
                    return null;
                }
                if (transform != bitmap && !bitmap.isRecycled()) {
                    D.f18592k.post(new RunnableC1329h(dVar));
                    return null;
                }
                i2++;
                bitmap = transform;
            } catch (RuntimeException e3) {
                D.f18592k.post(new RunnableC1326e(s6, e3));
                return null;
            }
        }
        return bitmap;
    }

    public static Bitmap c(e6.L l7, I i2) {
        InterfaceC0872n buffer = w.buffer(l7);
        boolean z6 = buffer.rangeEquals(0L, W.f18671b) && buffer.rangeEquals(8L, W.f18672c);
        i2.getClass();
        BitmapFactory.Options b7 = L.b(i2);
        boolean z7 = b7 != null && b7.inJustDecodeBounds;
        int i7 = i2.f18624e;
        boolean z8 = z7;
        int i8 = i2.f18623d;
        if (z6) {
            byte[] readByteArray = buffer.readByteArray();
            if (z8) {
                BitmapFactory.decodeByteArray(readByteArray, 0, readByteArray.length, b7);
                L.a(i8, i7, b7.outWidth, b7.outHeight, b7, i2);
            }
            return BitmapFactory.decodeByteArray(readByteArray, 0, readByteArray.length, b7);
        }
        InputStream inputStream = buffer.inputStream();
        if (z8) {
            C1343w c1343w = new C1343w(inputStream);
            c1343w.allowMarksToExpire(false);
            long savePosition = c1343w.savePosition(1024);
            BitmapFactory.decodeStream(c1343w, null, b7);
            L.a(i8, i7, b7.outWidth, b7.outHeight, b7, i2);
            c1343w.reset(savePosition);
            c1343w.allowMarksToExpire(true);
            inputStream = c1343w;
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, b7);
        if (decodeStream != null) {
            return decodeStream;
        }
        throw new IOException("Failed to decode stream.");
    }

    public static boolean f(int i2, int i7, int i8, int i9, boolean z6) {
        if (!z6) {
            return true;
        }
        if (i8 == 0 || i2 <= i8) {
            return i9 != 0 && i7 > i9;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0049, code lost:
    
        if (r13 != 270) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x010b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap g(m4.I r17, android.graphics.Bitmap r18, int r19) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.a.g(m4.I, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    public static void h(I i2) {
        Uri uri = i2.f18620a;
        String valueOf = uri != null ? String.valueOf(uri.getPath()) : Integer.toHexString(i2.f18621b);
        StringBuilder sb = (StringBuilder) f13416C.get();
        sb.ensureCapacity(valueOf.length() + 8);
        sb.replace(8, sb.length(), valueOf);
        Thread.currentThread().setName(sb.toString());
    }

    public final boolean b() {
        ArrayList arrayList;
        Future future;
        return this.f13429s == null && ((arrayList = this.f13430t) == null || arrayList.isEmpty()) && (future = this.f13432v) != null && future.cancel(false);
    }

    public final void d(C1339s c1339s) {
        boolean remove;
        if (this.f13429s == c1339s) {
            this.f13429s = null;
            remove = true;
        } else {
            ArrayList arrayList = this.f13430t;
            remove = arrayList != null ? arrayList.remove(c1339s) : false;
        }
        if (remove) {
            if (c1339s.f18704b.f18629j == this.f13419A) {
                Picasso$Priority picasso$Priority = Picasso$Priority.f13411b;
                ArrayList arrayList2 = this.f13430t;
                boolean z6 = (arrayList2 == null || arrayList2.isEmpty()) ? false : true;
                C1339s c1339s2 = this.f13429s;
                if (c1339s2 != null || z6) {
                    if (c1339s2 != null) {
                        picasso$Priority = c1339s2.f18704b.f18629j;
                    }
                    if (z6) {
                        int size = this.f13430t.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            Picasso$Priority picasso$Priority2 = ((C1339s) this.f13430t.get(i2)).f18704b.f18629j;
                            if (picasso$Priority2.ordinal() > picasso$Priority.ordinal()) {
                                picasso$Priority = picasso$Priority2;
                            }
                        }
                    }
                }
                this.f13419A = picasso$Priority;
            }
        }
        this.f13421e.getClass();
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ad A[Catch: all -> 0x0093, TryCatch #0 {all -> 0x0093, blocks: (B:40:0x0086, B:42:0x008e, B:45:0x00a2, B:49:0x00ad, B:50:0x00b6, B:59:0x0095), top: B:39:0x0086 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap e() {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.a.e():android.graphics.Bitmap");
    }

    @Override // java.lang.Runnable
    public void run() {
        C1337p c1337p = this.f13422f;
        try {
            try {
                try {
                    try {
                        h(this.f13426p);
                        this.f13421e.getClass();
                        Bitmap e3 = e();
                        this.f13431u = e3;
                        if (e3 == null) {
                            b bVar = c1337p.f18697h;
                            bVar.sendMessage(bVar.obtainMessage(6, this));
                        } else {
                            c1337p.b(this);
                        }
                    } catch (OutOfMemoryError e7) {
                        StringWriter stringWriter = new StringWriter();
                        this.f13424m.a().dump(new PrintWriter(stringWriter));
                        this.f13434x = new RuntimeException(stringWriter.toString(), e7);
                        b bVar2 = c1337p.f18697h;
                        bVar2.sendMessage(bVar2.obtainMessage(6, this));
                    }
                } catch (NetworkRequestHandler$ResponseException e8) {
                    if (!NetworkPolicy.isOfflineOnly(0) || e8.f13406b != 504) {
                        this.f13434x = e8;
                    }
                    b bVar3 = c1337p.f18697h;
                    bVar3.sendMessage(bVar3.obtainMessage(6, this));
                }
            } catch (IOException e9) {
                this.f13434x = e9;
                b bVar4 = c1337p.f18697h;
                bVar4.sendMessageDelayed(bVar4.obtainMessage(5, this), 500L);
            } catch (Exception e10) {
                this.f13434x = e10;
                b bVar5 = c1337p.f18697h;
                bVar5.sendMessage(bVar5.obtainMessage(6, this));
            }
        } finally {
            Thread.currentThread().setName("Picasso-Idle");
        }
    }
}
