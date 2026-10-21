package l;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.R;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class W0 extends ListView {

    /* renamed from: b, reason: collision with root package name */
    public final Rect f17792b;

    /* renamed from: e, reason: collision with root package name */
    public int f17793e;

    /* renamed from: f, reason: collision with root package name */
    public int f17794f;

    /* renamed from: j, reason: collision with root package name */
    public int f17795j;

    /* renamed from: m, reason: collision with root package name */
    public int f17796m;

    /* renamed from: n, reason: collision with root package name */
    public int f17797n;

    /* renamed from: p, reason: collision with root package name */
    public T0 f17798p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f17799q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f17800r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f17801s;

    /* renamed from: t, reason: collision with root package name */
    public S.m f17802t;

    /* renamed from: u, reason: collision with root package name */
    public V0 f17803u;

    public W0(Context context, boolean z6) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.f17792b = new Rect();
        this.f17793e = 0;
        this.f17794f = 0;
        this.f17795j = 0;
        this.f17796m = 0;
        this.f17800r = z6;
        setCacheColorHint(0);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Drawable selector;
        Rect rect = this.f17792b;
        if (!rect.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(rect);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.f17803u != null) {
            return;
        }
        super.drawableStateChanged();
        T0 t02 = this.f17798p;
        if (t02 != null) {
            t02.f17769e = true;
        }
        Drawable selector = getSelector();
        if (selector != null && this.f17801s && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f17800r || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f17800r || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f17800r || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f17800r && this.f17799q) || super.isInTouchMode();
    }

    public int measureHeightOfChildrenCompat(int i2, int i7, int i8, int i9, int i10) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i11 = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        View view = null;
        while (i12 < count) {
            int itemViewType = adapter.getItemViewType(i12);
            if (itemViewType != i13) {
                view = null;
                i13 = itemViewType;
            }
            view = adapter.getView(i12, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i15 = layoutParams.height;
            view.measure(i2, i15 > 0 ? View.MeasureSpec.makeMeasureSpec(i15, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i12 > 0) {
                i11 += dividerHeight;
            }
            i11 += view.getMeasuredHeight();
            if (i11 >= i9) {
                return (i10 < 0 || i12 <= i10 || i14 <= 0 || i11 == i9) ? i9 : i14;
            }
            if (i10 >= 0 && i12 >= i10) {
                i14 = i11;
            }
            i12++;
        }
        return i11;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f17803u = null;
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x014a A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onForwardedEvent(android.view.MotionEvent r18, int r19) {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l.W0.onForwardedEvent(android.view.MotionEvent, int):boolean");
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f17803u == null) {
            V0 v02 = new V0(this);
            this.f17803u = v02;
            v02.post();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked != 9 && actionMasked != 7) {
            setSelection(-1);
            return onHoverEvent;
        }
        int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
            View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
            if (childAt.isEnabled()) {
                requestFocus();
                if (i2 < 30 || !R0.f17768d) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                } else {
                    try {
                        R0.f17765a.invoke(this, Integer.valueOf(pointToPosition), childAt, Boolean.FALSE, -1, -1);
                        R0.f17766b.invoke(this, Integer.valueOf(pointToPosition));
                        R0.f17767c.invoke(this, Integer.valueOf(pointToPosition));
                    } catch (IllegalAccessException e3) {
                        e3.printStackTrace();
                    } catch (InvocationTargetException e7) {
                        e7.printStackTrace();
                    }
                }
            }
            Drawable selector = getSelector();
            if (selector != null && this.f17801s && isPressed()) {
                selector.setState(getDrawableState());
            }
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f17797n = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        V0 v02 = this.f17803u;
        if (v02 != null) {
            v02.cancel();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z6) {
        this.f17799q = z6;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        T0 t02;
        if (drawable != null) {
            t02 = new T0(drawable);
            t02.f17769e = true;
        } else {
            t02 = null;
        }
        this.f17798p = t02;
        super.setSelector(t02);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f17793e = rect.left;
        this.f17794f = rect.top;
        this.f17795j = rect.right;
        this.f17796m = rect.bottom;
    }
}
