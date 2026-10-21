package R;

import android.content.ClipDescription;
import android.net.Uri;
import android.view.inputmethod.InputContentInfo;

/* loaded from: classes.dex */
public final class h implements j {

    /* renamed from: a, reason: collision with root package name */
    public final InputContentInfo f3001a;

    public h(Object obj) {
        this.f3001a = (InputContentInfo) obj;
    }

    @Override // R.j
    public Uri getContentUri() {
        return this.f3001a.getContentUri();
    }

    @Override // R.j
    public ClipDescription getDescription() {
        return this.f3001a.getDescription();
    }

    @Override // R.j
    public Object getInputContentInfo() {
        return this.f3001a;
    }

    @Override // R.j
    public Uri getLinkUri() {
        return this.f3001a.getLinkUri();
    }

    @Override // R.j
    public void requestPermission() {
        this.f3001a.requestPermission();
    }

    public h(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.f3001a = new InputContentInfo(uri, clipDescription, uri2);
    }
}
