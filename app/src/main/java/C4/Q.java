package C4;

import android.view.View;
import android.widget.ImageView;
import flix.com.vision.R;
import flix.com.vision.models.tmdb.Network;
import m1.B0;

/* loaded from: classes2.dex */
public final class Q extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public Network f601u;

    /* renamed from: v, reason: collision with root package name */
    public final View f602v;

    /* renamed from: w, reason: collision with root package name */
    public final ImageView f603w;

    public Q(S s6, View view) {
        super(view);
        this.f602v = view;
        this.f603w = (ImageView) view.findViewById(R.id.network_image);
    }
}
