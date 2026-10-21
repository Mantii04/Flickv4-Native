package N;

import android.R;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: e, reason: collision with root package name */
    public static final h f2121e = new h(1, (CharSequence) null);

    /* renamed from: f, reason: collision with root package name */
    public static final h f2122f = new h(2, (CharSequence) null);

    /* renamed from: g, reason: collision with root package name */
    public static final h f2123g;

    /* renamed from: h, reason: collision with root package name */
    public static final h f2124h;

    /* renamed from: i, reason: collision with root package name */
    public static final h f2125i;

    /* renamed from: j, reason: collision with root package name */
    public static final h f2126j;

    /* renamed from: k, reason: collision with root package name */
    public static final h f2127k;

    /* renamed from: l, reason: collision with root package name */
    public static final h f2128l;

    /* renamed from: m, reason: collision with root package name */
    public static final h f2129m;

    /* renamed from: n, reason: collision with root package name */
    public static final h f2130n;

    /* renamed from: o, reason: collision with root package name */
    public static final h f2131o;

    /* renamed from: p, reason: collision with root package name */
    public static final h f2132p;

    /* renamed from: a, reason: collision with root package name */
    public final Object f2133a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2134b;

    /* renamed from: c, reason: collision with root package name */
    public final Class f2135c;

    /* renamed from: d, reason: collision with root package name */
    public final A f2136d;

    static {
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction2;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction3;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction4;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction5;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction6;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction7;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction8;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction9;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction10;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction11;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction12;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction13;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction14;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction15;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction16;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction17;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction18;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction19;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction20;
        new h(4, (CharSequence) null);
        new h(8, (CharSequence) null);
        f2123g = new h(16, (CharSequence) null);
        new h(32, (CharSequence) null);
        new h(64, (CharSequence) null);
        new h(128, (CharSequence) null);
        new h(256, t.class);
        new h(512, t.class);
        new h(1024, u.class);
        new h(2048, u.class);
        f2124h = new h(4096, (CharSequence) null);
        f2125i = new h(8192, (CharSequence) null);
        new h(16384, (CharSequence) null);
        new h(32768, (CharSequence) null);
        new h(65536, (CharSequence) null);
        new h(131072, y.class);
        f2126j = new h(262144, (CharSequence) null);
        f2127k = new h(524288, (CharSequence) null);
        f2128l = new h(ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES, (CharSequence) null);
        new h(2097152, z.class);
        int i2 = Build.VERSION.SDK_INT;
        new h(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, R.id.accessibilityActionShowOnScreen, null, null, null);
        new h(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, R.id.accessibilityActionScrollToPosition, null, null, w.class);
        f2129m = new h(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, R.id.accessibilityActionScrollUp, null, null, null);
        f2130n = new h(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, R.id.accessibilityActionScrollLeft, null, null, null);
        f2131o = new h(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, R.id.accessibilityActionScrollDown, null, null, null);
        f2132p = new h(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, R.id.accessibilityActionScrollRight, null, null, null);
        if (i2 >= 29) {
            accessibilityAction20 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP;
            accessibilityAction = accessibilityAction20;
        } else {
            accessibilityAction = null;
        }
        new h(accessibilityAction, R.id.accessibilityActionPageUp, null, null, null);
        if (i2 >= 29) {
            accessibilityAction19 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN;
            accessibilityAction2 = accessibilityAction19;
        } else {
            accessibilityAction2 = null;
        }
        new h(accessibilityAction2, R.id.accessibilityActionPageDown, null, null, null);
        new h(i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null, null, null);
        if (i2 >= 29) {
            accessibilityAction18 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT;
            accessibilityAction3 = accessibilityAction18;
        } else {
            accessibilityAction3 = null;
        }
        new h(accessibilityAction3, R.id.accessibilityActionPageRight, null, null, null);
        new h(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, R.id.accessibilityActionContextClick, null, null, null);
        if (i2 >= 24) {
            accessibilityAction17 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS;
            accessibilityAction4 = accessibilityAction17;
        } else {
            accessibilityAction4 = null;
        }
        new h(accessibilityAction4, R.id.accessibilityActionSetProgress, null, null, x.class);
        new h(i2 >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, R.id.accessibilityActionMoveWindow, null, null, v.class);
        if (i2 >= 28) {
            accessibilityAction16 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP;
            accessibilityAction5 = accessibilityAction16;
        } else {
            accessibilityAction5 = null;
        }
        new h(accessibilityAction5, R.id.accessibilityActionShowTooltip, null, null, null);
        if (i2 >= 28) {
            accessibilityAction15 = AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP;
            accessibilityAction6 = accessibilityAction15;
        } else {
            accessibilityAction6 = null;
        }
        new h(accessibilityAction6, R.id.accessibilityActionHideTooltip, null, null, null);
        new h(i2 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold, null, null, null);
        if (i2 >= 30) {
            accessibilityAction14 = AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER;
            accessibilityAction7 = accessibilityAction14;
        } else {
            accessibilityAction7 = null;
        }
        new h(accessibilityAction7, R.id.accessibilityActionImeEnter, null, null, null);
        new h(i2 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START : null, R.id.accessibilityActionDragStart, null, null, null);
        if (i2 >= 32) {
            accessibilityAction13 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP;
            accessibilityAction8 = accessibilityAction13;
        } else {
            accessibilityAction8 = null;
        }
        new h(accessibilityAction8, R.id.accessibilityActionDragDrop, null, null, null);
        if (i2 >= 32) {
            accessibilityAction12 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL;
            accessibilityAction9 = accessibilityAction12;
        } else {
            accessibilityAction9 = null;
        }
        new h(accessibilityAction9, R.id.accessibilityActionDragCancel, null, null, null);
        if (i2 >= 33) {
            accessibilityAction11 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS;
            accessibilityAction10 = accessibilityAction11;
        } else {
            accessibilityAction10 = null;
        }
        new h(accessibilityAction10, R.id.accessibilityActionShowTextSuggestions, null, null, null);
        new h(i2 >= 34 ? k.getActionScrollInDirection() : null, R.id.accessibilityActionScrollInDirection, null, null, null);
    }

    public h(int i2, CharSequence charSequence) {
        this(null, i2, charSequence, null, null);
    }

    public h createReplacementAction(CharSequence charSequence, A a7) {
        return new h(null, this.f2134b, charSequence, a7, this.f2135c);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof h)) {
            return false;
        }
        Object obj2 = ((h) obj).f2133a;
        Object obj3 = this.f2133a;
        return obj3 == null ? obj2 == null : obj3.equals(obj2);
    }

    public int getId() {
        return ((AccessibilityNodeInfo.AccessibilityAction) this.f2133a).getId();
    }

    public CharSequence getLabel() {
        return ((AccessibilityNodeInfo.AccessibilityAction) this.f2133a).getLabel();
    }

    public int hashCode() {
        Object obj = this.f2133a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public boolean perform(View view, Bundle bundle) {
        A a7 = this.f2136d;
        if (a7 == null) {
            return false;
        }
        Class cls = this.f2135c;
        if (cls != null) {
            try {
                if (cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]) == null) {
                    throw null;
                }
                throw new ClassCastException();
            } catch (Exception e3) {
                Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: ".concat(cls.getName()), e3);
            }
        }
        return a7.perform(view, null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AccessibilityActionCompat: ");
        String b7 = n.b(this.f2134b);
        if (b7.equals("ACTION_UNKNOWN") && getLabel() != null) {
            b7 = getLabel().toString();
        }
        sb.append(b7);
        return sb.toString();
    }

    public h(int i2, CharSequence charSequence, A a7) {
        this(null, i2, charSequence, a7, null);
    }

    public h(int i2, Class cls) {
        this(null, i2, null, null, cls);
    }

    public h(Object obj, int i2, CharSequence charSequence, A a7, Class cls) {
        this.f2134b = i2;
        this.f2136d = a7;
        if (obj == null) {
            this.f2133a = new AccessibilityNodeInfo.AccessibilityAction(i2, charSequence);
        } else {
            this.f2133a = obj;
        }
        this.f2135c = cls;
    }
}
