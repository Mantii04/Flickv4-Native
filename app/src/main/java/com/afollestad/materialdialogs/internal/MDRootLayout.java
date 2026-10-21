package com.afollestad.materialdialogs.internal;

import R1.b;
import S1.a;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.ScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.afollestad.materialdialogs.GravityEnum;
import com.afollestad.materialdialogs.R;
import m1.AbstractC1286i0;

/* loaded from: classes.dex */
public class MDRootLayout extends ViewGroup {

    /* renamed from: A, reason: collision with root package name */
    public static final /* synthetic */ int f8987A = 0;

    /* renamed from: b, reason: collision with root package name */
    public View f8988b;

    /* renamed from: e, reason: collision with root package name */
    public View f8989e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8990f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f8991j;

    /* renamed from: m, reason: collision with root package name */
    public final MDButton[] f8992m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f8993n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f8994p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f8995q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f8996r;

    /* renamed from: s, reason: collision with root package name */
    public final int f8997s;

    /* renamed from: t, reason: collision with root package name */
    public final int f8998t;

    /* renamed from: u, reason: collision with root package name */
    public final int f8999u;

    /* renamed from: v, reason: collision with root package name */
    public GravityEnum f9000v;

    /* renamed from: w, reason: collision with root package name */
    public final int f9001w;

    /* renamed from: x, reason: collision with root package name */
    public final Paint f9002x;

    /* renamed from: y, reason: collision with root package name */
    public b f9003y;

    /* renamed from: z, reason: collision with root package name */
    public final int f9004z;

