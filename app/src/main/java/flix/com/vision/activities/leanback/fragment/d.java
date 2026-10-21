package flix.com.vision.activities.leanback.fragment;

import A4.u;
import android.animation.ObjectAnimator;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.C;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.v0;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.DramaHomeActivity;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.activities.leanback.FilterActivityLeanBack;
import flix.com.vision.activities.leanback.MainActivityLeanback;
import flix.com.vision.activities.leanback.fragment.TVListFragmentMain;
import flix.com.vision.models.Movie;
import flix.com.vision.models.tmdb.Network;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import me.grantland.widget.AutofitTextView;

/* loaded from: classes2.dex */
public class d extends C {

    /* renamed from: f0, reason: collision with root package name */
    public final MainActivityLeanback f15564f0;

    /* renamed from: g0, reason: collision with root package name */
    public FragmentContainerView f15565g0;

    /* renamed from: h0, reason: collision with root package name */
    public View f15566h0;

    /* renamed from: i0, reason: collision with root package name */
    public C0996j f15567i0;

    /* renamed from: j0, reason: collision with root package name */
    public Typeface f15568j0;

    /* renamed from: k0, reason: collision with root package name */
    public TVListFragmentMain f15569k0;

    /* renamed from: l0, reason: collision with root package name */
    public TextView f15570l0;

    /* renamed from: m0, reason: collision with root package name */
    public TextView f15571m0;

    /* renamed from: n0, reason: collision with root package name */
    public TextView f15572n0;

    /* renamed from: o0, reason: collision with root package name */
    public AutofitTextView f15573o0;

    /* renamed from: p0, reason: collision with root package name */
    public ImageView f15574p0;

    /* renamed from: q0, reason: collision with root package name */
    public ImageView f15575q0;

    /* renamed from: r0, reason: collision with root package name */
    public final TVListFragmentMain.ContentTypeLB f15576r0;

    public d(MainActivityLeanback mainActivityLeanback, TVListFragmentMain.ContentTypeLB contentTypeLB) {
        this.f15564f0 = mainActivityLeanback;
        this.f15576r0 = contentTypeLB;
    }

    public boolean dispatchKeyDown(int i2, KeyEvent keyEvent) {
        TVListFragmentMain tVListFragmentMain = this.f15569k0;
        if (tVListFragmentMain == null || !tVListFragmentMain.isAdded()) {
            return false;
        }
        return this.f15569k0.dispatchKeyDown(i2, keyEvent);
    }

    public void finished() {
        MainActivityLeanback mainActivityLeanback = this.f15564f0;
        if (mainActivityLeanback != null) {
            mainActivityLeanback.finished();
        }
    }

    public int getSelectedPosition() {
        TVListFragmentMain tVListFragmentMain = this.f15569k0;
        if (tVListFragmentMain != null) {
            return tVListFragmentMain.getSelectedPosition();
        }
        return -1;
    }

