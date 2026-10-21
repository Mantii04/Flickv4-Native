package flix.com.vision.activities.leanback.fragment;

import androidx.leanback.widget.A0;
import androidx.leanback.widget.H0;
import androidx.leanback.widget.InterfaceC0533v;
import androidx.leanback.widget.M0;
import flix.com.vision.models.Movie;
import flix.com.vision.models.tmdb.Network;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class k implements InterfaceC0533v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TVListFragmentMain f15590a;

    public k(TVListFragmentMain tVListFragmentMain) {
        this.f15590a = tVListFragmentMain;
    }

    public void onItemSelected(A0 a02, Object obj, M0 m02, H0 h02) {
        TVListFragmentMain tVListFragmentMain = this.f15590a;
        if (tVListFragmentMain.f15519E0) {
            return;
        }
        f fVar = tVListFragmentMain.f15515A0;
        if (fVar != null) {
            tVListFragmentMain.f15543z0.removeCallbacks(fVar);
        }
        if (obj instanceof Movie) {
            tVListFragmentMain.f15518D0 = false;
            tVListFragmentMain.f15517C0 = null;
            d dVar = tVListFragmentMain.f15536V0;
            if (dVar != null) {
                dVar.onMovieSelected((Movie) obj);
                return;
            }
            return;
        }
        if (obj instanceof Network) {
            tVListFragmentMain.f15518D0 = true;
            Network network = (Network) obj;
            tVListFragmentMain.f15517C0 = network;
            d dVar2 = tVListFragmentMain.f15536V0;
            if (dVar2 != null) {
                dVar2.onNetworkSelected(network);
            }
            Integer valueOf = Integer.valueOf(network.id);
            HashMap hashMap = tVListFragmentMain.f15542y0;
            if (!hashMap.containsKey(valueOf)) {
                f fVar2 = new f(tVListFragmentMain, network, 1);
                tVListFragmentMain.f15515A0 = fVar2;
                tVListFragmentMain.f15543z0.postDelayed(fVar2, 400L);
            } else {
                d dVar3 = tVListFragmentMain.f15536V0;
                if (dVar3 == null || !tVListFragmentMain.f15518D0) {
                    return;
                }
                dVar3.onMovieSelected((Movie) hashMap.get(Integer.valueOf(network.id)));
            }
        }
    }
}