    public MDRootLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8990f = false;
        this.f8991j = false;
        this.f8992m = new MDButton[3];
        this.f8993n = false;
        this.f8994p = false;
        this.f8995q = true;
        this.f9000v = GravityEnum.f8979b;
        Resources resources = context.getResources();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MDRootLayout, 0, 0);
        this.f8996r = obtainStyledAttributes.getBoolean(R.styleable.MDRootLayout_md_reduce_padding_no_title_no_buttons, true);
        obtainStyledAttributes.recycle();
        this.f8997s = resources.getDimensionPixelSize(R.dimen.md_notitle_vertical_padding);
        this.f8998t = resources.getDimensionPixelSize(R.dimen.md_button_frame_vertical_padding);
        this.f9001w = resources.getDimensionPixelSize(R.dimen.md_button_padding_frame_side);
        this.f8999u = resources.getDimensionPixelSize(R.dimen.md_button_height);
        this.f9002x = new Paint();
        this.f9004z = resources.getDimensionPixelSize(R.dimen.md_divider_height);
        this.f9002x.setColor(a.resolveColor(context, R.attr.md_divider_color));
        setWillNotDraw(false);
    }

    public static boolean b(View view) {
        boolean z6 = (view == null || view.getVisibility() == 8) ? false : true;
        return (z6 && (view instanceof MDButton)) ? ((MDButton) view).getText().toString().trim().length() > 0 : z6;
    }

    public static boolean canRecyclerViewScroll(RecyclerView recyclerView) {
        if (recyclerView == null || recyclerView.getAdapter() == null || recyclerView.getLayoutManager() == null) {
            return false;
        }
        AbstractC1286i0 layoutManager = recyclerView.getLayoutManager();
        int itemCount = recyclerView.getAdapter().getItemCount();
        if (!(layoutManager instanceof LinearLayoutManager)) {
            final String str = "Material Dialogs currently only supports LinearLayoutManager. Please report any new layout managers.";
            throw new Error(str) { // from class: com.afollestad.materialdialogs.MaterialDialog$NotImplementedException
            };
        }
        int findLastVisibleItemPosition = ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
        if (findLastVisibleItemPosition == -1) {
            return false;
        }
        return findLastVisibleItemPosition != itemCount - 1 || (recyclerView.getChildCount() > 0 && recyclerView.getChildAt(recyclerView.getChildCount() - 1).getBottom() > recyclerView.getHeight() - recyclerView.getPaddingBottom());
    }

    public final void a(ViewGroup viewGroup, boolean z6) {
        if (this.f9003y == null) {
            b bVar = new b(this, viewGroup, z6);
            this.f9003y = bVar;
            viewGroup.getViewTreeObserver().addOnScrollChangedListener(this.f9003y);
            bVar.onScrollChanged();
        }
    }

    public final void c(View view, boolean z6) {
        View childAt;
        if (view == null) {
            return;
        }
        if (view instanceof ScrollView) {
            ViewGroup viewGroup = (ScrollView) view;
            if (viewGroup.getChildCount() != 0) {
                if ((viewGroup.getMeasuredHeight() - viewGroup.getPaddingTop()) - viewGroup.getPaddingBottom() < viewGroup.getChildAt(0).getMeasuredHeight()) {
                    a(viewGroup, z6);
                    return;
                }
            }
            if (z6) {
                this.f8990f = false;
            }
            this.f8991j = false;
            return;
        }
        if (view instanceof AdapterView) {
            AdapterView adapterView = (AdapterView) view;
            if (adapterView.getLastVisiblePosition() != -1) {
                boolean z7 = adapterView.getFirstVisiblePosition() == 0;
                boolean z8 = adapterView.getLastVisiblePosition() == adapterView.getCount() - 1;
                if (!z7 || !z8 || adapterView.getChildCount() <= 0 || adapterView.getChildAt(0).getTop() < adapterView.getPaddingTop() || adapterView.getChildAt(adapterView.getChildCount() - 1).getBottom() > adapterView.getHeight() - adapterView.getPaddingBottom()) {
                    a(adapterView, z6);
                    return;
                }
            }
            if (z6) {
                this.f8990f = false;
            }
            this.f8991j = false;
            return;
        }
        if (view instanceof WebView) {
            view.getViewTreeObserver().addOnPreDrawListener(new R1.a(this, view, z6));
            return;
        }
        if (view instanceof RecyclerView) {
            boolean canRecyclerViewScroll = canRecyclerViewScroll((RecyclerView) view);
            if (z6) {
                this.f8990f = canRecyclerViewScroll;
            }
            this.f8991j = canRecyclerViewScroll;
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) view;
            View view2 = null;
            if (viewGroup2.getChildCount() != 0) {
                for (int childCount = viewGroup2.getChildCount() - 1; childCount >= 0; childCount--) {
                    childAt = viewGroup2.getChildAt(childCount);
                    if (childAt.getVisibility() == 0 && childAt.getTop() == 0) {
                        break;
                    }
                }
            }
            childAt = null;
            c(childAt, z6);
            if (viewGroup2.getChildCount() != 0) {
                int childCount2 = viewGroup2.getChildCount() - 1;
                while (true) {
                    if (childCount2 < 0) {
                        break;
                    }
                    View childAt2 = viewGroup2.getChildAt(childCount2);
                    if (childAt2.getVisibility() == 0 && childAt2.getBottom() == viewGroup2.getMeasuredHeight()) {
                        view2 = childAt2;
                        break;
                    }
                    childCount2--;
                }
            }
            if (view2 != childAt) {
                c(view2, false);
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Canvas canvas2;
        super.onDraw(canvas);
        View view = this.f8989e;
        if (view != null) {
            if (this.f8990f) {
                canvas2 = canvas;
                canvas2.drawRect(0.0f, r0 - this.f9004z, getMeasuredWidth(), view.getTop(), this.f9002x);
            } else {
                canvas2 = canvas;
            }
            if (this.f8991j) {
                canvas2.drawRect(0.0f, this.f8989e.getBottom(), getMeasuredWidth(), r15 + this.f9004z, this.f9002x);
            }
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getId() == R.id.titleFrame) {
                this.f8988b = childAt;
            } else {
                int id = childAt.getId();
                int i7 = R.id.buttonDefaultNeutral;
                MDButton[] mDButtonArr = this.f8992m;
                if (id == i7) {
                    mDButtonArr[0] = (MDButton) childAt;
                } else if (childAt.getId() == R.id.buttonDefaultNegative) {
                    mDButtonArr[1] = (MDButton) childAt;
                } else if (childAt.getId() == R.id.buttonDefaultPositive) {
                    mDButtonArr[2] = (MDButton) childAt;
                } else {
                    this.f8989e = childAt;
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        int i10;
        char c7;
        int i11;
        int measuredWidth;
        int i12;
        int i13;
        int i14;
        int measuredWidth2;
        int measuredWidth3;
        int i15;
        int i16 = i7;
        if (b(this.f8988b)) {
            int measuredHeight = this.f8988b.getMeasuredHeight() + i16;
            this.f8988b.layout(i2, i16, i8, measuredHeight);
            i16 = measuredHeight;
        } else if (this.f8995q) {
            i16 += this.f8997s;
        }
        if (b(this.f8989e)) {
            View view = this.f8989e;
            view.layout(i2, i16, i8, view.getMeasuredHeight() + i16);
        }
        boolean z7 = this.f8994p;
        MDButton[] mDButtonArr = this.f8992m;
        if (z7) {
            int i17 = i9 - this.f8998t;
            for (MDButton mDButton : mDButtonArr) {
                if (b(mDButton)) {
                    mDButton.layout(i2, i17 - mDButton.getMeasuredHeight(), i8, i17);
                    i17 -= mDButton.getMeasuredHeight();
                }
            }
        } else {
            int i18 = this.f8995q ? i9 - this.f8998t : i9;
            int i19 = i18 - this.f8999u;
            int i20 = this.f9001w;
            boolean b7 = b(mDButtonArr[2]);
            GravityEnum gravityEnum = GravityEnum.f8980e;
            if (b7) {
                if (this.f9000v == gravityEnum) {
                    measuredWidth3 = i2 + i20;
                    i15 = mDButtonArr[2].getMeasuredWidth() + measuredWidth3;
                    i10 = -1;
                } else {
                    int i21 = i8 - i20;
                    measuredWidth3 = i21 - mDButtonArr[2].getMeasuredWidth();
                    i15 = i21;
                    i10 = measuredWidth3;
                }
                mDButtonArr[2].layout(measuredWidth3, i19, i15, i18);
                i20 += mDButtonArr[2].getMeasuredWidth();
            } else {
                i10 = -1;
            }
            boolean b8 = b(mDButtonArr[1]);
            GravityEnum gravityEnum2 = GravityEnum.f8979b;
            if (b8) {
                GravityEnum gravityEnum3 = this.f9000v;
                if (gravityEnum3 == gravityEnum) {
                    i14 = i20 + i2;
                    measuredWidth2 = mDButtonArr[1].getMeasuredWidth() + i14;
                } else if (gravityEnum3 == gravityEnum2) {
                    measuredWidth2 = i8 - i20;
                    i14 = measuredWidth2 - mDButtonArr[1].getMeasuredWidth();
                } else {
                    i14 = this.f9001w + i2;
                    measuredWidth2 = mDButtonArr[1].getMeasuredWidth() + i14;
                    i11 = measuredWidth2;
                    c7 = 0;
                    mDButtonArr[1].layout(i14, i19, measuredWidth2, i18);
                }
                i11 = -1;
                c7 = 0;
                mDButtonArr[1].layout(i14, i19, measuredWidth2, i18);
            } else {
                c7 = 0;
                i11 = -1;
            }
            if (b(mDButtonArr[c7])) {
                GravityEnum gravityEnum4 = this.f9000v;
                if (gravityEnum4 == gravityEnum) {
                    i12 = i8 - this.f9001w;
                    i13 = i12 - mDButtonArr[c7].getMeasuredWidth();
                } else if (gravityEnum4 == gravityEnum2) {
                    i13 = this.f9001w + i2;
                    i12 = mDButtonArr[c7].getMeasuredWidth() + i13;
                } else {
                    if (i11 != -1 || i10 == -1) {
                        if (i10 == -1 && i11 != -1) {
                            measuredWidth = mDButtonArr[c7].getMeasuredWidth();
                        } else if (i10 == -1) {
                            i11 = ((i8 - i2) / 2) - (mDButtonArr[c7].getMeasuredWidth() / 2);
                            measuredWidth = mDButtonArr[c7].getMeasuredWidth();
                        }
                        i10 = measuredWidth + i11;
                    } else {
                        i11 = i10 - mDButtonArr[c7].getMeasuredWidth();
                    }
                    i12 = i10;
                    i13 = i11;
                }
                mDButtonArr[c7].layout(i13, i19, i12, i18);
            }
        }
        c(this.f8989e, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a8  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r12, int r13) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.afollestad.materialdialogs.internal.MDRootLayout.onMeasure(int, int):void");
    }

    public void setButtonGravity(GravityEnum gravityEnum) {
        this.f9000v = gravityEnum;
        if (getResources().getConfiguration().getLayoutDirection() == 1) {
            int ordinal = this.f9000v.ordinal();
            if (ordinal == 0) {
                this.f9000v = GravityEnum.f8980e;
            } else {
                if (ordinal != 2) {
                    return;
                }
                this.f9000v = GravityEnum.f8979b;
            }
        }
    }

    public void setButtonStackedGravity(GravityEnum gravityEnum) {
        for (MDButton mDButton : this.f8992m) {
            if (mDButton != null) {
                mDButton.setStackedGravity(gravityEnum);
            }
        }
    }

    public void setDividerColor(int i2) {
        this.f9002x.setColor(i2);
        invalidate();
    }

    public void setForceStack(boolean z6) {
        this.f8993n = z6;
        invalidate();
    }
}
