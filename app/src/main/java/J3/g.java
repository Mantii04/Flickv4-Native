package J3;

import M.AbstractC0181p0;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;
import com.google.android.material.tabs.TabLayout;
import x3.T;

/* loaded from: classes2.dex */
public final class g extends LinearLayout {

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f1515f = 0;

    /* renamed from: b, reason: collision with root package name */
    public ValueAnimator f1516b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TabLayout f1517e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(TabLayout tabLayout, Context context) {
        super(context);
        this.f1517e = tabLayout;
        setWillNotDraw(false);
    }

    public final void a(int i2) {
        int i7 = TabLayout.f12815a0;
        TabLayout tabLayout = this.f1517e;
        tabLayout.getClass();
        View childAt = getChildAt(i2);
        b bVar = tabLayout.f12834R;
        Drawable drawable = tabLayout.f12854x;
        bVar.getClass();
        RectF a7 = b.a(tabLayout, childAt);
        drawable.setBounds((int) a7.left, drawable.getBounds().top, (int) a7.right, drawable.getBounds().bottom);
        tabLayout.f12840b = i2;
    }

    public final void b(int i2) {
        TabLayout tabLayout = this.f1517e;
        Rect bounds = tabLayout.f12854x.getBounds();
        tabLayout.f12854x.setBounds(bounds.left, 0, bounds.right, i2);
        requestLayout();
    }

    public final void c(View view, View view2, float f3) {
        TabLayout tabLayout = this.f1517e;
        if (view == null || view.getWidth() <= 0) {
            Drawable drawable = tabLayout.f12854x;
            drawable.setBounds(-1, drawable.getBounds().top, -1, tabLayout.f12854x.getBounds().bottom);
        } else {
            tabLayout.f12834R.c(tabLayout, view, view2, f3, tabLayout.f12854x);
        }
        AbstractC0181p0.postInvalidateOnAnimation(this);
    }

    public final void d(int i2, int i7, boolean z6) {
        TabLayout tabLayout = this.f1517e;
        if (tabLayout.f12840b == i2) {
            return;
        }
        View childAt = getChildAt(tabLayout.getSelectedTabPosition());
        View childAt2 = getChildAt(i2);
        if (childAt2 == null) {
            a(tabLayout.getSelectedTabPosition());
            return;
        }
        tabLayout.f12840b = i2;
        f fVar = new f(this, childAt, childAt2);
        if (!z6) {
            this.f1516b.removeAllUpdateListeners();
            this.f1516b.addUpdateListener(fVar);
            return;
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f1516b = valueAnimator;
        valueAnimator.setInterpolator(tabLayout.f12835S);
        valueAnimator.setDuration(i7);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        valueAnimator.addUpdateListener(fVar);
        valueAnimator.start();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int height;
        TabLayout tabLayout = this.f1517e;
        int height2 = tabLayout.f12854x.getBounds().height();
        if (height2 < 0) {
            height2 = tabLayout.f12854x.getIntrinsicHeight();
        }
        int i2 = tabLayout.f12827K;
        if (i2 == 0) {
            height = getHeight() - height2;
            height2 = getHeight();
        } else if (i2 != 1) {
            height = 0;
            if (i2 != 2) {
                height2 = i2 != 3 ? 0 : getHeight();
            }
        } else {
            height = (getHeight() - height2) / 2;
            height2 = (getHeight() + height2) / 2;
        }
        if (tabLayout.f12854x.getBounds().width() > 0) {
            Rect bounds = tabLayout.f12854x.getBounds();
            tabLayout.f12854x.setBounds(bounds.left, height, bounds.right, height2);
            tabLayout.f12854x.draw(canvas);
        }
        super.draw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        ValueAnimator valueAnimator = this.f1516b;
        TabLayout tabLayout = this.f1517e;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            d(tabLayout.getSelectedTabPosition(), -1, false);
            return;
        }
        if (tabLayout.f12840b == -1) {
            tabLayout.f12840b = tabLayout.getSelectedTabPosition();
        }
        a(tabLayout.f12840b);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        super.onMeasure(i2, i7);
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            return;
        }
        TabLayout tabLayout = this.f1517e;
        boolean z6 = true;
        if (tabLayout.f12825I == 1 || tabLayout.f12828L == 2) {
            int childCount = getChildCount();
            int i8 = 0;
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = getChildAt(i9);
                if (childAt.getVisibility() == 0) {
                    i8 = Math.max(i8, childAt.getMeasuredWidth());
                }
            }
            if (i8 <= 0) {
                return;
            }
            if (i8 * childCount <= getMeasuredWidth() - (((int) T.dpToPx(getContext(), 16)) * 2)) {
                boolean z7 = false;
                for (int i10 = 0; i10 < childCount; i10++) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i10).getLayoutParams();
                    if (layoutParams.width != i8 || layoutParams.weight != 0.0f) {
                        layoutParams.width = i8;
                        layoutParams.weight = 0.0f;
                        z7 = true;
                    }
                }
                z6 = z7;
            } else {
                tabLayout.f12825I = 0;
                tabLayout.f(false);
            }
            if (z6) {
                super.onMeasure(i2, i7);
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
    }
}
