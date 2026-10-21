package flix.com.vision.activities.leanback.fragment;

import A4.u;
import android.content.Context;
import android.widget.Toast;
import flix.com.vision.models.tmdb.Network;
import h5.AbstractC0995i;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;

/* loaded from: classes2.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15579b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TVListFragmentMain f15580e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Network f15581f;

    public /* synthetic */ f(TVListFragmentMain tVListFragmentMain, Network network, int i2) {
        this.f15579b = i2;
        this.f15580e = tVListFragmentMain;
        this.f15581f = network;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f15579b) {
            case 0:
                TVListFragmentMain tVListFragmentMain = this.f15580e;
                Network network = this.f15581f;
                W4.d o6 = tVListFragmentMain.o(network);
                if (o6 == null) {
                    Toast.makeText(tVListFragmentMain.getContext(), "Could not start reorder.", 0).show();
                    tVListFragmentMain.f15519E0 = false;
                    tVListFragmentMain.f15520F0 = null;
                    tVListFragmentMain.f15523I0 = null;
                    break;
                } else {
                    tVListFragmentMain.f15519E0 = true;
                    tVListFragmentMain.f15520F0 = network;
                    tVListFragmentMain.f15523I0 = o6;
                    tVListFragmentMain.f15522H0.setReorderState(o6, true);
                    AbstractC0995i.makeToast(tVListFragmentMain.getContext(), "Use D-Pad to move. Press Back to save.", true);
                    break;
                }
            default:
                TVListFragmentMain tVListFragmentMain2 = this.f15580e;
                Disposable disposable = tVListFragmentMain2.f15516B0;
                if (disposable != null) {
                    disposable.dispose();
                }
                Context context = tVListFragmentMain2.getContext();
                Network network2 = this.f15581f;
                tVListFragmentMain2.f15516B0 = D4.a.getItemsByGenres(context, "-1", 1, 1, null, "popularity.desc", network2.id, null).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new u(6, tVListFragmentMain2, network2), new A4.c(22));
                break;
        }
    }
}
