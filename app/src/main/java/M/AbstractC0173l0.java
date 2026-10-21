package M;

import android.view.ContentInfo;
import android.view.View;

/* renamed from: M.l0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0173l0 {
    public static String[] getReceiveContentMimeTypes(View view) {
        return view.getReceiveContentMimeTypes();
    }

    public static C0174m performReceiveContent(View view, C0174m c0174m) {
        ContentInfo contentInfo = c0174m.toContentInfo();
        ContentInfo performReceiveContent = view.performReceiveContent(contentInfo);
        if (performReceiveContent == null) {
            return null;
        }
        return performReceiveContent == contentInfo ? c0174m : C0174m.toContentInfoCompat(performReceiveContent);
    }

    public static void setOnReceiveContentListener(View view, String[] strArr, M m7) {
        if (m7 == null) {
            view.setOnReceiveContentListener(strArr, null);
        } else {
            view.setOnReceiveContentListener(strArr, new OnReceiveContentListenerC0175m0(m7));
        }
    }
}
