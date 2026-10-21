package y2;

import G2.r;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import com.bumptech.glide.q;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import l2.t;

/* renamed from: y2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1882d extends Drawable implements i, Animatable {

    /* renamed from: b, reason: collision with root package name */
    public final C1881c f21064b;

    /* renamed from: e, reason: collision with root package name */
    public boolean f21065e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f21066f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f21067j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f21068m;

    /* renamed from: n, reason: collision with root package name */
    public int f21069n;

    /* renamed from: p, reason: collision with root package name */
    public final int f21070p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f21071q;

    /* renamed from: r, reason: collision with root package name */
    public Paint f21072r;

    /* renamed from: s, reason: collision with root package name */
    public Rect f21073s;

    public C1882d(Context context, k2.b bVar, t tVar, int i2, int i7, Bitmap bitmap) {
        this(new C1881c(new k(com.bumptech.glide.c.get(context), bVar, i2, i7, tVar, bitmap)));
    }

    public final void a() {
        r.checkArgument(!this.f21067j, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        C1881c c1881c = this.f21064b;
        if (((k2.f) c1881c.f21063a.f21080a).getFrameCount() == 1) {
            invalidateSelf();
            return;
        }
        if (this.f21065e) {
            return;
        }
        this.f21065e = true;
        k kVar = c1881c.f21063a;
        if (kVar.f21089j) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        ArrayList arrayList = kVar.f21082c;
        if (arrayList.contains(this)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean isEmpty = arrayList.isEmpty();
        arrayList.add(this);
        if (isEmpty && !kVar.f21085f) {
            kVar.f21085f = true;
            kVar.f21089j = false;
            kVar.a();
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f21067j) {
            return;
        }
        if (this.f21071q) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            if (this.f21073s == null) {
                this.f21073s = new Rect();
            }
            Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.f21073s);
            this.f21071q = false;
        }
        k kVar = this.f21064b.f21063a;
        h hVar = kVar.f21088i;
        Bitmap bitmap = hVar != null ? hVar.f21078p : kVar.f21091l;
        if (this.f21073s == null) {
            this.f21073s = new Rect();
        }
        Rect rect = this.f21073s;
        if (this.f21072r == null) {
            this.f21072r = new Paint(2);
        }
        canvas.drawBitmap(bitmap, (Rect) null, rect, this.f21072r);
    }

    public ByteBuffer getBuffer() {
        return ((k2.f) this.f21064b.f21063a.f21080a).getData().asReadOnlyBuffer();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f21064b;
    }

    public Bitmap getFirstFrame() {
        return this.f21064b.f21063a.f21091l;
    }

    public int getFrameCount() {
        return ((k2.f) this.f21064b.f21063a.f21080a).getFrameCount();
    }

    public int getFrameIndex() {
        h hVar = this.f21064b.f21063a.f21088i;
        if (hVar != null) {
            return hVar.f21076m;
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f21064b.f21063a.f21095p;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f21064b.f21063a.f21094o;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public int getSize() {
        k kVar = this.f21064b.f21063a;
        return ((k2.f) kVar.f21080a).getByteSize() + kVar.f21093n;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f21065e;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f21071q = true;
    }

    public void onFrameReady() {
        Object callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        if (callback == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (getFrameIndex() == getFrameCount() - 1) {
            this.f21069n++;
        }
        int i2 = this.f21070p;
        if (i2 == -1 || this.f21069n < i2) {
            return;
        }
        stop();
    }

    public void recycle() {
        this.f21067j = true;
        k kVar = this.f21064b.f21063a;
        kVar.f21082c.clear();
        Bitmap bitmap = kVar.f21091l;
        if (bitmap != null) {
            kVar.f21084e.put(bitmap);
            kVar.f21091l = null;
        }
        kVar.f21085f = false;
        h hVar = kVar.f21088i;
        q qVar = kVar.f21083d;
        if (hVar != null) {
            qVar.clear(hVar);
            kVar.f21088i = null;
        }
        h hVar2 = kVar.f21090k;
        if (hVar2 != null) {
            qVar.clear(hVar2);
            kVar.f21090k = null;
        }
        h hVar3 = kVar.f21092m;
        if (hVar3 != null) {
            qVar.clear(hVar3);
            kVar.f21092m = null;
        }
        ((k2.f) kVar.f21080a).clear();
        kVar.f21089j = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.f21072r == null) {
            this.f21072r = new Paint(2);
        }
        this.f21072r.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f21072r == null) {
            this.f21072r = new Paint(2);
        }
        this.f21072r.setColorFilter(colorFilter);
    }

    public void setFrameTransformation(t tVar, Bitmap bitmap) {
        this.f21064b.f21063a.c(tVar, bitmap);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z6, boolean z7) {
        r.checkArgument(!this.f21067j, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f21068m = z6;
        if (!z6) {
            this.f21065e = false;
            k kVar = this.f21064b.f21063a;
            ArrayList arrayList = kVar.f21082c;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                kVar.f21085f = false;
            }
        } else if (this.f21066f) {
            a();
        }
        return super.setVisible(z6, z7);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f21066f = true;
        this.f21069n = 0;
        if (this.f21068m) {
            a();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f21066f = false;
        this.f21065e = false;
        k kVar = this.f21064b.f21063a;
        ArrayList arrayList = kVar.f21082c;
        arrayList.remove(this);
        if (arrayList.isEmpty()) {
            kVar.f21085f = false;
        }
    }

    public C1882d(C1881c c1881c) {
        this.f21068m = true;
        this.f21070p = -1;
        this.f21064b = (C1881c) r.checkNotNull(c1881c);
    }
}
