package a5;

import android.content.Context;
import android.os.AsyncTask;
import flix.com.vision.models.Movie;
import flix.com.vision.processors.english.BaseProcessor$TorrentServiceType;
import h5.AbstractC1000n;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes2.dex */
public final class x extends flix.com.vision.processors.english.m {

    /* renamed from: a, reason: collision with root package name */
    public final Movie f4819a;

    /* renamed from: d, reason: collision with root package name */
    public int f4822d;

    /* renamed from: e, reason: collision with root package name */
    public int f4823e;

    /* renamed from: f, reason: collision with root package name */
    public String f4824f;

    /* renamed from: b, reason: collision with root package name */
    public final String f4820b = "https://torrentz2.nz";

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f4821c = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public boolean f4825g = false;

    public x(Context context, Movie movie, U4.f fVar) {
        this.f4819a = movie;
        this.callBack = fVar;
        EventBus.getDefault().register(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(T4.e eVar) {
        this.f4825g = true;
        EventBus.getDefault().unregister(this);
    }

    public void process(int i2, int i7, int i8) {
        if (i8 > 1) {
            this.max_page = 8;
        }
        if (i8 == 1) {
            this.torrentServiceType = BaseProcessor$TorrentServiceType.f16066b;
        } else if (i8 == 2) {
            this.torrentServiceType = BaseProcessor$TorrentServiceType.f16067e;
        } else if (i8 == 3) {
            this.torrentServiceType = BaseProcessor$TorrentServiceType.f16068f;
        }
        this.f4822d = i2;
        this.f4823e = i7;
        if (this.f4825g) {
            return;
        }
        this.f4824f = "S" + AbstractC1000n.formatSeasonnumber(this.f4822d) + "E" + AbstractC1000n.formatSeasonnumber(this.f4823e);
        new u(this, A.i.B(A.i.o(new StringBuilder(), this.f4820b, "/search?q="), AbstractC1000n.removeSpecialCharsKeepSpace(this.f4819a.getTitle().replace("&", "") + StringUtils.SPACE + this.f4824f).replace(StringUtils.SPACE, "+"))).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
