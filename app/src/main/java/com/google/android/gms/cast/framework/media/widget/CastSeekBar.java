package com.google.android.gms.cast.framework.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.common.internal.Objects;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class CastSeekBar extends View {

    /* renamed from: C, reason: collision with root package name */
    public static final /* synthetic */ int f10140C = 0;

    /* renamed from: A, reason: collision with root package name */
    public Point f10141A;

    /* renamed from: B, reason: collision with root package name */
    public zza f10142B;

    /* renamed from: b, reason: collision with root package name */
    public zze f10143b;

    /* renamed from: e, reason: collision with root package name */
    public boolean f10144e;

    /* renamed from: f, reason: collision with root package name */
    public Integer f10145f;

    /* renamed from: j, reason: collision with root package name */
    public zzc f10146j;

    /* renamed from: m, reason: collision with root package name */
    public ArrayList f10147m;

    /* renamed from: n, reason: collision with root package name */
    public zzd f10148n;

    /* renamed from: p, reason: collision with root package name */
    public final float f10149p;

    /* renamed from: q, reason: collision with root package name */
    public final float f10150q;

    /* renamed from: r, reason: collision with root package name */
    public final float f10151r;

    /* renamed from: s, reason: collision with root package name */
    public final float f10152s;

    /* renamed from: t, reason: collision with root package name */
    public final float f10153t;

    /* renamed from: u, reason: collision with root package name */
    public final Paint f10154u;

    /* renamed from: v, reason: collision with root package name */
    public final int f10155v;

    /* renamed from: w, reason: collision with root package name */
    public final int f10156w;

    /* renamed from: x, reason: collision with root package name */
    public final int f10157x;

    /* renamed from: y, reason: collision with root package name */
    public final int f10158y;

    /* renamed from: z, reason: collision with root package name */
    public int[] f10159z;

    public CastSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final int a(int i2) {
        return (int) ((i2 / ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) * this.f10143b.f10234b);
    }

    public final void b(Canvas canvas, int i2, int i7, int i8, int i9, int i10) {
        Paint paint = this.f10154u;
        paint.setColor(i10);
        float f3 = i8;
        float f7 = i7 / f3;
        float f8 = i2 / f3;
        float f9 = i9;
        float f10 = this.f10151r;
        canvas.drawRect(f8 * f9, -f10, f7 * f9, f10, paint);
    }

    /* JADX WARN: Type inference failed for: r3v7, types: [com.google.android.gms.cast.framework.media.widget.zza] */
    public final void c(int i2) {
        zze zzeVar = this.f10143b;
        if (zzeVar.f10238f) {
            int i7 = zzeVar.f10236d;
            this.f10145f = Integer.valueOf(Math.min(Math.max(i2, i7), zzeVar.f10237e));
            zzd zzdVar = this.f10148n;
            if (zzdVar != null) {
                zzdVar.zza(this, getProgress(), true);
            }
            zza zzaVar = this.f10142B;
            if (zzaVar == null) {
                this.f10142B = new Runnable() { // from class: com.google.android.gms.cast.framework.media.widget.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        CastSeekBar.this.sendAccessibilityEvent(4);
                    }
                };
            } else {
                removeCallbacks(zzaVar);
            }
            postDelayed(this.f10142B, 200L);
            postInvalidate();
        }
    }

    public int getMaxProgress() {
        return this.f10143b.f10234b;
    }

    public int getProgress() {
        Integer num = this.f10145f;
        return num != null ? num.intValue() : this.f10143b.f10233a;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        zza zzaVar = this.f10142B;
        if (zzaVar != null) {
            removeCallbacks(zzaVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i2;
        int i7;
        int i8;
        int save = canvas.save();
        canvas.translate(getPaddingLeft(), getPaddingTop());
        zzc zzcVar = this.f10146j;
        if (zzcVar == null) {
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            int progress = getProgress();
            int save2 = canvas.save();
            canvas.translate(0.0f, measuredHeight / 2);
            zze zzeVar = this.f10143b;
            if (zzeVar.f10238f) {
                int i9 = zzeVar.f10236d;
                if (i9 > 0) {
                    b(canvas, 0, i9, zzeVar.f10234b, measuredWidth, this.f10157x);
                }
                zze zzeVar2 = this.f10143b;
                int i10 = zzeVar2.f10236d;
                if (progress > i10) {
                    b(canvas, i10, progress, zzeVar2.f10234b, measuredWidth, this.f10155v);
                    i8 = progress;
                } else {
                    i8 = progress;
                }
                zze zzeVar3 = this.f10143b;
                int i11 = zzeVar3.f10237e;
                if (i11 > i8) {
                    b(canvas, i8, i11, zzeVar3.f10234b, measuredWidth, this.f10156w);
                }
                zze zzeVar4 = this.f10143b;
                int i12 = zzeVar4.f10234b;
                int i13 = zzeVar4.f10237e;
                if (i12 > i13) {
                    b(canvas, i13, i12, i12, measuredWidth, this.f10157x);
                }
            } else {
                int max = Math.max(zzeVar.f10235c, 0);
                if (max > 0) {
                    i2 = max;
                    b(canvas, 0, i2, this.f10143b.f10234b, measuredWidth, this.f10157x);
                } else {
                    i2 = max;
                }
                if (progress > i2) {
                    b(canvas, i2, progress, this.f10143b.f10234b, measuredWidth, this.f10155v);
                    i7 = progress;
                } else {
                    i7 = progress;
                }
                int i14 = this.f10143b.f10234b;
                if (i14 > i7) {
                    b(canvas, i7, i14, i14, measuredWidth, this.f10157x);
                }
            }
            canvas.restoreToCount(save2);
            ArrayList<zzb> arrayList = this.f10147m;
            Paint paint = this.f10154u;
            if (arrayList != null && !arrayList.isEmpty()) {
                paint.setColor(this.f10158y);
                int measuredWidth2 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
                int measuredHeight2 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
                int save3 = canvas.save();
                canvas.translate(0.0f, measuredHeight2 / 2);
                for (zzb zzbVar : arrayList) {
                    if (zzbVar != null) {
                        int min = Math.min(zzbVar.f10228a, this.f10143b.f10234b);
                        int i15 = (zzbVar.f10230c ? zzbVar.f10229b : 1) + min;
                        float f3 = measuredWidth2;
                        float f7 = this.f10143b.f10234b;
                        float f8 = (i15 * f3) / f7;
                        float f9 = (min * f3) / f7;
                        float f10 = f8 - f9;
                        float f11 = this.f10153t;
                        if (f10 < f11) {
                            f8 = f9 + f11;
                        }
                        if (f8 <= f3) {
                            f3 = f8;
                        }
                        if (f3 - f9 < f11) {
                            f9 = f3 - f11;
                        }
                        float f12 = this.f10151r;
                        canvas.drawRect(f9, -f12, f3, f12, paint);
                    }
                }
                canvas.restoreToCount(save3);
            }
            if (isEnabled() && this.f10143b.f10238f) {
                paint.setColor(this.f10155v);
                int measuredWidth3 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
                int measuredHeight3 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
                double progress2 = getProgress();
                double d7 = this.f10143b.f10234b;
                int save4 = canvas.save();
                canvas.drawCircle((int) ((progress2 / d7) * measuredWidth3), measuredHeight3 / 2.0f, this.f10152s, paint);
                canvas.restoreToCount(save4);
            }
        } else {
            int measuredWidth4 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            int measuredHeight4 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            int save5 = canvas.save();
            canvas.translate(0.0f, measuredHeight4 / 2);
            b(canvas, 0, zzcVar.f10231a, zzcVar.f10232b, measuredWidth4, this.f10158y);
            int i16 = zzcVar.f10232b;
            b(canvas, zzcVar.f10231a, i16, i16, measuredWidth4, this.f10157x);
            canvas.restoreToCount(save5);
        }
        canvas.restoreToCount(save);
    }

    @Override // android.view.View
    public synchronized void onMeasure(int i2, int i7) {
        float paddingLeft = getPaddingLeft();
        setMeasuredDimension(View.resolveSizeAndState((int) (this.f10149p + paddingLeft + getPaddingRight()), i2, 0), View.resolveSizeAndState((int) (this.f10150q + getPaddingTop() + getPaddingBottom()), i7, 0));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled() && this.f10143b.f10238f) {
            if (this.f10141A == null) {
                this.f10141A = new Point();
            }
            if (this.f10159z == null) {
                this.f10159z = new int[2];
            }
            getLocationOnScreen(this.f10159z);
            this.f10141A.set((((int) motionEvent.getRawX()) - this.f10159z[0]) - getPaddingLeft(), ((int) motionEvent.getRawY()) - this.f10159z[1]);
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f10144e = true;
                zzd zzdVar = this.f10148n;
                if (zzdVar != null) {
                    zzdVar.zzb(this);
                }
                c(a(this.f10141A.x));
                return true;
            }
            if (action == 1) {
                c(a(this.f10141A.x));
                this.f10144e = false;
                zzd zzdVar2 = this.f10148n;
                if (zzdVar2 != null) {
                    zzdVar2.zzc(this);
                }
                return true;
            }
            if (action == 2) {
                c(a(this.f10141A.x));
                return true;
            }
            if (action == 3) {
                this.f10144e = false;
                this.f10145f = null;
                zzd zzdVar3 = this.f10148n;
                if (zzdVar3 != null) {
                    zzdVar3.zza(this, getProgress(), true);
                    this.f10148n.zzc(this);
                }
                postInvalidate();
                return true;
            }
        }
        return false;
    }

    public final void zzd(List list) {
        if (Objects.equal(this.f10147m, list)) {
            return;
        }
        this.f10147m = list == null ? null : new ArrayList(list);
        postInvalidate();
    }

    public final void zze(zze zzeVar) {
        if (this.f10144e) {
            return;
        }
        zze zzeVar2 = new zze();
        zzeVar2.f10233a = zzeVar.f10233a;
        zzeVar2.f10234b = zzeVar.f10234b;
        zzeVar2.f10235c = zzeVar.f10235c;
        zzeVar2.f10236d = zzeVar.f10236d;
        zzeVar2.f10237e = zzeVar.f10237e;
        zzeVar2.f10238f = zzeVar.f10238f;
        this.f10143b = zzeVar2;
        this.f10145f = null;
        zzd zzdVar = this.f10148n;
        if (zzdVar != null) {
            zzdVar.zza(this, getProgress(), false);
        }
        postInvalidate();
    }

    public CastSeekBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f10147m = new ArrayList();
        setAccessibilityDelegate(new zzg(this));
        Paint paint = new Paint(1);
        this.f10154u = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f10149p = context.getResources().getDimension(R.dimen.cast_seek_bar_minimum_width);
        this.f10150q = context.getResources().getDimension(R.dimen.cast_seek_bar_minimum_height);
        this.f10151r = context.getResources().getDimension(R.dimen.cast_seek_bar_progress_height) / 2.0f;
        this.f10152s = context.getResources().getDimension(R.dimen.cast_seek_bar_thumb_size) / 2.0f;
        this.f10153t = context.getResources().getDimension(R.dimen.cast_seek_bar_ad_break_minimum_width);
        zze zzeVar = new zze();
        this.f10143b = zzeVar;
        zzeVar.f10234b = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.CastExpandedController, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSeekBarProgressAndThumbColor, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSeekBarSecondaryProgressColor, 0);
        int resourceId3 = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSeekBarUnseekableProgressColor, 0);
        int resourceId4 = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castAdBreakMarkerColor, 0);
        this.f10155v = context.getResources().getColor(resourceId);
        this.f10156w = context.getResources().getColor(resourceId2);
        this.f10157x = context.getResources().getColor(resourceId3);
        this.f10158y = context.getResources().getColor(resourceId4);
        obtainStyledAttributes.recycle();
    }
}
