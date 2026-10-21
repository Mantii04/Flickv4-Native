package androidx.fragment.app;

import M.AbstractC0181p0;
import M.h1;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.fragment.R;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class FragmentContainerView extends FrameLayout {

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f6114b;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f6115e;

    /* renamed from: f, reason: collision with root package name */
    public View.OnApplyWindowInsetsListener f6116f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f6117j;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
    }

    public final void a(View view) {
        if (this.f6115e.contains(view)) {
            this.f6114b.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int i2, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.j.checkNotNullParameter(child, "child");
        Object tag = child.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof C ? (C) tag : null) != null) {
            super.addView(child, i2, layoutParams);
            return;
        }
        throw new IllegalStateException(("Views added to a FragmentContainerView must be associated with a Fragment. View " + child + " is not associated with a Fragment.").toString());
    }

    @Override // android.view.ViewGroup, android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets insets) {
        h1 onApplyWindowInsets;
        kotlin.jvm.internal.j.checkNotNullParameter(insets, "insets");
        h1 windowInsetsCompat = h1.toWindowInsetsCompat(insets);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(windowInsetsCompat, "toWindowInsetsCompat(insets)");
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f6116f;
        if (onApplyWindowInsetsListener != null) {
            M m7 = M.f6141a;
            kotlin.jvm.internal.j.checkNotNull(onApplyWindowInsetsListener);
            onApplyWindowInsets = h1.toWindowInsetsCompat(m7.onApplyWindowInsets(onApplyWindowInsetsListener, this, insets));
        } else {
            onApplyWindowInsets = AbstractC0181p0.onApplyWindowInsets(this, windowInsetsCompat);
        }
        kotlin.jvm.internal.j.checkNotNullExpressionValue(onApplyWindowInsets, "if (applyWindowInsetsLis…, insetsCompat)\n        }");
        if (!onApplyWindowInsets.isConsumed()) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                AbstractC0181p0.dispatchApplyWindowInsets(getChildAt(i2), onApplyWindowInsets);
            }
        }
        return insets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        kotlin.jvm.internal.j.checkNotNullParameter(canvas, "canvas");
        if (this.f6117j) {
            Iterator it = this.f6114b.iterator();
            while (it.hasNext()) {
                super.drawChild(canvas, (View) it.next(), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View child, long j7) {
        kotlin.jvm.internal.j.checkNotNullParameter(canvas, "canvas");
        kotlin.jvm.internal.j.checkNotNullParameter(child, "child");
        if (this.f6117j) {
            ArrayList arrayList = this.f6114b;
            if (!arrayList.isEmpty() && arrayList.contains(child)) {
                return false;
            }
        }
        return super.drawChild(canvas, child, j7);
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(View view) {
        kotlin.jvm.internal.j.checkNotNullParameter(view, "view");
        this.f6115e.remove(view);
        if (this.f6114b.remove(view)) {
            this.f6117j = true;
        }
        super.endViewTransition(view);
    }

    public final <F extends C> F getFragment() {
        H h7;
        C c7;
        AbstractC0467i0 supportFragmentManager;
        View view = this;
        while (true) {
            h7 = null;
            if (view == null) {
                c7 = null;
                break;
            }
            Object tag = view.getTag(R.id.fragment_container_view_tag);
            c7 = tag instanceof C ? (C) tag : null;
            if (c7 != null) {
                break;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        if (c7 == null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    break;
                }
                if (context instanceof H) {
                    h7 = (H) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (h7 == null) {
                throw new IllegalStateException("View " + this + " is not within a subclass of FragmentActivity.");
            }
            supportFragmentManager = h7.getSupportFragmentManager();
        } else {
            if (!c7.isAdded()) {
                throw new IllegalStateException("The Fragment " + c7 + " that owns View " + this + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
            }
            supportFragmentManager = c7.getChildFragmentManager();
        }
        return (F) supportFragmentManager.findFragmentById(getId());
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets insets) {
        kotlin.jvm.internal.j.checkNotNullParameter(insets, "insets");
        return insets;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (-1 >= childCount) {
                super.removeAllViewsInLayout();
                return;
            } else {
                View view = getChildAt(childCount);
                kotlin.jvm.internal.j.checkNotNullExpressionValue(view, "view");
                a(view);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        kotlin.jvm.internal.j.checkNotNullParameter(view, "view");
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i2) {
        View view = getChildAt(i2);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(view, "view");
        a(view);
        super.removeViewAt(i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        kotlin.jvm.internal.j.checkNotNullParameter(view, "view");
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i2, int i7) {
        int i8 = i2 + i7;
        for (int i9 = i2; i9 < i8; i9++) {
            View view = getChildAt(i9);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(view, "view");
            a(view);
        }
        super.removeViews(i2, i7);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i2, int i7) {
        int i8 = i2 + i7;
        for (int i9 = i2; i9 < i8; i9++) {
            View view = getChildAt(i9);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(view, "view");
            a(view);
        }
        super.removeViewsInLayout(i2, i7);
    }

    public final void setDrawDisappearingViewsLast(boolean z6) {
        this.f6117j = z6;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener listener) {
        kotlin.jvm.internal.j.checkNotNullParameter(listener, "listener");
        this.f6116f = listener;
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(View view) {
        kotlin.jvm.internal.j.checkNotNullParameter(view, "view");
        if (view.getParent() == this) {
            this.f6115e.add(view);
        }
        super.startViewTransition(view);
    }

    public /* synthetic */ FragmentContainerView(Context context, AttributeSet attributeSet, int i2, int i7, kotlin.jvm.internal.g gVar) {
        this(context, attributeSet, (i7 & 4) != 0 ? 0 : i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        String str;
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        this.f6114b = new ArrayList();
        this.f6115e = new ArrayList();
        this.f6117j = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            int[] FragmentContainerView = R.styleable.FragmentContainerView;
            kotlin.jvm.internal.j.checkNotNullExpressionValue(FragmentContainerView, "FragmentContainerView");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, FragmentContainerView, 0, 0);
            if (classAttribute == null) {
                classAttribute = obtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_name);
                str = "android:name";
            } else {
                str = "class";
            }
            obtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + classAttribute + '\"');
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attrs, AbstractC0467i0 fm) {
        super(context, attrs);
        View view;
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(attrs, "attrs");
        kotlin.jvm.internal.j.checkNotNullParameter(fm, "fm");
        this.f6114b = new ArrayList();
        this.f6115e = new ArrayList();
        this.f6117j = true;
        String classAttribute = attrs.getClassAttribute();
        int[] FragmentContainerView = R.styleable.FragmentContainerView;
        kotlin.jvm.internal.j.checkNotNullExpressionValue(FragmentContainerView, "FragmentContainerView");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, FragmentContainerView, 0, 0);
        classAttribute = classAttribute == null ? obtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_name) : classAttribute;
        String string = obtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_tag);
        obtainStyledAttributes.recycle();
        int id = getId();
        C findFragmentById = fm.findFragmentById(id);
        if (classAttribute != null && findFragmentById == null) {
            if (id == -1) {
                throw new IllegalStateException(A.i.l("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? " with tag ".concat(string) : ""));
            }
            C instantiate = fm.getFragmentFactory().instantiate(context.getClassLoader(), classAttribute);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(instantiate, "fm.fragmentFactory.insta…ontext.classLoader, name)");
            instantiate.onInflate(context, attrs, (Bundle) null);
            v0 reorderingAllowed = fm.beginTransaction().setReorderingAllowed(true);
            reorderingAllowed.getClass();
            instantiate.f6067P = this;
            reorderingAllowed.add(getId(), instantiate, string).commitNowAllowingStateLoss();
        }
        Iterator it = fm.f6224c.d().iterator();
        while (it.hasNext()) {
            s0 s0Var = (s0) it.next();
            C c7 = s0Var.f6304c;
            if (c7.f6058G == getId() && (view = c7.f6068Q) != null && view.getParent() == null) {
                c7.f6067P = this;
                s0Var.b();
            }
        }
    }
}
