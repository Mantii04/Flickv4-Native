package a5;

import android.content.Context;
import android.os.AsyncTask;
import flix.com.vision.models.Movie;
import flix.com.vision.processors.english.BaseProcessor$TorrentServiceType;
import h5.AbstractC1000n;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* renamed from: a5.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0402h extends flix.com.vision.processors.english.m {

    /* renamed from: a, reason: collision with root package name */
    public final Movie f4778a;

    /* renamed from: b, reason: collision with root package name */
    public int f4779b;

    /* renamed from: c, reason: collision with root package name */
    public int f4780c;

    /* renamed from: d, reason: collision with root package name */
    public String f4781d;

    /* renamed from: e, reason: collision with root package name */
    public final String f4782e = "https://solidtorrents.to";

    /* renamed from: f, reason: collision with root package name */
    public boolean f4783f = false;

    public C0402h(Context context, Movie movie, U4.f fVar) {
        this.f4778a = movie;
        this.callBack = fVar;
        EventBus.getDefault().register(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(T4.e eVar) {
        this.f4783f = true;
        EventBus.getDefault().unregister(this);
    }

    public void process(int i2, int i7, int i8) {
        String replace;
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
        this.f4779b = i2;
        this.f4780c = i7;
        if (this.f4783f) {
            return;
        }
        this.f4781d = "S" + AbstractC1000n.formatSeasonnumber(this.f4779b) + "E" + AbstractC1000n.formatSeasonnumber(this.f4780c);
        String removeSpecialCharsKeepSpace = AbstractC1000n.removeSpecialCharsKeepSpace(AbstractC1000n.removeSpecialCharsKeepSpace(this.f4778a.getTitle()) + StringUtils.SPACE + this.f4781d);
        String o6 = A.i.o(new StringBuilder(), this.f4782e, "/search?q=");
        try {
            replace = URLEncoder.encode(removeSpecialCharsKeepSpace, StandardCharsets.UTF_8.toString());
        } catch (Exception unused) {
            replace = o6.replace(StringUtils.SPACE, "%20");
        }
        new AsyncTaskC0399e(this, A.i.B(o6, replace), new ArrayList()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
