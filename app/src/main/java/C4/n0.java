package C4;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.Movie;
import m1.B0;

/* loaded from: classes2.dex */
public final class n0 extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public Movie f748u;

    /* renamed from: v, reason: collision with root package name */
    public final View f749v;

    /* renamed from: w, reason: collision with root package name */
    public final TextView f750w;

    /* renamed from: x, reason: collision with root package name */
    public final ImageView f751x;

    /* renamed from: y, reason: collision with root package name */
    public final ProgressBar f752y;

    public n0(o0 o0Var, View view) {
        super(view);
        this.f749v = view;
        this.f750w = (TextView) view.findViewById(R.id.episode_title_card);
        this.f751x = (ImageView) view.findViewById(R.id.poster_image);
        this.f752y = (ProgressBar) view.findViewById(R.id.progress_watching_main);
    }
}
