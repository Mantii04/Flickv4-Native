package a5;

import android.content.Context;
import android.os.AsyncTask;
import com.google.firebase.sessions.settings.RemoteSettings;
import flix.com.vision.models.Movie;
import flix.com.vision.processors.english.BaseProcessor$TorrentServiceType;
import h5.AbstractC1000n;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes2.dex */
public final class p extends flix.com.vision.processors.english.m {

    /* renamed from: a, reason: collision with root package name */
    public final Movie f4799a;

    /* renamed from: c, reason: collision with root package name */
    public int f4801c;

    /* renamed from: d, reason: collision with root package name */
    public int f4802d;

    /* renamed from: e, reason: collision with root package name */
    public String f4803e;

    /* renamed from: b, reason: collision with root package name */
    public final String f4800b = "https://thepiratebay.party/search";

    /* renamed from: f, reason: collision with root package name */
    public boolean f4804f = false;

    public p(Context context, Movie movie, U4.f fVar) {
        this.f4799a = movie;
        this.callBack = fVar;
        EventBus.getDefault().register(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(T4.e eVar) {
        this.f4804f = true;
        EventBus.getDefault().unregister(this);
    }

    public void process(int i2, int i7, int i8) {
        if (i8 == 2) {
            this.max_page = 8;
        }
        this.torrentServiceType = i8 == 1 ? BaseProcessor$TorrentServiceType.f16066b : BaseProcessor$TorrentServiceType.f16067e;
        this.f4801c = i2;
        this.f4802d = i7;
        if (this.f4804f) {
            return;
        }
        this.f4803e = "S" + AbstractC1000n.formatSeasonnumber(this.f4801c) + "E" + AbstractC1000n.formatSeasonnumber(this.f4802d);
        new m(this, A.i.B(A.i.o(new StringBuilder(), this.f4800b, RemoteSettings.FORWARD_SLASH_STRING), AbstractC1000n.removeSpecialCharsKeepSpace(this.f4799a.getTitle().replace("&", "") + StringUtils.SPACE + this.f4803e).replace(StringUtils.SPACE, "%20")), new ArrayList()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
