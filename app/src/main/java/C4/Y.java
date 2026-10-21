package C4;

import android.view.View;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.Season;
import m1.B0;

/* loaded from: classes2.dex */
public final class Y extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public Season f622u;

    /* renamed from: v, reason: collision with root package name */
    public final TextView f623v;

    /* renamed from: w, reason: collision with root package name */
    public final TextView f624w;

    /* renamed from: x, reason: collision with root package name */
    public final View f625x;

    public Y(Z z6, View view) {
        super(view);
        this.f625x = view;
        this.f623v = (TextView) view.findViewById(R.id.season_label_view);
        this.f624w = (TextView) view.findViewById(R.id.episode_count_label);
    }
}
