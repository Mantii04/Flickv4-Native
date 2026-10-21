package l;

import M.AbstractC0181p0;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R;
import java.lang.reflect.Method;
import k.InterfaceC1064I;

/* renamed from: l.l1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1162l1 implements InterfaceC1064I {

    /* renamed from: J, reason: collision with root package name */
    public static final Method f17918J;

    /* renamed from: K, reason: collision with root package name */
    public static final Method f17919K;

    /* renamed from: L, reason: collision with root package name */
    public static final Method f17920L;

    /* renamed from: A, reason: collision with root package name */
    public final RunnableC1159k1 f17921A;

    /* renamed from: B, reason: collision with root package name */
    public final ViewOnTouchListenerC1156j1 f17922B;

    /* renamed from: C, reason: collision with root package name */
    public final C1153i1 f17923C;

    /* renamed from: D, reason: collision with root package name */
    public final RunnableC1147g1 f17924D;

    /* renamed from: E, reason: collision with root package name */
    public final Handler f17925E;

    /* renamed from: F, reason: collision with root package name */
    public final Rect f17926F;

    /* renamed from: G, reason: collision with root package name */
    public Rect f17927G;

    /* renamed from: H, reason: collision with root package name */
    public boolean f17928H;

    /* renamed from: I, reason: collision with root package name */
    public final S f17929I;

    /* renamed from: b, reason: collision with root package name */
    public final Context f17930b;

    /* renamed from: e, reason: collision with root package name */
    public ListAdapter f17931e;

    /* renamed from: f, reason: collision with root package name */
    public W0 f17932f;

    /* renamed from: j, reason: collision with root package name */
    public final int f17933j;

    /* renamed from: m, reason: collision with root package name */
    public int f17934m;

    /* renamed from: n, reason: collision with root package name */
    public int f17935n;

    /* renamed from: p, reason: collision with root package name */
    public int f17936p;

    /* renamed from: q, reason: collision with root package name */
    public final int f17937q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f17938r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f17939s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f17940t;

    /* renamed from: u, reason: collision with root package name */
    public int f17941u;

    /* renamed from: v, reason: collision with root package name */
    public final int f17942v;

    /* renamed from: w, reason: collision with root package name */
    public C1150h1 f17943w;

    /* renamed from: x, reason: collision with root package name */
    public View f17944x;

    /* renamed from: y, reason: collision with root package name */
    public AdapterView.OnItemClickListener f17945y;

    /* renamed from: z, reason: collision with root package name */
    public AdapterView.OnItemSelectedListener f17946z;

    static {
        int i2 = Build.VERSION.SDK_INT;
        Class cls = Boolean.TYPE;
        if (i2 <= 28) {
            try {
                f17918J = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", cls);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                f17920L = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f17919K = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, cls);
            } catch (NoSuchMethodException unused3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public C1162l1(Context context) {
        this(context, null, R.attr.listPopupWindowStyle);
    }

    public W0 a(Context context, boolean z6) {
        return new W0(context, z6);
    }

    public void clearListSelection() {
        W0 w02 = this.f17932f;
        if (w02 != null) {
            w02.setListSelectionHidden(true);
            w02.requestLayout();
        }
    }

    @Override // k.InterfaceC1064I
    public void dismiss() {
        S s6 = this.f17929I;
        s6.dismiss();
        s6.setContentView(null);
        this.f17932f = null;
        this.f17925E.removeCallbacks(this.f17921A);
    }

    public View getAnchorView() {
        return this.f17944x;
    }

    public Drawable getBackground() {
        return this.f17929I.getBackground();
    }

    public int getHorizontalOffset() {
        return this.f17935n;
    }

    @Override // k.InterfaceC1064I
    public ListView getListView() {
        return this.f17932f;
    }

    public Object getSelectedItem() {
        if (isShowing()) {
            return this.f17932f.getSelectedItem();
        }
        return null;
    }

    public long getSelectedItemId() {
        if (isShowing()) {
            return this.f17932f.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    public int getSelectedItemPosition() {
        if (isShowing()) {
            return this.f17932f.getSelectedItemPosition();
        }
        return -1;
    }

    public View getSelectedView() {
        if (isShowing()) {
            return this.f17932f.getSelectedView();
        }
        return null;
    }

    public int getVerticalOffset() {
        if (this.f17938r) {
            return this.f17936p;
        }
        return 0;
    }

    public int getWidth() {
        return this.f17934m;
    }

    public boolean isInputMethodNotNeeded() {
        return this.f17929I.getInputMethodMode() == 2;
    }

    public boolean isModal() {
        return this.f17928H;
    }

    @Override // k.InterfaceC1064I
    public boolean isShowing() {
        return this.f17929I.isShowing();
    }

    public void setAdapter(ListAdapter listAdapter) {
        C1150h1 c1150h1 = this.f17943w;
        if (c1150h1 == null) {
            this.f17943w = new C1150h1(this);
        } else {
            ListAdapter listAdapter2 = this.f17931e;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(c1150h1);
            }
        }
        this.f17931e = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f17943w);
        }
        W0 w02 = this.f17932f;
        if (w02 != null) {
            w02.setAdapter(this.f17931e);
        }
    }

    public void setAnchorView(View view) {
        this.f17944x = view;
    }

    public void setAnimationStyle(int i2) {
        this.f17929I.setAnimationStyle(i2);
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.f17929I.setBackgroundDrawable(drawable);
    }

    public void setContentWidth(int i2) {
        Drawable background = this.f17929I.getBackground();
        if (background == null) {
            setWidth(i2);
            return;
        }
        Rect rect = this.f17926F;
        background.getPadding(rect);
        this.f17934m = rect.left + rect.right + i2;
    }

    public void setDropDownGravity(int i2) {
        this.f17941u = i2;
    }

    public void setEpicenterBounds(Rect rect) {
        this.f17927G = rect != null ? new Rect(rect) : null;
    }

    public void setHorizontalOffset(int i2) {
        this.f17935n = i2;
    }

    public void setInputMethodMode(int i2) {
        this.f17929I.setInputMethodMode(i2);
    }

    public void setModal(boolean z6) {
        this.f17928H = z6;
        this.f17929I.setFocusable(z6);
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f17929I.setOnDismissListener(onDismissListener);
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f17945y = onItemClickListener;
    }

    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.f17946z = onItemSelectedListener;
    }

    public void setOverlapAnchor(boolean z6) {
        this.f17940t = true;
        this.f17939s = z6;
    }

    public void setSelection(int i2) {
        W0 w02 = this.f17932f;
        if (!isShowing() || w02 == null) {
            return;
        }
        w02.setListSelectionHidden(false);
        w02.setSelection(i2);
        if (w02.getChoiceMode() != 0) {
            w02.setItemChecked(i2, true);
        }
    }

    public void setVerticalOffset(int i2) {
        this.f17936p = i2;
        this.f17938r = true;
    }

    public void setWidth(int i2) {
        this.f17934m = i2;
    }

    @Override // k.InterfaceC1064I
    public void show() {
        int i2;
        int a7;
        int paddingBottom;
        W0 w02 = this.f17932f;
        S s6 = this.f17929I;
        Context context = this.f17930b;
        if (w02 == null) {
            W0 a8 = a(context, !this.f17928H);
            this.f17932f = a8;
            a8.setAdapter(this.f17931e);
            this.f17932f.setOnItemClickListener(this.f17945y);
            this.f17932f.setFocusable(true);
            this.f17932f.setFocusableInTouchMode(true);
            this.f17932f.setOnItemSelectedListener(new C1138d1(this));
            this.f17932f.setOnScrollListener(this.f17923C);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f17946z;
            if (onItemSelectedListener != null) {
                this.f17932f.setOnItemSelectedListener(onItemSelectedListener);
            }
            s6.setContentView(this.f17932f);
        }
        Drawable background = s6.getBackground();
        Rect rect = this.f17926F;
        if (background != null) {
            background.getPadding(rect);
            int i7 = rect.top;
            i2 = rect.bottom + i7;
            if (!this.f17938r) {
                this.f17936p = -i7;
            }
        } else {
            rect.setEmpty();
            i2 = 0;
        }
        boolean z6 = s6.getInputMethodMode() == 2;
        View anchorView = getAnchorView();
        int i8 = this.f17936p;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = f17919K;
            if (method != null) {
                try {
                    a7 = ((Integer) method.invoke(s6, anchorView, Integer.valueOf(i8), Boolean.valueOf(z6))).intValue();
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                }
            }
            a7 = s6.getMaxAvailableHeight(anchorView, i8);
        } else {
            a7 = AbstractC1141e1.a(s6, anchorView, i8, z6);
        }
        int i9 = a7;
        int i10 = this.f17933j;
        if (i10 == -1) {
            paddingBottom = i9 + i2;
        } else {
            int i11 = this.f17934m;
            int measureHeightOfChildrenCompat = this.f17932f.measureHeightOfChildrenCompat(i11 != -2 ? i11 != -1 ? View.MeasureSpec.makeMeasureSpec(i11, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE), 0, -1, i9, -1);
            paddingBottom = measureHeightOfChildrenCompat + (measureHeightOfChildrenCompat > 0 ? this.f17932f.getPaddingBottom() + this.f17932f.getPaddingTop() + i2 : 0);
        }
        boolean isInputMethodNotNeeded = isInputMethodNotNeeded();
        S.v.setWindowLayoutType(s6, this.f17937q);
        if (s6.isShowing()) {
            if (AbstractC0181p0.isAttachedToWindow(getAnchorView())) {
                int i12 = this.f17934m;
                if (i12 == -1) {
                    i12 = -1;
                } else if (i12 == -2) {
                    i12 = getAnchorView().getWidth();
                }
                if (i10 == -1) {
                    i10 = isInputMethodNotNeeded ? paddingBottom : -1;
                    if (isInputMethodNotNeeded) {
                        s6.setWidth(this.f17934m == -1 ? -1 : 0);
                        s6.setHeight(0);
                    } else {
                        s6.setWidth(this.f17934m == -1 ? -1 : 0);
                        s6.setHeight(-1);
                    }
                } else if (i10 == -2) {
                    i10 = paddingBottom;
                }
                s6.setOutsideTouchable(true);
                View anchorView2 = getAnchorView();
                int i13 = i12;
                int i14 = this.f17935n;
                int i15 = this.f17936p;
                if (i13 < 0) {
                    i13 = -1;
                }
                s6.update(anchorView2, i14, i15, i13, i10 < 0 ? -1 : i10);
                return;
            }
            return;
        }
        int i16 = this.f17934m;
        if (i16 == -1) {
            i16 = -1;
        } else if (i16 == -2) {
            i16 = getAnchorView().getWidth();
        }
        if (i10 == -1) {
            i10 = -1;
        } else if (i10 == -2) {
            i10 = paddingBottom;
        }
        s6.setWidth(i16);
        s6.setHeight(i10);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = f17918J;
            if (method2 != null) {
                try {
                    method2.invoke(s6, Boolean.TRUE);
                } catch (Exception unused2) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            AbstractC1144f1.b(s6, true);
        }
        s6.setOutsideTouchable(true);
        s6.setTouchInterceptor(this.f17922B);
        if (this.f17940t) {
            S.v.setOverlapAnchor(s6, this.f17939s);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method3 = f17920L;
            if (method3 != null) {
                try {
                    method3.invoke(s6, this.f17927G);
                } catch (Exception e3) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e3);
                }
            }
        } else {
            AbstractC1144f1.a(s6, this.f17927G);
        }
        S.v.showAsDropDown(s6, getAnchorView(), this.f17935n, this.f17936p, this.f17941u);
        this.f17932f.setSelection(-1);
        if (!this.f17928H || this.f17932f.isInTouchMode()) {
            clearListSelection();
        }
        if (this.f17928H) {
            return;
        }
        this.f17925E.post(this.f17924D);
    }

    public C1162l1(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public C1162l1(Context context, AttributeSet attributeSet, int i2, int i7) {
        this.f17933j = -2;
        this.f17934m = -2;
        this.f17937q = 1002;
        this.f17941u = 0;
        this.f17942v = androidx.media3.common.util.Log.LOG_LEVEL_OFF;
        this.f17921A = new RunnableC1159k1(this);
        this.f17922B = new ViewOnTouchListenerC1156j1(this);
        this.f17923C = new C1153i1(this);
        this.f17924D = new RunnableC1147g1(this);
        this.f17926F = new Rect();
        this.f17930b = context;
        this.f17925E = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPopupWindow, i2, i7);
        this.f17935n = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f17936p = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f17938r = true;
        }
        obtainStyledAttributes.recycle();
        S s6 = new S(context, attributeSet, i2, i7);
        this.f17929I = s6;
        s6.setInputMethodMode(1);
    }

    public void setPromptPosition(int i2) {
    }
}
