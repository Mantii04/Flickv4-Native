package androidx.leanback.widget;

import android.view.View;
import flix.com.vision.activities.leanback.fragment.TVListFragmentMain;
import flix.com.vision.models.Movie;
import flix.com.vision.models.tmdb.Network;

/* renamed from: androidx.leanback.widget.i0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC0508i0 implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0492b0 f6804b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0510j0 f6805e;

    public ViewOnClickListenerC0508i0(C0510j0 c0510j0, C0492b0 c0492b0) {
        this.f6805e = c0510j0;
        this.f6804b = c0492b0;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C0510j0 c0510j0 = this.f6805e;
        HorizontalGridView horizontalGridView = c0510j0.f6808k.f6845n;
        C0492b0 c0492b0 = this.f6804b;
        C0492b0 c0492b02 = (C0492b0) horizontalGridView.getChildViewHolder(c0492b0.f18217a);
        if (c0510j0.f6808k.getOnItemViewClickedListener() != null) {
            InterfaceC0531u onItemViewClickedListener = c0510j0.f6808k.getOnItemViewClickedListener();
            A0 a02 = c0492b0.f6769v;
            Object obj = c0492b02.f6770w;
            TVListFragmentMain tVListFragmentMain = (TVListFragmentMain) ((d6.a) onItemViewClickedListener).f13611b;
            if (tVListFragmentMain.f15519E0) {
                tVListFragmentMain.k();
                return;
            }
            flix.com.vision.activities.leanback.fragment.d dVar = tVListFragmentMain.f15536V0;
            if (dVar != null) {
                if (obj instanceof Movie) {
                    dVar.onMovieClicked((Movie) obj);
                } else if (obj instanceof Network) {
                    dVar.onNetworkClicked((Network) obj);
                }
            }
        }
    }
}
