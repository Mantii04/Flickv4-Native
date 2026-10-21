package A4;

import C4.i0;
import K3.C0138d;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.activities.AnimeDetailActivity;
import flix.com.vision.activities.DramaDetailActivity;
import flix.com.vision.activities.TraktTvConfigActivity;
import flix.com.vision.activities.leanback.FilterActivityLeanBack;
import flix.com.vision.activities.leanback.MainActivityLeanback;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.models.tmdb.Network;
import flix.com.vision.tv.MyImportActivity;

/* loaded from: classes2.dex */
public final /* synthetic */ class g implements View.OnFocusChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f65b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f66e;

    public /* synthetic */ g(W4.e eVar, W4.d dVar) {
        this.f65b = 6;
        this.f66e = dVar;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z6) {
        Object obj = this.f66e;
        switch (this.f65b) {
            case 0:
                int i2 = FilterActivityLeanBack.f15439T;
                FilterActivityLeanBack filterActivityLeanBack = (FilterActivityLeanBack) obj;
                filterActivityLeanBack.getClass();
                if (!z6 || !(view instanceof TextView)) {
                    if (view instanceof TextView) {
                        ((TextView) view).setTextColor(filterActivityLeanBack.getResources().getColor(R.color.white_grey));
                        break;
                    }
                } else {
                    ((TextView) view).setTextColor(filterActivityLeanBack.getResources().getColor(R.color.black));
                    break;
                }
                break;
            case 1:
                int i7 = MainActivityLeanback.f15476I;
                MainActivityLeanback mainActivityLeanback = (MainActivityLeanback) obj;
                if (z6 && !mainActivityLeanback.g()) {
                    mainActivityLeanback.h();
                    break;
                } else if (!z6) {
                    if (mainActivityLeanback.g()) {
                        mainActivityLeanback.e();
                        break;
                    }
                } else {
                    mainActivityLeanback.getClass();
                    break;
                }
                break;
            case 2:
                SimpleVideoPlayer simpleVideoPlayer = (SimpleVideoPlayer) obj;
                if (!z6) {
                    simpleVideoPlayer.f15630A.f15851C.getProgressDrawable().setColorFilter(simpleVideoPlayer.getResources().getColor(R.color.accent), PorterDuff.Mode.MULTIPLY);
                    break;
                } else {
                    simpleVideoPlayer.f15630A.f15851C.getProgressDrawable().setColorFilter(simpleVideoPlayer.getResources().getColor(R.color.md_yellow_500), PorterDuff.Mode.MULTIPLY);
                    break;
                }
            case 3:
                i0 i0Var = (i0) obj;
                if (!z6) {
                    i0Var.f698x.setHorizontalFadingEdgeEnabled(false);
                    TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
                    TextView textView = i0Var.f698x;
                    textView.setEllipsize(truncateAt);
                    textView.setMarqueeRepeatLimit(6);
                    textView.setFocusableInTouchMode(false);
                    textView.setHorizontallyScrolling(false);
                    textView.setSelected(false);
                    break;
                } else {
                    i0Var.f698x.setHorizontalFadingEdgeEnabled(true);
                    TextView textView2 = i0Var.f698x;
                    textView2.setFocusable(true);
                    textView2.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                    textView2.setMarqueeRepeatLimit(6);
                    textView2.setFocusableInTouchMode(true);
                    textView2.setHorizontallyScrolling(true);
                    textView2.setSelected(true);
                    break;
                }
            case 4:
                C0138d c0138d = (C0138d) obj;
                c0138d.o(c0138d.p());
                break;
            case 5:
                K3.l lVar = (K3.l) obj;
                lVar.f1688l = z6;
                lVar.l();
                if (!z6) {
                    lVar.o(false);
                    lVar.f1689m = false;
                    break;
                }
                break;
            case 6:
                W4.d dVar = (W4.d) obj;
                Network network = dVar.f4172f;
                if (network != null) {
                    int i8 = network.name.toLowerCase().contains("disney") ? R.drawable.disney_gif : network.name.toLowerCase().contains("prime") ? R.drawable.prime_gif : network.name.toLowerCase().contains("netflix") ? R.drawable.netflix_gif : network.name.toLowerCase().contains("paramount") ? R.drawable.paramount_gif : network.name.toLowerCase().contains("hbo") ? R.drawable.hbo_max_gif : network.name.toLowerCase().contains("apple") ? R.drawable.apple_gif : network.name.toLowerCase().contains("hulu") ? R.drawable.hulu_gif : network.name.toLowerCase().contains("starz") ? R.drawable.starz_gif : network.name.toLowerCase().contains("marvel") ? R.drawable.marvel_gif : network.name.toLowerCase().contains("cbs") ? R.drawable.cbs_gif : network.name.toLowerCase().contains("peacock") ? R.drawable.peacock_gif : network.name.toLowerCase().contains("amc") ? R.drawable.amc1_gif : network.name.toLowerCase().contains("bet") ? R.drawable.bet_gif : network.name.toLowerCase().contains("britbox") ? R.drawable.britbox_gif : 0;
                    ImageView imageView = dVar.f4168b;
                    if (!z6) {
                        int i9 = (int) (view.getContext().getResources().getDisplayMetrics().density * 12.0f);
                        imageView.setPadding(i9, i9, i9, i9);
                        W4.e.a(dVar);
                        break;
                    } else if (i8 != 0) {
                        imageView.setPadding(0, 0, 0, 0);
                        ((com.bumptech.glide.m) ((com.bumptech.glide.m) com.bumptech.glide.c.with(view.getContext()).asGif().load(Integer.valueOf(i8)).centerCrop()).diskCacheStrategy(n2.u.f18992c)).into(imageView);
                        break;
                    } else {
                        int i10 = (int) (view.getContext().getResources().getDisplayMetrics().density * 12.0f);
                        imageView.setPadding(i10, i10, i10, i10);
                        W4.e.a(dVar);
                        break;
                    }
                }
                break;
            case 7:
                MyImportActivity myImportActivity = (MyImportActivity) obj;
                if (!z6) {
                    myImportActivity.f16200m.setColorFilter(new PorterDuffColorFilter(A.h.getColor(myImportActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                    break;
                } else {
                    myImportActivity.f16200m.setColorFilter(new PorterDuffColorFilter(A.h.getColor(myImportActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                    break;
                }
            case 8:
                AnimeDetailActivity animeDetailActivity = (AnimeDetailActivity) obj;
                if (!z6) {
                    animeDetailActivity.f14453b.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animeDetailActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                    b.c.r(animeDetailActivity.f14456j, 100L, 1.0f);
                    b.c.w(animeDetailActivity.f14456j, 100L, 1.0f);
                    break;
                } else {
                    animeDetailActivity.f14453b.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animeDetailActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                    b.c.r(animeDetailActivity.f14456j, 100L, 1.02f);
                    b.c.w(animeDetailActivity.f14456j, 100L, 1.02f);
                    break;
                }
            case 9:
                DramaDetailActivity dramaDetailActivity = (DramaDetailActivity) obj;
                if (!z6) {
                    dramaDetailActivity.f14552b.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaDetailActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                    b.c.r(dramaDetailActivity.f14555j, 100L, 1.0f);
                    b.c.w(dramaDetailActivity.f14555j, 100L, 1.0f);
                    break;
                } else {
                    dramaDetailActivity.f14552b.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaDetailActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                    b.c.r(dramaDetailActivity.f14555j, 100L, 1.02f);
                    b.c.w(dramaDetailActivity.f14555j, 100L, 1.02f);
                    break;
                }
            default:
                TraktTvConfigActivity traktTvConfigActivity = (TraktTvConfigActivity) obj;
                if (!z6) {
                    traktTvConfigActivity.f15277x.setTextColor(traktTvConfigActivity.getResources().getColor(R.color.black));
                    break;
                } else {
                    traktTvConfigActivity.f15277x.setTextColor(traktTvConfigActivity.getResources().getColor(R.color.white));
                    break;
                }
        }
    }

    public /* synthetic */ g(Object obj, int i2) {
        this.f65b = i2;
        this.f66e = obj;
    }
}
