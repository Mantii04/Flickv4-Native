package C4;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.Episode;
import m1.B0;

/* loaded from: classes2.dex */
public final class F extends B0 {

    /* renamed from: A, reason: collision with root package name */
    public final ImageView f548A;

    /* renamed from: B, reason: collision with root package name */
    public final ImageView f549B;

    /* renamed from: u, reason: collision with root package name */
    public Episode f550u;

    /* renamed from: v, reason: collision with root package name */
    public final TextView f551v;

    /* renamed from: w, reason: collision with root package name */
    public final TextView f552w;

    /* renamed from: x, reason: collision with root package name */
    public final TextView f553x;

    /* renamed from: y, reason: collision with root package name */
    public final TextView f554y;

    /* renamed from: z, reason: collision with root package name */
    public final View f555z;

    public F(G g7, View view) {
        super(view);
        this.f555z = view;
        this.f551v = (TextView) view.findViewById(R.id.episode_number_text_view);
        this.f552w = (TextView) view.findViewById(R.id.episode_plot);
        this.f554y = (TextView) view.findViewById(R.id.episode_duration);
        this.f553x = (TextView) view.findViewById(R.id.episode_title_textview);
        this.f548A = (ImageView) view.findViewById(R.id.episode_poster);
        this.f549B = (ImageView) view.findViewById(R.id.episode_play_icon);
    }
}