    public final void i() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f15573o0, "alpha", 0.0f, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f15570l0, "alpha", 0.0f, 1.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f15571m0, "alpha", 0.0f, 1.0f);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.f15572n0, "alpha", 0.0f, 1.0f);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.f15574p0, "alpha", 0.0f, 1.0f);
        ofFloat.setDuration(300L);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat2.setDuration(300L);
        ofFloat2.setInterpolator(new DecelerateInterpolator());
        ofFloat3.setDuration(300L);
        ofFloat3.setInterpolator(new DecelerateInterpolator());
        ofFloat4.setDuration(300L);
        ofFloat4.setInterpolator(new DecelerateInterpolator());
        ofFloat5.setDuration(300L);
        ofFloat5.setInterpolator(new DecelerateInterpolator());
        ofFloat.start();
        ofFloat2.start();
        ofFloat3.start();
        ofFloat4.start();
        ofFloat5.start();
    }

    public final void j(Runnable runnable) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f15573o0, "alpha", 1.0f, 0.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f15570l0, "alpha", 1.0f, 0.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f15571m0, "alpha", 1.0f, 0.0f);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.f15572n0, "alpha", 1.0f, 0.0f);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.f15574p0, "alpha", 1.0f, 0.0f);
        ofFloat.setDuration(200L);
        ofFloat.setInterpolator(new AccelerateInterpolator());
        ofFloat2.setDuration(200L);
        ofFloat2.setInterpolator(new AccelerateInterpolator());
        ofFloat3.setDuration(200L);
        ofFloat3.setInterpolator(new AccelerateInterpolator());
        ofFloat4.setDuration(200L);
        ofFloat4.setInterpolator(new AccelerateInterpolator());
        ofFloat5.setDuration(200L);
        ofFloat5.setInterpolator(new AccelerateInterpolator());
        ofFloat5.addListener(new b(runnable));
        ofFloat.start();
        ofFloat2.start();
        ofFloat3.start();
        ofFloat4.start();
        ofFloat5.start();
    }

    @Override // androidx.fragment.app.C
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_home, viewGroup, false);
    }

    public void onMovieClicked(Movie movie) {
        App.getInstance().f14432e = false;
        MainActivityLeanback mainActivityLeanback = this.f15564f0;
        if (mainActivityLeanback != null) {
            mainActivityLeanback.openMovieintent(movie);
            return;
        }
        Intent intent = new Intent(getActivity(), (Class<?>) MovieDetailActivity.class);
        intent.putExtra("movie", movie);
        intent.setFlags(268435456);
        startActivity(intent);
    }

    public void onMovieSelected(Movie movie) {
        this.f15575q0.setVisibility(8);
        this.f15573o0.setVisibility(8);
        this.f15573o0.setText(movie.getTitle());
        if (movie.getMovieId() > 0) {
            D4.a.getMediaImages(movie.getType() == 0 ? "movie" : "tv", movie.getMovieId()).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new u(5, this, movie), new A4.c(22));
        }
        j(new a(0, this, movie));
    }

    public void onNetworkClicked(Network network) {
        if (network.id == 9991) {
            Intent intent = new Intent(getActivity(), (Class<?>) DramaHomeActivity.class);
            intent.setFlags(268435456);
            startActivity(intent);
        } else {
            Intent intent2 = new Intent(getActivity(), (Class<?>) FilterActivityLeanBack.class);
            intent2.putExtra("network", network.id);
            intent2.setFlags(268435456);
            startActivity(intent2);
        }
    }

    public void onNetworkSelected(Network network) {
        j(new a(1, this, network));
    }

    @Override // androidx.fragment.app.C
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f15572n0 = (TextView) view.findViewById(R.id.type_text_view);
        this.f15565g0 = (FragmentContainerView) view.findViewById(R.id.list_fragment);
        this.f15566h0 = view.findViewById(R.id.gradient_horizontal);
        this.f15574p0 = (ImageView) view.findViewById(R.id.img_banner);
        this.f15575q0 = (ImageView) view.findViewById(R.id.title_logo);
        this.f15573o0 = (AutofitTextView) view.findViewById(R.id.title);
        this.f15570l0 = (TextView) view.findViewById(R.id.subtitle);
        this.f15571m0 = (TextView) view.findViewById(R.id.description);
        this.f15567i0 = new C0996j();
        AssetManager assets = getActivity().getAssets();
        String str = Constant.f16184b;
        this.f15568j0 = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f15567i0.applyFontToView(this.f15573o0, Typeface.createFromAsset(getActivity().getAssets(), "fonts/product_sans_bold.ttf"));
        this.f15567i0.applyFontToView(this.f15570l0, this.f15568j0);
        this.f15567i0.applyFontToView(this.f15571m0, this.f15568j0);
        TVListFragmentMain tVListFragmentMain = new TVListFragmentMain(this.f15576r0);
        this.f15569k0 = tVListFragmentMain;
        tVListFragmentMain.setOnContentSelectedListener(this);
        v0 beginTransaction = getChildFragmentManager().beginTransaction();
        beginTransaction.add(R.id.list_fragment, this.f15569k0);
        beginTransaction.commit();
    }

    public void reloadWatchedHistory() {
        TVListFragmentMain tVListFragmentMain = this.f15569k0;
        if (tVListFragmentMain != null) {
            tVListFragmentMain.reloadWatchedHistory();
        }
    }

    public void requestFocus1() {
        FragmentContainerView fragmentContainerView = this.f15565g0;
        if (fragmentContainerView == null) {
            return;
        }
        fragmentContainerView.requestFocus();
    }

    public void setHome() {
    }

    public void setSelectedPosition(int i2) {
        this.f15569k0.setSelectedPosition(i2, true);
    }

    public d() {
        this.f15576r0 = TVListFragmentMain.ContentTypeLB.f15544b;
    }
}
