package m4;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Looper;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.squareup.picasso.Picasso$LoadedFrom;
import com.squareup.picasso.PicassoProvider;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes2.dex */
public final class D {

    /* renamed from: k, reason: collision with root package name */
    public static final y f18592k = new y(Looper.getMainLooper());

    /* renamed from: l, reason: collision with root package name */
    public static volatile D f18593l = null;

    /* renamed from: a, reason: collision with root package name */
    public final C1321C f18594a;

    /* renamed from: b, reason: collision with root package name */
    public final List f18595b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f18596c;

    /* renamed from: d, reason: collision with root package name */
    public final C1337p f18597d;

    /* renamed from: e, reason: collision with root package name */
    public final C1342v f18598e;

    /* renamed from: f, reason: collision with root package name */
    public final P f18599f;

    /* renamed from: g, reason: collision with root package name */
    public final WeakHashMap f18600g;

    /* renamed from: h, reason: collision with root package name */
    public final WeakHashMap f18601h;

    /* renamed from: i, reason: collision with root package name */
    public final ReferenceQueue f18602i;

    /* renamed from: j, reason: collision with root package name */
    public final Bitmap.Config f18603j;

    public D(Context context, C1337p c1337p, C1342v c1342v, C1321C c1321c, P p6, Bitmap.Config config) {
        this.f18596c = context;
        this.f18597d = c1337p;
        this.f18598e = c1342v;
        this.f18594a = c1321c;
        this.f18603j = config;
        ArrayList arrayList = new ArrayList(7);
        arrayList.add(new M(context));
        arrayList.add(new C1331j(context));
        arrayList.add(new com.squareup.picasso.c(context));
        arrayList.add(new C1332k(context));
        arrayList.add(new C1323b(context));
        arrayList.add(new r(context));
        arrayList.add(new com.squareup.picasso.d(c1337p.f18692c, p6));
        this.f18595b = Collections.unmodifiableList(arrayList);
        this.f18599f = p6;
        this.f18600g = new WeakHashMap();
        this.f18601h = new WeakHashMap();
        ReferenceQueue referenceQueue = new ReferenceQueue();
        this.f18602i = referenceQueue;
        new C1320B(referenceQueue, f18592k).start();
    }

    public static D get() {
        if (f18593l == null) {
            synchronized (D.class) {
                try {
                    if (f18593l == null) {
                        Context context = PicassoProvider.f13414b;
                        if (context == null) {
                            throw new IllegalStateException("context == null");
                        }
                        f18593l = new z(context).build();
                    }
                } finally {
                }
            }
        }
        return f18593l;
    }

    public static void setSingletonInstance(D d7) {
        if (d7 == null) {
            throw new IllegalArgumentException("Picasso must not be null.");
        }
        synchronized (D.class) {
            try {
                if (f18593l != null) {
                    throw new IllegalStateException("Singleton instance already exists.");
                }
                f18593l = d7;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(Object obj) {
        StringBuilder sb = W.f18670a;
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
        C1339s c1339s = (C1339s) this.f18600g.remove(obj);
        if (c1339s != null) {
            c1339s.f18710h = true;
            if (c1339s.f18711i != null) {
                c1339s.f18711i = null;
            }
            com.squareup.picasso.b bVar = this.f18597d.f18697h;
            bVar.sendMessage(bVar.obtainMessage(2, c1339s));
        }
        if (obj instanceof ImageView) {
            ViewTreeObserverOnPreDrawListenerC1333l viewTreeObserverOnPreDrawListenerC1333l = (ViewTreeObserverOnPreDrawListenerC1333l) this.f18601h.remove((ImageView) obj);
            if (viewTreeObserverOnPreDrawListenerC1333l != null) {
                viewTreeObserverOnPreDrawListenerC1333l.f18687f = null;
                WeakReference weakReference = viewTreeObserverOnPreDrawListenerC1333l.f18686e;
                ImageView imageView = (ImageView) weakReference.get();
                if (imageView == null) {
                    return;
                }
                weakReference.clear();
                imageView.removeOnAttachStateChangeListener(viewTreeObserverOnPreDrawListenerC1333l);
                ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnPreDrawListener(viewTreeObserverOnPreDrawListenerC1333l);
                }
            }
        }
    }

    public final void b(Bitmap bitmap, Picasso$LoadedFrom picasso$LoadedFrom, C1339s c1339s, Exception exc) {
        if (c1339s.f18710h) {
            return;
        }
        if (!c1339s.f18709g) {
            this.f18600g.remove(c1339s.a());
        }
        if (bitmap == null) {
            c1339s.error(exc);
        } else {
            if (picasso$LoadedFrom == null) {
                throw new AssertionError("LoadedFrom cannot be null.");
            }
            c1339s.complete(bitmap, picasso$LoadedFrom);
        }
    }

    public final void c(C1339s c1339s) {
        Object a7 = c1339s.a();
        if (a7 != null) {
            WeakHashMap weakHashMap = this.f18600g;
            if (weakHashMap.get(a7) != c1339s) {
                a(a7);
                weakHashMap.put(a7, c1339s);
            }
        }
        com.squareup.picasso.b bVar = this.f18597d.f18697h;
        bVar.sendMessage(bVar.obtainMessage(1, c1339s));
    }

    public void cancelRequest(ImageView imageView) {
        if (imageView == null) {
            throw new IllegalArgumentException("view cannot be null.");
        }
        a(imageView);
    }

    public J load(Uri uri) {
        return new J(this, uri, 0);
    }

    public J load(String str) {
        if (str == null) {
            return new J(this, null, 0);
        }
        if (str.trim().length() != 0) {
            return load(Uri.parse(str));
        }
        throw new IllegalArgumentException("Path must not be empty.");
    }

    public J load(int i2) {
        if (i2 != 0) {
            return new J(this, null, i2);
        }
        throw new IllegalArgumentException("Resource ID must not be zero.");
    }
}
