package C4;

import android.view.View;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.torrent.UserTorrent;
import m1.B0;

/* loaded from: classes2.dex */
public final class g0 extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public UserTorrent f682u;

    /* renamed from: v, reason: collision with root package name */
    public final View f683v;

    /* renamed from: w, reason: collision with root package name */
    public final TextView f684w;

    /* renamed from: x, reason: collision with root package name */
    public final TextView f685x;

    /* renamed from: y, reason: collision with root package name */
    public final TextView f686y;

    public g0(h0 h0Var, View view) {
        super(view);
        this.f683v = view;
        this.f684w = (TextView) view.findViewById(R.id.link_main_label);
        this.f685x = (TextView) view.findViewById(R.id.link_detail_view);
        this.f686y = (TextView) view.findViewById(R.id.link_source);
    }
}
