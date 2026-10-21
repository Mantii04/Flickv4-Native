package R;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final j f3005a;

    public k(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.f3005a = new h(uri, clipDescription, uri2);
        } else {
            this.f3005a = new i(uri, clipDescription, uri2);
        }
    }

    public static k wrap(Object obj) {
        if (obj != null && Build.VERSION.SDK_INT >= 25) {
            return new k(new h(obj));
        }
        return null;
    }

    public Uri getContentUri() {
        return this.f3005a.getContentUri();
    }

    public ClipDescription getDescription() {
        return this.f3005a.getDescription();
    }

    public Uri getLinkUri() {
        return this.f3005a.getLinkUri();
    }

    public void requestPermission() {
        this.f3005a.requestPermission();
    }

    public Object unwrap() {
        return this.f3005a.getInputContentInfo();
    }

    public k(h hVar) {
        this.f3005a = hVar;
    }
}
