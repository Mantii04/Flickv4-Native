package y4;

import flix.com.vision.activities.AnimeSearchResultActivityClassic;
import java.util.ArrayList;

/* renamed from: y4.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1907i implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f21236b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnimeSearchResultActivityClassic f21237e;

    public RunnableC1907i(AnimeSearchResultActivityClassic animeSearchResultActivityClassic, ArrayList arrayList) {
        this.f21237e = animeSearchResultActivityClassic;
        this.f21236b = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        AnimeSearchResultActivityClassic animeSearchResultActivityClassic = this.f21237e;
        animeSearchResultActivityClassic.f14480e.addAll(this.f21236b);
        animeSearchResultActivityClassic.f14481f.notifyDataSetChanged();
    }
}
