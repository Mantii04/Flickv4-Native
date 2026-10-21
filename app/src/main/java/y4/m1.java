package y4;

import android.util.Log;
import com.android.volley.Response;
import flix.com.vision.activities.TraktSignInActivity;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final /* synthetic */ class m1 implements Response.Listener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21261b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TraktSignInActivity f21262e;

    public /* synthetic */ m1(TraktSignInActivity traktSignInActivity, int i2) {
        this.f21261b = i2;
        this.f21262e = traktSignInActivity;
    }

    @Override // com.android.volley.Response.Listener
    public final void onResponse(Object obj) {
        TraktSignInActivity traktSignInActivity = this.f21262e;
        JSONObject jSONObject = (JSONObject) obj;
        switch (this.f21261b) {
            case 0:
                int i2 = TraktSignInActivity.f15246y;
                try {
                    String string = jSONObject.getString("device_code");
                    String string2 = jSONObject.getString("user_code");
                    int i7 = jSONObject.getInt("expires_in");
                    int i8 = jSONObject.getInt("interval");
                    traktSignInActivity.f15250j = string;
                    traktSignInActivity.f15251m = string2;
                    traktSignInActivity.f15253p = i8;
                    traktSignInActivity.f15252n = i7 * 1000;
                    traktSignInActivity.f15256s.setText(traktSignInActivity.f15251m + "");
                    traktSignInActivity.f15255r.setVisibility(8);
                    traktSignInActivity.f15254q.setVisibility(0);
                    r1 r1Var = new r1(traktSignInActivity, (long) (traktSignInActivity.f15253p * 1000));
                    traktSignInActivity.f15249f = r1Var;
                    r1Var.start();
                    break;
                } catch (JSONException e3) {
                    e3.printStackTrace();
                    return;
                } catch (Exception unused) {
                    return;
                }
            default:
                if (!traktSignInActivity.f15261x) {
                    try {
                        new q1(traktSignInActivity, jSONObject).execute(new String[0]);
                        break;
                    } catch (Exception unused2) {
                        Log.d("", "");
                    }
                }
                break;
        }
    }
}
