package N;

import android.view.accessibility.AccessibilityNodeInfo;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final AccessibilityNodeInfo.CollectionItemInfo f2138a;

    public m(AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo) {
        this.f2138a = collectionItemInfo;
    }

    public static m obtain(int i2, int i7, int i8, int i9, boolean z6, boolean z7) {
        return new m(AccessibilityNodeInfo.CollectionItemInfo.obtain(i2, i7, i8, i9, z6, z7));
    }
}
