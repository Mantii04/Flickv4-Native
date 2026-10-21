package d6;

import android.widget.Toast;
import androidx.leanback.widget.InterfaceC0531u;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import flix.com.vision.activities.UserTorrentsActivity;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.internal.Util;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements EventListener.Factory, InterfaceC0531u, Response.ErrorListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f13611b;

    public /* synthetic */ a(Object obj) {
        this.f13611b = obj;
    }

    @Override // okhttp3.EventListener.Factory
    public EventListener create(Call call) {
        EventListener asFactory$lambda$8;
        asFactory$lambda$8 = Util.asFactory$lambda$8((EventListener) this.f13611b, call);
        return asFactory$lambda$8;
    }

    @Override // com.android.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        int i2 = UserTorrentsActivity.f15279y;
        UserTorrentsActivity userTorrentsActivity = (UserTorrentsActivity) this.f13611b;
        userTorrentsActivity.h();
        volleyError.printStackTrace();
        Toast.makeText(userTorrentsActivity, "Network error fetching files.", 0).show();
    }
}
