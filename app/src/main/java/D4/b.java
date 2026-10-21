package D4;

import android.content.Context;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes2.dex */
public final class b implements Interceptor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f894a;

    public b(Context context) {
        this.f894a = context;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        Request.Builder newBuilder = request.newBuilder();
        String string = this.f894a.getSharedPreferences("FlixVisionPrefs", 0).getString("auth_token", null);
        if (string != null && !string.isEmpty()) {
            newBuilder.header("Authorization", "Bearer ".concat(string));
        }
        newBuilder.method(request.method(), request.body());
        return chain.proceed(newBuilder.build());
    }
}
