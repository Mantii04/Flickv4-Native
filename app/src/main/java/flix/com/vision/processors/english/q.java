package flix.com.vision.processors.english;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.google.firebase.sessions.settings.RemoteSettings;
import flix.com.vision.models.Movie;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class q extends m {

    /* renamed from: a, reason: collision with root package name */
    public final Movie f16109a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f16110b;

    /* renamed from: c, reason: collision with root package name */
    public int f16111c;

    /* renamed from: d, reason: collision with root package name */
    public int f16112d;

    /* renamed from: e, reason: collision with root package name */
    public WebView f16113e;

    public q(Context context, Movie movie, U4.f fVar) {
        this.f16109a = movie;
        this.f16110b = context;
        this.callBack = fVar;
        new ArrayList();
        this.domain = "https://noxx.to";
    }

    public void process(int i2, int i7) {
        this.f16112d = i2;
        this.f16111c = i7;
        new Handler(Looper.getMainLooper()).post(new n(this, (this.domain + "/tv/" + this.f16109a.getTitle().replace(",", "").replace("(", "").replace(")", "").replace(":", "").replace("'", "").replace("-", "").replace(StringUtils.SPACE, "-") + RemoteSettings.FORWARD_SLASH_STRING + this.f16112d + RemoteSettings.FORWARD_SLASH_STRING + this.f16111c).replace("--", "-"), 0));
    }
}
