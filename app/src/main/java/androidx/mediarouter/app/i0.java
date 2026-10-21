package androidx.mediarouter.app;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class i0 extends Y {

    /* renamed from: A, reason: collision with root package name */
    public final ProgressBar f7813A;

    /* renamed from: B, reason: collision with root package name */
    public final TextView f7814B;

    /* renamed from: C, reason: collision with root package name */
    public final RelativeLayout f7815C;

    /* renamed from: D, reason: collision with root package name */
    public final CheckBox f7816D;

    /* renamed from: E, reason: collision with root package name */
    public final float f7817E;

    /* renamed from: F, reason: collision with root package name */
    public final int f7818F;

    /* renamed from: G, reason: collision with root package name */
    public final h0 f7819G;

    /* renamed from: H, reason: collision with root package name */
    public final /* synthetic */ j0 f7820H;

    /* renamed from: y, reason: collision with root package name */
    public final View f7821y;

    /* renamed from: z, reason: collision with root package name */
    public final ImageView f7822z;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public i0(androidx.mediarouter.app.j0 r5, android.view.View r6) {
        /*
            r4 = this;
            r4.f7820H = r5
            androidx.mediarouter.app.m0 r5 = r5.f7835m
            int r0 = androidx.mediarouter.R.id.mr_cast_mute_button
            android.view.View r0 = r6.findViewById(r0)
            android.widget.ImageButton r0 = (android.widget.ImageButton) r0
            int r1 = androidx.mediarouter.R.id.mr_cast_volume_slider
            android.view.View r1 = r6.findViewById(r1)
            androidx.mediarouter.app.MediaRouteVolumeSlider r1 = (androidx.mediarouter.app.MediaRouteVolumeSlider) r1
            r4.<init>(r5, r6, r0, r1)
            androidx.mediarouter.app.h0 r0 = new androidx.mediarouter.app.h0
            r0.<init>(r4)
            r4.f7819G = r0
            r4.f7821y = r6
            int r0 = androidx.mediarouter.R.id.mr_cast_route_icon
            android.view.View r0 = r6.findViewById(r0)
            android.widget.ImageView r0 = (android.widget.ImageView) r0
            r4.f7822z = r0
            int r0 = androidx.mediarouter.R.id.mr_cast_route_progress_bar
            android.view.View r0 = r6.findViewById(r0)
            android.widget.ProgressBar r0 = (android.widget.ProgressBar) r0
            r4.f7813A = r0
            int r1 = androidx.mediarouter.R.id.mr_cast_route_name
            android.view.View r1 = r6.findViewById(r1)
            android.widget.TextView r1 = (android.widget.TextView) r1
            r4.f7814B = r1
            int r1 = androidx.mediarouter.R.id.mr_cast_volume_layout
            android.view.View r1 = r6.findViewById(r1)
            android.widget.RelativeLayout r1 = (android.widget.RelativeLayout) r1
            r4.f7815C = r1
            int r1 = androidx.mediarouter.R.id.mr_cast_checkbox
            android.view.View r6 = r6.findViewById(r1)
            android.widget.CheckBox r6 = (android.widget.CheckBox) r6
            r4.f7816D = r6
            android.content.Context r1 = r5.f7879w
            int r2 = androidx.mediarouter.R.drawable.mr_cast_checkbox
            android.graphics.drawable.Drawable r2 = f.AbstractC0876a.getDrawable(r1, r2)
            android.graphics.drawable.Drawable r2 = E.c.wrap(r2)
            boolean r3 = androidx.mediarouter.app.o0.h(r1)
            if (r3 == 0) goto L6d
            int r3 = androidx.mediarouter.app.o0.f7886a
            int r1 = A.h.getColor(r1, r3)
            E.c.setTint(r2, r1)
        L6d:
            r6.setButtonDrawable(r2)
            android.content.Context r6 = r5.f7879w
            androidx.mediarouter.app.o0.i(r6, r0)
            android.content.Context r6 = r5.f7879w
            float r6 = androidx.mediarouter.app.o0.c(r6)
            r4.f7817E = r6
            android.content.Context r5 = r5.f7879w
            android.content.res.Resources r5 = r5.getResources()
            android.util.DisplayMetrics r6 = r5.getDisplayMetrics()
            android.util.TypedValue r0 = new android.util.TypedValue
            r0.<init>()
            int r1 = androidx.mediarouter.R.dimen.mr_dynamic_dialog_row_height
            r2 = 1
            r5.getValue(r1, r0, r2)
            float r5 = r0.getDimension(r6)
            int r5 = (int) r5
            r4.f7818F = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.i0.<init>(androidx.mediarouter.app.j0, android.view.View):void");
    }

    public final boolean p(f1.U u6) {
        if (u6.isSelected()) {
            return true;
        }
        f1.T dynamicGroupState = this.f7820H.f7835m.f7874r.getDynamicGroupState(u6);
        return dynamicGroupState != null && dynamicGroupState.getSelectionState() == 3;
    }

    public final void q(boolean z6, boolean z7) {
        CheckBox checkBox = this.f7816D;
        checkBox.setEnabled(false);
        this.f7821y.setEnabled(false);
        checkBox.setChecked(z6);
        if (z6) {
            this.f7822z.setVisibility(4);
            this.f7813A.setVisibility(0);
        }
        if (z7) {
            this.f7820H.a(this.f7815C, z6 ? this.f7818F : 0);
        }
    }
}
