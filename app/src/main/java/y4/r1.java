package y4;

import android.os.CountDownTimer;
import android.widget.Toast;
import flix.com.vision.App;
import flix.com.vision.activities.TraktSignInActivity;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class r1 extends CountDownTimer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TraktSignInActivity f21280a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r1(TraktSignInActivity traktSignInActivity, long j7) {
        super(j7, 1000L);
        this.f21280a = traktSignInActivity;
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        JSONObject jSONObject;
        TraktSignInActivity traktSignInActivity = this.f21280a;
        if (!traktSignInActivity.f15261x) {
            try {
                jSONObject = new JSONObject(A.i.o(new StringBuilder("{\n    \"code\": \""), traktSignInActivity.f15250j, "\",\n    \"client_id\": \"39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c\",\n    \"client_secret\": \"86227e303a08cf769cd77dc1691477f3e24a65f890431115c71369becdfe85b6\"\n}"));
            } catch (JSONException e3) {
                e3.printStackTrace();
                jSONObject = null;
            }
            JSONObject jSONObject2 = jSONObject;
            if (jSONObject2 != null) {
                App.getInstance().getRequestQueue().add(new p1(1, "https://api.trakt.tv/oauth/device/token", jSONObject2, new m1(traktSignInActivity, 1), new o1()));
            }
        }
        int i2 = traktSignInActivity.f15252n - (traktSignInActivity.f15253p * 1000);
        traktSignInActivity.f15252n = i2;
        if (i2 >= 0) {
            traktSignInActivity.f15249f.start();
            return;
        }
        traktSignInActivity.f15249f.cancel();
        Toast.makeText(traktSignInActivity.getBaseContext(), "Time out", 1).show();
        traktSignInActivity.finish();
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j7) {
    }
}
