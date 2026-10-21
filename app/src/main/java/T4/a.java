package T4;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceResponse;
import cz.msebera.android.httpclient.protocol.HTTP;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    public static volatile a f3684c;

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f3685a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f3686b = false;

    public static a getInstance() {
        if (f3684c == null) {
            synchronized (a.class) {
                try {
                    if (f3684c == null) {
                        f3684c = new a();
                    }
                } finally {
                }
            }
        }
        return f3684c;
    }

    public WebResourceResponse createEmptyResource() {
        return new WebResourceResponse(HTTP.PLAIN_TEXT_TYPE, "utf-8", null);
    }

    public void init(Context context) {
        if (this.f3686b) {
            return;
        }
        Executors.newSingleThreadExecutor().execute(new A4.n(12, this, context));
    }

    public boolean isAd(String str) {
        if (!this.f3686b || str == null) {
            return false;
        }
        try {
            String host = Uri.parse(str).getHost();
            if (host == null) {
                return false;
            }
            if (this.f3685a.contains(host)) {
                return true;
            }
            Iterator it = this.f3685a.iterator();
            while (it.hasNext()) {
                if (host.endsWith("." + ((String) it.next()))) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
