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
public final class t extends flix.com.vision.processors.english.m {

    /* renamed from: a, reason: collision with root package name */
    public final Movie f4811a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4812b = "https://torrentz2.nz";

    /* renamed from: c, reason: collision with root package name */
    public boolean f4813c = false;

    public t(Context context, Movie movie, U4.f fVar) {
        this.f4811a = movie;
        this.callBack = fVar;
        EventBus.getDefault().register(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(T4.e eVar) {
        this.f4813c = true;
        EventBus.getDefault().unregister(this);
    }

    public void process(int i2) {
        if (i2 > 1) {
            this.max_page = 8;
        }
        if (i2 == 1) {
            this.torrentServiceType = BaseProcessor$TorrentServiceType.f16066b;
        } else if (i2 == 2) {
            this.torrentServiceType = BaseProcessor$TorrentServiceType.f16067e;
        } else if (i2 == 3) {
            this.torrentServiceType = BaseProcessor$TorrentServiceType.f16068f;
        }
        if (this.f4813c) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        Movie movie = this.f4811a;
        sb.append(movie.getTitle().replace("&", ""));
        sb.append(StringUtils.SPACE);
        sb.append(movie.getYear());
        String removeSpecialCharsKeepSpace = AbstractC1000n.removeSpecialCharsKeepSpace(sb.toString());
        String o6 = A.i.o(new StringBuilder(), this.f4812b, "/search?q=");
        String replace = removeSpecialCharsKeepSpace.replace(StringUtils.SPACE, "+");
        new q(this, A.i.B(o6, replace), new ArrayList()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
