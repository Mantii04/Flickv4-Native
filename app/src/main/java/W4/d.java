package W4;

import android.view.View;
import android.widget.ImageView;
import androidx.leanback.widget.A0;
import flix.com.vision.R;
import flix.com.vision.models.tmdb.Network;

/* loaded from: classes2.dex */
public final class d extends A0 {

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f4168b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageView f4169c;

    /* renamed from: d, reason: collision with root package name */
    public final ImageView f4170d;

    /* renamed from: e, reason: collision with root package name */
    public final View f4171e;

    /* renamed from: f, reason: collision with root package name */
    public Network f4172f;

    public d(View view) {
        super(view);
        this.f4171e = view;
        this.f4168b = (ImageView) view.findViewById(R.id.poster_image);
        this.f4169c = (ImageView) view.findViewById(R.id.arrow_left);
        this.f4170d = (ImageView) view.findViewById(R.id.arrow_right);
    }
}
