package flix.com.vision.subtitles;

import android.webkit.WebView;
import flix.com.vision.subtitles.SubDownloadExtended;

/* loaded from: classes2.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16139b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ WebView f16140e;

    public /* synthetic */ d(WebView webView, int i2) {
        this.f16139b = i2;
        this.f16140e = webView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16139b) {
            case 0:
                SubDownloadExtended.SubDownloadWebViewClient.lambda$extractDownloadLink$6(this.f16140e, "(function() { return document.documentElement.outerHTML; })();");
                break;
            default:
                SubDownloadExtended.SubDownloadWebViewClient.lambda$extractDownloadLink$7(this.f16140e);
                break;
        }
    }
}
