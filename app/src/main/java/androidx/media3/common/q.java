package androidx.media3.common;

import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.datasource.DataSource;
import androidx.media3.exoplayer.dash.manifest.Representation;
import androidx.media3.exoplayer.dash.offline.DashDownloader;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class q implements P3.C {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7102b = 0;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f7103e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7104f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f7105j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ Object f7106m;

    public /* synthetic */ q(SimpleBasePlayer simpleBasePlayer, SimpleBasePlayer.State state, List list, int i2) {
        this.f7104f = simpleBasePlayer;
        this.f7105j = state;
        this.f7106m = list;
        this.f7103e = i2;
    }

    @Override // P3.C
    public final Object get() {
        SimpleBasePlayer.State lambda$addMediaItems$3;
        RunnableFutureTask lambda$getSegmentIndex$0;
        switch (this.f7102b) {
            case 0:
                lambda$addMediaItems$3 = ((SimpleBasePlayer) this.f7104f).lambda$addMediaItems$3((SimpleBasePlayer.State) this.f7105j, (List) this.f7106m, this.f7103e);
                return lambda$addMediaItems$3;
            default:
                lambda$getSegmentIndex$0 = ((DashDownloader) this.f7104f).lambda$getSegmentIndex$0((DataSource) this.f7105j, this.f7103e, (Representation) this.f7106m);
                return lambda$getSegmentIndex$0;
        }
    }

    public /* synthetic */ q(DashDownloader dashDownloader, DataSource dataSource, int i2, Representation representation) {
        this.f7104f = dashDownloader;
        this.f7105j = dataSource;
        this.f7103e = i2;
        this.f7106m = representation;
    }
}
