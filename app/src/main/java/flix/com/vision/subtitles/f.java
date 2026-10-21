package flix.com.vision.subtitles;

import android.webkit.ValueCallback;
import flix.com.vision.subtitles.SubDownloadExtended;

/* loaded from: classes2.dex */
public final /* synthetic */ class f implements ValueCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16143a;

    public /* synthetic */ f(int i2) {
        this.f16143a = i2;
    }

    @Override // android.webkit.ValueCallback
    public final void onReceiveValue(Object obj) {
        String str = (String) obj;
        switch (this.f16143a) {
            case 0:
                SubDownloadExtended.SubDownloadWebViewClient.lambda$extractDownloadLink$5(str);
                break;
            default:
                SubDownloadExtended.SubDownloadWebViewClient.lambda$submitCaptchaSolution$3(str);
                break;
        }
    }
}
