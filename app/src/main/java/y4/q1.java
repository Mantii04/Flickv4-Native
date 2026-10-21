package y4;

import android.os.AsyncTask;
import com.uwetrottmann.trakt5.TraktV2;
import com.uwetrottmann.trakt5.entities.User;
import com.uwetrottmann.trakt5.entities.UserSlug;
import com.uwetrottmann.trakt5.enums.Extended;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.TraktSignInActivity;
import flix.com.vision.helpers.Constants$TRAKT_TV_EVENT;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONObject;
import retrofit2.Response;

/* loaded from: classes2.dex */
public final class q1 extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ JSONObject f21277a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TraktSignInActivity f21278b;

    public q1(TraktSignInActivity traktSignInActivity, JSONObject jSONObject) {
        this.f21278b = traktSignInActivity;
        this.f21277a = jSONObject;
    }

    @Override // android.os.AsyncTask
    public Boolean doInBackground(String... strArr) {
        JSONObject jSONObject = this.f21277a;
        TraktSignInActivity traktSignInActivity = this.f21278b;
        try {
            String string = jSONObject.getString("access_token");
            String string2 = jSONObject.getString("refresh_token");
            App.getInstance().f14440s.edit().putString("trakt_access_token", string).apply();
            App.getInstance().f14440s.edit().putString("trakt_refresh_token", string2).apply();
            TraktV2 traktV2 = new TraktV2(traktSignInActivity.getString(R.string.trakt_client_id));
            traktV2.accessToken(string);
            traktV2.refreshToken(string2);
            traktV2.apiKey("39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c");
            Response<User> execute = traktV2.users().profile(UserSlug.ME, Extended.FULL).execute();
            if (execute.isSuccessful()) {
                String str = execute.body().username;
                String str2 = execute.body().images.avatar.full;
                App.getInstance().f14440s.edit().putString("trakt_user_name", str).apply();
                App.getInstance().f14440s.edit().putString("trakt_avatar", str2).apply();
                App.getInstance().f14440s.edit().putBoolean("trakt_user_logged_in", true).apply();
                EventBus.getDefault().post(Constants$TRAKT_TV_EVENT.f16001b);
                traktSignInActivity.f15261x = true;
                traktSignInActivity.finish();
                traktSignInActivity.f15249f.cancel();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return Boolean.TRUE;
    }
}
