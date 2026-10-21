package y4;

import android.os.Handler;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import flix.com.vision.App;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.activities.MovieDetailActivityLeanBack;

/* renamed from: y4.n0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewTreeObserverOnScrollChangedListenerC1918n0 implements ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21264a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21265b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ flix.com.vision.activities.base.a f21266c;

    public /* synthetic */ ViewTreeObserverOnScrollChangedListenerC1918n0(flix.com.vision.activities.base.a aVar, int i2, int i7) {
        this.f21264a = i7;
        this.f21266c = aVar;
        this.f21265b = i2;
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        switch (this.f21264a) {
            case 0:
                MovieDetailActivity movieDetailActivity = (MovieDetailActivity) this.f21266c;
                if (movieDetailActivity.f14811J.getScrollY() < this.f21265b && movieDetailActivity.f14828R0) {
                    if (movieDetailActivity.f14847h0.getVisibility() == 4) {
                        movieDetailActivity.f14847h0.setVisibility(0);
                        LinearLayout linearLayout = movieDetailActivity.f14864s;
                        if (linearLayout != null && App.f14424I) {
                            linearLayout.setVisibility(0);
                        }
                        movieDetailActivity.f14847h0.startAnimation(movieDetailActivity.f14807H);
                        if (movieDetailActivity.f14853m != null) {
                            new Handler().postDelayed(new RunnableC1912k0(movieDetailActivity, 4), 500L);
                            break;
                        }
                    }
                } else if (movieDetailActivity.f14847h0.getVisibility() == 0) {
                    if (!App.f14424I && !movieDetailActivity.f14800D0) {
                        movieDetailActivity.f14847h0.startAnimation(movieDetailActivity.f14809I);
                    }
                    movieDetailActivity.f14847h0.setVisibility(4);
                    ImageView imageView = movieDetailActivity.f14853m;
                    if (imageView != null) {
                        imageView.setVisibility(4);
                    }
                    LinearLayout linearLayout2 = movieDetailActivity.f14864s;
                    if (linearLayout2 != null && App.f14424I) {
                        linearLayout2.setVisibility(4);
                    }
                    movieDetailActivity.f14828R0 = false;
                    new Handler().postDelayed(new RunnableC1912k0(movieDetailActivity, 5), 1000L);
                    break;
                }
                break;
            default:
                MovieDetailActivityLeanBack movieDetailActivityLeanBack = (MovieDetailActivityLeanBack) this.f21266c;
                if (movieDetailActivityLeanBack.f14915R.getScrollY() < this.f21265b && movieDetailActivityLeanBack.f14932Z0) {
                    if (movieDetailActivityLeanBack.f14955p0.getVisibility() == 4) {
                        movieDetailActivityLeanBack.f14955p0.setVisibility(0);
                        LinearLayout linearLayout3 = movieDetailActivityLeanBack.f14974z;
                        if (linearLayout3 != null && App.f14424I) {
                            linearLayout3.setVisibility(0);
                        }
                        movieDetailActivityLeanBack.f14955p0.startAnimation(movieDetailActivityLeanBack.f14909O);
                        if (movieDetailActivityLeanBack.f14966v != null && movieDetailActivityLeanBack.f14930Y0) {
                            new Handler().postDelayed(new RunnableC1933v0(movieDetailActivityLeanBack, 3), 500L);
                            break;
                        }
                    }
                } else if (movieDetailActivityLeanBack.f14955p0.getVisibility() == 0) {
                    if (!App.f14424I && !movieDetailActivityLeanBack.f14904L0) {
                        movieDetailActivityLeanBack.f14955p0.startAnimation(movieDetailActivityLeanBack.f14911P);
                    }
                    movieDetailActivityLeanBack.f14955p0.setVisibility(4);
                    ImageView imageView2 = movieDetailActivityLeanBack.f14966v;
                    if (imageView2 != null) {
                        imageView2.setVisibility(4);
                    }
                    LinearLayout linearLayout4 = movieDetailActivityLeanBack.f14974z;
                    if (linearLayout4 != null && App.f14424I) {
                        linearLayout4.setVisibility(4);
                    }
                    movieDetailActivityLeanBack.f14932Z0 = false;
                    new Handler().postDelayed(new RunnableC1933v0(movieDetailActivityLeanBack, 4), 1000L);
                    break;
                }
                break;
        }
    }
}
