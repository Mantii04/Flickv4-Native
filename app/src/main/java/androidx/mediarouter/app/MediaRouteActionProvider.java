package androidx.mediarouter.app;

import M.AbstractC0158e;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class MediaRouteActionProvider extends AbstractC0158e {

    /* renamed from: c, reason: collision with root package name */
    public f1.L f7684c;

    /* renamed from: d, reason: collision with root package name */
    public final F f7685d;

    /* renamed from: e, reason: collision with root package name */
    public MediaRouteButton f7686e;

    public MediaRouteActionProvider(Context context) {
        super(context);
        this.f7684c = f1.L.f14160c;
        this.f7685d = F.getDefault();
        f1.X.getInstance(context);
    }

    @Override // M.AbstractC0158e
    public View onCreateActionView() {
        if (this.f7686e != null) {
            Log.e("MRActionProvider", "onCreateActionView: this ActionProvider is already associated with a menu item. Don't reuse MediaRouteActionProvider instances! Abandoning the old menu item...");
        }
        MediaRouteButton onCreateMediaRouteButton = onCreateMediaRouteButton();
        this.f7686e = onCreateMediaRouteButton;
        onCreateMediaRouteButton.setCheatSheetEnabled(true);
        this.f7686e.setRouteSelector(this.f7684c);
        this.f7686e.setDialogFactory(this.f7685d);
        this.f7686e.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
        return this.f7686e;
    }

    public MediaRouteButton onCreateMediaRouteButton() {
        return new MediaRouteButton(getContext());
    }

    @Override // M.AbstractC0158e
    public boolean onPerformDefaultAction() {
        MediaRouteButton mediaRouteButton = this.f7686e;
        if (mediaRouteButton != null) {
            return mediaRouteButton.showDialog();
        }
        return false;
    }

    public void setRouteSelector(f1.L l7) {
        if (l7 == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (this.f7684c.equals(l7)) {
            return;
        }
        this.f7684c = l7;
        MediaRouteButton mediaRouteButton = this.f7686e;
        if (mediaRouteButton != null) {
            mediaRouteButton.setRouteSelector(l7);
        }
    }
}
