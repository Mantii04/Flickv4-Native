package pl.droidsonroids.gif;

import A.i;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.TypedValue;
import android.widget.MediaController;
import java.io.IOException;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class c extends Drawable implements Animatable, MediaController.MediaPlayerControl {

    /* renamed from: A, reason: collision with root package name */
    public final int f19523A;

    /* renamed from: b, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f19524b;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f19525e;

    /* renamed from: f, reason: collision with root package name */
    public long f19526f;

    /* renamed from: j, reason: collision with root package name */
    public final Rect f19527j;

    /* renamed from: m, reason: collision with root package name */
    public final Paint f19528m;

    /* renamed from: n, reason: collision with root package name */
    public final Bitmap f19529n;

    /* renamed from: p, reason: collision with root package name */
    public final GifInfoHandle f19530p;

    /* renamed from: q, reason: collision with root package name */
    public final ConcurrentLinkedQueue f19531q;

    /* renamed from: r, reason: collision with root package name */
    public ColorStateList f19532r;

    /* renamed from: s, reason: collision with root package name */
    public PorterDuffColorFilter f19533s;

    /* renamed from: t, reason: collision with root package name */
    public PorterDuff.Mode f19534t;

    /* renamed from: u, reason: collision with root package name */
    public final boolean f19535u;

    /* renamed from: v, reason: collision with root package name */
    public final n6.f f19536v;

    /* renamed from: w, reason: collision with root package name */
    public final f f19537w;

    /* renamed from: x, reason: collision with root package name */
    public final Rect f19538x;

    /* renamed from: y, reason: collision with root package name */
    public ScheduledFuture f19539y;

    /* renamed from: z, reason: collision with root package name */
    public final int f19540z;

    public c(Resources resources, int i2) throws Resources.NotFoundException, IOException {
        this(resources.openRawResourceFd(i2));
        TypedValue typedValue = new TypedValue();
        resources.getValue(i2, typedValue, true);
        int i7 = typedValue.density;
        if (i7 == 0) {
            i7 = 160;
        } else if (i7 == 65535) {
            i7 = 0;
        }
        int i8 = resources.getDisplayMetrics().densityDpi;
        float f3 = (i7 <= 0 || i8 <= 0) ? 1.0f : i8 / i7;
        this.f19523A = (int) (this.f19530p.e() * f3);
        this.f19540z = (int) (this.f19530p.j() * f3);
    }

    public final void a(long j7) {
        n6.f fVar = this.f19536v;
        if (this.f19535u) {
            this.f19526f = 0L;
            fVar.sendEmptyMessageAtTime(-1, 0L);
            return;
        }
        ScheduledFuture scheduledFuture = this.f19539y;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        fVar.removeMessages(-1);
        this.f19539y = this.f19524b.schedule(this.f19537w, Math.max(j7, 0L), TimeUnit.MILLISECONDS);
    }

    public final PorterDuffColorFilter b(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return getNumberOfFrames() > 1;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return getNumberOfFrames() > 1;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z6;
        PorterDuffColorFilter porterDuffColorFilter = this.f19533s;
        Paint paint = this.f19528m;
        if (porterDuffColorFilter == null || paint.getColorFilter() != null) {
            z6 = false;
        } else {
            paint.setColorFilter(this.f19533s);
            z6 = true;
        }
        canvas.drawBitmap(this.f19529n, this.f19538x, this.f19527j, paint);
        if (z6) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f19528m.getAlpha();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        return 100;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f19528m.getColorFilter();
    }

    public int getCurrentFrameIndex() {
        return this.f19530p.a();
    }

    public int getCurrentLoop() {
        GifInfoHandle gifInfoHandle = this.f19530p;
        int b7 = gifInfoHandle.b();
        return (b7 == 0 || b7 < gifInfoHandle.f()) ? b7 : b7 - 1;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        return this.f19530p.c();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        return this.f19530p.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f19523A;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f19540z;
    }

    public int getNumberOfFrames() {
        return this.f19530p.h();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return (!this.f19530p.k() || this.f19528m.getAlpha() < 255) ? -2 : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        if (this.f19535u && this.f19525e) {
            long j7 = this.f19526f;
            if (j7 != Long.MIN_VALUE) {
                long max = Math.max(0L, j7 - SystemClock.uptimeMillis());
                this.f19526f = Long.MIN_VALUE;
                this.f19524b.remove(this.f19537w);
                this.f19539y = this.f19524b.schedule(this.f19537w, max, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return this.f19525e;
    }

    public boolean isRecycled() {
        boolean z6;
        GifInfoHandle gifInfoHandle = this.f19530p;
        synchronized (gifInfoHandle) {
            z6 = gifInfoHandle.f19519a == 0;
        }
        return z6;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f19525e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (super.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = this.f19532r;
        return colorStateList != null && colorStateList.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f19527j.set(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f19532r;
        if (colorStateList == null || (mode = this.f19534t) == null) {
            return false;
        }
        this.f19533s = b(colorStateList, mode);
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
        stop();
    }

    public void reset() {
        this.f19524b.execute(new a(this, this));
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Position is not positive");
        }
        this.f19524b.execute(new b(this, this, i2));
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f19528m.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f19528m.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z6) {
        this.f19528m.setDither(z6);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z6) {
        this.f19528m.setFilterBitmap(z6);
        invalidateSelf();
    }

    public void setLoopCount(int i2) {
        this.f19530p.r(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f19532r = colorStateList;
        this.f19533s = b(colorStateList, this.f19534t);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f19534t = mode;
        this.f19533s = b(this.f19532r, mode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z6, boolean z7) {
        boolean visible = super.setVisible(z6, z7);
        if (!this.f19535u) {
            if (z6) {
                if (z7) {
                    reset();
                }
                if (visible) {
                    start();
                    return visible;
                }
            } else if (visible) {
                stop();
            }
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable, android.widget.MediaController.MediaPlayerControl
    public void start() {
        synchronized (this) {
            try {
                if (this.f19525e) {
                    return;
                }
                this.f19525e = true;
                a(this.f19530p.n());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        synchronized (this) {
            try {
                if (this.f19525e) {
                    this.f19525e = false;
                    ScheduledFuture scheduledFuture = this.f19539y;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.f19536v.removeMessages(-1);
                    this.f19530p.p();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String toString() {
        Locale locale = Locale.ENGLISH;
        GifInfoHandle gifInfoHandle = this.f19530p;
        int j7 = gifInfoHandle.j();
        int e3 = gifInfoHandle.e();
        int h7 = gifInfoHandle.h();
        int g7 = gifInfoHandle.g();
        StringBuilder p6 = i.p(j7, e3, "GIF: size: ", "x", ", frames: ");
        p6.append(h7);
        p6.append(", error: ");
        p6.append(g7);
        return p6.toString();
    }

    public c(AssetFileDescriptor assetFileDescriptor) throws IOException {
        this(new GifInfoHandle(assetFileDescriptor));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c(android.content.ContentResolver r3, android.net.Uri r4) throws java.io.IOException {
        /*
            r2 = this;
            int r0 = pl.droidsonroids.gif.GifInfoHandle.f19518b
            java.lang.String r0 = r4.getScheme()
            java.lang.String r1 = "file"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L1e
            pl.droidsonroids.gif.GifInfoHandle r3 = new pl.droidsonroids.gif.GifInfoHandle
            java.lang.String r4 = r4.getPath()
            r3.<init>()
            long r0 = pl.droidsonroids.gif.GifInfoHandle.openFile(r4)
            r3.f19519a = r0
            goto L2c
        L1e:
            java.lang.String r0 = "r"
            android.content.res.AssetFileDescriptor r3 = r3.openAssetFileDescriptor(r4, r0)
            if (r3 == 0) goto L30
            pl.droidsonroids.gif.GifInfoHandle r4 = new pl.droidsonroids.gif.GifInfoHandle
            r4.<init>(r3)
            r3 = r4
        L2c:
            r2.<init>(r3)
            return
        L30:
            java.io.IOException r3 = new java.io.IOException
            java.lang.String r0 = "Could not open AssetFileDescriptor for "
            java.lang.String r4 = b.c.k(r0, r4)
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: pl.droidsonroids.gif.c.<init>(android.content.ContentResolver, android.net.Uri):void");
    }

    public c(GifInfoHandle gifInfoHandle) {
        this.f19525e = true;
        this.f19526f = Long.MIN_VALUE;
        this.f19527j = new Rect();
        this.f19528m = new Paint(6);
        this.f19531q = new ConcurrentLinkedQueue();
        f fVar = new f(this);
        this.f19537w = fVar;
        this.f19535u = true;
        int i2 = n6.b.f19014b;
        this.f19524b = n6.a.f19013a;
        this.f19530p = gifInfoHandle;
        Bitmap createBitmap = Bitmap.createBitmap(gifInfoHandle.j(), gifInfoHandle.e(), Bitmap.Config.ARGB_8888);
        this.f19529n = createBitmap;
        createBitmap.setHasAlpha(true ^ gifInfoHandle.k());
        this.f19538x = new Rect(0, 0, gifInfoHandle.j(), gifInfoHandle.e());
        this.f19536v = new n6.f(this);
        fVar.doWork();
        this.f19540z = gifInfoHandle.j();
        this.f19523A = gifInfoHandle.e();
    }
}
