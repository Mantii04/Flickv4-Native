package R;

import android.content.ClipDescription;
import android.net.Uri;

/* loaded from: classes.dex */
public final class i implements j {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f3002a;

    /* renamed from: b, reason: collision with root package name */
    public final ClipDescription f3003b;

    /* renamed from: c, reason: collision with root package name */
    public final Uri f3004c;

    public i(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.f3002a = uri;
        this.f3003b = clipDescription;
        this.f3004c = uri2;
    }

    @Override // R.j
    public Uri getContentUri() {
        return this.f3002a;
    }

    @Override // R.j
    public ClipDescription getDescription() {
        return this.f3003b;
    }

    @Override // R.j
    public Object getInputContentInfo() {
        return null;
    }

    @Override // R.j
    public Uri getLinkUri() {
        return this.f3004c;
    }

    @Override // R.j
    public void requestPermission() {
    }
}
