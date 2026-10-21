package M;

import android.view.ContentInfo;
import android.view.OnReceiveContentListener;
import android.view.View;

/* renamed from: M.m0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class OnReceiveContentListenerC0175m0 implements OnReceiveContentListener {

    /* renamed from: a, reason: collision with root package name */
    public final M f2045a;

    public OnReceiveContentListenerC0175m0(M m7) {
        this.f2045a = m7;
    }

    public ContentInfo onReceiveContent(View view, ContentInfo contentInfo) {
        C0174m contentInfoCompat = C0174m.toContentInfoCompat(contentInfo);
        C0174m onReceiveContent = ((S.B) this.f2045a).onReceiveContent(view, contentInfoCompat);
        if (onReceiveContent == null) {
            return null;
        }
        return onReceiveContent == contentInfoCompat ? contentInfo : onReceiveContent.toContentInfo();
    }
}
