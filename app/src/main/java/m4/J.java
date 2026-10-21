package m4;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Looper;
import android.widget.ImageView;
import com.squareup.picasso.Picasso$LoadedFrom;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class J {

    /* renamed from: f, reason: collision with root package name */
    public static final AtomicInteger f18630f = new AtomicInteger();

    /* renamed from: a, reason: collision with root package name */
    public final D f18631a;

    /* renamed from: b, reason: collision with root package name */
    public final H f18632b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18633c;

    /* renamed from: d, reason: collision with root package name */
    public int f18634d;

    /* renamed from: e, reason: collision with root package name */
    public int f18635e;

    public J(D d7, Uri uri, int i2) {
        this.f18631a = d7;
        H h7 = new H();
        h7.f18610a = uri;
        h7.f18611b = i2;
        h7.f18618i = d7.f18603j;
        this.f18632b = h7;
    }

    public J centerCrop() {
        this.f18632b.centerCrop(17);
        return this;
    }

    public J error(int i2) {
        if (i2 == 0) {
            throw new IllegalArgumentException("Error image resource invalid.");
        }
        this.f18635e = i2;
        return this;
    }

    public J fit() {
        this.f18633c = true;
        return this;
    }

    public void into(ImageView imageView) {
        into(imageView, null);
    }

    public J onlyScaleDown() {
        this.f18632b.onlyScaleDown();
        return this;
    }

    public J placeholder(int i2) {
        if (i2 == 0) {
            throw new IllegalArgumentException("Placeholder image resource invalid.");
        }
        this.f18634d = i2;
        return this;
    }

    public J resize(int i2, int i7) {
        this.f18632b.resize(i2, i7);
        return this;
    }

    public J transform(S s6) {
        this.f18632b.transform(s6);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void into(ImageView imageView, InterfaceC1330i interfaceC1330i) {
        System.nanoTime();
        StringBuilder sb = W.f18670a;
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
        if (imageView == null) {
            throw new IllegalArgumentException("Target must not be null.");
        }
        H h7 = this.f18632b;
        Uri uri = h7.f18610a;
        D d7 = this.f18631a;
        if (uri == null && h7.f18611b == 0) {
            d7.cancelRequest(imageView);
            int i2 = this.f18634d;
            E.a(imageView, i2 != 0 ? d7.f18596c.getDrawable(i2) : null);
            return;
        }
        if (this.f18633c) {
            if (h7.f18612c != 0 || h7.f18613d != 0) {
                throw new IllegalStateException("Fit cannot be used with resize.");
            }
            int width = imageView.getWidth();
            int height = imageView.getHeight();
            if (width == 0 || height == 0) {
                int i7 = this.f18634d;
                E.a(imageView, i7 != 0 ? d7.f18596c.getDrawable(i7) : null);
                ViewTreeObserverOnPreDrawListenerC1333l viewTreeObserverOnPreDrawListenerC1333l = new ViewTreeObserverOnPreDrawListenerC1333l(this, imageView, interfaceC1330i);
                WeakHashMap weakHashMap = d7.f18601h;
                if (weakHashMap.containsKey(imageView)) {
                    d7.a(imageView);
                }
                weakHashMap.put(imageView, viewTreeObserverOnPreDrawListenerC1333l);
                return;
            }
            h7.resize(width, height);
        }
        f18630f.getAndIncrement();
        I build = h7.build();
        build.getClass();
        C1321C c1321c = d7.f18594a;
        I transformRequest = c1321c.transformRequest(build);
        if (transformRequest == null) {
            throw new IllegalStateException("Request transformer " + c1321c.getClass().getCanonicalName() + " returned null for " + build);
        }
        StringBuilder sb2 = W.f18670a;
        Uri uri2 = transformRequest.f18620a;
        if (uri2 != null) {
            String uri3 = uri2.toString();
            sb2.ensureCapacity(uri3.length() + 50);
            sb2.append(uri3);
        } else {
            sb2.ensureCapacity(50);
            sb2.append(transformRequest.f18621b);
        }
        sb2.append('\n');
        if (transformRequest.hasSize()) {
            sb2.append("resize:");
            sb2.append(transformRequest.f18623d);
            sb2.append('x');
            sb2.append(transformRequest.f18624e);
            sb2.append('\n');
        }
        if (transformRequest.f18625f) {
            sb2.append("centerCrop:");
            sb2.append(transformRequest.f18626g);
            sb2.append('\n');
        }
        List list = transformRequest.f18622c;
        if (list != null) {
            int size = list.size();
            for (int i8 = 0; i8 < size; i8++) {
                sb2.append(((T4.d) ((S) list.get(i8))).key());
                sb2.append('\n');
            }
        }
        String sb3 = sb2.toString();
        sb2.setLength(0);
        Bitmap bitmap = d7.f18598e.get(sb3);
        P p6 = d7.f18599f;
        if (bitmap != null) {
            p6.f18644b.sendEmptyMessage(0);
        } else {
            p6.f18644b.sendEmptyMessage(1);
        }
        if (bitmap == null) {
            int i9 = this.f18634d;
            E.a(imageView, i9 != 0 ? d7.f18596c.getDrawable(i9) : null);
            d7.c(new C1339s(d7, imageView, transformRequest, this.f18635e, sb3, interfaceC1330i));
            return;
        }
        d7.cancelRequest(imageView);
        Picasso$LoadedFrom picasso$LoadedFrom = Picasso$LoadedFrom.MEMORY;
        int i10 = E.f18604e;
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        imageView.setImageDrawable(new E(d7.f18596c, bitmap, drawable, picasso$LoadedFrom));
        if (interfaceC1330i != null) {
            interfaceC1330i.onSuccess();
        }
    }
}
