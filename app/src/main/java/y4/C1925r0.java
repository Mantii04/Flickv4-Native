package y4;

import android.widget.ImageView;
import flix.com.vision.activities.MovieDetailActivity;
import m4.InterfaceC1330i;
import me.grantland.widget.AutofitTextView;

/* renamed from: y4.r0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1925r0 implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivity f21279a;

    public C1925r0(MovieDetailActivity movieDetailActivity) {
        this.f21279a = movieDetailActivity;
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        MovieDetailActivity movieDetailActivity = this.f21279a;
        AutofitTextView autofitTextView = movieDetailActivity.f14798C0;
        if (autofitTextView != null) {
            autofitTextView.setVisibility(8);
        }
        movieDetailActivity.f14852l0.is_title_logo_available = true;
        ImageView imageView = movieDetailActivity.f14853m;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        movieDetailActivity.f14826Q0 = true;
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
    }
}
