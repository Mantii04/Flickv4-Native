package N;

import android.view.accessibility.AccessibilityNodeInfo;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final AccessibilityNodeInfo.CollectionInfo f2137a;

    public l(AccessibilityNodeInfo.CollectionInfo collectionInfo) {
        this.f2137a = collectionInfo;
    }

    public static l obtain(int i2, int i7, boolean z6, int i8) {
        return new l(AccessibilityNodeInfo.CollectionInfo.obtain(i2, i7, z6, i8));
    }

    public static l obtain(int i2, int i7, boolean z6) {
        return new l(AccessibilityNodeInfo.CollectionInfo.obtain(i2, i7, z6));
    }
}
