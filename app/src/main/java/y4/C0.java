package y4;

import android.widget.ImageView;
import flix.com.vision.activities.MovieDetailActivityLeanBack;
import flix.com.vision.models.Movie;
import m4.InterfaceC1330i;
import me.grantland.widget.AutofitTextView;

/* loaded from: classes2.dex */
public final class C0 implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Movie f21113a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivityLeanBack f21114b;

    public C0(MovieDetailActivityLeanBack movieDetailActivityLeanBack, Movie movie) {
        this.f21114b = movieDetailActivityLeanBack;
        this.f21113a = movie;
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
        AutofitTextView autofitTextView = this.f21114b.f14902K0;
        if (autofitTextView != null) {
            autofitTextView.setVisibility(0);
        }
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        MovieDetailActivityLeanBack movieDetailActivityLeanBack = this.f21114b;
        AutofitTextView autofitTextView = movieDetailActivityLeanBack.f14902K0;
        if (autofitTextView != null) {
            autofitTextView.setVisibility(8);
        }
        this.f21113a.is_title_logo_available = true;
        ImageView imageView = movieDetailActivityLeanBack.f14966v;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        movieDetailActivityLeanBack.f14930Y0 = true;
    }
}
