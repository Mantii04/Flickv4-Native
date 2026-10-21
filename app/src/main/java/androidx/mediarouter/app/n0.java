package androidx.mediarouter.app;

import android.view.View;

/* loaded from: classes.dex */
public final class n0 implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MediaRouteExpandCollapseButton f7884b;

    public n0(MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton) {
        this.f7884b = mediaRouteExpandCollapseButton;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton = this.f7884b;
        boolean z6 = mediaRouteExpandCollapseButton.f7709q;
        mediaRouteExpandCollapseButton.f7709q = !z6;
        if (z6) {
            mediaRouteExpandCollapseButton.setImageDrawable(mediaRouteExpandCollapseButton.f7706m);
            mediaRouteExpandCollapseButton.f7706m.start();
            mediaRouteExpandCollapseButton.setContentDescription(mediaRouteExpandCollapseButton.f7707n);
        } else {
            mediaRouteExpandCollapseButton.setImageDrawable(mediaRouteExpandCollapseButton.f7705j);
            mediaRouteExpandCollapseButton.f7705j.start();
            mediaRouteExpandCollapseButton.setContentDescription(mediaRouteExpandCollapseButton.f7708p);
        }
        View.OnClickListener onClickListener = mediaRouteExpandCollapseButton.f7710r;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }
}
