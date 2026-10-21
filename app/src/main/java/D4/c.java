package D4;

import android.content.Context;
import android.content.SharedPreferences;
import flix.com.vision.api.FlixVisionApiService;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static FlixVisionApiService f895a;

    public static void clearAuthToken(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("FlixVisionPrefs", 0).edit();
        edit.remove("auth_token");
        edit.remove("user_email");
        edit.apply();
    }

    public static FlixVisionApiService getApiService(Context context) {
        if (f895a == null) {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            builder.addInterceptor(new b(context));
            f895a = (FlixVisionApiService) new Retrofit.Builder().baseUrl("http://10.0.2.2:8000/api/v1/").addConverterFactory(GsonConverterFactory.create()).client(builder.build()).build().create(FlixVisionApiService.class);
        }
        return f895a;
    }

    public static String getUserEmail(Context context) {
        return context.getSharedPreferences("FlixVisionPrefs", 0).getString("user_email", null);
    }

    public static boolean isLoggedIn(Context context) {
        String string = context.getSharedPreferences("FlixVisionPrefs", 0).getString("auth_token", null);
        return (string == null || string.isEmpty()) ? false : true;
    }
}
