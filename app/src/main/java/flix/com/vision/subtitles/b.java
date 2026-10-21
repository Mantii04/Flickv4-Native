package flix.com.vision.subtitles;

import android.content.Context;

/* loaded from: classes2.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16135b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f16136e;

    public /* synthetic */ b(Object obj, int i2) {
        this.f16135b = i2;
        this.f16136e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16135b) {
            case 0:
                SubDownloadExtended.lambda$loadDownloadPage$1((String) this.f16136e);
                break;
            default:
                SubDownloadExtended.lambda$initializeWebView$0((Context) this.f16136e);
                break;
        }
    }
}
