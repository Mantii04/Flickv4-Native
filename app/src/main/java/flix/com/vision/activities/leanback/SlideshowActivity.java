package flix.com.vision.activities.leanback;

import A4.c;
import A4.s;
import A4.u;
import A4.v;
import A4.x;
import A4.y;
import D4.a;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import e.AbstractActivityC0842v;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.activities.MovieDetailActivityLeanBack;
import flix.com.vision.models.Movie;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Random;
import m4.D;

/* loaded from: classes2.dex */
public class SlideshowActivity extends AbstractActivityC0842v {

    /* renamed from: v, reason: collision with root package name */
    public static final /* synthetic */ int f15502v = 0;

    /* renamed from: b, reason: collision with root package name */
    public TextView f15503b;

    /* renamed from: e, reason: collision with root package name */
    public ImageView f15504e;

    /* renamed from: f, reason: collision with root package name */
    public ImageView f15505f;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f15506j;

    /* renamed from: m, reason: collision with root package name */
    public View f15507m;

    /* renamed from: s, reason: collision with root package name */
    public AnimatorSet f15512s;

    /* renamed from: n, reason: collision with root package name */
    public final CompositeDisposable f15508n = new CompositeDisposable();

    /* renamed from: p, reason: collision with root package name */
    public final Handler f15509p = new Handler(Looper.getMainLooper());

    /* renamed from: q, reason: collision with root package name */
    public ArrayList f15510q = new ArrayList();

    /* renamed from: r, reason: collision with root package name */
    public int f15511r = 0;

    /* renamed from: t, reason: collision with root package name */
    public final Random f15513t = new Random();

    /* renamed from: u, reason: collision with root package name */
    public final x f15514u = new x(this);

    public static void e(SlideshowActivity slideshowActivity) {
        ObjectAnimator.ofFloat(slideshowActivity.f15504e, "scaleX", 1.0f, 1.2f);
        ObjectAnimator.ofFloat(slideshowActivity.f15504e, "scaleY", 1.0f, 1.2f);
        Random random = slideshowActivity.f15513t;
        float nextFloat = (random.nextFloat() - 0.5f) * 400.0f;
        float nextFloat2 = (random.nextFloat() - 0.5f) * 400.0f;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(slideshowActivity.f15504e, "translationX", 0.0f, nextFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(slideshowActivity.f15504e, "translationY", 0.0f, nextFloat2);
        AnimatorSet animatorSet = new AnimatorSet();
        slideshowActivity.f15512s = animatorSet;
        animatorSet.playTogether(ofFloat, ofFloat2);
        slideshowActivity.f15512s.setInterpolator(new AccelerateInterpolator());
        slideshowActivity.f15512s.setDuration(16000L);
        slideshowActivity.f15512s.start();
    }

    public final void f(boolean z6) {
        int i2 = 0;
        this.f15503b.setText("");
        int size = (this.f15511r + 1) % this.f15510q.size();
        this.f15511r = size;
        Movie movie = (Movie) this.f15510q.get(size);
        String str = "https://image.tmdb.org/t/p/w1280" + movie.backdrop;
        String str2 = App.getInstance().f14444w;
        getString(R.string.api_path_movie);
        movie.getMovieId();
        if (movie.isSeries()) {
            String str3 = App.getInstance().f14444w;
            getString(R.string.api_path_tv);
            movie.getMovieId();
        }
        this.f15504e.setRotation(0.0f);
        this.f15504e.setScaleX(1.2f);
        this.f15504e.setScaleY(1.2f);
        this.f15504e.setTranslationX(0.0f);
        this.f15504e.setTranslationY(0.0f);
        D.get().load(str).resize(1920, 1080).centerCrop().onlyScaleDown().into(this.f15504e, new y(this, z6));
        if (movie.getMovieId() > 0) {
            a.getMediaImages(movie.getType() == 0 ? "movie" : "tv", movie.getMovieId()).subscribeOn(Schedulers.io()).map(new s(i2)).observeOn(AndroidSchedulers.mainThread()).subscribe(new u(i2, this, movie), new v(this, i2));
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f15506j, "alpha", 0.0f, 1.0f);
        ofFloat.setDuration(1000L);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.start();
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f15507m, "alpha", 0.0f, 1.0f);
        ofFloat2.setDuration(1000L);
        ofFloat2.setInterpolator(new DecelerateInterpolator());
        ofFloat2.start();
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_slideshow);
        this.f15504e = (ImageView) findViewById(R.id.slideshow_backdrop);
        this.f15503b = (TextView) findViewById(R.id.movie_title);
        this.f15505f = (ImageView) findViewById(R.id.slideshow_logo);
        this.f15506j = (ImageView) findViewById(R.id.slideshow_banner);
        this.f15507m = findViewById(R.id.gradient_overlay);
        Disposable subscribe = a.gettabbedList(this, 1, "movie", 2).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new v(this, 1), new v(this, 2));
        CompositeDisposable compositeDisposable = this.f15508n;
        compositeDisposable.add(subscribe);
        compositeDisposable.add(a.gettabbedList(this, 1, "tv", 2).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new v(this, 3), new c(2)));
        compositeDisposable.add(a.gettabbedList(this, 2, "tv", 2).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new v(this, 4), new c(2)));
        compositeDisposable.add(a.gettabbedList(this, 2, "movie", 2).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new v(this, 5), new c(2)));
    }

    @Override // e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f15508n.clear();
        this.f15509p.removeCallbacksAndMessages(null);
        AnimatorSet animatorSet = this.f15512s;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    @Override // e.AbstractActivityC0842v, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        ArrayList arrayList;
        if ((i2 == 23 || i2 == 66) && (arrayList = this.f15510q) != null && !arrayList.isEmpty()) {
            Movie movie = (Movie) this.f15510q.get(this.f15511r);
            Intent intent = App.f14424I ? new Intent(this, (Class<?>) MovieDetailActivityLeanBack.class) : new Intent(this, (Class<?>) MovieDetailActivity.class);
            intent.putExtra("movie", movie);
            intent.setFlags(268435456);
            startActivity(intent);
        }
        finish();
        return true;
    }
}
