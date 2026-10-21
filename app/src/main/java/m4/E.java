package m4;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.widget.ImageView;
import com.squareup.picasso.Picasso$LoadedFrom;

/* loaded from: classes2.dex */
public final class E extends BitmapDrawable {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f18604e = 0;

    /* renamed from: a, reason: collision with root package name */
    public Drawable f18605a;

    /* renamed from: b, reason: collision with root package name */
    public final long f18606b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18607c;

    /* renamed from: d, reason: collision with root package name */
    public int f18608d;

    static {
        new Paint();
    }

    public E(Context context, Bitmap bitmap, Drawable drawable, Picasso$LoadedFrom picasso$LoadedFrom) {
        super(context.getResources(), bitmap);
        this.f18608d = 255;
        float f3 = context.getResources().getDisplayMetrics().density;
        if (picasso$LoadedFrom != Picasso$LoadedFrom.MEMORY) {
            this.f18605a = drawable;
            this.f18607c = true;
            this.f18606b = SystemClock.uptimeMillis();
        }
    }

    public static void a(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
        if (imageView.getDrawable() instanceof Animatable) {
            ((Animatable) imageView.getDrawable()).start();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.f18607c) {
            super.draw(canvas);
            return;
        }
        float uptimeMillis = (SystemClock.uptimeMillis() - this.f18606b) / 200.0f;
        if (uptimeMillis >= 1.0f) {
            this.f18607c = false;
            this.f18605a = null;
            super.draw(canvas);
        } else {
            Drawable drawable = this.f18605a;
            if (drawable != null) {
                drawable.draw(canvas);
            }
            super.setAlpha((int) (this.f18608d * uptimeMillis));
            super.draw(canvas);
            super.setAlpha(this.f18608d);
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f18605a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f18608d = i2;
        Drawable drawable = this.f18605a;
        if (drawable != null) {
            drawable.setAlpha(i2);
        }
        super.setAlpha(i2);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f18605a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }
}
