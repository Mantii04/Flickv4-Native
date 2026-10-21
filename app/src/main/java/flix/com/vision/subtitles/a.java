package flix.com.vision.subtitles;

import okhttp3.Interceptor;
import okhttp3.Response;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Interceptor {
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        Response lambda$buildService$0;
        lambda$buildService$0 = OpenSubtitles.lambda$buildService$0(chain);
        return lambda$buildService$0;
    }
}
