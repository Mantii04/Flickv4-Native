package C4;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import flix.com.vision.R;
import m1.B0;

/* loaded from: classes2.dex */
public final class U extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public final TextView f609u;

    /* renamed from: v, reason: collision with root package name */
    public final TextView f610v;

    /* renamed from: w, reason: collision with root package name */
    public final ImageView f611w;

    public U(V v6, View view) {
        super(view);
        this.f609u = (TextView) view.findViewById(R.id.episode_number);
        this.f610v = (TextView) view.findViewById(R.id.episode_title);
        this.f611w = (ImageView) view.findViewById(R.id.playing_indicator);
    }
}
