package y;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.R;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.ClassUtils;

/* renamed from: y.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1862f extends ViewGroup.MarginLayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public AbstractC1859c f20936a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f20937b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20938c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20939d;

    /* renamed from: e, reason: collision with root package name */
    public final int f20940e;

    /* renamed from: f, reason: collision with root package name */
    public final int f20941f;

    /* renamed from: g, reason: collision with root package name */
    public int f20942g;

    /* renamed from: h, reason: collision with root package name */
    public int f20943h;

    /* renamed from: i, reason: collision with root package name */
    public int f20944i;

    /* renamed from: j, reason: collision with root package name */
    public int f20945j;

    /* renamed from: k, reason: collision with root package name */
    public View f20946k;

    /* renamed from: l, reason: collision with root package name */
    public View f20947l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f20948m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f20949n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f20950o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f20951p;

    /* renamed from: q, reason: collision with root package name */
    public final Rect f20952q;

    public C1862f(int i2, int i7) {
        super(i2, i7);
        this.f20937b = false;
        this.f20938c = 0;
        this.f20939d = 0;
        this.f20940e = -1;
        this.f20941f = -1;
        this.f20942g = 0;
        this.f20943h = 0;
        this.f20952q = new Rect();
    }

    public final boolean a(int i2) {
        if (i2 == 0) {
            return this.f20949n;
        }
        if (i2 != 1) {
            return false;
        }
        return this.f20950o;
    }

    public AbstractC1859c getBehavior() {
        return this.f20936a;
    }

    public void setBehavior(AbstractC1859c abstractC1859c) {
        AbstractC1859c abstractC1859c2 = this.f20936a;
        if (abstractC1859c2 != abstractC1859c) {
            if (abstractC1859c2 != null) {
                abstractC1859c2.onDetachedFromLayoutParams();
            }
            this.f20936a = abstractC1859c;
            this.f20937b = true;
            if (abstractC1859c != null) {
                abstractC1859c.onAttachedToLayoutParams(this);
            }
        }
    }

    public C1862f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        AbstractC1859c abstractC1859c;
        this.f20937b = false;
        this.f20938c = 0;
        this.f20939d = 0;
        this.f20940e = -1;
        this.f20941f = -1;
        this.f20942g = 0;
        this.f20943h = 0;
        this.f20952q = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout_Layout);
        this.f20938c = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
        this.f20941f = obtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
        this.f20939d = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
        this.f20940e = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
        this.f20942g = obtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
        this.f20943h = obtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
        boolean hasValue = obtainStyledAttributes.hasValue(R.styleable.CoordinatorLayout_Layout_layout_behavior);
        this.f20937b = hasValue;
        if (hasValue) {
            String string = obtainStyledAttributes.getString(R.styleable.CoordinatorLayout_Layout_layout_behavior);
            String str = CoordinatorLayout.f5511D;
            if (TextUtils.isEmpty(string)) {
                abstractC1859c = null;
            } else {
                if (string.startsWith(".")) {
                    string = context.getPackageName() + string;
                } else if (string.indexOf(46) < 0) {
                    String str2 = CoordinatorLayout.f5511D;
                    if (!TextUtils.isEmpty(str2)) {
                        string = str2 + ClassUtils.PACKAGE_SEPARATOR_CHAR + string;
                    }
                }
                try {
                    ThreadLocal threadLocal = CoordinatorLayout.f5513F;
                    Map map = (Map) threadLocal.get();
                    if (map == null) {
                        map = new HashMap();
                        threadLocal.set(map);
                    }
                    Constructor<?> constructor = (Constructor) map.get(string);
                    if (constructor == null) {
                        constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.f5512E);
                        constructor.setAccessible(true);
                        map.put(string, constructor);
                    }
                    abstractC1859c = (AbstractC1859c) constructor.newInstance(context, attributeSet);
                } catch (Exception e3) {
                    throw new RuntimeException(A.i.k("Could not inflate Behavior subclass ", string), e3);
                }
            }
            this.f20936a = abstractC1859c;
        }
        obtainStyledAttributes.recycle();
        AbstractC1859c abstractC1859c2 = this.f20936a;
        if (abstractC1859c2 != null) {
            abstractC1859c2.onAttachedToLayoutParams(this);
        }
    }

    public C1862f(C1862f c1862f) {
        super((ViewGroup.MarginLayoutParams) c1862f);
        this.f20937b = false;
        this.f20938c = 0;
        this.f20939d = 0;
        this.f20940e = -1;
        this.f20941f = -1;
        this.f20942g = 0;
        this.f20943h = 0;
        this.f20952q = new Rect();
    }

    public C1862f(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f20937b = false;
        this.f20938c = 0;
        this.f20939d = 0;
        this.f20940e = -1;
        this.f20941f = -1;
        this.f20942g = 0;
        this.f20943h = 0;
        this.f20952q = new Rect();
    }

    public C1862f(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f20937b = false;
        this.f20938c = 0;
        this.f20939d = 0;
        this.f20940e = -1;
        this.f20941f = -1;
        this.f20942g = 0;
        this.f20943h = 0;
        this.f20952q = new Rect();
    }
}
