package C4;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.ChannelTv;
import m1.B0;

/* renamed from: C4.t, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0095t extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public ChannelTv f773u;

    /* renamed from: v, reason: collision with root package name */
    public final View f774v;

    /* renamed from: w, reason: collision with root package name */
    public final TextView f775w;

    /* renamed from: x, reason: collision with root package name */
    public final ImageView f776x;

    public C0095t(C0096u c0096u, View view) {
        super(view);
        this.f774v = view;
        this.f775w = (TextView) view.findViewById(R.id.channel_text_view);
        this.f776x = (ImageView) view.findViewById(R.id.image_v);
    }
}
