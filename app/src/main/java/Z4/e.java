package Z4;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import flix.com.vision.models.Movie;
import flix.com.vision.processors.english.BaseProcessor$TorrentServiceType;
import h5.AbstractC1000n;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class e extends flix.com.vision.processors.english.m {

    /* renamed from: a, reason: collision with root package name */
    public WebView f4541a;

    /* renamed from: b, reason: collision with root package name */
    public final Movie f4542b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f4543c;

    /* renamed from: d, reason: collision with root package name */
    public final String f4544d = "https://www.scnsrc.me";

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f4545e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public boolean f4546f = true;

    /* renamed from: g, reason: collision with root package name */
    public int f4547g = 0;

    /* renamed from: h, reason: collision with root package name */
    public int f4548h = 0;

    public e(Context context, Movie movie, U4.f fVar) {
        this.f4543c = context;
        this.f4542b = movie;
        this.callBack = fVar;
    }

    public void process(int i2) {
        this.torrentServiceType = i2 == 1 ? BaseProcessor$TorrentServiceType.f16066b : BaseProcessor$TorrentServiceType.f16067e;
        StringBuilder sb = new StringBuilder();
        Movie movie = this.f4542b;
        sb.append(movie.getTitle());
        sb.append(StringUtils.SPACE);
        sb.append(movie.getYear());
        try {
            new Handler(Looper.getMainLooper()).post(new RunnableC0367a(this, this.f4544d + "/?s=" + AbstractC1000n.removeSpecialCharsKeepSpace(sb.toString()).trim().replace(StringUtils.SPACE, "+"), 0));
        } catch (Exception unused) {
        }
    }
}
