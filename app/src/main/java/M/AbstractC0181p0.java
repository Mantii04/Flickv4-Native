package M;

import B4.AbstractC0051n;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.PathInterpolator;
import androidx.core.R;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: M.p0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0181p0 {

    /* renamed from: a, reason: collision with root package name */
    public static WeakHashMap f2064a = null;

    /* renamed from: b, reason: collision with root package name */
    public static Field f2065b = null;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f2066c = false;

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f2067d = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};

    /* renamed from: e, reason: collision with root package name */
    public static final Y f2068e = new Y();

    /* renamed from: f, reason: collision with root package name */
    public static final ViewTreeObserverOnGlobalLayoutListenerC0151a0 f2069f = new ViewTreeObserverOnGlobalLayoutListenerC0151a0();

    public static boolean a(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList = C0179o0.f2059d;
        C0179o0 c0179o0 = (C0179o0) view.getTag(R.id.tag_unhandled_key_event_manager);
        if (c0179o0 == null) {
            c0179o0 = new C0179o0();
            c0179o0.f2060a = null;
            c0179o0.f2061b = null;
            c0179o0.f2062c = null;
            view.setTag(R.id.tag_unhandled_key_event_manager, c0179o0);
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap weakHashMap = c0179o0.f2060a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList arrayList2 = C0179o0.f2059d;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    try {
                        if (c0179o0.f2060a == null) {
                            c0179o0.f2060a = new WeakHashMap();
                        }
                        for (int size = arrayList2.size() - 1; size >= 0; size--) {
                            ArrayList arrayList3 = C0179o0.f2059d;
                            View view2 = (View) ((WeakReference) arrayList3.get(size)).get();
                            if (view2 == null) {
                                arrayList3.remove(size);
                            } else {
                                c0179o0.f2060a.put(view2, Boolean.TRUE);
                                for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    c0179o0.f2060a.put((View) parent, Boolean.TRUE);
                                }
                            }
                        }
                    } finally {
                    }
                }
            }
        }
        View a7 = c0179o0.a(view);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (a7 != null && !KeyEvent.isModifierKey(keyCode)) {
                if (c0179o0.f2061b == null) {
                    c0179o0.f2061b = new SparseArray();
                }
                c0179o0.f2061b.put(keyCode, new WeakReference(a7));
            }
        }
        return a7 != null;
    }

    public static int addAccessibilityAction(View view, CharSequence charSequence, N.A a7) {
        int i2;
        ArrayList c7 = c(view);
        int i7 = 0;
        while (true) {
            if (i7 >= c7.size()) {
                int i8 = -1;
                for (int i9 = 0; i9 < 32 && i8 == -1; i9++) {
                    int i10 = f2067d[i9];
                    boolean z6 = true;
                    for (int i11 = 0; i11 < c7.size(); i11++) {
                        z6 &= ((N.h) c7.get(i11)).getId() != i10;
                    }
                    if (z6) {
                        i8 = i10;
                    }
                }
                i2 = i8;
            } else {
                if (TextUtils.equals(charSequence, ((N.h) c7.get(i7)).getLabel())) {
                    i2 = ((N.h) c7.get(i7)).getId();
                    break;
                }
                i7++;
            }
        }
        if (i2 != -1) {
            N.h hVar = new N.h(i2, charSequence, a7);
            C0152b accessibilityDelegate = getAccessibilityDelegate(view);
            if (accessibilityDelegate == null) {
                accessibilityDelegate = new C0152b();
            }
            setAccessibilityDelegate(view, accessibilityDelegate);
            e(view, hVar.getId());
            c(view).add(hVar);
            d(view, 0);
        }
        return i2;
    }

    @Deprecated
    public static C0 animate(View view) {
        if (f2064a == null) {
            f2064a = new WeakHashMap();
        }
        C0 c02 = (C0) f2064a.get(view);
        if (c02 != null) {
            return c02;
        }
        C0 c03 = new C0(view);
        f2064a.put(view, c03);
        return c03;
    }

    public static View.AccessibilityDelegate b(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return AbstractC0169j0.a(view);
        }
        if (f2066c) {
            return null;
        }
        if (f2065b == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f2065b = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f2066c = true;
                return null;
            }
        }
        try {
            Object obj = f2065b.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f2066c = true;
            return null;
        }
    }

    public static ArrayList c(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(R.id.tag_accessibility_actions, arrayList2);
        return arrayList2;
    }

    public static h1 computeSystemWindowInsets(View view, h1 h1Var, Rect rect) {
        return AbstractC0157d0.b(view, h1Var, rect);
    }

    public static void d(View view, int i2) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z6 = getAccessibilityPaneTitle(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (view.getAccessibilityLiveRegion() != 0 || z6) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z6 ? 32 : 2048);
                obtain.setContentChangeTypes(i2);
                if (z6) {
                    obtain.getText().add(getAccessibilityPaneTitle(view));
                    if (view.getImportantForAccessibility() == 0) {
                        view.setImportantForAccessibility(1);
                    }
                }
                view.sendAccessibilityEventUnchecked(obtain);
                return;
            }
            if (i2 != 32) {
                if (view.getParent() != null) {
                    try {
                        view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i2);
                        return;
                    } catch (AbstractMethodError e3) {
                        Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e3);
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(obtain2);
            obtain2.setEventType(32);
            obtain2.setContentChangeTypes(i2);
            obtain2.setSource(view);
            view.onPopulateAccessibilityEvent(obtain2);
            obtain2.getText().add(getAccessibilityPaneTitle(view));
            accessibilityManager.sendAccessibilityEvent(obtain2);
        }
    }

    public static h1 dispatchApplyWindowInsets(View view, h1 h1Var) {
        WindowInsets windowInsets = h1Var.toWindowInsets();
        if (windowInsets != null) {
            WindowInsets a7 = AbstractC0153b0.a(view, windowInsets);
            if (!a7.equals(windowInsets)) {
                return h1.toWindowInsetsCompat(a7, view);
            }
        }
        return h1Var;
    }

    public static void e(View view, int i2) {
        ArrayList c7 = c(view);
        for (int i7 = 0; i7 < c7.size(); i7++) {
            if (((N.h) c7.get(i7)).getId() == i2) {
                c7.remove(i7);
                return;
            }
        }
    }

    @Deprecated
    public static int generateViewId() {
        return View.generateViewId();
    }

    public static C0152b getAccessibilityDelegate(View view) {
        View.AccessibilityDelegate b7 = b(view);
        if (b7 == null) {
            return null;
        }
        return b7 instanceof C0150a ? ((C0150a) b7).f2010a : new C0152b(b7);
    }

    public static CharSequence getAccessibilityPaneTitle(View view) {
        Object tag;
        int i2 = R.id.tag_accessibility_pane_title;
        if (Build.VERSION.SDK_INT >= 28) {
            tag = AbstractC0167i0.b(view);
        } else {
            tag = view.getTag(i2);
            if (!CharSequence.class.isInstance(tag)) {
                tag = null;
            }
        }
        return (CharSequence) tag;
    }

    public static ColorStateList getBackgroundTintList(View view) {
        return AbstractC0157d0.g(view);
    }

    public static PorterDuff.Mode getBackgroundTintMode(View view) {
        return AbstractC0157d0.h(view);
    }

    @Deprecated
    public static Display getDisplay(View view) {
        return view.getDisplay();
    }

    public static float getElevation(View view) {
        return AbstractC0157d0.i(view);
    }

    @Deprecated
    public static boolean getFitsSystemWindows(View view) {
        return view.getFitsSystemWindows();
    }

    @Deprecated
    public static int getImportantForAccessibility(View view) {
        return view.getImportantForAccessibility();
    }

    @SuppressLint({"InlinedApi"})
    public static int getImportantForAutofill(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return AbstractC0163g0.b(view);
        }
        return 0;
    }

    @Deprecated
    public static int getLayoutDirection(View view) {
        return view.getLayoutDirection();
    }

    @Deprecated
    public static int getMinimumHeight(View view) {
        return view.getMinimumHeight();
    }

    @Deprecated
    public static int getMinimumWidth(View view) {
        return view.getMinimumWidth();
    }

    public static String[] getOnReceiveContentMimeTypes(View view) {
        return Build.VERSION.SDK_INT >= 31 ? AbstractC0173l0.getReceiveContentMimeTypes(view) : (String[]) view.getTag(R.id.tag_on_receive_content_mime_types);
    }

    @Deprecated
    public static int getPaddingEnd(View view) {
        return view.getPaddingEnd();
    }

    @Deprecated
    public static int getPaddingStart(View view) {
        return view.getPaddingStart();
    }

    @Deprecated
    public static ViewParent getParentForAccessibility(View view) {
        return view.getParentForAccessibility();
    }

    public static h1 getRootWindowInsets(View view) {
        return AbstractC0159e0.getRootWindowInsets(view);
    }

    public static CharSequence getStateDescription(View view) {
        Object tag;
        int i2 = R.id.tag_state_description;
        if (Build.VERSION.SDK_INT >= 30) {
            tag = AbstractC0171k0.b(view);
        } else {
            tag = view.getTag(i2);
            if (!CharSequence.class.isInstance(tag)) {
                tag = null;
            }
        }
        return (CharSequence) tag;
    }

    public static String getTransitionName(View view) {
        return AbstractC0157d0.j(view);
    }

    @Deprecated
    public static o1 getWindowInsetsController(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            return AbstractC0171k0.getWindowInsetsController(view);
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                Window window = ((Activity) context).getWindow();
                if (window != null) {
                    return H0.getInsetsController(window, view);
                }
                return null;
            }
        }
        return null;
    }

    @Deprecated
    public static int getWindowSystemUiVisibility(View view) {
        return view.getWindowSystemUiVisibility();
    }

    public static float getZ(View view) {
        return AbstractC0157d0.l(view);
    }

    public static boolean hasAccessibilityDelegate(View view) {
        return b(view) != null;
    }

    @Deprecated
    public static boolean hasOnClickListeners(View view) {
        return view.hasOnClickListeners();
    }

    @Deprecated
    public static boolean hasTransientState(View view) {
        return view.hasTransientState();
    }

    public static boolean isAccessibilityHeading(View view) {
        Object tag;
        int i2 = R.id.tag_accessibility_heading;
        if (Build.VERSION.SDK_INT >= 28) {
            tag = Boolean.valueOf(AbstractC0167i0.c(view));
        } else {
            tag = view.getTag(i2);
            if (!Boolean.class.isInstance(tag)) {
                tag = null;
            }
        }
        Boolean bool = (Boolean) tag;
        return bool != null && bool.booleanValue();
    }

    @Deprecated
    public static boolean isAttachedToWindow(View view) {
        return view.isAttachedToWindow();
    }

    @Deprecated
    public static boolean isLaidOut(View view) {
        return view.isLaidOut();
    }

    public static boolean isNestedScrollingEnabled(View view) {
        return AbstractC0157d0.o(view);
    }

    @Deprecated
    public static boolean isPaddingRelative(View view) {
        return view.isPaddingRelative();
    }

    public static boolean isScreenReaderFocusable(View view) {
        Object tag;
        int i2 = R.id.tag_screen_reader_focusable;
        if (Build.VERSION.SDK_INT >= 28) {
            tag = Boolean.valueOf(AbstractC0167i0.d(view));
        } else {
            tag = view.getTag(i2);
            if (!Boolean.class.isInstance(tag)) {
                tag = null;
            }
        }
        Boolean bool = (Boolean) tag;
        return bool != null && bool.booleanValue();
    }

    public static void offsetLeftAndRight(View view, int i2) {
        view.offsetLeftAndRight(i2);
    }

    public static void offsetTopAndBottom(View view, int i2) {
        view.offsetTopAndBottom(i2);
    }

    public static h1 onApplyWindowInsets(View view, h1 h1Var) {
        WindowInsets windowInsets = h1Var.toWindowInsets();
        if (windowInsets != null) {
            WindowInsets b7 = AbstractC0153b0.b(view, windowInsets);
            if (!b7.equals(windowInsets)) {
                return h1.toWindowInsetsCompat(b7, view);
            }
        }
        return h1Var;
    }

    @Deprecated
    public static void onInitializeAccessibilityNodeInfo(View view, N.n nVar) {
        view.onInitializeAccessibilityNodeInfo(nVar.unwrap());
    }

    @Deprecated
    public static boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
        return view.performAccessibilityAction(i2, bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C0174m performReceiveContent(View view, C0174m c0174m) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + c0174m + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return AbstractC0173l0.performReceiveContent(view, c0174m);
        }
        M m7 = (M) view.getTag(R.id.tag_on_receive_content_listener);
        N n7 = f2068e;
        if (m7 == null) {
            if (view instanceof N) {
                n7 = (N) view;
            }
            return n7.onReceiveContent(c0174m);
        }
        C0174m onReceiveContent = ((S.B) m7).onReceiveContent(view, c0174m);
        if (onReceiveContent == null) {
            return null;
        }
        if (view instanceof N) {
            n7 = (N) view;
        }
        return n7.onReceiveContent(onReceiveContent);
    }

    @Deprecated
    public static void postInvalidateOnAnimation(View view) {
        view.postInvalidateOnAnimation();
    }

    @Deprecated
    public static void postOnAnimation(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    @SuppressLint({"LambdaLast"})
    @Deprecated
    public static void postOnAnimationDelayed(View view, Runnable runnable, long j7) {
        view.postOnAnimationDelayed(runnable, j7);
    }

    public static void removeAccessibilityAction(View view, int i2) {
        e(view, i2);
        d(view, 0);
    }

    public static void replaceAccessibilityAction(View view, N.h hVar, CharSequence charSequence, N.A a7) {
        if (a7 == null && charSequence == null) {
            removeAccessibilityAction(view, hVar.getId());
            return;
        }
        N.h createReplacementAction = hVar.createReplacementAction(charSequence, a7);
        C0152b accessibilityDelegate = getAccessibilityDelegate(view);
        if (accessibilityDelegate == null) {
            accessibilityDelegate = new C0152b();
        }
        setAccessibilityDelegate(view, accessibilityDelegate);
        e(view, createReplacementAction.getId());
        c(view).add(createReplacementAction);
        d(view, 0);
    }

    public static void requestApplyInsets(View view) {
        AbstractC0153b0.c(view);
    }

    public static void saveAttributeDataForStyleable(View view, @SuppressLint({"ContextFirst"}) Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i2, int i7) {
        if (Build.VERSION.SDK_INT >= 29) {
            AbstractC0169j0.d(view, context, iArr, attributeSet, typedArray, i2, i7);
        }
    }

    public static void setAccessibilityDelegate(View view, C0152b c0152b) {
        if (c0152b == null && (b(view) instanceof C0150a)) {
            c0152b = new C0152b();
        }
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
        view.setAccessibilityDelegate(c0152b == null ? null : c0152b.f2015b);
    }

    public static void setAccessibilityHeading(View view, boolean z6) {
        new Z(R.id.tag_accessibility_heading, Boolean.class, 0, 28, 3).a(Boolean.valueOf(z6), view);
    }

    @Deprecated
    public static void setAccessibilityLiveRegion(View view, int i2) {
        view.setAccessibilityLiveRegion(i2);
    }

    public static void setAccessibilityPaneTitle(View view, CharSequence charSequence) {
        new Z(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28, 1).a(charSequence, view);
        ViewTreeObserverOnGlobalLayoutListenerC0151a0 viewTreeObserverOnGlobalLayoutListenerC0151a0 = f2069f;
        if (charSequence == null) {
            viewTreeObserverOnGlobalLayoutListenerC0151a0.f2011b.remove(view);
            view.removeOnAttachStateChangeListener(viewTreeObserverOnGlobalLayoutListenerC0151a0);
            view.getViewTreeObserver().removeOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC0151a0);
        } else {
            viewTreeObserverOnGlobalLayoutListenerC0151a0.f2011b.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(viewTreeObserverOnGlobalLayoutListenerC0151a0);
            if (view.isAttachedToWindow()) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC0151a0);
            }
        }
    }

    @Deprecated
    public static void setBackground(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    public static void setBackgroundTintList(View view, ColorStateList colorStateList) {
        AbstractC0157d0.p(view, colorStateList);
    }

    public static void setBackgroundTintMode(View view, PorterDuff.Mode mode) {
        AbstractC0157d0.q(view, mode);
    }

    @Deprecated
    public static void setClipBounds(View view, Rect rect) {
        view.setClipBounds(rect);
    }

    public static void setElevation(View view, float f3) {
        AbstractC0157d0.r(view, f3);
    }

    @Deprecated
    public static void setFitsSystemWindows(View view, boolean z6) {
        view.setFitsSystemWindows(z6);
    }

    @Deprecated
    public static void setImportantForAccessibility(View view, int i2) {
        view.setImportantForAccessibility(i2);
    }

    public static void setImportantForAutofill(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            AbstractC0163g0.l(view, i2);
        }
    }

    @Deprecated
    public static void setLabelFor(View view, int i2) {
        view.setLabelFor(i2);
    }

    public static void setOnApplyWindowInsetsListener(View view, L l7) {
        AbstractC0157d0.t(view, l7);
    }

    @Deprecated
    public static void setPaddingRelative(View view, int i2, int i7, int i8, int i9) {
        view.setPaddingRelative(i2, i7, i8, i9);
    }

    public static void setPointerIcon(View view, Q q6) {
        if (Build.VERSION.SDK_INT >= 24) {
            AbstractC0161f0.d(view, AbstractC0051n.e(q6 != null ? q6.getPointerIcon() : null));
        }
    }

    public static void setScreenReaderFocusable(View view, boolean z6) {
        new Z(R.id.tag_screen_reader_focusable, Boolean.class, 0, 28, 0).a(Boolean.valueOf(z6), view);
    }

    public static void setScrollIndicators(View view, int i2, int i7) {
        AbstractC0159e0.c(view, i2, i7);
    }

    public static void setStateDescription(View view, CharSequence charSequence) {
        new Z(R.id.tag_state_description, CharSequence.class, 64, 30, 2).a(charSequence, view);
    }

    public static void setTransitionName(View view, String str) {
        AbstractC0157d0.u(view, str);
    }

    public static void setWindowInsetsAnimationCallback(View view, J0 j02) {
        if (Build.VERSION.SDK_INT >= 30) {
            Q0.setCallback(view, j02);
            return;
        }
        PathInterpolator pathInterpolator = O0.f1955e;
        Object tag = view.getTag(R.id.tag_on_apply_window_listener);
        if (j02 == null) {
            view.setTag(R.id.tag_window_insets_animation_callback, null);
            if (tag == null) {
                view.setOnApplyWindowInsetsListener(null);
                return;
            }
            return;
        }
        View.OnApplyWindowInsetsListener n02 = new N0(view, j02);
        view.setTag(R.id.tag_window_insets_animation_callback, n02);
        if (tag == null) {
            view.setOnApplyWindowInsetsListener(n02);
        }
    }

    public static void setZ(View view, float f3) {
        AbstractC0157d0.w(view, f3);
    }

    public static void stopNestedScroll(View view) {
        AbstractC0157d0.y(view);
    }
}
