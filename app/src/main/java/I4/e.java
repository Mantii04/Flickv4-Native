package I4;

import A.i;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import flix.com.vision.App;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import flix.com.vision.api.realdebrid.RealDebridLoginActivity;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.io.IOException;
import java.util.Objects;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class e implements Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RealDebridLoginActivity f1387a;

    public e(RealDebridLoginActivity realDebridLoginActivity) {
        this.f1387a = realDebridLoginActivity;
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) throws IOException {
        final int i2 = 0;
        final int i7 = 1;
        boolean isSuccessful = response.isSuccessful();
        final RealDebridLoginActivity realDebridLoginActivity = this.f1387a;
        if (!isSuccessful) {
            int i8 = RealDebridLoginActivity.f15833q;
            realDebridLoginActivity.getClass();
            new Handler(Looper.getMainLooper()).post(new a(realDebridLoginActivity, 2));
            return;
        }
        ResponseBody body = response.body();
        Objects.requireNonNull(body);
        String string = body.string();
        StringBuilder sb = new StringBuilder("{\n  \"results\": [");
        String str = RealDebridCommon.f15824b;
        try {
            JSONArray jSONArray = new JSONObject(i.o(sb, string, "]\n}")).getJSONArray("results");
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i9);
                RealDebridCommon.f15824b = jSONObject.getString("access_token");
                RealDebridCommon.f15825e = jSONObject.getString("refresh_token");
                RealDebridCommon.f15826f = jSONObject.getString("token_type");
            }
            realDebridLoginActivity.f15840p.edit().putString("ACCESS_TOKEN", RealDebridCommon.f15824b).apply();
            realDebridLoginActivity.f15840p.edit().putString("REFRESH_TOKEN", RealDebridCommon.f15825e).apply();
            realDebridLoginActivity.f15840p.edit().putString("TOKEN_TYPE", RealDebridCommon.f15826f).apply();
            realDebridLoginActivity.f15840p.edit().putBoolean("IS_RD_LOGGED_IN", true).apply();
            RealDebridCommon.f15828m = true;
            new Handler(Looper.getMainLooper()).post(new A3.d(this, 7));
            D4.a.getRealDebridUserAccount(RealDebridCommon.f15826f, RealDebridCommon.f15824b).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new Consumer() { // from class: I4.b
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    RealDebridLoginActivity realDebridLoginActivity2 = realDebridLoginActivity;
                    switch (i2) {
                        case 0:
                            int i10 = RealDebridLoginActivity.f15833q;
                            realDebridLoginActivity2.getClass();
                            JsonObject asJsonObject = ((JsonElement) obj).getAsJsonObject();
                            SharedPreferences.Editor edit = App.getInstance().f14440s.edit();
                            String asString = asJsonObject.get("username").getAsString();
                            String asString2 = asJsonObject.get("type").getAsString();
                            String asString3 = asJsonObject.get("expiration").getAsString();
                            edit.putString("REAL_DEBRID_USERNAME", asString);
                            edit.putString("REAL_DEBRID_A_TYPE", asString2);
                            edit.putString("REAL_DEBRID_EXPIRATION", asString3);
                            edit.apply();
                            edit.commit();
                            realDebridLoginActivity2.finish();
                            break;
                        default:
                            int i11 = RealDebridLoginActivity.f15833q;
                            realDebridLoginActivity2.finish();
                            break;
                    }
                }
            }, new Consumer() { // from class: I4.b
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    RealDebridLoginActivity realDebridLoginActivity2 = realDebridLoginActivity;
                    switch (i7) {
                        case 0:
                            int i10 = RealDebridLoginActivity.f15833q;
                            realDebridLoginActivity2.getClass();
                            JsonObject asJsonObject = ((JsonElement) obj).getAsJsonObject();
                            SharedPreferences.Editor edit = App.getInstance().f14440s.edit();
                            String asString = asJsonObject.get("username").getAsString();
                            String asString2 = asJsonObject.get("type").getAsString();
                            String asString3 = asJsonObject.get("expiration").getAsString();
                            edit.putString("REAL_DEBRID_USERNAME", asString);
                            edit.putString("REAL_DEBRID_A_TYPE", asString2);
                            edit.putString("REAL_DEBRID_EXPIRATION", asString3);
                            edit.apply();
                            edit.commit();
                            realDebridLoginActivity2.finish();
                            break;
                        default:
                            int i11 = RealDebridLoginActivity.f15833q;
                            realDebridLoginActivity2.finish();
                            break;
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
    }
}
