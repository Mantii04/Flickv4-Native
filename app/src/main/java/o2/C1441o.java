package o2;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: o2.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1441o implements InterfaceC1430d {

    /* renamed from: j, reason: collision with root package name */
    public static final Bitmap.Config f19060j = Bitmap.Config.ARGB_8888;

    /* renamed from: a, reason: collision with root package name */
    public final C1447u f19061a;

    /* renamed from: b, reason: collision with root package name */
    public final Set f19062b;

    /* renamed from: c, reason: collision with root package name */
    public final C1440n f19063c;

    /* renamed from: d, reason: collision with root package name */
    public final long f19064d;

    /* renamed from: e, reason: collision with root package name */
    public long f19065e;

    /* renamed from: f, reason: collision with root package name */
    public int f19066f;

    /* renamed from: g, reason: collision with root package name */
    public int f19067g;

    /* renamed from: h, reason: collision with root package name */
    public int f19068h;

    /* renamed from: i, reason: collision with root package name */
    public int f19069i;

    public C1441o(long j7) {
        Bitmap.Config config;
        C1447u c1447u = new C1447u();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i2 = Build.VERSION.SDK_INT;
        hashSet.add(null);
        if (i2 >= 26) {
            config = Bitmap.Config.HARDWARE;
            hashSet.remove(config);
        }
        Set unmodifiableSet = Collections.unmodifiableSet(hashSet);
        this.f19064d = j7;
        this.f19061a = c1447u;
        this.f19062b = unmodifiableSet;
        this.f19063c = new C1440n();
    }

    public final void a() {
        Log.v("LruBitmapPool", "Hits=" + this.f19066f + ", misses=" + this.f19067g + ", puts=" + this.f19068h + ", evictions=" + this.f19069i + ", currentSize=" + this.f19065e + ", maxSize=" + this.f19064d + "\nStrategy=" + this.f19061a);
    }

    public final synchronized Bitmap b(int i2, int i7, Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap bitmap;
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                config2 = Bitmap.Config.HARDWARE;
                if (config == config2) {
                    throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
                }
            }
            bitmap = this.f19061a.get(i2, i7, config != null ? config : f19060j);
            if (bitmap == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    Log.d("LruBitmapPool", "Missing bitmap=" + this.f19061a.logBitmap(i2, i7, config));
                }
                this.f19067g++;
            } else {
                this.f19066f++;
                this.f19065e -= this.f19061a.getSize(bitmap);
                this.f19063c.remove(bitmap);
                bitmap.setHasAlpha(true);
                bitmap.setPremultiplied(true);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Get bitmap=" + this.f19061a.logBitmap(i2, i7, config));
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                a();
            }
        } catch (Throwable th) {
            throw th;
        }
        return bitmap;
    }

    public final synchronized void c(long j7) {
        while (this.f19065e > j7) {
            try {
                Bitmap removeLast = this.f19061a.removeLast();
                if (removeLast == null) {
                    if (Log.isLoggable("LruBitmapPool", 5)) {
                        Log.w("LruBitmapPool", "Size mismatch, resetting");
                        a();
                    }
                    this.f19065e = 0L;
                    return;
                }
                this.f19063c.remove(removeLast);
                this.f19065e -= this.f19061a.getSize(removeLast);
                this.f19069i++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    Log.d("LruBitmapPool", "Evicting bitmap=" + this.f19061a.logBitmap(removeLast));
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    a();
                }
                removeLast.recycle();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // o2.InterfaceC1430d
    public void clearMemory() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        c(0L);
    }

    @Override // o2.InterfaceC1430d
    public Bitmap get(int i2, int i7, Bitmap.Config config) {
        Bitmap b7 = b(i2, i7, config);
        if (b7 != null) {
            b7.eraseColor(0);
            return b7;
        }
        if (config == null) {
            config = f19060j;
        }
        return Bitmap.createBitmap(i2, i7, config);
    }

    @Override // o2.InterfaceC1430d
    public Bitmap getDirty(int i2, int i7, Bitmap.Config config) {
        Bitmap b7 = b(i2, i7, config);
        if (b7 != null) {
            return b7;
        }
        if (config == null) {
            config = f19060j;
        }
        return Bitmap.createBitmap(i2, i7, config);
    }

    public long getMaxSize() {
        return this.f19064d;
    }

    @Override // o2.InterfaceC1430d
    public synchronized void put(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable() && this.f19061a.getSize(bitmap) <= this.f19064d && this.f19062b.contains(bitmap.getConfig())) {
                int size = this.f19061a.getSize(bitmap);
                this.f19061a.put(bitmap);
                this.f19063c.add(bitmap);
                this.f19068h++;
                this.f19065e += size;
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    Log.v("LruBitmapPool", "Put bitmap in pool=" + this.f19061a.logBitmap(bitmap));
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    a();
                }
                c(this.f19064d);
                return;
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + this.f19061a.logBitmap(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f19062b.contains(bitmap.getConfig()));
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // o2.InterfaceC1430d
    @SuppressLint({"InlinedApi"})
    public void trimMemory(int i2) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i2);
        }
        if (i2 >= 40 || i2 >= 20) {
            clearMemory();
        } else if (i2 >= 20 || i2 == 15) {
            c(getMaxSize() / 2);
        }
    }
}
